# Crossly::InlineObject2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **counter_cents** | **Integer** | Required when action is \&quot;counter\&quot;. Your asking price for the set. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::InlineObject2.new(
  action: null,
  counter_cents: null
)
```

