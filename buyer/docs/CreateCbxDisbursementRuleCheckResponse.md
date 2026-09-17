# CrosslyBuyer::CreateCbxDisbursementRuleCheckResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outcome** | **String** |  |  |
| **fired** | **Boolean** |  |  |
| **pool_base_units** | **String** |  |  |
| **threshold_base_units** | **String** |  |  |
| **distribute_base_units** | **String** |  |  |
| **coverage_bps** | **Float** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateCbxDisbursementRuleCheckResponse.new(
  outcome: null,
  fired: null,
  pool_base_units: null,
  threshold_base_units: null,
  distribute_base_units: null,
  coverage_bps: null,
  campaign_id: null
)
```

