# CrosslyBuyer::ListCbxWalletPaymentReviewItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **external_id** | **String** |  |  |
| **payer_address** | **String** |  |  |
| **base_units** | **String** |  |  |
| **value_cents** | **Float** |  |  |
| **risk_level** | **String** |  | [optional] |
| **risk_exposures** | **Array&lt;String&gt;** |  |  |
| **screening_provider** | **String** |  | [optional] |
| **release_reason** | **String** |  | [optional] |
| **tx_sig** | **String** |  |  |
| **confirmed_at** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListCbxWalletPaymentReviewItem.new(
  id: null,
  external_id: null,
  payer_address: null,
  base_units: null,
  value_cents: null,
  risk_level: null,
  risk_exposures: null,
  screening_provider: null,
  release_reason: null,
  tx_sig: null,
  confirmed_at: null
)
```

