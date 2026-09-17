# Crossly::GetTeamResponseMembers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **member_user_id** | **String** |  |  |
| **member_email** | **String** |  | [optional] |
| **member_display_name** | **String** |  | [optional] |
| **role** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **revoked_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetTeamResponseMembers.new(
  id: null,
  member_user_id: null,
  member_email: null,
  member_display_name: null,
  role: null,
  scopes: null,
  revoked_at: null,
  created_at: null
)
```

