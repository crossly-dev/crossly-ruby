# CrosslyBuyer::CreateAutomationRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **trigger_type** | **String** |  |  |
| **condition_type** | **String** |  | [optional] |
| **action_type** | **String** |  |  |
| **last_run_at** | **Time** |  | [optional] |
| **next_run_at** | **Time** |  | [optional] |
| **run_count** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateAutomationRuleResponse.new(
  id: null,
  name: null,
  created_at: null,
  updated_at: null,
  user_id: null,
  is_active: null,
  platforms: null,
  trigger_type: null,
  condition_type: null,
  action_type: null,
  last_run_at: null,
  next_run_at: null,
  run_count: null
)
```

