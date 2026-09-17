# CrosslyBuyer::GetAnalyticDashboardResponseRecentSales

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_order_id** | **String** |  | [optional] |
| **sale_price** | **Float** |  | [optional] |
| **platform_fee** | **Float** |  | [optional] |
| **shipping_cost** | **Float** |  | [optional] |
| **cost_of_goods** | **Float** |  | [optional] |
| **net_profit** | **Float** |  | [optional] |
| **detected_by** | **String** |  |  |
| **detected_at** | **Time** |  |  |
| **item_title** | **String** |  | [optional] |
| **item_image** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAnalyticDashboardResponseRecentSales.new(
  sale_id: null,
  platform: null,
  platform_order_id: null,
  sale_price: null,
  platform_fee: null,
  shipping_cost: null,
  cost_of_goods: null,
  net_profit: null,
  detected_by: null,
  detected_at: null,
  item_title: null,
  item_image: null
)
```

