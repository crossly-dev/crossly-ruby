# Crossly::GetOrderEvidenceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grade** | [**GetOrderEvidenceResponseGrade**](GetOrderEvidenceResponseGrade.md) |  |  |
| **captures** | [**Array&lt;GetOrderEvidenceResponseCaptures&gt;**](GetOrderEvidenceResponseCaptures.md) |  |  |
| **seal** | [**GetOrderEvidenceResponseSeal**](GetOrderEvidenceResponseSeal.md) |  |  |
| **arrival** | [**GetOrderEvidenceResponseArrival**](GetOrderEvidenceResponseArrival.md) |  |  |
| **units** | [**Array&lt;GetOrderEvidenceResponseUnits&gt;**](GetOrderEvidenceResponseUnits.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetOrderEvidenceResponse.new(
  grade: null,
  captures: null,
  seal: null,
  arrival: null,
  units: null
)
```

