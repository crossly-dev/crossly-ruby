# CrosslyBuyer::CreateListingCombineResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keep_listing_id** | **String** |  |  |
| **merged_listing_ids** | **Array&lt;String&gt;** | Listings archived into the keeper. |  |
| **new_quantity_available** | **Float** | Stock on the keeper&#39;s item after summing. |  |
| **units_moved** | **Float** | Units moved off the merged items. |  |
| **delist_jobs_dispatched** | **Float** | Delist jobs dispatched for the merged listings&#39; live platforms. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateListingCombineResponse.new(
  keep_listing_id: null,
  merged_listing_ids: null,
  new_quantity_available: null,
  units_moved: null,
  delist_jobs_dispatched: null
)
```

