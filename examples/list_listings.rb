# frozen_string_literal: true

# Print every listing in your Crossly store, page by page.
#
#   gem install crossly
#   CROSSLY_TOKEN=crossly_pat_... ruby list_listings.rb

require 'crossly/client'

crossly = Crossly::Client.new(ENV.fetch('CROSSLY_TOKEN'))

begin
  crossly.paginate(limit: 100) { |page, limit| crossly.listings.list_listings(page: page, limit: limit) }.each do |listing|
    puts format('%-28s %-10s %s', listing.id, listing.status, listing.title)
  end
rescue CrosslyKit::Error => e
  # e.code is stable (unauthorized, rate_limited, …); quote e.correlation_id to support.
  warn "#{e.status} #{e.code}: #{e.message} (correlation id #{e.correlation_id || '-'})"
  exit 1
end
