# CrosslyBuyer::GetBuyerAnywhereResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verdict** | **String** |  |  |
| **saving_cents** | **Float** |  | [optional] |
| **shipping_unknown** | **Boolean** |  |  |
| **crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] |
| **offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] |
| **alternates** | [**Array&lt;GetBuyerAnywhereResponseAlternates&gt;**](GetBuyerAnywhereResponseAlternates.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetBuyerAnywhereResponse.new(
  verdict: null,
  saving_cents: null,
  shipping_unknown: null,
  crossly: null,
  offsite: null,
  alternates: null
)
```

