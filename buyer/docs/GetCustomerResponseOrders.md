# CrosslyBuyer::GetCustomerResponseOrders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_order_id** | **String** |  | [optional] |
| **buyer_username** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **sale_price** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetCustomerResponseOrders.new(
  id: null,
  platform: null,
  platform_order_id: null,
  buyer_username: null,
  status: null,
  sale_price: null,
  created_at: null
)
```

