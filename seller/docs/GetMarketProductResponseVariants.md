# Crossly::GetMarketProductResponseVariants

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **label** | **String** |  |  |
| **sort_key** | **Float** |  |  |
| **external_id** | **String** |  | [optional] |
| **external_source** | **String** |  | [optional] |
| **external_synced_at** | **Time** |  | [optional] |
| **last_sale_cents** | **Float** |  | [optional] |
| **trades_count** | **Float** |  |  |
| **sku_id** | **String** |  |  |
| **last_sale_at** | **Time** |  | [optional] |
| **best_bid_cents** | **Float** |  | [optional] |
| **best_ask_cents** | **Float** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetMarketProductResponseVariants.new(
  id: null,
  label: null,
  sort_key: null,
  external_id: null,
  external_source: null,
  external_synced_at: null,
  last_sale_cents: null,
  trades_count: null,
  sku_id: null,
  last_sale_at: null,
  best_bid_cents: null,
  best_ask_cents: null
)
```

