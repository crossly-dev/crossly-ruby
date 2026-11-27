# frozen_string_literal: true

# Exercise the hand-written layer against the generated client, with a stubbed transport (no network).
#
#   bundle exec ruby -Ilib smoke.rb <seller|buyer>
#
# Run by codegen/ci/check-ruby.sh on every build, in a copy of the client the extras were vendored into.
# Not shipped in the gem.

require 'json'
require 'openssl'
require 'stringio'

api = ARGV.fetch(0, 'seller')
BUYER = api == 'buyer'
if api == 'buyer'
  require 'crossly_buyer/client'
  NS = CrosslyBuyer
  KLASS = CrosslyBuyer::Client
  TOKEN = 'crossly_oat_test'
else
  require 'crossly/client'
  NS = Crossly
  KLASS = Crossly::Client
  TOKEN = 'crossly_pat_test'
end

$checks = 0
$failures = 0
def check(ok, what)
  $checks += 1
  return if ok

  $failures += 1
  puts "  FAIL #{what}"
end

Reply = Struct.new(:code, :headers, :body, :timed_out) do
  def success?
    code.to_i.between?(200, 299)
  end

  def timed_out?
    timed_out ? true : false
  end

  def return_message
    timed_out ? 'Timeout was reached' : 'No error'
  end

  def status_message
    "HTTP #{code}"
  end
end

# Stand-in for Typhoeus::Request#run: the real build_request runs (URL, auth, headers), only the network is stubbed.
class StubRun
  def initialize(request, queue, seen)
    @request = request
    @queue = queue
    @seen = seen
  end

  def run
    @seen << { method: @request.options[:method], url: @request.url, headers: @request.options[:headers].dup,
               body: @request.options[:body] }
    @queue.shift || raise('stub: no response queued')
  end
end

def client(queue, seen, sleeps, **opts)
  c = KLASS.new(TOKEN, sleep: ->(s) { sleeps << s }, backoff_base: 0.1, **opts)
  original = c.api_client.method(:build_request)
  c.api_client.define_singleton_method(:build_request) do |*args|
    StubRun.new(original.call(*args), queue, seen)
  end
  c
end

JSON_H = { 'Content-Type' => 'application/json' }.freeze
def page(rows, number, total_pages)
  Reply.new(200, JSON_H, JSON.generate(data: rows, pagination: { page: number, limit: 2, total: 3, totalPages: total_pages }))
end

def list(c, page_no, limit)
  if BUYER
    c.buyer.list_buyer_orders(page: page_no, limit: limit)
  else
    c.listings.list_listings(page: page_no, limit: limit)
  end
end

# 1. retries: 429 with Retry-After, then 503, then success; auth + User-Agent on each attempt; no key on a GET.
seen = []
sleeps = []
c = client([
             Reply.new(429, JSON_H.merge('Retry-After' => '2'), '{"error":{"code":"rate_limited","message":"slow"}}'),
             Reply.new(503, JSON_H, '{"error":{"code":"unavailable","message":"busy"}}'),
             page([{ id: 'a' }, { id: 'b' }], 1, 2)
           ], seen, sleeps)
res = list(c, 1, 2)
check(res.data.size == 2, 'retried through 429 and 503 to a typed { data } response')
check(seen.size == 3, "3 attempts (got #{seen.size})")
check(sleeps[0] == 2.0, "first wait honours Retry-After: 2 (got #{sleeps.inspect})")
check(sleeps[1] && sleeps[1] >= 0.1 && sleeps[1] <= 0.2, "second wait is exponential, 0.1..0.2 s (got #{sleeps.inspect})")
check(seen[0][:headers]['Authorization'] == "Bearer #{TOKEN}", 'Bearer token sent')
check(seen[0][:headers]['User-Agent'].to_s.match?(%r{\Acrossly-ruby/\d+\.\d+\.\d+}), "User-Agent crossly-ruby/<version> (got #{seen[0][:headers]['User-Agent']})")
check(seen[0][:url].start_with?('https://crossly.net/api/v1/'), "default base URL (got #{seen[0][:url]})")
check(!seen[0][:headers].key?('Idempotency-Key'), 'no Idempotency-Key on a GET')

# 2. typed error with code + correlation id; a 404 is not retried.
seen = []
sleeps = []
c = client([Reply.new(404, JSON_H.merge('X-Correlation-Id' => 'corr_h'),
                      '{"error":{"code":"not_found","message":"No such thing","details":{"id":"x"}},"correlationId":"corr_b"}')],
           seen, sleeps)
begin
  list(c, 1, 2)
  check(false, '404 raises')
rescue CrosslyKit::Error => e
  check(e.status == 404, 'error status 404')
  check(e.code == 'not_found', "error code from the envelope (got #{e.code})")
  check(e.correlation_id == 'corr_b', 'error correlation id from the envelope')
  check(e.details == { 'id' => 'x' }, 'error details')
  check(e.message == 'No such thing', 'error message')
end
check(seen.size == 1, 'a 404 is not retried')

# 3. a timeout (no response) is retried; retries give up after max_retries with the last error.
seen = []
sleeps = []
c = client([Reply.new(0, {}, '', true)] + Array.new(3) { Reply.new(500, JSON_H, '{"error":{"code":"internal","message":"boom"},"correlationId":"c5"}') },
           seen, sleeps, max_retries: 3)
begin
  list(c, 1, 2)
  check(false, 'persistent failure raises')
rescue CrosslyKit::Error => e
  check(e.status == 500 && e.code == 'internal' && e.correlation_id == 'c5', 'last 500 surfaces as CrosslyKit::Error')
end
check(seen.size == 4, "1 attempt + 3 retries (got #{seen.size})")
c = client([Reply.new(0, {}, '', true)], [], [], max_retries: 0)
begin
  list(c, 1, 2)
rescue CrosslyKit::Error => e
  check(e.status.zero? && e.code == 'network_error', "no response is network_error (got #{e.code})")
end

# 4. writes: one Idempotency-Key per call, reused by its retries; idempotent() chooses it.
seen = []
sleeps = []
c = client([Reply.new(502, {}, ''), Reply.new(200, JSON_H, '{"data":{}}'), Reply.new(200, JSON_H, '{"data":{}}'),
            Reply.new(200, JSON_H, '{"data":{}}')], seen, sleeps)
c.api_client.call_api(:POST, '/v1/anything', header_params: {}, body: '{"a":1}')
k0 = seen[0][:headers]['Idempotency-Key'].to_s
check(k0.match?(/\A\h{8}-\h{4}-4\h{3}-[89ab]\h{3}-\h{12}\z/), "POST carries a v4 UUID Idempotency-Key (got #{k0})")
check(seen[1][:headers]['Idempotency-Key'] == k0, 'the retry reuses the same key')
check(seen[1][:body] == '{"a":1}', 'the retry resends the body')
c.api_client.call_api(:PATCH, '/v1/anything', header_params: {})
k2 = seen[2][:headers]['Idempotency-Key']
check(k2 && k2 != k0, 'a new call gets a new key')
c.idempotent('order-42-refund') { |x| x.api_client.call_api(:POST, '/v1/anything', header_params: {}) }
check(seen[3][:headers]['Idempotency-Key'] == 'order-42-refund', 'idempotent() sets the key')

# 5. pagination.
seen = []
c = client([page([{ id: 'a' }, { id: 'b' }], 1, 2), page([{ id: 'c' }], 2, 2)], seen, [])
ids = c.paginate(limit: 2) { |p, l| list(c, p, l) }.map(&:id)
check(ids == %w[a b c], "paginate yields every row across pages (got #{ids.inspect})")
check(seen.size == 2, 'paginate stops at total_pages')
calls = 0
rows = c.paginate(limit: 2) do |p, l|
  calls += 1
  { data: p == 1 ? [1, 2] : [3], pagination: { page: p, limit: l } }
end.to_a
check(rows == [1, 2, 3] && calls == 2, 'paginate without total_pages stops on a short page')
check(c.respond_to?(BUYER ? :buyer : :listings), 'API groups are methods')

# 6. webhook middleware.
SECRET = 'whsec_smoke'
BODY = '{"id":"evt_1","type":"listing.sold","created":"2026-01-01T00:00:00.000Z","data":{"listingId":"lst_1"}}'
t = Time.now.to_i
good = "t=#{t},v1=#{OpenSSL::HMAC.hexdigest('SHA256', SECRET, "#{t}.#{BODY}")}"
bad = "t=#{t},v1=#{'0' * 64}"

downstream = ->(env) { [204, {}, [env['crossly.event'].type]] }
rack = CrosslyKit::RackWebhook.new(downstream, secret: SECRET, path: '/webhooks/crossly')
env = ->(sig, path = '/webhooks/crossly') { { 'PATH_INFO' => path, 'rack.input' => StringIO.new(BODY), 'HTTP_CROSSLY_SIGNATURE' => sig } }
status, _h, body = rack.call(env.call(good))
check(status == 204 && body == ['listing.sold'], 'Rack: verified request reaches the app with env["crossly.event"]')
e1 = env.call(good)
rack.call(e1)
check(e1['rack.input'].read == BODY, 'Rack: body left readable')
status, headers, body = rack.call(env.call(bad))
check(status == 400 && headers['content-type'] == 'application/json' && JSON.parse(body.first)['error']['code'] == 'bad_signature',
      'Rack: bad signature gets 400 bad_signature')
status, = CrosslyKit::RackWebhook.new(->(_e) { [200, {}, ['passed']] }, secret: SECRET, path: '/webhooks/crossly').call(env.call(bad, '/other'))
check(status == 200, 'Rack: other paths pass through')
status, = CrosslyKit::RackWebhook.new(downstream, secret: nil).call(env.call(good))
check(status == 500, 'Rack: no secret configured is a 500')

FakeRequest = Struct.new(:raw_post, :headers)
class FakeController
  class << self
    attr_reader :filters, :skipped

    def before_action(**opts, &blk)
      (@filters ||= []) << [opts, blk]
    end

    def skip_forgery_protection(**opts)
      @skipped = opts
    end
  end

  include CrosslyKit::RailsWebhook
  verify_crossly_webhook secret: -> { SECRET }, only: :create

  attr_reader :rendered, :request

  def initialize(request)
    @request = request
  end

  def render(**opts)
    @rendered = opts
  end

  def run_filters
    self.class.filters.each { |_opts, blk| blk.call(self) }
    self
  end
end
check(FakeController.filters.first[0] == { only: :create } && FakeController.skipped == { only: :create },
      'Rails: before_action and skip_forgery_protection get the filter options')
ok = FakeController.new(FakeRequest.new(BODY, { 'Crossly-Signature' => good })).run_filters
check(ok.rendered.nil? && ok.crossly_event&.id == 'evt_1', 'Rails: verified request exposes crossly_event')
no = FakeController.new(FakeRequest.new(BODY, { 'Crossly-Signature' => bad })).run_filters
check(no.rendered && no.rendered[:status] == 400 && no.rendered[:json][:error][:code] == 'bad_signature',
      'Rails: bad signature renders 400 bad_signature')

puts "  ruby extras (#{api}): #{$checks - $failures}/#{$checks} checks pass"
exit($failures.zero? ? 0 : 1)
