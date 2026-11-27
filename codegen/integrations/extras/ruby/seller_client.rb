# frozen_string_literal: true

require 'crossly'
require 'crossly_kit'

module Crossly
  # The seller client facade: retries, idempotent writes, pagination, typed errors (CrosslyKit::Error).
  #
  #   crossly = Crossly::Client.new(ENV.fetch('CROSSLY_TOKEN'))     # crossly_pat_…
  #   crossly.listings.list_listings(page: 1, limit: 25)           # Crossly::ListingsApi
  #
  # Options: see CrosslyKit::Client#initialize.
  class Client < CrosslyKit::Client
    def initialize(token, **options)
      super(token, namespace: ::Crossly, **options)
    end
  end
end
