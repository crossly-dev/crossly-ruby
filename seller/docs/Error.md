# Crossly::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | [**ErrorError**](ErrorError.md) |  |  |
| **correlation_id** | **String** | Thread this back to server logs when reporting a problem. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::Error.new(
  error: null,
  correlation_id: null
)
```

