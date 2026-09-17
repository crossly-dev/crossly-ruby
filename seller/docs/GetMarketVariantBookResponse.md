# Crossly::GetMarketVariantBookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition** | **String** |  |  |
| **grade_key** | **String** |  | [optional] |
| **bids** | [**Array&lt;GetMarketVariantBookResponseBids&gt;**](GetMarketVariantBookResponseBids.md) |  |  |
| **asks** | [**Array&lt;GetMarketVariantBookResponseBids&gt;**](GetMarketVariantBookResponseBids.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetMarketVariantBookResponse.new(
  condition: null,
  grade_key: null,
  bids: null,
  asks: null
)
```

