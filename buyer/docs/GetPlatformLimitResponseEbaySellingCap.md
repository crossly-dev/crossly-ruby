# CrosslyBuyer::GetPlatformLimitResponseEbaySellingCap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_limit** | **Float** | Monthly $$ ceiling — null when seller has no $$ cap set. | [optional] |
| **amount_used** | **Float** |  | [optional] |
| **quantity_limit** | **Float** | Monthly item-count ceiling — null when seller has no qty cap. | [optional] |
| **quantity_used** | **Float** |  | [optional] |
| **currency** | **String** |  |  |
| **fetched_at** | **String** | ISO timestamp this was fetched (used for cache freshness display). |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetPlatformLimitResponseEbaySellingCap.new(
  amount_limit: null,
  amount_used: null,
  quantity_limit: null,
  quantity_used: null,
  currency: null,
  fetched_at: null
)
```

