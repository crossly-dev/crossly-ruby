# CrosslyBuyer::ListCbxCampaignsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  |  |
| **name** | **String** |  |  |
| **status** | **String** |  |  |
| **budget_base_units** | **String** |  |  |
| **window_start** | **Time** |  |  |
| **window_end** | **Time** |  |  |
| **preview_recipient_count** | **Float** |  | [optional] |
| **executed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListCbxCampaignsItem.new(
  campaign_id: null,
  name: null,
  status: null,
  budget_base_units: null,
  window_start: null,
  window_end: null,
  preview_recipient_count: null,
  executed_at: null
)
```

