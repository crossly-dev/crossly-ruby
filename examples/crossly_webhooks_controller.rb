# frozen_string_literal: true

# Receiving Crossly webhooks in Rails.
#
#   # Gemfile
#   gem 'crossly'
#
#   # config/routes.rb
#   post '/webhooks/crossly', to: 'crossly_webhooks#create'
#
#   # the secret: bin/rails credentials:edit  ->  crossly: { webhook_secret: whsec_… }
#   # (or the CROSSLY_WEBHOOK_SECRET environment variable)
#
# verify_crossly_webhook checks request.raw_post against Crossly-Signature before the action runs, renders 400 when
# it does not verify, and skips CSRF protection for the actions it guards.

require 'crossly_kit'

class CrosslyWebhooksController < ApplicationController
  include CrosslyKit::RailsWebhook
  verify_crossly_webhook only: :create

  def create
    event = crossly_event # CrosslyWebhooks::Event: id, type, created, data
    case event.type
    when 'listing.sold'
      Rails.logger.info("sold: #{event.data}")
    end
    # Answer fast; do slow work in a job, or Crossly retries the delivery.
    head :no_content
  end
end
