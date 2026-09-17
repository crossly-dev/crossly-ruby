# CrosslyBuyer::ListSpatialPublicItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **public_slug** | **String** |  |  |
| **category_slug** | **String** |  |  |
| **item_count** | **Float** | Unsold stock that lands in this room. The same predicate the room uses. |  |
| **for_sale_count** | **Float** | How many of those a visitor could buy right now. |  |
| **price_from_cents** | **Float** | The cheapest and dearest thing for sale, in cents.  A BAND, deliberately, and never a quote: &#x60;listPublicSceneOffers&#x60; is the only authority on what a given object costs. Null when nothing is for sale — zero would read as free. | [optional] |
| **price_to_cents** | **Float** |  | [optional] |
| **preview_images** | **Array&lt;String&gt;** | Up to PREVIEW_IMAGES item images. Catalog art first, seller photo else. |  |
| **updated_at** | **String** | Last time the room itself changed. ISO, or null if the row has no date. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListSpatialPublicItem.new(
  name: null,
  public_slug: null,
  category_slug: null,
  item_count: null,
  for_sale_count: null,
  price_from_cents: null,
  price_to_cents: null,
  preview_images: null,
  updated_at: null
)
```

