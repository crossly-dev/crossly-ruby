# Crossly::GetBuyerAnywhereResponseAlternates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **host** | **String** | The retailer&#39;s hostname, e.g. &#x60;rei.com&#x60;. |  |
| **store_name** | **String** |  |  |
| **title** | **String** |  |  |
| **price_cents** | **Float** |  |  |
| **shipping_cents** | **Float** | Null &#x3D; UNKNOWN, never free. | [optional] |
| **currency** | **String** |  |  |
| **condition** | **String** |  | [optional] |
| **url** | **String** |  |  |
| **image_url** | **String** |  | [optional] |
| **buyer_cashback_cents** | **Float** | What the buyer gets back, in cents, if they buy through us.  Shown because a cashback figure the buyer cannot see is a figure they have no reason to believe. Derived from the store&#39;s rate, never stored per offer — rates change and a copied one goes stale silently. |  |
| **delivered_cents** | **Float** | Item + shipping when known; item alone otherwise. See &#x60;shippingUnknown&#x60;. |  |
| **shipping_unknown** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetBuyerAnywhereResponseAlternates.new(
  store_id: null,
  host: null,
  store_name: null,
  title: null,
  price_cents: null,
  shipping_cents: null,
  currency: null,
  condition: null,
  url: null,
  image_url: null,
  buyer_cashback_cents: null,
  delivered_cents: null,
  shipping_unknown: null
)
```

