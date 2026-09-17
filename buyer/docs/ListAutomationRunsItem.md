# CrosslyBuyer::ListAutomationRunsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **status** | **String** |  |  |
| **error_message** | **String** |  | [optional] |
| **duration_ms** | **Float** |  | [optional] |
| **action_type** | **String** |  |  |
| **rule_id** | **String** |  | [optional] |
| **chain_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListAutomationRunsItem.new(
  id: null,
  created_at: null,
  user_id: null,
  status: null,
  error_message: null,
  duration_ms: null,
  action_type: null,
  rule_id: null,
  chain_id: null
)
```

