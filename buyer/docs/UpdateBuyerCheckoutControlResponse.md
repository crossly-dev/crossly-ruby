# CrosslyBuyer::UpdateBuyerCheckoutControlResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pat_id** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **daily_limit_cents** | **Float** |  |  |
| **per_order_limit_cents** | **Float** |  |  |
| **max_units_per_listing_per_day** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::UpdateBuyerCheckoutControlResponse.new(
  pat_id: null,
  enabled: null,
  daily_limit_cents: null,
  per_order_limit_cents: null,
  max_units_per_listing_per_day: null
)
```

