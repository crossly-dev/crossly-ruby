# CrosslyBuyer::GetCustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **normalized_handle** | **String** |  |  |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **total_orders** | **Float** |  |  |
| **total_spent** | **Float** |  |  |
| **orders** | [**Array&lt;GetCustomerResponseOrders&gt;**](GetCustomerResponseOrders.md) |  |  |
| **contact** | [**GetCustomerResponseContact**](GetCustomerResponseContact.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetCustomerResponse.new(
  normalized_handle: null,
  platforms: null,
  total_orders: null,
  total_spent: null,
  orders: null,
  contact: null
)
```

