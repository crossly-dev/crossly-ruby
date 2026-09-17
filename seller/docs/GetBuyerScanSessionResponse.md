# Crossly::GetBuyerScanSessionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **device** | **String** |  |  |
| **label** | **String** |  | [optional] |
| **started_at** | **String** |  |  |
| **ended_at** | **String** |  | [optional] |
| **live** | **Boolean** |  |  |
| **capture_count** | **Float** |  |  |
| **saved_cents** | **Float** | Sum of measured savings. Unmeasured captures contribute 0, not null. |  |
| **captures** | [**Array&lt;GetBuyerScanSessionResponseCaptures&gt;**](GetBuyerScanSessionResponseCaptures.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetBuyerScanSessionResponse.new(
  id: null,
  device: null,
  label: null,
  started_at: null,
  ended_at: null,
  live: null,
  capture_count: null,
  saved_cents: null,
  captures: null
)
```

