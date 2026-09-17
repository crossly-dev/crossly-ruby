# CrosslyBuyer::CreateCbxWalletChallengeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **String** |  |  |
| **message** | **String** | The exact text to present for signing. |  |
| **nonce** | **String** |  |  |
| **expires_in_ms** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateCbxWalletChallengeResponse.new(
  wallet_id: null,
  message: null,
  nonce: null,
  expires_in_ms: null
)
```

