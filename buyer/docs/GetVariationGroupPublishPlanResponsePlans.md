# CrosslyBuyer::GetVariationGroupPublishPlanResponsePlans

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **mode** | **String** |  |  |
| **listings_produced** | **Float** | How many marketplace listings this produces. One when grouped; one per  option when separate — the number the seller should see before they  commit, not after. |  |
| **explanation** | **String** | Plain-language, shown in the publish dialog. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetVariationGroupPublishPlanResponsePlans.new(
  platform: null,
  mode: null,
  listings_produced: null,
  explanation: null
)
```

