# CrosslyBuyer::GetAiStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_key** | **Boolean** |  |  |
| **ai_enabled** | **Boolean** |  |  |
| **active_provider** | **String** |  |  |
| **providers** | **Object** |  |  |
| **capabilities** | [**GetAiStatusResponseCapabilities**](GetAiStatusResponseCapabilities.md) |  |  |
| **custom_config** | [**GetAiStatusResponseCustomConfig**](GetAiStatusResponseCustomConfig.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAiStatusResponse.new(
  has_key: null,
  ai_enabled: null,
  active_provider: null,
  providers: null,
  capabilities: null,
  custom_config: null
)
```

