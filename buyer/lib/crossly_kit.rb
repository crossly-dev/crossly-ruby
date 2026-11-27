# frozen_string_literal: true

require 'json'
require 'securerandom'
require 'time'
require 'uri'
require 'crossly_webhooks'

# The hand-written layer over the generated Crossly clients, shared by the `crossly` (seller) and `crossly_buyer`
# gems: both ship this same file, so whichever loads first serves both.
#
#   require 'crossly/client'
#   crossly = Crossly::Client.new(ENV.fetch('CROSSLY_TOKEN'))        # crossly_pat_…
#   page = crossly.listings.list_listings(page: 1, limit: 25)        # Crossly::ListingsApi, unchanged
#   crossly.paginate { |page, limit| crossly.listings.list_listings(page: page, limit: limit) }.each { |row| … }
#
# What it adds to the generated client:
#   - retries on 429, 500, 502, 503, 504 and on no response at all, with exponential backoff, honouring Retry-After;
#   - an Idempotency-Key on every POST and PATCH (the same key on each retry of a call, so the API replays a retried
#     write instead of applying it twice); #idempotent(key) { … } to choose it;
#   - a timeout (30 s), User-Agent crossly-ruby/<version>;
#   - failures raised as CrosslyKit::Error with #code and #correlation_id.
#
# Its own namespace, because the generated gems own Crossly::* and CrosslyBuyer::* (there is a generated model
# called Crossly::Error).
module CrosslyKit
  RETRY_STATUSES = [429, 500, 502, 503, 504].freeze

  # A failed Crossly call, decoded from the error envelope { error: { code, message, details }, correlationId }.
  # Branch on #code (stable across versions), never on the message; quote #correlation_id to support.
  class Error < StandardError
    # HTTP status; 0 when there was no response (DNS, connect, timeout).
    attr_reader :status
    # The API's machine code: not_found, rate_limited, validation_error, … (network_error / http_<status> when the
    # body carried none).
    attr_reader :code
    attr_reader :correlation_id, :details, :retry_after, :response_body, :response_headers

    def initialize(message, status:, code:, correlation_id: nil, details: nil, retry_after: nil,
                   response_body: nil, response_headers: nil)
      super(message)
      @status = status
      @code = code
      @correlation_id = correlation_id
      @details = details
      @retry_after = retry_after
      @response_body = response_body
      @response_headers = response_headers
    end

    # From the generated client's ApiError (Crossly::ApiError / CrosslyBuyer::ApiError).
    def self.from_api_error(api_error)
      status = api_error.respond_to?(:code) ? api_error.code.to_i : 0
      body = api_error.respond_to?(:response_body) ? api_error.response_body : nil
      headers = api_error.respond_to?(:response_headers) ? api_error.response_headers : nil
      parsed = begin
        body.is_a?(String) && !body.empty? ? JSON.parse(body) : nil
      rescue JSON::ParserError
        nil
      end
      err = parsed.is_a?(Hash) && parsed['error'].is_a?(Hash) ? parsed['error'] : {}
      message = err['message'] ||
                (status.zero? ? api_error.message.to_s.lines.first.to_s.strip : "HTTP #{status} from the Crossly API")
      message = 'No response from the Crossly API' if message.empty?
      cid = parsed.is_a?(Hash) ? parsed['correlationId'] : nil
      new(
        message,
        status: status,
        code: err['code'] || (status.zero? ? 'network_error' : "http_#{status}"),
        correlation_id: cid || CrosslyKit.header(headers, 'x-correlation-id'),
        details: err['details'],
        retry_after: CrosslyKit.retry_after_seconds(CrosslyKit.header(headers, 'retry-after')),
        response_body: body,
        response_headers: headers
      )
    end
  end

  # Case-insensitive header lookup over a Typhoeus header hash or a plain Hash.
  def self.header(headers, name)
    return nil unless headers.respond_to?(:each)

    headers.each do |k, v|
      next unless k.to_s.casecmp?(name)

      return v.is_a?(Array) ? v.first : v
    end
    nil
  end

  # Retry-After as seconds: delta-seconds or an HTTP date (RFC 9110).
  def self.retry_after_seconds(value)
    return nil if value.nil? || value.to_s.strip.empty?

    v = value.to_s.strip
    return v.to_i if v.match?(/\A[0-9]+\z/)

    [(Time.httpdate(v) - Time.now).ceil, 0].max
  rescue ArgumentError
    nil
  end

  # Prepended (via #extend) onto one generated ApiClient: retries, idempotency keys, typed errors.
  module Retrying
    def call_api(http_method, path, opts = {})
      s = @crossly_kit
      if s[:idempotency] && %w[POST PATCH].include?(http_method.to_s.upcase)
        opts[:header_params] ||= {}
        unless opts[:header_params].keys.any? { |k| k.to_s.casecmp?('Idempotency-Key') }
          opts[:header_params]['Idempotency-Key'] = Thread.current[s[:key_slot]] || SecureRandom.uuid
        end
      end
      attempt = 0
      begin
        super(http_method, path, opts)
      rescue s[:error_class] => e
        status = e.code.to_i
        if attempt < s[:max_retries] && (status.zero? || RETRY_STATUSES.include?(status))
          attempt += 1
          delay = Retrying.delay(attempt, e, s)
          s[:on_retry]&.call(attempt, delay, e)
          s[:sleep].call(delay)
          retry
        end
        raise Error.from_api_error(e)
      end
    end

    # Seconds to wait before retry number +attempt+: Retry-After when sent (capped), else
    # backoff_base * 2^(attempt-1), capped, jittered into its upper half.
    def self.delay(attempt, api_error, s)
      headers = api_error.respond_to?(:response_headers) ? api_error.response_headers : nil
      after = CrosslyKit.retry_after_seconds(CrosslyKit.header(headers, 'retry-after'))
      return [after.to_f, s[:max_retry_after]].min if after

      ceiling = [s[:max_backoff], s[:backoff_base] * (2**(attempt - 1))].min
      (ceiling / 2.0) + (rand * ceiling / 2.0)
    end
  end

  # The client facade. Crossly::Client (seller) and CrosslyBuyer::Client (buyer) are this with the namespace set.
  class Client
    attr_reader :api_client, :config, :namespace

    # +namespace+: the generated module (Crossly or CrosslyBuyer).
    # +sleep+ / +on_retry+: hooks for tests and logging, on_retry receives (attempt, delay_seconds, api_error).
    def initialize(token, namespace:, base_url: nil, timeout: 30, max_retries: 3, backoff_base: 0.5,
                   max_backoff: 20.0, max_retry_after: 120.0, idempotency: true, user_agent: nil,
                   headers: {}, sleep: nil, on_retry: nil)
      raise ArgumentError, 'a Crossly token is required (crossly_pat_… or crossly_oat_…)' if token.to_s.empty?

      @namespace = namespace
      @config = namespace::Configuration.new
      @config.access_token = token
      @config.timeout = timeout
      configure_base_url(base_url) if base_url
      @api_client = namespace::ApiClient.new(@config)
      @api_client.user_agent = ["crossly-ruby/#{namespace::VERSION}", user_agent].compact.join(' ')
      headers.each { |k, v| @api_client.default_headers[k.to_s] = v.to_s }
      @settings = {
        error_class: namespace::ApiError,
        max_retries: max_retries,
        backoff_base: backoff_base.to_f,
        max_backoff: max_backoff.to_f,
        max_retry_after: max_retry_after.to_f,
        idempotency: idempotency,
        key_slot: :"crossly_kit_idempotency_key_#{object_id}",
        sleep: sleep || ->(seconds) { Kernel.sleep(seconds) },
        on_retry: on_retry
      }
      @api_client.instance_variable_set(:@crossly_kit, @settings)
      @api_client.extend(Retrying)
      @apis = {}
    end

    # One API group, cached: api(:listings), api('TradeBlock'), api(Crossly::OrdersApi).
    def api(group)
      klass = group.is_a?(Class) ? group : find_api(group)
      raise ArgumentError, "no API group #{group.inspect} in #{@namespace}" unless klass

      @apis[klass] ||= klass.new(@api_client)
    end

    # crossly.listings is api(:listings), crossly.trade_block is api(:trade_block), crossly.nft_market is NFTMarketApi.
    def method_missing(name, *args, &block)
      klass = args.empty? && block.nil? ? find_api(name) : nil
      klass ? api(klass) : super
    end

    def respond_to_missing?(name, include_private = false)
      !find_api(name).nil? || super
    end

    # Every row of a paged list, fetched lazily. The block makes one call for (page, limit) and returns its
    # { data, pagination } response; paging stops at pagination.total_pages, or at a short or empty page.
    def paginate(limit: 100, start_page: 1, &fetch)
      raise ArgumentError, 'paginate needs a block: { |page, limit| api.list_…(page: page, limit: limit) }' unless fetch

      Enumerator.new do |out|
        page = start_page
        loop do
          response = fetch.call(page, limit)
          rows = field(response, :data) || []
          rows.each { |row| out << row }
          pagination = field(response, :pagination)
          break if rows.empty? || pagination.nil?

          total = field(pagination, :total_pages) || field(pagination, :totalPages) || field(pagination, :pages)
          break if total ? page >= total.to_i : rows.size < limit

          page += 1
        end
      end
    end

    # Use +key+ as the Idempotency-Key of the writes made inside the block (on this thread): a key you can recompute
    # (an order id, a job id) when the retry may come from a later process, not only from this client's retries.
    def idempotent(key)
      slot = @settings[:key_slot]
      previous = Thread.current[slot]
      Thread.current[slot] = key
      yield self
    ensure
      Thread.current[slot] = previous
    end

    private

    def configure_base_url(base_url)
      uri = URI(base_url)
      @config.scheme = uri.scheme
      @config.host = uri.port && uri.port != uri.default_port ? "#{uri.host}:#{uri.port}" : uri.host
      @config.base_path = uri.path
    end

    def api_index
      @api_index ||= @namespace.constants.each_with_object({}) do |c, idx|
        name = c.to_s
        next unless name.end_with?('Api') && name != 'Api'

        klass = @namespace.const_get(c)
        idx[name.downcase] = klass if klass.is_a?(Class)
      end
    end

    def find_api(name)
      s = name.to_s
      s = s.split('::').last
      key = s.delete('_').downcase
      key += 'api' unless key.end_with?('api')
      api_index[key]
    end

    def field(obj, name)
      if obj.is_a?(Hash)
        obj.key?(name) ? obj[name] : obj[name.to_s]
      elsif obj.respond_to?(name)
        obj.public_send(name)
      end
    end
  end

  # Rack middleware: verify the Crossly-Signature over the raw body; 400 with { error: { code, message } } when it
  # does not verify, otherwise the verified event is env['crossly.event'] (a CrosslyWebhooks::Event).
  #
  #   use CrosslyKit::RackWebhook, secret: ENV['CROSSLY_WEBHOOK_SECRET'], path: '/webhooks/crossly'
  #
  # No dependency on Rack itself: it only speaks the env-hash protocol. +path+ is a String (exact) or a Regexp;
  # nil verifies every request. +secret+ may be a lambda, read per request.
  class RackWebhook
    ENV_KEY = 'crossly.event'

    def initialize(app, secret: ENV.fetch('CROSSLY_WEBHOOK_SECRET', nil), path: nil,
                   tolerance_seconds: CrosslyWebhooks::DEFAULT_TOLERANCE_SECONDS)
      @app = app
      @secret = secret
      @path = path
      @tolerance = tolerance_seconds
    end

    def call(env)
      return @app.call(env) if @path && !(@path === env['PATH_INFO']) # rubocop:disable Style/CaseEquality

      raw = read_body(env['rack.input'])
      secret = @secret.respond_to?(:call) ? @secret.call : @secret
      begin
        env[ENV_KEY] = CrosslyWebhooks.verify(raw, env['HTTP_CROSSLY_SIGNATURE'], secret.to_s,
                                              tolerance_seconds: @tolerance)
      rescue CrosslyWebhooks::VerificationError => e
        return CrosslyKit.webhook_rejection(e)
      end
      @app.call(env)
    end

    private

    def read_body(input)
      return '' if input.nil?

      input.rewind if input.respond_to?(:rewind)
      raw = input.read.to_s
      input.rewind if input.respond_to?(:rewind)
      raw
    end
  end

  # [status, headers, body] for a webhook that did not verify: 400, or 500 when no secret is configured (that is
  # the receiver's bug, not the sender's).
  def self.webhook_rejection(error)
    status = error.reason == 'missing_secret' ? 500 : 400
    [status, { 'content-type' => 'application/json' },
     [JSON.generate(error: { code: error.reason, message: error.message })]]
  end

  # Rails controller concern:
  #
  #   class CrosslyWebhooksController < ActionController::API
  #     include CrosslyKit::RailsWebhook
  #     verify_crossly_webhook only: :create      # secret: Rails credentials crossly.webhook_secret, else ENV
  #
  #     def create
  #       event = crossly_event                   # CrosslyWebhooks::Event: id, type, created, data
  #       head :no_content
  #     end
  #   end
  #
  # Verifies request.raw_post, renders 400 JSON when it does not verify, and skips CSRF protection for the
  # actions it guards (a webhook carries no CSRF token). No dependency on Rails.
  module RailsWebhook
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      # +secret+: a String or a lambda; default Rails.application.credentials.dig(:crossly, :webhook_secret), else
      # ENV['CROSSLY_WEBHOOK_SECRET']. Other options (only:, except:, if:) go to before_action.
      def verify_crossly_webhook(secret: nil, tolerance_seconds: CrosslyWebhooks::DEFAULT_TOLERANCE_SECONDS, **filter)
        skip_forgery_protection(**filter) if respond_to?(:skip_forgery_protection)
        before_action(**filter) { |controller| controller.send(:verify_crossly_webhook!, secret, tolerance_seconds) }
      end
    end

    # The verified event, after the before_action ran.
    def crossly_event
      @crossly_event
    end

    private

    def verify_crossly_webhook!(secret = nil, tolerance_seconds = CrosslyWebhooks::DEFAULT_TOLERANCE_SECONDS)
      secret = secret.call if secret.respond_to?(:call)
      secret ||= crossly_rails_credential || ENV.fetch('CROSSLY_WEBHOOK_SECRET', nil)
      @crossly_event = CrosslyWebhooks.verify(request.raw_post, request.headers['Crossly-Signature'], secret.to_s,
                                              tolerance_seconds: tolerance_seconds)
    rescue CrosslyWebhooks::VerificationError => e
      render json: { error: { code: e.reason, message: e.message } },
             status: e.reason == 'missing_secret' ? 500 : 400
    end

    def crossly_rails_credential
      return nil unless defined?(::Rails) && ::Rails.respond_to?(:application) && ::Rails.application

      creds = ::Rails.application.credentials
      creds.respond_to?(:dig) ? creds.dig(:crossly, :webhook_secret) : nil
    rescue StandardError
      nil
    end
  end
end
