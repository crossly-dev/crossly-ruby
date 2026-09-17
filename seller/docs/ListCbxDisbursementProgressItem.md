# Crossly::ListCbxDisbursementProgressItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |
| **name** | **String** |  |  |
| **pool_base_units** | **String** |  |  |
| **threshold_base_units** | **String** |  |  |
| **progress_bps** | **Float** |  |  |
| **next_eligible_at** | **String** |  | [optional] |
| **last_fired_at** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListCbxDisbursementProgressItem.new(
  rule_id: null,
  name: null,
  pool_base_units: null,
  threshold_base_units: null,
  progress_bps: null,
  next_eligible_at: null,
  last_fired_at: null
)
```

