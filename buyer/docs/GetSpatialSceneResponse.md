# CrosslyBuyer::GetSpatialSceneResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **breakdowns** | [**Array&lt;GetSpatialSceneResponseBreakdowns&gt;**](GetSpatialSceneResponseBreakdowns.md) | Facets that would actually split this collection, most-dividing first.  Drives the breakdown picker — see availableBreakdowns. |  |
| **scene** | [**GetSpatialSceneResponseScene**](GetSpatialSceneResponseScene.md) |  |  |
| **profile** | [**GetSpatialPublicResponseProfile**](GetSpatialPublicResponseProfile.md) |  |  |
| **solved** | [**GetSpatialPublicResponseSolved**](GetSpatialPublicResponseSolved.md) |  |  |
| **items** | [**Array&lt;GetSpatialSceneResponseItems&gt;**](GetSpatialSceneResponseItems.md) |  |  |
| **stats** | [**GetSpatialSceneResponseStats**](GetSpatialSceneResponseStats.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetSpatialSceneResponse.new(
  breakdowns: null,
  scene: null,
  profile: null,
  solved: null,
  items: null,
  stats: null
)
```

