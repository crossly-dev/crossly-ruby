# CrosslyBuyer::ListAuthSessionsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_current** | **Boolean** |  |  |
| **id** | **String** |  |  |
| **user_agent** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **ip_country** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **last_used_at** | **Time** |  |  |
| **expires_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListAuthSessionsItem.new(
  is_current: null,
  id: null,
  user_agent: null,
  ip_address: null,
  ip_country: null,
  created_at: null,
  last_used_at: null,
  expires_at: null
)
```

