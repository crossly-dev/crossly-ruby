# Crossly::CreateOrderCancelResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **cancelled_in_crossly** | **Boolean** |  |  |
| **platform_cancel** | **String** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateOrderCancelResponse.new(
  order_id: null,
  platform: null,
  cancelled_in_crossly: null,
  platform_cancel: null
)
```

