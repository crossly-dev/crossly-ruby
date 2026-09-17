# CrosslyBuyer::ListInventoryActivityItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **platform** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **order_id** | **String** |  | [optional] |
| **inventory_item_id** | **String** |  | [optional] |
| **delta** | **Float** |  | [optional] |
| **quantity_before** | **Float** |  | [optional] |
| **quantity_after** | **Float** |  | [optional] |
| **sale_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListInventoryActivityItem.new(
  id: null,
  created_at: null,
  user_id: null,
  platform: null,
  type: null,
  order_id: null,
  inventory_item_id: null,
  delta: null,
  quantity_before: null,
  quantity_after: null,
  sale_id: null
)
```

