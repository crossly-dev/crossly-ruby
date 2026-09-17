# Crossly::ListSourcingDemandItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **identifier_value** | **String** |  |  |
| **looks** | **Float** | How many times anybody looked, in the window. |  |
| **misses** | **Float** | How many of those we had nothing for. |  |
| **retailers** | **Float** | Distinct retailers it was seen on — breadth, not just volume. |  |
| **median_page_cents** | **Float** | What the retailers were charging, median of what we saw. | [optional] |
| **last_seen_at** | **Time** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::ListSourcingDemandItem.new(
  namespace: null,
  identifier_value: null,
  looks: null,
  misses: null,
  retailers: null,
  median_page_cents: null,
  last_seen_at: null
)
```

