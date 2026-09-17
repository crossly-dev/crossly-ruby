# Crossly::CreateCbxWalletPaymentConfirmResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |
| **duplicate** | **Boolean** |  |  |
| **release_decision** | **String** |  |  |
| **release_reason** | **String** |  |  |
| **base_units** | **String** |  |  |
| **value_cents** | **Float** |  |  |
| **cents_per_token** | **Float** |  |  |
| **payer_address** | **String** |  |  |
| **risk_level** | **String** |  | [optional] |
| **risk_exposures** | **Array&lt;String&gt;** |  |  |
| **screening_provider** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxWalletPaymentConfirmResponse.new(
  payment_id: null,
  duplicate: null,
  release_decision: null,
  release_reason: null,
  base_units: null,
  value_cents: null,
  cents_per_token: null,
  payer_address: null,
  risk_level: null,
  risk_exposures: null,
  screening_provider: null
)
```

