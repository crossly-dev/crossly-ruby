# CrosslyBuyer::ListBuyerCashbackItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **store_name** | **String** |  |  |
| **store_host** | **String** |  |  |
| **order_cents** | **Float** |  | [optional] |
| **cashback_cents** | **Float** | What WE will pay. Never the commission — that is our revenue and is not the shopper&#39;s business. | [optional] |
| **activated_at** | **Time** |  |  |
| **confirmed_at** | **Time** |  | [optional] |
| **paid_at** | **Time** |  | [optional] |
| **expired_at** | **Time** |  | [optional] |
| **rejected_reason** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListBuyerCashbackItem.new(
  id: null,
  status: null,
  store_name: null,
  store_host: null,
  order_cents: null,
  cashback_cents: null,
  activated_at: null,
  confirmed_at: null,
  paid_at: null,
  expired_at: null,
  rejected_reason: null
)
```

