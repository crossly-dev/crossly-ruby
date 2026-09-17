# Crossly::CreateBuyerLockonObserveResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lockon_id** | **String** |  |  |
| **status** | **String** |  |  |
| **identifier** | [**CreateBuyerIdentifyResponseIdentifier**](CreateBuyerIdentifyResponseIdentifier.md) |  | [optional] |
| **candidates** | [**Array&lt;CreateBuyerLockonObserveResponseCandidates&gt;**](CreateBuyerLockonObserveResponseCandidates.md) | Present when we could not settle it alone. Show them; a pinch on one is the cheapest, strongest disambiguation available. |  |
| **observation_count** | **Float** |  |  |
| **vision_calls** | **Float** |  |  |
| **vision_quota_exhausted** | **Boolean** |  |  |
| **verdict** | **String** |  |  |
| **crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] |
| **offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] |
| **alternates** | [**Array&lt;GetBuyerAnywhereResponseAlternates&gt;**](GetBuyerAnywhereResponseAlternates.md) |  |  |
| **saving_cents** | **Float** |  | [optional] |
| **shipping_unknown** | **Boolean** |  |  |
| **hud** | [**CreateBuyerIdentifyResponseHud**](CreateBuyerIdentifyResponseHud.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateBuyerLockonObserveResponse.new(
  lockon_id: null,
  status: null,
  identifier: null,
  candidates: null,
  observation_count: null,
  vision_calls: null,
  vision_quota_exhausted: null,
  verdict: null,
  crossly: null,
  offsite: null,
  alternates: null,
  saving_cents: null,
  shipping_unknown: null,
  hud: null
)
```

