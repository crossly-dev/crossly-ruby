# CrosslyBuyer::CreateCbxWalletPaymentQuoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_base64** | **String** |  |  |
| **base_units** | **String** |  |  |
| **value_cents** | **Float** |  |  |
| **cents_per_token** | **Float** |  |  |
| **source_token_account** | **String** |  |  |
| **destination_token_account** | **String** |  |  |
| **destination_owner** | **String** |  |  |
| **recent_blockhash** | **String** |  |  |
| **last_valid_block_height** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateCbxWalletPaymentQuoteResponse.new(
  transaction_base64: null,
  base_units: null,
  value_cents: null,
  cents_per_token: null,
  source_token_account: null,
  destination_token_account: null,
  destination_owner: null,
  recent_blockhash: null,
  last_valid_block_height: null
)
```

