# CrosslyBuyer::CreateBuyerIdentifyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier** | **String** |  |  |
| **confidence** | **Float** |  |  |
| **identifier** | [**CreateBuyerIdentifyResponseIdentifier**](CreateBuyerIdentifyResponseIdentifier.md) |  | [optional] |
| **vision_label** | **String** |  | [optional] |
| **vision_quota_exhausted** | **Boolean** | Surfaced rather than hidden: \&quot;we could not look harder\&quot; and \&quot;we looked and found nothing\&quot; are different answers, and a client that cannot tell them apart shows the wrong message on both. |  |
| **visual_matches** | [**Array&lt;CreateBuyerIdentifyResponseVisualMatches&gt;**](CreateBuyerIdentifyResponseVisualMatches.md) |  |  |
| **verdict** | **String** |  |  |
| **crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] |
| **offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] |
| **alternates** | [**Array&lt;GetBuyerAnywhereResponseAlternates&gt;**](GetBuyerAnywhereResponseAlternates.md) |  |  |
| **saving_cents** | **Float** |  | [optional] |
| **shipping_unknown** | **Boolean** |  |  |
| **hud** | [**CreateBuyerIdentifyResponseHud**](CreateBuyerIdentifyResponseHud.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateBuyerIdentifyResponse.new(
  tier: null,
  confidence: null,
  identifier: null,
  vision_label: null,
  vision_quota_exhausted: null,
  visual_matches: null,
  verdict: null,
  crossly: null,
  offsite: null,
  alternates: null,
  saving_cents: null,
  shipping_unknown: null,
  hud: null
)
```

