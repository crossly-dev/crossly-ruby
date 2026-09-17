# Crossly::CreateCbxCreditRefreshResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_line_id** | **String** |  |  |
| **earned_limit_cents** | **Float** |  |  |
| **stake_bonus_cents** | **Float** |  |  |
| **total_limit_cents** | **Float** |  |  |
| **rate_bps** | **Float** |  |  |
| **term_days** | **Float** |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateCbxCreditRefreshResponse.new(
  credit_line_id: null,
  earned_limit_cents: null,
  stake_bonus_cents: null,
  total_limit_cents: null,
  rate_bps: null,
  term_days: null,
  status: null
)
```

