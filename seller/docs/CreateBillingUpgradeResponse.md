# Crossly::CreateBillingUpgradeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_url** | **String** |  | [optional] |
| **tier** | **String** |  |  |
| **interval** | **String** |  |  |
| **charged** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateBillingUpgradeResponse.new(
  checkout_url: null,
  tier: null,
  interval: null,
  charged: null
)
```

