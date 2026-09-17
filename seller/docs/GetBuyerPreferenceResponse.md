# Crossly::GetBuyerPreferenceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retailers** | [**Array&lt;GetBuyerPreferenceResponseRetailers&gt;**](GetBuyerPreferenceResponseRetailers.md) | Retailers they shop, most-seen first. |  |
| **brands** | [**Array&lt;GetBuyerPreferenceResponseBrands&gt;**](GetBuyerPreferenceResponseBrands.md) | What they look at, by catalog brand where we could resolve one. |  |
| **price_band** | [**GetBuyerPreferenceResponsePriceBand**](GetBuyerPreferenceResponsePriceBand.md) |  | [optional] |
| **match_rate** | **Float** | How much of what they want we can actually supply. | [optional] |
| **observations** | **Float** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetBuyerPreferenceResponse.new(
  retailers: null,
  brands: null,
  price_band: null,
  match_rate: null,
  observations: null
)
```

