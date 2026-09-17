# Crossly::CreateListingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing** | [**CreateListingResponseListing**](CreateListingResponseListing.md) |  |  |
| **jobs** | [**Array&lt;CreateListingResponseJobs&gt;**](CreateListingResponseJobs.md) |  |  |
| **skipped** | [**Array&lt;CreateListingResponseSkipped&gt;**](CreateListingResponseSkipped.md) |  |  |
| **bulk_job_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateListingResponse.new(
  listing: null,
  jobs: null,
  skipped: null,
  bulk_job_id: null
)
```

