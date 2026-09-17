# Crossly::GetCbxTreasuryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taken_at** | **Time** |  |  |
| **coverage_bps** | **Float** |  |  |
| **ok** | **Boolean** |  |  |
| **reserve_base_units** | **String** |  |  |
| **outstanding_base_units** | **String** |  |  |
| **in_flight_claim_base_units** | **String** |  |  |
| **notes** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetCbxTreasuryResponse.new(
  taken_at: null,
  coverage_bps: null,
  ok: null,
  reserve_base_units: null,
  outstanding_base_units: null,
  in_flight_claim_base_units: null,
  notes: null
)
```

