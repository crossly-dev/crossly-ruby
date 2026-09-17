# CrosslyBuyer::GetOrderEvidenceResponseGrade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grade** | **String** |  |  |
| **points** | **Float** |  |  |
| **signals** | [**Array&lt;GetOrderEvidenceResponseGradeSignals&gt;**](GetOrderEvidenceResponseGradeSignals.md) |  |  |
| **next_step** | **String** | The single most valuable thing not yet done, phrased as an action.  One, not a checklist. A seller given six things to fix does none of them; a seller given the one worth the most does that one. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderEvidenceResponseGrade.new(
  grade: null,
  points: null,
  signals: null,
  next_step: null
)
```

