# Crossly::CreateMagicScanResponseTopHits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **title** | **String** |  |  |
| **price_cents** | **Float** |  |  |
| **image_url** | **String** |  | [optional] |
| **listing_url** | **String** |  | [optional] |
| **origin** | **String** | Origin marker for the UI badge. |  |
| **visual_sim** | **Float** | CLIP cosine [0,1]; populated after the visual-rank pass. | [optional] |
| **state** | **String** | &#39;active&#39; &#x3D; currently for sale; &#39;sold&#39; &#x3D; historical comp. UI  renders distinct badges so the seller can see both at a glance. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateMagicScanResponseTopHits.new(
  platform: null,
  title: null,
  price_cents: null,
  image_url: null,
  listing_url: null,
  origin: null,
  visual_sim: null,
  state: null
)
```

