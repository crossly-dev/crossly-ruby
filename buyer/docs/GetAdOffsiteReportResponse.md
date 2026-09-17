# CrosslyBuyer::GetAdOffsiteReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_cents** | **Float** |  |  |
| **media_cost_cents** | **Float** |  |  |
| **management_fee_cents** | **Float** |  |  |
| **impressions** | **Float** |  |  |
| **clicks** | **Float** |  |  |
| **conversions** | **Float** |  |  |
| **attributed_revenue_cents** | **Float** |  |  |
| **spillover_conversions** | **Float** |  |  |
| **spillover_revenue_cents** | **Float** |  |  |
| **return_bps** | **Float** |  |  |
| **enabled** | **Boolean** |  |  |
| **auto_paused_at** | **String** |  | [optional] |
| **auto_paused_reason** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAdOffsiteReportResponse.new(
  spend_cents: null,
  media_cost_cents: null,
  management_fee_cents: null,
  impressions: null,
  clicks: null,
  conversions: null,
  attributed_revenue_cents: null,
  spillover_conversions: null,
  spillover_revenue_cents: null,
  return_bps: null,
  enabled: null,
  auto_paused_at: null,
  auto_paused_reason: null
)
```

