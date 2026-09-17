# Crossly::CreateInventoryCsvImportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **problems** | [**Array&lt;CreateInventoryCsvImportResponseProblems&gt;**](CreateInventoryCsvImportResponseProblems.md) |  |  |
| **problem_count** | **Float** |  |  |
| **max_rows** | **Float** |  |  |
| **created** | **Float** |  |  |
| **updated** | **Float** |  |  |
| **usable** | **Float** | Rows that mapped cleanly. &#x60;created + updated&#x60; when not a dry run. |  |
| **total_rows** | **Float** |  |  |
| **listings_created** | **Float** |  |  |
| **dry_run** | **Boolean** | True when nothing was written — a preview pass. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateInventoryCsvImportResponse.new(
  problems: null,
  problem_count: null,
  max_rows: null,
  created: null,
  updated: null,
  usable: null,
  total_rows: null,
  listings_created: null,
  dry_run: null
)
```

