# CrosslyBuyer::GetAnalyticBookkeepingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Float** |  |  |
| **monthly_pl** | [**Array&lt;GetAnalyticBookkeepingResponseMonthlyPL&gt;**](GetAnalyticBookkeepingResponseMonthlyPL.md) |  |  |
| **annual_totals** | [**GetAnalyticBookkeepingResponseAnnualTotals**](GetAnalyticBookkeepingResponseAnnualTotals.md) |  |  |
| **platform_breakdown** | [**Array&lt;GetAnalyticBookkeepingResponsePlatformBreakdown&gt;**](GetAnalyticBookkeepingResponsePlatformBreakdown.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAnalyticBookkeepingResponse.new(
  year: null,
  monthly_pl: null,
  annual_totals: null,
  platform_breakdown: null
)
```

