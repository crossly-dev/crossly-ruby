# CrosslyBuyer::GetInboxConversationMessageResponseMessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **conversation_id** | **String** |  |  |
| **platform_message_id** | **String** |  | [optional] |
| **sender** | **String** |  |  |
| **body** | **String** |  | [optional] |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **sent_at** | **Time** |  |  |
| **synced_at** | **Time** |  | [optional] |
| **ai_intent** | **String** |  | [optional] |
| **ai_urgency** | **String** |  | [optional] |
| **ai_scam_score** | **Float** |  | [optional] |
| **ai_suggested_reply** | **String** |  | [optional] |
| **ai_triaged_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetInboxConversationMessageResponseMessages.new(
  id: null,
  conversation_id: null,
  platform_message_id: null,
  sender: null,
  body: null,
  attachments: null,
  sent_at: null,
  synced_at: null,
  ai_intent: null,
  ai_urgency: null,
  ai_scam_score: null,
  ai_suggested_reply: null,
  ai_triaged_at: null
)
```

