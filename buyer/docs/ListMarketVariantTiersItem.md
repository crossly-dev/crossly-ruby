# CrosslyBuyer::ListMarketVariantTiersItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **condition** | **String** |  |  |
| **grade_key** | **String** | null &#x3D; ungraded, which is the tier every pre-grading order sits in. | [optional] |
| **lowest_ask_cents** | **Float** |  | [optional] |
| **highest_bid_cents** | **Float** |  | [optional] |
| **open_asks** | **Float** |  |  |
| **open_bids** | **Float** |  |  |
| **last_sale_cents** | **Float** |  | [optional] |
| **last_sale_at** | **Time** |  | [optional] |
| **trades_count** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListMarketVariantTiersItem.new(
  label: null,
  condition: null,
  grade_key: null,
  lowest_ask_cents: null,
  highest_bid_cents: null,
  open_asks: null,
  open_bids: null,
  last_sale_cents: null,
  last_sale_at: null,
  trades_count: null
)
```

