# CrosslyBuyer::CreateInventoryCsvImportResponseProblems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line** | **Float** | 1-based, and counting the header — so it matches what the seller sees  in their spreadsheet. Off-by-one here makes every error unfindable. |  |
| **message** | **String** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateInventoryCsvImportResponseProblems.new(
  line: null,
  message: null
)
```

