# CrosslyBuyer::GetActionLogResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **source** | **String** |  |  |
| **platform** | **String** |  | [optional] |
| **action** | **String** |  |  |
| **latency_ms** | **Float** |  | [optional] |
| **error_class** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **user_agent** | **String** |  | [optional] |
| **oauth_app_id** | **String** |  | [optional] |
| **category** | **String** |  |  |
| **actor_user_id** | **String** |  | [optional] |
| **finished_at** | **Time** |  | [optional] |
| **correlation_id** | **String** |  |  |
| **track** | **String** |  | [optional] |
| **target_type** | **String** |  | [optional] |
| **target_id** | **String** |  | [optional] |
| **http_status** | **Float** |  | [optional] |
| **actor_email** | **String** | Resolved from actorUserId so the UI can say \&quot;Jane relisted this\&quot; rather than printing a UUID. Null for worker/system actions, which genuinely had no human actor. | [optional] |
| **actor_display_name** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetActionLogResponse.new(
  id: null,
  created_at: null,
  user_id: null,
  status: null,
  source: null,
  platform: null,
  action: null,
  latency_ms: null,
  error_class: null,
  error_message: null,
  ip_address: null,
  user_agent: null,
  oauth_app_id: null,
  category: null,
  actor_user_id: null,
  finished_at: null,
  correlation_id: null,
  track: null,
  target_type: null,
  target_id: null,
  http_status: null,
  actor_email: null,
  actor_display_name: null
)
```

