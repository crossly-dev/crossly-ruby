# CrosslyBuyer::ListCbxDisbursementRulesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **threshold_base_units** | **String** |  |  |
| **distribute_bps** | **Float** |  |  |
| **check_cadence_hours** | **Float** |  |  |
| **require_coverage_bps** | **Float** |  |  |
| **metric** | **String** |  |  |
| **lookback_days** | **Float** |  |  |
| **max_recipients** | **Float** |  |  |
| **is_active** | **Boolean** |  |  |
| **last_fired_at** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListCbxDisbursementRulesItem.new(
  id: null,
  name: null,
  threshold_base_units: null,
  distribute_bps: null,
  check_cadence_hours: null,
  require_coverage_bps: null,
  metric: null,
  lookback_days: null,
  max_recipients: null,
  is_active: null,
  last_fired_at: null
)
```

