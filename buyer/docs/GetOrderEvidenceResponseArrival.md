# CrosslyBuyer::GetOrderEvidenceResponseArrival

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** |  |  |
| **window_hours** | **Float** |  |  |
| **requested_at** | **Time** |  | [optional] |
| **closes_at** | **Time** | When the window shuts. Null when nothing was ever asked. | [optional] |
| **detail** | **String** |  |  |
| **photos** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderEvidenceResponseArrival.new(
  state: null,
  window_hours: null,
  requested_at: null,
  closes_at: null,
  detail: null,
  photos: null
)
```

