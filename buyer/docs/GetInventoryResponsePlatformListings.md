# CrosslyBuyer::GetInventoryResponsePlatformListings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **quantity** | **Float** |  |  |
| **status** | **String** |  |  |
| **platform** | **String** |  |  |
| **error_message** | **String** |  | [optional] |
| **listing_id** | **String** |  |  |
| **account_slot** | **Float** |  |  |
| **delisted_at** | **Time** |  | [optional] |
| **sold_at** | **Time** |  | [optional] |
| **inventory_item_id** | **String** |  | [optional] |
| **platform_listing_id** | **String** |  |  |
| **platform_listing_url** | **String** |  | [optional] |
| **stock_location** | **String** |  |  |
| **listed_at** | **Time** |  | [optional] |
| **shared_at** | **Time** |  | [optional] |
| **delist_reason** | **String** |  | [optional] |
| **last_checked_at** | **Time** |  | [optional] |
| **views** | **Float** |  |  |
| **favorites** | **Float** |  |  |
| **comments_count** | **Float** |  |  |
| **last_stats_synced_at** | **Time** |  | [optional] |
| **hashtags** | **Array&lt;String&gt;** |  | [optional] |
| **is_draft** | **Boolean** |  |  |
| **scheduled_publish_at** | **Time** |  | [optional] |
| **is_dutch_auction** | **Boolean** |  |  |
| **dutch_start_cents** | **Float** |  | [optional] |
| **dutch_floor_cents** | **Float** |  | [optional] |
| **dutch_ends_at** | **Time** |  | [optional] |
| **is_pre_order** | **Boolean** |  |  |
| **expected_ship_by** | **String** |  | [optional] |
| **preorder_deposit_percent_bps** | **Float** |  | [optional] |
| **boosted_at** | **Time** |  | [optional] |
| **image_caption** | **String** |  | [optional] |
| **duration_days** | **Float** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **best_offer_enabled** | **Boolean** |  |  |
| **best_offer_auto_accept_cents** | **Float** |  | [optional] |
| **best_offer_auto_decline_cents** | **Float** |  | [optional] |
| **aesthetic_tags** | **Array&lt;String&gt;** |  | [optional] |
| **allows_local_pickup** | **Boolean** |  |  |
| **pickup_radius_miles** | **Float** |  | [optional] |
| **pickup_lat** | **String** |  | [optional] |
| **pickup_lng** | **String** |  | [optional] |
| **refurbished_tier** | **String** |  | [optional] |
| **charity_slug** | **String** |  | [optional] |
| **charity_percent_bps** | **Float** |  | [optional] |
| **crossly_return_policy_id** | **String** |  | [optional] |
| **crossly_shipping_policy_id** | **String** |  | [optional] |
| **crossly_payment_policy_id** | **String** |  | [optional] |
| **retail_price_cents** | **Float** |  | [optional] |
| **restricted_countries** | **Array&lt;String&gt;** |  | [optional] |
| **auction_extend_seconds** | **Float** |  | [optional] |
| **authentication_provider_slug** | **String** |  | [optional] |
| **authentication_required** | **Boolean** |  |  |
| **has_variants** | **Boolean** |  |  |
| **charity_id** | **String** |  | [optional] |
| **min_order_quantity** | **Float** |  |  |
| **wholesale_unit_price_cents** | **Float** |  | [optional] |
| **wholesale_min_quantity** | **Float** |  | [optional] |
| **auction_reserve_cents** | **Float** |  | [optional] |
| **is_gtc** | **Boolean** |  |  |
| **handling_time_days** | **Float** |  |  |
| **item_location** | **String** |  | [optional] |
| **item_location_zip** | **String** |  | [optional] |
| **item_location_country** | **String** |  | [optional] |
| **declared_shipping_cost** | **String** |  | [optional] |
| **return_policy_text** | **String** |  | [optional] |
| **last_drift_checked_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetInventoryResponsePlatformListings.new(
  id: null,
  user_id: null,
  quantity: null,
  status: null,
  platform: null,
  error_message: null,
  listing_id: null,
  account_slot: null,
  delisted_at: null,
  sold_at: null,
  inventory_item_id: null,
  platform_listing_id: null,
  platform_listing_url: null,
  stock_location: null,
  listed_at: null,
  shared_at: null,
  delist_reason: null,
  last_checked_at: null,
  views: null,
  favorites: null,
  comments_count: null,
  last_stats_synced_at: null,
  hashtags: null,
  is_draft: null,
  scheduled_publish_at: null,
  is_dutch_auction: null,
  dutch_start_cents: null,
  dutch_floor_cents: null,
  dutch_ends_at: null,
  is_pre_order: null,
  expected_ship_by: null,
  preorder_deposit_percent_bps: null,
  boosted_at: null,
  image_caption: null,
  duration_days: null,
  ends_at: null,
  best_offer_enabled: null,
  best_offer_auto_accept_cents: null,
  best_offer_auto_decline_cents: null,
  aesthetic_tags: null,
  allows_local_pickup: null,
  pickup_radius_miles: null,
  pickup_lat: null,
  pickup_lng: null,
  refurbished_tier: null,
  charity_slug: null,
  charity_percent_bps: null,
  crossly_return_policy_id: null,
  crossly_shipping_policy_id: null,
  crossly_payment_policy_id: null,
  retail_price_cents: null,
  restricted_countries: null,
  auction_extend_seconds: null,
  authentication_provider_slug: null,
  authentication_required: null,
  has_variants: null,
  charity_id: null,
  min_order_quantity: null,
  wholesale_unit_price_cents: null,
  wholesale_min_quantity: null,
  auction_reserve_cents: null,
  is_gtc: null,
  handling_time_days: null,
  item_location: null,
  item_location_zip: null,
  item_location_country: null,
  declared_shipping_cost: null,
  return_policy_text: null,
  last_drift_checked_at: null
)
```

