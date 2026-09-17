# CrosslyBuyer::ListBuyerActivityItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **namespace** | **String** |  |  |
| **identifier_value** | **String** |  |  |
| **retail_host** | **String** |  | [optional] |
| **page_price_cents** | **Float** |  | [optional] |
| **matched** | **Boolean** |  |  |
| **best_price_cents** | **Float** |  | [optional] |
| **observed_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListBuyerActivityItem.new(
  id: null,
  namespace: null,
  identifier_value: null,
  retail_host: null,
  page_price_cents: null,
  matched: null,
  best_price_cents: null,
  observed_at: null
)
```

