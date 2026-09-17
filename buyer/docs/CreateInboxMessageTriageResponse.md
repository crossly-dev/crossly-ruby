# CrosslyBuyer::CreateInboxMessageTriageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_intent** | **String** |  | [optional] |
| **ai_urgency** | **String** |  | [optional] |
| **ai_scam_score** | **Float** |  | [optional] |
| **ai_suggested_reply** | **String** |  | [optional] |
| **ai_triaged_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateInboxMessageTriageResponse.new(
  ai_intent: null,
  ai_urgency: null,
  ai_scam_score: null,
  ai_suggested_reply: null,
  ai_triaged_at: null
)
```

