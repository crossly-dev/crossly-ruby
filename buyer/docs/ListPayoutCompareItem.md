# CrosslyBuyer::ListPayoutCompareItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **gross_cents** | **Float** |  |  |
| **fee_cents** | **Float** |  |  |
| **fee_source** | **String** |  |  |
| **shipping_cents** | **Float** |  |  |
| **shipping_source** | **String** |  |  |
| **net_cents** | **Float** |  |  |
| **take_home_pct** | **Float** | Net as a percentage of gross, for comparing across price points. |  |
| **assumptions** | **Array&lt;String&gt;** | What we assumed, in the seller&#39;s words. Never empty when we guessed. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListPayoutCompareItem.new(
  platform: null,
  gross_cents: null,
  fee_cents: null,
  fee_source: null,
  shipping_cents: null,
  shipping_source: null,
  net_cents: null,
  take_home_pct: null,
  assumptions: null
)
```

