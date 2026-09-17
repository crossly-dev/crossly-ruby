# Crossly::ListSourcingDemandMineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier_value** | **String** |  |  |
| **lookers** | **Float** | How many distinct shoppers looked, in the window. |  |
| **misses** | **Float** | How many of those looks Crossly could not answer at all. |  |
| **median_retail_cents** | **Float** | What the retailers were charging, median of what Scout saw. | [optional] |
| **relation** | **String** | &#39;in_stock&#39; — it is in their inventory. &#39;sold_before&#39; — they have sold one. |  |
| **inventory_item_id** | **String** | Their own row, for the link. | [optional] |
| **title** | **String** |  | [optional] |
| **last_sold_cents** | **Float** | What they got for it last time, when they have sold one. | [optional] |
| **last_sold_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListSourcingDemandMineItem.new(
  identifier_value: null,
  lookers: null,
  misses: null,
  median_retail_cents: null,
  relation: null,
  inventory_item_id: null,
  title: null,
  last_sold_cents: null,
  last_sold_at: null
)
```

