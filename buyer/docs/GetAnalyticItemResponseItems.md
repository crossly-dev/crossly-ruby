# CrosslyBuyer::GetAnalyticItemResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_order_id** | **String** |  | [optional] |
| **item_title** | **String** |  | [optional] |
| **item_brand** | **String** |  | [optional] |
| **item_sku** | **String** |  | [optional] |
| **sale_price** | **Float** |  | [optional] |
| **platform_fee** | **Float** |  | [optional] |
| **shipping_cost** | **Float** |  | [optional] |
| **cost_of_goods** | **Float** |  | [optional] |
| **net_profit** | **Float** |  | [optional] |
| **margin_pct** | **Float** |  |  |
| **days_to_sell** | **Float** |  | [optional] |
| **detected_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAnalyticItemResponseItems.new(
  sale_id: null,
  platform: null,
  platform_order_id: null,
  item_title: null,
  item_brand: null,
  item_sku: null,
  sale_price: null,
  platform_fee: null,
  shipping_cost: null,
  cost_of_goods: null,
  net_profit: null,
  margin_pct: null,
  days_to_sell: null,
  detected_at: null
)
```

