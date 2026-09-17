# CrosslyBuyer::ListInventoryUnitsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **order_id** | **String** |  | [optional] |
| **sold_at** | **Time** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **identifiers** | [**Array&lt;ListInventoryUnitsItemIdentifiers&gt;**](ListInventoryUnitsItemIdentifiers.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListInventoryUnitsItem.new(
  id: null,
  status: null,
  order_id: null,
  sold_at: null,
  notes: null,
  created_at: null,
  identifiers: null
)
```

