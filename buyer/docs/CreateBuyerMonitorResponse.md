# CrosslyBuyer::CreateBuyerMonitorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  |  |
| **paused_reason** | **String** |  | [optional] |
| **match_count** | **Float** |  |  |
| **last_checked_at** | **String** |  | [optional] |
| **last_match_at** | **String** |  | [optional] |
| **created_at** | **String** |  |  |
| **webhook_secret** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **kind** | **String** |  |  |
| **delivery** | **String** |  |  |
| **webhook_url** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateBuyerMonitorResponse.new(
  active: null,
  paused_reason: null,
  match_count: null,
  last_checked_at: null,
  last_match_at: null,
  created_at: null,
  webhook_secret: null,
  id: null,
  name: null,
  kind: null,
  delivery: null,
  webhook_url: null
)
```

