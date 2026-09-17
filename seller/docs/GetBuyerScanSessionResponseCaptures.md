# Crossly::GetBuyerScanSessionResponseCaptures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **match_method** | **String** |  |  |
| **identifier** | [**GetBuyerScanSessionResponseIdentifier**](GetBuyerScanSessionResponseIdentifier.md) |  | [optional] |
| **verdict** | **String** |  |  |
| **display_line** | **String** |  | [optional] |
| **saving_cents** | **Float** |  | [optional] |
| **created_at** | **String** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetBuyerScanSessionResponseCaptures.new(
  id: null,
  match_method: null,
  identifier: null,
  verdict: null,
  display_line: null,
  saving_cents: null,
  created_at: null
)
```

