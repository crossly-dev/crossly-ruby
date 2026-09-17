# Crossly::GetConnectionEmailResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **is_connected** | **Boolean** |  |  |
| **email** | **String** |  |  |
| **host** | **String** |  | [optional] |
| **port** | **Float** |  | [optional] |
| **last_synced_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetConnectionEmailResponseData.new(
  id: null,
  type: null,
  is_connected: null,
  email: null,
  host: null,
  port: null,
  last_synced_at: null
)
```

