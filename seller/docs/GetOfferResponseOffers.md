# Crossly::GetOfferResponseOffers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **amount_cents** | **Float** |  |  |
| **listed_total_cents** | **Float** | Asking total when the offer was made — what the buyer responded to. | [optional] |
| **is_bundle** | **Boolean** |  |  |
| **items** | **Array&lt;Object&gt;** |  |  |
| **message** | **String** |  | [optional] |
| **parent_offer_id** | **String** |  | [optional] |
| **expires_at** | **Time** |  |  |
| **decided_at** | **Time** |  | [optional] |
| **consumed_at** | **Time** | Set once an accepted offer has actually been paid for. | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetOfferResponseOffers.new(
  id: null,
  status: null,
  amount_cents: null,
  listed_total_cents: null,
  is_bundle: null,
  items: null,
  message: null,
  parent_offer_id: null,
  expires_at: null,
  decided_at: null,
  consumed_at: null,
  created_at: null
)
```

