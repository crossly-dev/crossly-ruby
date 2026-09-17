# CrosslyBuyer::GetCbxClaimResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_id** | **String** |  |  |
| **status** | **String** |  |  |
| **requested_base_units** | **String** |  |  |
| **net_base_units** | **String** |  |  |
| **tx_sig** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **attempts** | **Float** |  |  |
| **created_at** | **Time** |  |  |
| **confirmed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetCbxClaimResponse.new(
  claim_id: null,
  status: null,
  requested_base_units: null,
  net_base_units: null,
  tx_sig: null,
  failure_reason: null,
  attempts: null,
  created_at: null,
  confirmed_at: null
)
```

