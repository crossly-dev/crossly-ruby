# CrosslyBuyer::GetPlatformLimitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ebay** | [**GetPlatformLimitResponseEbay**](GetPlatformLimitResponseEbay.md) |  | [optional] |
| **etsy** | [**GetPlatformLimitResponseEtsy**](GetPlatformLimitResponseEtsy.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetPlatformLimitResponse.new(
  ebay: null,
  etsy: null
)
```

