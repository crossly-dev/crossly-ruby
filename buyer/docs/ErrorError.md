# CrosslyBuyer::ErrorError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Stable across versions — branch on this, not on the message. |  |
| **message** | **String** | Human-readable. May change. |  |
| **details** | **Object** | Optional structured context. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ErrorError.new(
  code: null,
  message: null,
  details: null
)
```

