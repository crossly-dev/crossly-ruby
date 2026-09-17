# CrosslyBuyer::GetImportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **status** | **String** |  |  |
| **platform** | **String** |  |  |
| **last_error** | **String** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **filters** | [**ListImportsItemFilters**](ListImportsItemFilters.md) |  | [optional] |
| **finished_at** | **Time** |  | [optional] |
| **batch_id** | **String** |  | [optional] |
| **import_mode** | **String** |  |  |
| **include_inactive** | **Boolean** |  |  |
| **merge_into_existing_listing** | **Boolean** |  |  |
| **merge_into_existing_inventory** | **Boolean** |  |  |
| **total_count** | **Float** |  |  |
| **imported_count** | **Float** |  |  |
| **skipped_count** | **Float** |  |  |
| **error_count** | **Float** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetImportResponse.new(
  id: null,
  created_at: null,
  user_id: null,
  status: null,
  platform: null,
  last_error: null,
  started_at: null,
  filters: null,
  finished_at: null,
  batch_id: null,
  import_mode: null,
  include_inactive: null,
  merge_into_existing_listing: null,
  merge_into_existing_inventory: null,
  total_count: null,
  imported_count: null,
  skipped_count: null,
  error_count: null
)
```

