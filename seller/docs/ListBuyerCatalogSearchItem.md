# Crossly::ListBuyerCatalogSearchItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **title** | **String** |  |  |
| **price_cents** | **Float** |  |  |
| **compare_at_cents** | **Float** | MSRP above the ask, or null. Never fabricated from a stale value. | [optional] |
| **currency** | **String** |  |  |
| **condition** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **category_main** | **String** |  | [optional] |
| **category_sub** | **String** |  | [optional] |
| **thumbnail** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  |  |
| **seller_username** | **String** |  | [optional] |
| **seller_display_name** | **String** |  | [optional] |
| **quantity_available** | **Float** | Units a buyer can actually take right now. Reserved units are excluded. |  |
| **listed_at** | **String** |  | [optional] |
| **url** | **String** | Canonical buyer-facing URL, so a client never has to build one. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::ListBuyerCatalogSearchItem.new(
  slug: null,
  title: null,
  price_cents: null,
  compare_at_cents: null,
  currency: null,
  condition: null,
  brand: null,
  category_main: null,
  category_sub: null,
  thumbnail: null,
  images: null,
  seller_username: null,
  seller_display_name: null,
  quantity_available: null,
  listed_at: null,
  url: null
)
```

