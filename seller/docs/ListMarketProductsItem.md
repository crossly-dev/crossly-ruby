# Crossly::ListMarketProductsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **brand** | **String** |  | [optional] |
| **model** | **String** |  | [optional] |
| **category_slug** | **String** |  |  |
| **style_code** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **lowest_ask_cents_from** | **Float** |  | [optional] |
| **highest_bid_cents** | **Float** |  | [optional] |
| **last_sale_cents** | **Float** |  | [optional] |
| **trades_count** | **Float** |  |  |
| **graded_grade_keys** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::ListMarketProductsItem.new(
  id: null,
  name: null,
  brand: null,
  model: null,
  category_slug: null,
  style_code: null,
  image_url: null,
  lowest_ask_cents_from: null,
  highest_bid_cents: null,
  last_sale_cents: null,
  trades_count: null,
  graded_grade_keys: null
)
```

