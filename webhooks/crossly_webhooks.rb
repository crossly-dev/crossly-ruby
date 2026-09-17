# frozen_string_literal: true

require 'openssl'
require 'json'

# Verify a Crossly webhook.
#
#   Crossly-Signature: t=<unix seconds>,v1=<hex HMAC-SHA256>
#
# signed over "#{t}.#{raw_body}" with the endpoint's signing secret.
#
# Three ways to get this wrong, all silent:
#
#   1. Verifying a re-serialised body. JSON.parse then to_json does not
#      round-trip byte for byte, so genuine payloads fail and the usual fix is
#      to stop verifying. In Rails use `request.raw_post`, and read it before
#      anything else consumes the stream.
#   2. Comparing with ==. Ruby's String#== returns early on the first differing
#      byte. OpenSSL.fixed_length_secure_compare does not — but it RAISES on a
#      length mismatch, which a truncated signature produces, so the length is
#      checked first.
#   3. Ignoring the timestamp. Without it a captured request replays forever.
#      The timestamp is INSIDE the signed message, so it cannot be edited.
#
# Standard library only — no gems.
module CrosslyWebhooks
  DEFAULT_TOLERANCE_SECONDS = 300

  # Raised when a webhook does not verify. Carries a machine-readable +reason+
  # so a caller can tell a forged request from a clock problem; those want
  # different responses and different alerts.
  class VerificationError < StandardError
    # malformed_header | bad_signature | timestamp_out_of_tolerance | missing_secret
    attr_reader :reason

    def initialize(reason, message)
      @reason = reason
      super(message)
    end
  end

  Event = Struct.new(:id, :type, :created, :data, keyword_init: true)

  class << self
    # Verify a webhook and return the parsed event.
    #
    # @param raw_body [String] the EXACT bytes received — `request.raw_post`,
    #   never `payload.to_json`.
    # @param signature_header [String, nil] the Crossly-Signature header.
    # @param secret [String] from Settings → Webhooks.
    # @raise [VerificationError] on anything that does not verify. It raises
    #   rather than returning false so a caller who forgets to check a return
    #   value does not silently accept forged events.
    def verify(raw_body, signature_header, secret,
               tolerance_seconds: DEFAULT_TOLERANCE_SECONDS, now: nil)
      raise VerificationError.new('missing_secret', 'A webhook signing secret is required.') if secret.nil? || secret.empty?

      if signature_header.nil? || signature_header.empty?
        raise VerificationError.new('malformed_header', 'No Crossly-Signature header on the request.')
      end

      timestamp, provided = parse_signature_header(signature_header)
      if timestamp.nil?
        raise VerificationError.new(
          'malformed_header',
          %(Could not parse Crossly-Signature: expected "t=<unix>,v1=<hex>", got "#{signature_header[0, 60]}".)
        )
      end

      expected = OpenSSL::HMAC.hexdigest('SHA256', secret, "#{timestamp}.#{raw_body}")

      unless secure_compare(expected, provided)
        raise VerificationError.new(
          'bad_signature',
          'Signature did not match. If genuine payloads are failing, you are almost certainly ' \
          'verifying a re-serialised body — pass request.raw_post, not payload.to_json.'
        )
      end

      # Freshness AFTER the signature, so an attacker learns nothing about
      # timestamps without already holding a valid signature.
      current = now || Time.now.to_i
      drift = (current - timestamp).abs
      if drift > tolerance_seconds
        raise VerificationError.new(
          'timestamp_out_of_tolerance',
          "Timestamp is #{drift}s away from now (tolerance #{tolerance_seconds}s). " \
          'This is a replay guard — if it fires on live traffic, check your server clock.'
        )
      end

      payload = JSON.parse(raw_body)
      Event.new(
        id: payload['id'],
        type: payload['type'],
        created: payload['created'],
        data: payload['data']
      )
    end

    private

    # Field-wise rather than one regex, so a future v2= alongside v1= does not
    # break existing verifiers — the entire reason the scheme is versioned.
    def parse_signature_header(header)
      t = nil
      v1 = nil

      header.split(',').each do |part|
        key, _, value = part.partition('=')
        next if value.nil? || !part.include?('=')

        key = key.strip
        value = value.strip

        case key
        when 't'
          # Strict: Integer('1e9') raises, String#to_i would silently give 1.
          begin
            t = Integer(value, 10)
          rescue ArgumentError, TypeError
            return [nil, nil]
          end
        when 'v1'
          v1 = value
        end
      end

      return [nil, nil] if t.nil? || v1.nil? || v1.empty?

      [t, v1]
    end

    # fixed_length_secure_compare RAISES on differing lengths, and a truncated
    # signature is exactly that. Checking length first turns a crash into a
    # clean rejection; the length of a hex digest is not a secret.
    def secure_compare(a, b)
      return false unless a.bytesize == b.bytesize

      OpenSSL.fixed_length_secure_compare(a, b)
    end
  end
end
