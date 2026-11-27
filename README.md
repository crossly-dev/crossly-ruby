# Crossly Ruby SDK

[![ci](https://github.com/crossly-dev/crossly-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/crossly-dev/crossly-ruby/actions/workflows/ci.yml) [![release](https://github.com/crossly-dev/crossly-ruby/actions/workflows/release.yml/badge.svg)](https://github.com/crossly-dev/crossly-ruby/actions/workflows/release.yml) [![RubyGems](https://img.shields.io/gem/v/crossly)](https://rubygems.org/gems/crossly) [![license](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

Official Ruby clients for the [Crossly](https://crossly.net) API: list once and sell across every marketplace, read
orders, manage inventory, and receive signed webhooks. Generated from the public OpenAPI specs and released
automatically when they change, with signed build provenance.

## Install

| client | for | install |
|---|---|---|
| seller | your store: listings, crossposting, orders, analytics | `gem install crossly` |
| buyer | shopping: cart, orders, wishlists, offers, cashback | `gem install crossly_buyer` |

## Two clients, two credentials

| client | credential |
|---|---|
| seller | a Personal Access Token (`crossly_pat_…`, Settings → Developer) or a seller OAuth token |
| buyer | a buyer OAuth token (`crossly_oat_…`) with `buyer:*` scopes |

They are not interchangeable: a seller token is refused by the buyer API and the reverse, even for the same
Crossly account. A 401 from a call that looks right usually means the other client's token.

## First call

```ruby
require 'crossly/client'

crossly = Crossly::Client.new(ENV.fetch('CROSSLY_TOKEN'))   # crossly_pat_…

# crossly.listings is Crossly::ListingsApi; every generated method, unchanged
page = crossly.listings.list_listings(page: 1, limit: 25)
page.data.each { |listing| puts "#{listing.id} #{listing.title} #{listing.status}" }
```

The generated classes also work on their own:

```ruby
require 'crossly'

Crossly.configure { |config| config.access_token = ENV.fetch('CROSSLY_TOKEN') }
page = Crossly::ListingsApi.new.list_listings(page: 1, limit: 25)
```

List calls return `{ data, pagination }` and page with `page` and `limit`. Money fields named `…_cents` are
integer cents. Through `Crossly::Client`, a failed call raises `CrosslyKit::Error` with `#status`, `#code` (the API's `error.code`), `#message`, `#details` and `#correlation_id`, the id support can trace; the bare generated classes raise `Crossly::ApiError` with `#code` (the HTTP status) and `#response_body`.

## Webhooks

Crossly signs every webhook with `Crossly-Signature: t=<unix>,v1=<hex HMAC-SHA256 of "t.body">`. The verifier
ships in the seller and buyer packages and checks the signature in constant time, rejects a timestamp more than
five minutes old, and returns the parsed event:

```ruby
require 'crossly_webhooks'

# raw_body: the exact bytes received (in Rails, request.raw_post)
begin
  event = CrosslyWebhooks.verify(raw_body, request.headers['Crossly-Signature'], ENV.fetch('CROSSLY_WEBHOOK_SECRET'))
rescue CrosslyWebhooks::VerificationError => e
  return head(:bad_request)   # e.reason: bad_signature, timestamp_out_of_tolerance, malformed_header
end
# event.id, event.type, event.created, event.data
```

Verify the raw bytes, not a re-serialised body. `webhooks/` holds the same verifier on its own, with the shared
test vectors every language's port is checked against on each build.

## The client

`Crossly::Client.new(token, **options)` (`require 'crossly/client'`) and `CrosslyBuyer::Client.new(token)`
(`require 'crossly_buyer/client'`) configure the generated client once and add what every integration otherwise
writes by hand:

- **Retries**: 429, 500, 502, 503, 504 and timeouts / dropped connections are retried (3 times by default) with
  exponential backoff, waiting what `Retry-After` says when the API sends it.
- **Idempotent writes**: every POST and PATCH carries an `Idempotency-Key` (one per call, the same on each of its
  retries), so the API replays a retried write instead of applying it twice. Choose the key yourself when the
  retry may come from another process: `crossly.idempotent("refund-#{order_id}") { … }`.
- **Pagination**: `paginate { |page, limit| … }` is a lazy Enumerator over every row of a `{ data, pagination }`
  list, stopping at `pagination.total_pages` (or a short page).
- **Timeout** 30 s; **User-Agent** `crossly-ruby/<version>`; **errors** as `CrosslyKit::Error`.

```ruby
crossly.paginate { |page, limit| crossly.orders.list_orders(page: page, limit: limit) }.each do |order|
  puts order.id
end

begin
  crossly.listings.get_listing('lst_missing')
rescue CrosslyKit::Error => e
  warn "#{e.status} #{e.code} #{e.message} (correlation id #{e.correlation_id})"
end
```

`crossly.listings` is `crossly.api(:listings)`; `crossly.trade_block`, `crossly.nft_market` and `crossly.ai` find
`TradeBlockApi`, `NFTMarketApi` and `AIApi`. `crossly.api_client` is the generated `ApiClient`.

| option | default | |
|---|---|---|
| `base_url` | `https://crossly.net/api` | e.g. the sandbox, `https://sandbox.crossly.net/api` |
| `timeout` | `30` | seconds |
| `max_retries` | `3` | `0` turns retries off |
| `backoff_base`, `max_backoff`, `max_retry_after` | `0.5`, `20.0`, `120.0` | seconds |
| `idempotency` | `true` | stamp POST/PATCH with an `Idempotency-Key` |
| `headers` | `{}` | sent on every request, e.g. `{ 'X-Storefront-Id' => store_id }` |
| `user_agent` | | appended after `crossly-ruby/<version>` |
| `on_retry` | | `->(attempt, delay_seconds, api_error) { … }`, for logging |

## Webhook middleware

Both verify the signature over the raw body, answer 400 with `{ "error": { "code", "message" } }` when it does
not verify, and hand your code a `CrosslyWebhooks::Event` (`id`, `type`, `created`, `data`). Neither makes the gem
depend on Rack or Rails.

**Rails**, as a controller concern (it also skips CSRF protection for the actions it guards; the secret is
`Rails.application.credentials.crossly[:webhook_secret]`, else `CROSSLY_WEBHOOK_SECRET`):

```ruby
require 'crossly_kit'

class CrosslyWebhooksController < ApplicationController
  include CrosslyKit::RailsWebhook
  verify_crossly_webhook only: :create

  def create
    Rails.logger.info("#{crossly_event.type}: #{crossly_event.data}")
    head :no_content
  end
end
```

**Rack** (Sinatra, Hanami, Roda, or Rails `config.middleware.use`): the event is `env['crossly.event']`.

```ruby
require 'crossly_kit'

use CrosslyKit::RackWebhook, secret: ENV.fetch('CROSSLY_WEBHOOK_SECRET'), path: '/webhooks/crossly'
```

Runnable versions are in [examples/](examples/).

## Where things are

| client | API classes | models | API reference pages |
|---|---|---|---|
| seller | `seller/lib/crossly/api/` | `seller/lib/crossly/models/<area>/` | `seller/docs/` |
| buyer | `buyer/lib/crossly_buyer/api/` | `buyer/lib/crossly_buyer/models/<area>/` | `buyer/docs/` |

One class per API group (`OrdersApi`, `ListingsApi`, …), one model per type, the
models grouped one folder per product area (`vault`, `world`, `order`, …). A type
several endpoints share is ONE model, named after where it first appears
(`GetOrderResponse`, `ListOrdersItem`) or, for small shared shapes such as `{ ok }`,
after its fields (`OkResponse`). Each client README lists every method.

## Versions and changelog

Semantic versioning. While the version is 0.x, a release that removes an operation or a model bumps the minor
version; anything else bumps the patch. Every [CHANGELOG](CHANGELOG.md) entry lists the operations and models
that were added, changed or removed in the specs it was generated from.

## Verifying a release

Every release artifact is built on GitHub-hosted runners by [release.yml](.github/workflows/release.yml) and
carries a signed SLSA provenance attestation:

```sh
gh attestation verify <downloaded-file> --repo crossly-dev/crossly-ruby
```

## Contributing

`seller/`, `buyer/` and `webhooks/` are generated, so a pull request that edits them would be overwritten by the
next release. Open an issue instead: the fix goes into the API spec or the generator, and every language picks it
up. [CONTRIBUTING.md](CONTRIBUTING.md) explains how to regenerate locally.

## More

- API reference and guides: https://crossly.net/docs
- Other languages: https://github.com/crossly-dev
- TypeScript (Node and browsers): [`@crossly/sdk`](https://github.com/crossly-dev/crossly-sdk); command line: [`@crossly/cli`](https://github.com/crossly-dev/crossly-cli); AI agents: [`@crossly/mcp`](https://github.com/crossly-dev/crossly-mcp)

## License

[MIT](LICENSE)
