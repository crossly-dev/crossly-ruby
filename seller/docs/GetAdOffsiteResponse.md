# Crossly::GetAdOffsiteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  |  |
| **max_offsite_share_bps** | **Float** |  | [optional] |
| **min_return_bps** | **Float** |  | [optional] |
| **return_window_days** | **Float** |  | [optional] |
| **allowed_networks** | **Array&lt;String&gt;** |  | [optional] |
| **auto_paused_at** | **String** |  | [optional] |
| **auto_paused_reason** | **String** |  | [optional] |
| **opted_in_at** | **String** |  | [optional] |
| **terms** | [**GetAdOffsiteResponseTerms**](GetAdOffsiteResponseTerms.md) |  |  |
| **network_wired** | **Boolean** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetAdOffsiteResponse.new(
  enabled: null,
  max_offsite_share_bps: null,
  min_return_bps: null,
  return_window_days: null,
  allowed_networks: null,
  auto_paused_at: null,
  auto_paused_reason: null,
  opted_in_at: null,
  terms: null,
  network_wired: null
)
```

