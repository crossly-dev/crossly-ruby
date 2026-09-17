# CrosslyBuyer::GetOrderCancelEligibilityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eligible** | **Boolean** |  |  |
| **eligible_cancel_reason** | **Array&lt;Object&gt;** |  |  |
| **failure_reason** | **Array&lt;Object&gt;** |  |  |
| **source** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderCancelEligibilityResponse.new(
  eligible: null,
  eligible_cancel_reason: null,
  failure_reason: null,
  source: null
)
```

