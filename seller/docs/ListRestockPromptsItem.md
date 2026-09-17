# Crossly::ListRestockPromptsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **listing_id** | **String** |  |  |
| **inventory_item_id** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **new_quantity** | **Float** |  |  |
| **created_at** | **Time** |  |  |
| **listing_title** | **String** |  | [optional] |
| **listing_images** | **Array&lt;String&gt;** |  | [optional] |
| **listing_price** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListRestockPromptsItem.new(
  id: null,
  listing_id: null,
  inventory_item_id: null,
  platforms: null,
  new_quantity: null,
  created_at: null,
  listing_title: null,
  listing_images: null,
  listing_price: null
)
```

