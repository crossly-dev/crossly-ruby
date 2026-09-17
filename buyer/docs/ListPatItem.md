# CrosslyBuyer::ListPatItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **prefix** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **environment** | **String** |  |  |
| **last_used_at** | **Time** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **revoked_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListPatItem.new(
  id: null,
  name: null,
  prefix: null,
  scopes: null,
  environment: null,
  last_used_at: null,
  expires_at: null,
  revoked_at: null,
  created_at: null
)
```

