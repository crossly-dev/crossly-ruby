# Crossly::CreateCbxAccrualPurchaseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrual_id** | **String** |  | [optional] |
| **duplicate** | **Boolean** |  |  |
| **cents** | **Float** |  |  |
| **rate_bps** | **Float** |  | [optional] |
| **matures_at** | **String** |  | [optional] |
| **boost_budget_exhausted** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxAccrualPurchaseResponse.new(
  accrual_id: null,
  duplicate: null,
  cents: null,
  rate_bps: null,
  matures_at: null,
  boost_budget_exhausted: null
)
```

