# Crossly::GetConnectionHealthResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extension** | [**GetConnectionHealthResponseExtension**](GetConnectionHealthResponseExtension.md) |  |  |
| **accounts** | [**Array&lt;GetConnectionHealthResponseAccounts&gt;**](GetConnectionHealthResponseAccounts.md) |  |  |
| **generated_at** | **String** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetConnectionHealthResponse.new(
  extension: null,
  accounts: null,
  generated_at: null
)
```

