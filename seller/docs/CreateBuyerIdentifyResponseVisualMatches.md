# Crossly::CreateBuyerIdentifyResponseVisualMatches

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **title** | **String** |  |  |
| **price_cents** | **Float** |  |  |
| **image_url** | **String** |  | [optional] |
| **score** | **Float** | Cosine similarity. Higher is closer. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateBuyerIdentifyResponseVisualMatches.new(
  slug: null,
  title: null,
  price_cents: null,
  image_url: null,
  score: null
)
```

