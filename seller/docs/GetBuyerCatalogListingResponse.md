# Crossly::GetBuyerCatalogListingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **title** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **price_cents** | **Float** |  |  |
| **compare_at_cents** | **Float** |  | [optional] |
| **currency** | **String** |  |  |
| **status** | **String** |  |  |
| **available** | **Boolean** |  |  |
| **quantity_available** | **Float** |  |  |
| **condition** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **color** | **Array&lt;String&gt;** |  | [optional] |
| **category_main** | **String** |  | [optional] |
| **category_sub** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  |  |
| **seller_username** | **String** |  | [optional] |
| **seller_display_name** | **String** |  | [optional] |
| **listed_at** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetBuyerCatalogListingResponse.new(
  slug: null,
  title: null,
  description: null,
  price_cents: null,
  compare_at_cents: null,
  currency: null,
  status: null,
  available: null,
  quantity_available: null,
  condition: null,
  brand: null,
  size: null,
  color: null,
  category_main: null,
  category_sub: null,
  images: null,
  seller_username: null,
  seller_display_name: null,
  listed_at: null
)
```

