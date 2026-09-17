# Crossly::CreateCbxRevenueSweepResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **swept** | **Boolean** |  |  |
| **base_units** | **String** |  |  |
| **tx_sig** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **breakdown** | [**CreateCbxRevenueSweepResponseBreakdown**](CreateCbxRevenueSweepResponseBreakdown.md) |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxRevenueSweepResponse.new(
  swept: null,
  base_units: null,
  tx_sig: null,
  reason: null,
  breakdown: null
)
```

