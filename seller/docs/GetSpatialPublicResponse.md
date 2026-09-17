# Crossly::GetSpatialPublicResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scene** | [**GetSpatialPublicResponseScene**](GetSpatialPublicResponseScene.md) |  |  |
| **profile** | [**GetSpatialPublicResponseProfile**](GetSpatialPublicResponseProfile.md) |  |  |
| **solved** | [**GetSpatialPublicResponseSolved**](GetSpatialPublicResponseSolved.md) |  |  |
| **items** | [**Array&lt;GetSpatialPublicResponseItems&gt;**](GetSpatialPublicResponseItems.md) | Enough to draw an object and label it. No cost, no location, no status. |  |
| **stats** | [**GetSpatialPublicResponseStats**](GetSpatialPublicResponseStats.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetSpatialPublicResponse.new(
  scene: null,
  profile: null,
  solved: null,
  items: null,
  stats: null
)
```

