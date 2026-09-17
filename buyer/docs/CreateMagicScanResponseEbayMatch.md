# CrosslyBuyer::CreateMagicScanResponseEbayMatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **String** |  |  |
| **legacy_item_id** | **String** |  | [optional] |
| **title** | **String** |  |  |
| **brand** | **String** |  | [optional] |
| **price_cents** | **Float** | Normalized cents. eBay returns string + currency on &#x60;price.value&#x60;. | [optional] |
| **currency** | **String** |  | [optional] |
| **condition** | **String** |  | [optional] |
| **category_id** | **String** | Top-level category eBay assigned to the match (id + path). | [optional] |
| **category_path** | **String** |  | [optional] |
| **item_url** | **String** |  |  |
| **thumbnail_url** | **String** |  | [optional] |
| **aspects** | **Object** | Loosely-typed aspect bag — Brand, Color, Material, etc. when eBay inlines them. Always inspected defensively by the synthesizer. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateMagicScanResponseEbayMatch.new(
  item_id: null,
  legacy_item_id: null,
  title: null,
  brand: null,
  price_cents: null,
  currency: null,
  condition: null,
  category_id: null,
  category_path: null,
  item_url: null,
  thumbnail_url: null,
  aspects: null
)
```

