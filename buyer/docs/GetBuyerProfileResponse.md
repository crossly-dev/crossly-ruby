# CrosslyBuyer::GetBuyerProfileResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **email** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **shipping_address** | **Object** |  | [optional] |
| **bucks_balance_cents** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetBuyerProfileResponse.new(
  id: null,
  email: null,
  display_name: null,
  shipping_address: null,
  bucks_balance_cents: null
)
```

