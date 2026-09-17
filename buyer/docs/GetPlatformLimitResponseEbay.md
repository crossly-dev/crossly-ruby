# CrosslyBuyer::GetPlatformLimitResponseEbay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **used** | **Float** |  |  |
| **limit** | **Float** |  |  |
| **remaining** | **Float** |  |  |
| **tier_configured** | **Boolean** | False if the user hasn&#39;t picked a tier (we default to 250 but flag it so the UI can prompt). |  |
| **respect_quota** | **Boolean** |  |  |
| **period_start** | **String** |  |  |
| **per_overage_fee_usd** | **Float** | Approximate cost if &#x60;used&#x60; overflows &#x60;limit&#x60; — informational. |  |
| **selling_cap** | [**GetPlatformLimitResponseEbaySellingCap**](GetPlatformLimitResponseEbaySellingCap.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetPlatformLimitResponseEbay.new(
  platform: null,
  used: null,
  limit: null,
  remaining: null,
  tier_configured: null,
  respect_quota: null,
  period_start: null,
  per_overage_fee_usd: null,
  selling_cap: null
)
```

