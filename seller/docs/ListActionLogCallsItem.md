# Crossly::ListActionLogCallsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  | [optional] |
| **platform** | **String** |  |  |
| **action** | **String** |  |  |
| **step** | **Float** |  | [optional] |
| **url** | **String** |  |  |
| **method** | **String** |  |  |
| **status_code** | **Float** |  | [optional] |
| **latency_ms** | **Float** |  | [optional] |
| **error_class** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **request_body_excerpt** | **String** |  | [optional] |
| **response_body_excerpt** | **String** |  | [optional] |
| **recipe_id** | **String** |  | [optional] |
| **doc_id_or_hash** | **String** |  | [optional] |
| **proxy_id** | **String** |  | [optional] |
| **correlation_id** | **String** |  |  |
| **action_event_id** | **String** |  | [optional] |
| **ok** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::ListActionLogCallsItem.new(
  id: null,
  created_at: null,
  user_id: null,
  platform: null,
  action: null,
  step: null,
  url: null,
  method: null,
  status_code: null,
  latency_ms: null,
  error_class: null,
  error_message: null,
  request_body_excerpt: null,
  response_body_excerpt: null,
  recipe_id: null,
  doc_id_or_hash: null,
  proxy_id: null,
  correlation_id: null,
  action_event_id: null,
  ok: null
)
```

