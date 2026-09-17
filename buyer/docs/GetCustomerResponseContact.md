# CrosslyBuyer::GetCustomerResponseContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **address** | [**GetCustomerResponseContactAddress**](GetCustomerResponseContactAddress.md) |  | [optional] |
| **address_platform** | **String** | Where the address came from, so the UI can say. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetCustomerResponseContact.new(
  email: null,
  name: null,
  phone: null,
  address: null,
  address_platform: null
)
```

