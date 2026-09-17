# CrosslyBuyer::GetTeamResponseInvitations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending** | **Boolean** |  |  |
| **id** | **String** |  |  |
| **invitee_email** | **String** |  |  |
| **role** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **expires_at** | **Time** |  |  |
| **accepted_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetTeamResponseInvitations.new(
  pending: null,
  id: null,
  invitee_email: null,
  role: null,
  scopes: null,
  expires_at: null,
  accepted_at: null,
  created_at: null
)
```

