# CrosslyBuyer::GetNetworkPoolResponseMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **platforms** | **String** |  |  |
| **joined_at** | **Time** |  |  |
| **share_enabled** | **Boolean** |  |  |
| **follow_enabled** | **Boolean** |  |  |
| **like_enabled** | **Boolean** |  |  |
| **last_engagement_at** | **Time** |  | [optional] |
| **engagements_performed** | **Float** |  |  |
| **engagements_received** | **Float** |  |  |
| **flagged_until** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetNetworkPoolResponseMember.new(
  id: null,
  user_id: null,
  platforms: null,
  joined_at: null,
  share_enabled: null,
  follow_enabled: null,
  like_enabled: null,
  last_engagement_at: null,
  engagements_performed: null,
  engagements_received: null,
  flagged_until: null
)
```

