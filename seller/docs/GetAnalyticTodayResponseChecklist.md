# Crossly::GetAnalyticTodayResponseChecklist

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_to_ship** | **Float** |  |  |
| **unread_messages** | **Float** |  |  |
| **listings_stale_enough_to_relist** | **Float** |  |  |
| **drafts_waiting** | **Float** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetAnalyticTodayResponseChecklist.new(
  orders_to_ship: null,
  unread_messages: null,
  listings_stale_enough_to_relist: null,
  drafts_waiting: null
)
```

