# CrosslyBuyer::GetInventoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listings** | [**Array&lt;GetInventoryResponsePlatformListings&gt;**](GetInventoryResponsePlatformListings.md) |  |  |
| **category** | [**ListInventoryItemCategory**](ListInventoryItemCategory.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetInventoryResponse.new(
  platform_listings: null,
  category: null
)
```

