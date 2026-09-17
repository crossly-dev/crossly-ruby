# CrosslyBuyer::ListConnectedAppsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_id** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **connected_at** | **Time** |  |  |
| **last_used_at** | **Time** |  | [optional] |
| **app_id** | **String** |  |  |
| **app_name** | **String** |  |  |
| **app_description** | **String** |  | [optional] |
| **homepage_url** | **String** |  | [optional] |
| **developer_name** | **String** |  | [optional] |
| **developer_email** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListConnectedAppsItem.new(
  grant_id: null,
  scopes: null,
  connected_at: null,
  last_used_at: null,
  app_id: null,
  app_name: null,
  app_description: null,
  homepage_url: null,
  developer_name: null,
  developer_email: null
)
```

