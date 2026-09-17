# Crossly::CreateCbxWalletChallengeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **String** |  |  |
| **message** | **String** | The exact text to present for signing. |  |
| **nonce** | **String** |  |  |
| **expires_in_ms** | **Float** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxWalletChallengeResponse.new(
  wallet_id: null,
  message: null,
  nonce: null,
  expires_in_ms: null
)
```

