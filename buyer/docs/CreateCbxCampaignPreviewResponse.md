# CrosslyBuyer::CreateCbxCampaignPreviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient_count** | **Float** |  |  |
| **total_base_units** | **String** |  |  |
| **pool_balance_base_units** | **String** |  |  |
| **hash** | **String** |  |  |
| **allocations** | [**Array&lt;CreateCbxCampaignPreviewResponseAllocations&gt;**](CreateCbxCampaignPreviewResponseAllocations.md) |  |  |
| **allocations_truncated** | **Boolean** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateCbxCampaignPreviewResponse.new(
  recipient_count: null,
  total_base_units: null,
  pool_balance_base_units: null,
  hash: null,
  allocations: null,
  allocations_truncated: null
)
```

