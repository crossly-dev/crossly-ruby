# Crossly::GetInboxResponseMessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **video_url** | **String** |  | [optional] |
| **synced_at** | **Time** |  | [optional] |
| **sent_at** | **Time** |  |  |
| **body** | **String** |  | [optional] |
| **conversation_id** | **String** |  |  |
| **platform_message_id** | **String** |  | [optional] |
| **sender** | **String** |  |  |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **ai_intent** | **String** |  | [optional] |
| **ai_urgency** | **String** |  | [optional] |
| **ai_scam_score** | **Float** |  | [optional] |
| **ai_suggested_reply** | **String** |  | [optional] |
| **ai_triaged_at** | **Time** |  | [optional] |
| **sticker_id** | **String** |  | [optional] |
| **gif_url** | **String** |  | [optional] |
| **video_thumb_url** | **String** |  | [optional] |
| **voice_url** | **String** |  | [optional] |
| **voice_duration_seconds** | **Float** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetInboxResponseMessages.new(
  id: null,
  video_url: null,
  synced_at: null,
  sent_at: null,
  body: null,
  conversation_id: null,
  platform_message_id: null,
  sender: null,
  attachments: null,
  ai_intent: null,
  ai_urgency: null,
  ai_scam_score: null,
  ai_suggested_reply: null,
  ai_triaged_at: null,
  sticker_id: null,
  gif_url: null,
  video_thumb_url: null,
  voice_url: null,
  voice_duration_seconds: null
)
```

