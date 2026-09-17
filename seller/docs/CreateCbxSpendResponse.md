# Crossly::CreateCbxSpendResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_id** | **String** |  |  |
| **duplicate** | **Boolean** |  |  |
| **base_units_spent** | **String** |  |  |
| **skim_total_base_units** | **String** |  |  |
| **skim_events_base_units** | **String** |  |  |
| **skim_platform_base_units** | **String** |  |  |
| **skim_capped_by_order_fee** | **Boolean** |  |  |
| **cents_per_token** | **Float** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxSpendResponse.new(
  spend_id: null,
  duplicate: null,
  base_units_spent: null,
  skim_total_base_units: null,
  skim_events_base_units: null,
  skim_platform_base_units: null,
  skim_capped_by_order_fee: null,
  cents_per_token: null
)
```

