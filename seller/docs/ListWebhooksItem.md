# Crossly::ListWebhooksItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **url** | **String** |  |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** |  |  |
| **last_delivery_at** | **Time** |  | [optional] |
| **last_error_at** | **Time** |  | [optional] |
| **last_error** | **String** |  | [optional] |
| **consecutive_failures** | **Float** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::ListWebhooksItem.new(
  id: null,
  url: null,
  events: null,
  description: null,
  enabled: null,
  last_delivery_at: null,
  last_error_at: null,
  last_error: null,
  consecutive_failures: null,
  created_at: null
)
```

