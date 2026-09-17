# Crossly::CreateCbxRateQuoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_bps** | **Float** |  |  |
| **cents** | **Float** |  |  |
| **maturation_days** | **Float** |  |  |
| **source** | **String** |  |  |
| **tier_slug** | **String** |  | [optional] |
| **boost_name** | **String** |  | [optional] |
| **stake_boost_bps** | **Float** |  |  |
| **clamped** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxRateQuoteResponse.new(
  rate_bps: null,
  cents: null,
  maturation_days: null,
  source: null,
  tier_slug: null,
  boost_name: null,
  stake_boost_bps: null,
  clamped: null
)
```

