# CrosslyBuyer::GetCatalogLookupResponseOffers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **price_cents** | **Float** |  |  |
| **currency** | **String** |  |  |
| **condition** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **url** | **String** |  |  |
| **listing_slug** | **String** | Null on an order-book ask, which is a price rather than a purchasable listing. | [optional] |
| **available** | **Float** |  | [optional] |
| **catalog** | [**GetCatalogLookupResponseCatalog**](GetCatalogLookupResponseCatalog.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetCatalogLookupResponseOffers.new(
  kind: null,
  price_cents: null,
  currency: null,
  condition: null,
  title: null,
  image_url: null,
  url: null,
  listing_slug: null,
  available: null,
  catalog: null
)
```

