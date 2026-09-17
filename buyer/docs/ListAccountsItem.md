# CrosslyBuyer::ListAccountsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **account_slot** | **Float** |  |  |
| **label** | **String** |  | [optional] |
| **platform_username** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **last_synced_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListAccountsItem.new(
  id: null,
  platform: null,
  account_slot: null,
  label: null,
  platform_username: null,
  status: null,
  last_synced_at: null,
  created_at: null
)
```

