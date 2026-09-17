# Crossly::ListSpatialPublicOffersItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **String** |  |  |
| **listing_slug** | **String** | platform_listings.platform_listing_id — what POST /cart/items takes. |  |
| **price_cents** | **Float** |  |  |
| **currency** | **String** |  |  |
| **available** | **Float** | Remaining stock, when the listing declares one. Null &#x3D; unknown. | [optional] |
| **condition** | **String** | What a buyer is entitled to know before they add it. | [optional] |
| **grade_key** | **String** | Canonical grade key when the item is slabbed, e.g. &#x60;psa-10&#x60;. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListSpatialPublicOffersItem.new(
  item_id: null,
  listing_slug: null,
  price_cents: null,
  currency: null,
  available: null,
  condition: null,
  grade_key: null
)
```

