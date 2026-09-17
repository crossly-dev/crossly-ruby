# Crossly::InlineResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **subscription_tier** | **String** |  | [optional] |
| **subscription_status** | **String** |  | [optional] |
| **pat_prefix** | **String** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::InlineResponse200.new(
  user_id: null,
  email: null,
  display_name: null,
  subscription_tier: null,
  subscription_status: null,
  pat_prefix: null,
  scopes: null
)
```

