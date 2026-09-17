# CrosslyBuyer::ListConnectionsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **shop_url** | **String** |  | [optional] |
| **last_seen_active** | **Time** |  | [optional] |
| **token_expires_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListConnectionsItem.new(
  id: null,
  platform: null,
  is_active: null,
  shop_url: null,
  last_seen_active: null,
  token_expires_at: null,
  created_at: null
)
```

