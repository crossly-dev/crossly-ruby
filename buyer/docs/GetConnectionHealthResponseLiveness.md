# CrosslyBuyer::GetConnectionHealthResponseLiveness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_browser_push_at** | **String** | The clean \&quot;the browser pushed cookies\&quot; signal. | [optional] |
| **last_browser_push_ago** | **String** |  |  |
| **last_synced_at** | **String** | Also stamped by the executor on any successful server-side call, so it is NOT evidence the extension is alive. Exposed for debugging only. | [optional] |
| **last_used_at** | **String** | Last server-exec attempt, success or fail. | [optional] |
| **last_used_ago** | **String** |  |  |
| **auth_failure_streak** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetConnectionHealthResponseLiveness.new(
  last_browser_push_at: null,
  last_browser_push_ago: null,
  last_synced_at: null,
  last_used_at: null,
  last_used_ago: null,
  auth_failure_streak: null
)
```

