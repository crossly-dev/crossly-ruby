# CrosslyBuyer::CreateBuyerScanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verdict** | **String** |  |  |
| **crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] |
| **offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] |
| **alternates** | [**Array&lt;GetBuyerAnywhereResponseAlternates&gt;**](GetBuyerAnywhereResponseAlternates.md) |  |  |
| **saving_cents** | **Float** |  | [optional] |
| **shipping_unknown** | **Boolean** |  |  |
| **match_method** | **String** |  |  |
| **comparable** | **Boolean** |  |  |
| **confidence** | **Float** |  |  |
| **identifier** | [**CreateBuyerScanResponseIdentifier**](CreateBuyerScanResponseIdentifier.md) |  |  |
| **visual_matches** | **Array&lt;Object&gt;** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateBuyerScanResponse.new(
  verdict: null,
  crossly: null,
  offsite: null,
  alternates: null,
  saving_cents: null,
  shipping_unknown: null,
  match_method: null,
  comparable: null,
  confidence: null,
  identifier: null,
  visual_matches: null
)
```

