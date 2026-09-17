# CrosslyBuyer::CreateCbxClaimQuoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requested_base_units** | **String** |  |  |
| **service_fee_base_units** | **String** |  |  |
| **network_fee_base_units** | **String** |  |  |
| **net_base_units** | **String** |  |  |
| **requested_cents** | **Float** |  |  |
| **service_fee_cents** | **Float** |  |  |
| **network_fee_cents** | **Float** |  |  |
| **net_cents** | **Float** |  |  |
| **applied_bound** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateCbxClaimQuoteResponse.new(
  requested_base_units: null,
  service_fee_base_units: null,
  network_fee_base_units: null,
  net_base_units: null,
  requested_cents: null,
  service_fee_cents: null,
  network_fee_cents: null,
  net_cents: null,
  applied_bound: null
)
```

