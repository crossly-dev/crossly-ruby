# Crossly::GetCbxSubjectStakeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_base_units** | **String** |  |  |
| **staked_base_units** | **String** |  |  |
| **available_base_units** | **String** |  |  |
| **tier_slug** | **String** |  | [optional] |
| **fee_discount_bps** | **Float** |  |  |
| **earn_boost_bps** | **Float** |  |  |
| **status** | **String** |  | [optional] |
| **unlocks_at** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetCbxSubjectStakeResponse.new(
  balance_base_units: null,
  staked_base_units: null,
  available_base_units: null,
  tier_slug: null,
  fee_discount_bps: null,
  earn_boost_bps: null,
  status: null,
  unlocks_at: null
)
```

