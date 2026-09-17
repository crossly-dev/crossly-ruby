# Crossly::CreateBuyerCartQuoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **tax_cents** | **Float** |  |  |
| **shipping_cents** | **Float** |  |  |
| **total_cents** | **Float** |  |  |
| **currency** | **String** |  |  |
| **items_total_cents** | **Float** |  |  |
| **pickup_cart_item_ids** | **Array&lt;String&gt;** | Lines being collected in person, so a summary can name what ships free. |  |
| **tax_complete** | **Boolean** | False means there is no saved delivery address, so &#x60;taxCents&#x60; is a floor rather than a final figure — not that tax is zero. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateBuyerCartQuoteResponse.new(
  kind: null,
  tax_cents: null,
  shipping_cents: null,
  total_cents: null,
  currency: null,
  items_total_cents: null,
  pickup_cart_item_ids: null,
  tax_complete: null
)
```

