# CrosslyBuyer::CreateBuyerCheckoutResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_slug** | **String** |  |  |
| **quantity** | **Float** |  |  |
| **total_cents** | **Float** |  |  |
| **currency** | **String** |  |  |
| **payment_status** | **String** |  |  |
| **payment_intent_id** | **String** |  | [optional] |
| **order_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateBuyerCheckoutResponse.new(
  listing_slug: null,
  quantity: null,
  total_cents: null,
  currency: null,
  payment_status: null,
  payment_intent_id: null,
  order_id: null
)
```

