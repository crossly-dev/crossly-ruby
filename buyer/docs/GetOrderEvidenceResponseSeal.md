# CrosslyBuyer::GetOrderEvidenceResponseSeal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assessment** | [**GetOrderEvidenceResponseSealAssessment**](GetOrderEvidenceResponseSealAssessment.md) |  |  |
| **dispatch_searched_frames** | **Float** | How many packing frames were searched to find the dispatch frame shot closest to the arrival angle. Null when the dispatch reading was simply the frame the recorder ended on.  Surfaced rather than kept internal: \&quot;the best of eighteen frames matched\&quot; is a weaker claim than \&quot;the frame we took matched\&quot;, and a reviewer has to be able to tell them apart. See frame-match.ts. | [optional] |
| **has_dispatch** | **Boolean** |  |  |
| **has_arrival** | **Boolean** |  |  |
| **has_courier_photo** | **Boolean** | A courier photo exists, even if the seal was not legible in it. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderEvidenceResponseSeal.new(
  assessment: null,
  dispatch_searched_frames: null,
  has_dispatch: null,
  has_arrival: null,
  has_courier_photo: null
)
```

