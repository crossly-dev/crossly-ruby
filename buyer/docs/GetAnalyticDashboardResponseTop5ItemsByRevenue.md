# CrosslyBuyer::GetAnalyticDashboardResponseTop5ItemsByRevenue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **sale_price** | **Float** |  | [optional] |
| **net_profit** | **Float** |  | [optional] |
| **detected_at** | **Time** |  |  |
| **item_title** | **String** |  | [optional] |
| **item_image** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAnalyticDashboardResponseTop5ItemsByRevenue.new(
  sale_id: null,
  platform: null,
  sale_price: null,
  net_profit: null,
  detected_at: null,
  item_title: null,
  item_image: null
)
```

