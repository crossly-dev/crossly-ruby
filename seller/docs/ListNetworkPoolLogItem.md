# Crossly::ListNetworkPoolLogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **action_type** | **String** |  |  |
| **target_user_id** | **String** |  |  |
| **performed_at** | **Time** |  |  |
| **rule_id** | **String** |  | [optional] |
| **engager_user_id** | **String** |  |  |
| **target_listing_id** | **String** |  | [optional] |
| **target_platform_listing_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListNetworkPoolLogItem.new(
  id: null,
  platform: null,
  action_type: null,
  target_user_id: null,
  performed_at: null,
  rule_id: null,
  engager_user_id: null,
  target_listing_id: null,
  target_platform_listing_id: null
)
```

