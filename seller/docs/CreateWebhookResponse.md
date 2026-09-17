# Crossly::CreateWebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** |  |  |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **url** | **String** |  |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateWebhookResponse.new(
  secret: null,
  id: null,
  created_at: null,
  url: null,
  events: null,
  description: null,
  enabled: null
)
```

