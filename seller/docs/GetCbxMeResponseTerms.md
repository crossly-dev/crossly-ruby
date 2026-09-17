# Crossly::GetCbxMeResponseTerms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **earn_rate_bps** | **Float** |  |  |
| **purchase_maturation_days** | **Float** |  |  |
| **claim_min_cents** | **Float** |  |  |
| **withdrawal_fee_bps** | **Float** |  |  |
| **withdrawal_fee_min_cents** | **Float** |  |  |
| **withdrawal_fee_max_cents** | **Float** |  |  |
| **inactivity_expiry_days** | **Float** |  |  |
| **claims_enabled** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetCbxMeResponseTerms.new(
  earn_rate_bps: null,
  purchase_maturation_days: null,
  claim_min_cents: null,
  withdrawal_fee_bps: null,
  withdrawal_fee_min_cents: null,
  withdrawal_fee_max_cents: null,
  inactivity_expiry_days: null,
  claims_enabled: null
)
```

