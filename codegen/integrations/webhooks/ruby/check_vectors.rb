# frozen_string_literal: true

# Run the shared vectors against the Ruby port:  ruby check_vectors.rb
# Exit 1 on any mismatch, including a vector that must fail and did not.

require 'json'
require_relative 'crossly_webhooks'

data = JSON.parse(File.read(File.join(__dir__, '..', 'test-vectors.json'), encoding: 'UTF-8'))
tolerance = data.fetch('toleranceSeconds')
ok = 0
bad = 0

data.fetch('vectors').each do |v|
  got =
    begin
      CrosslyWebhooks.verify(v['body'], v['header'], v['secret'],
                             tolerance_seconds: v.fetch('toleranceSeconds', tolerance), now: v['now'])
      'ok'
    rescue CrosslyWebhooks::VerificationError => e
      e.reason
    rescue StandardError => e
      # Any other raise is itself a failure: a verifier must reject cleanly, never crash.
      "threw:#{e.class}"
    end
  if got == v['expect']
    ok += 1
  else
    bad += 1
    puts "  MISMATCH #{v['name']}: expected #{v['expect']}, got #{got}"
  end
end

total = data['vectors'].size
failing = data['vectors'].count { |v| v['expect'] != 'ok' }
puts "  ruby: #{ok}/#{total} vectors agree (#{failing} must fail verification)"
exit(bad.zero? ? 0 : 1)
