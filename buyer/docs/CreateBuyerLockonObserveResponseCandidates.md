# CrosslyBuyer::CreateBuyerLockonObserveResponseCandidates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier_ns** | **String** | Where it came from, so a confirmation can be validated. |  |
| **identifier_value** | **String** |  |  |
| **title** | **String** |  |  |
| **image_url** | **String** |  | [optional] |
| **price_cents** | **Float** |  | [optional] |
| **store_name** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateBuyerLockonObserveResponseCandidates.new(
  identifier_ns: null,
  identifier_value: null,
  title: null,
  image_url: null,
  price_cents: null,
  store_name: null
)
```

