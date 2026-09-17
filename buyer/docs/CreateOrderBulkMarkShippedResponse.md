# CrosslyBuyer::CreateOrderBulkMarkShippedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Float** |  |  |
| **skipped** | **Float** | Cancelled/refunded orders in the request that were left untouched — reported so a caller can&#39;t mistake a partial success for \&quot;all done\&quot; and miss that a closed order was in the batch. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateOrderBulkMarkShippedResponse.new(
  updated: null,
  skipped: null
)
```

