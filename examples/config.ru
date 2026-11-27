# frozen_string_literal: true

# A minimal Crossly webhook receiver on plain Rack.
#
#   gem install crossly rack rackup
#   CROSSLY_WEBHOOK_SECRET=... rackup -p 8080
#   # then point a webhook endpoint (Settings → Webhooks) at http://<host>:8080/webhooks/crossly
#
# CrosslyKit::RackWebhook checks the signature over the exact bytes received and answers 400 itself when it does
# not verify; the app below only ever sees verified events.

require 'crossly_kit'

use CrosslyKit::RackWebhook, secret: ENV.fetch('CROSSLY_WEBHOOK_SECRET'), path: '/webhooks/crossly'

run lambda { |env|
  event = env['crossly.event']
  return [404, {}, []] unless event

  warn "#{event.type}: #{event.data}"
  # Answer fast; do slow work after replying (a job queue), or Crossly retries the delivery.
  [204, {}, []]
}
