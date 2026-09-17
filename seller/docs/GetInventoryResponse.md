# Crossly::GetInventoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listings** | [**Array&lt;GetInventoryResponsePlatformListings&gt;**](GetInventoryResponsePlatformListings.md) |  |  |
| **category** | [**ListInventoryItemCategory**](ListInventoryItemCategory.md) |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetInventoryResponse.new(
  platform_listings: null,
  category: null
)
```

