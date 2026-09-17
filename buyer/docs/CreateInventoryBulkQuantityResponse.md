# CrosslyBuyer::CreateInventoryBulkQuantityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affected** | **Float** | Rows whose available stock actually changed. |  |
| **skipped** | **Float** | Ids that did not move. Either they were already at that number, or they  aren&#39;t this seller&#39;s. The two are deliberately not distinguished: telling  a caller \&quot;that id isn&#39;t yours\&quot; confirms the id exists. |  |
| **bulk_job_id** | **String** | Watchable job for the marketplace fan-out, when one was started. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateInventoryBulkQuantityResponse.new(
  affected: null,
  skipped: null,
  bulk_job_id: null
)
```

