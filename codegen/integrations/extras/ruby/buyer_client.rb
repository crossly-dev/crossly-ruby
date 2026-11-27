# frozen_string_literal: true

require 'crossly_buyer'
require 'crossly_kit'

module CrosslyBuyer
  # The buyer client facade: retries, idempotent writes, pagination, typed errors (CrosslyKit::Error).
  #
  #   crossly = CrosslyBuyer::Client.new(ENV.fetch('CROSSLY_BUYER_TOKEN'))   # crossly_oat_…, buyer:* scopes
  #   crossly.buyer.list_buyer_orders(page: 1, limit: 25)                  # CrosslyBuyer::BuyerApi
  #
  # Options: see CrosslyKit::Client#initialize.
  class Client < CrosslyKit::Client
    def initialize(token, **options)
      super(token, namespace: ::CrosslyBuyer, **options)
    end
  end
end
