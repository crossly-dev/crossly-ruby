# Crossly::GetSpatialSceneResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **unit_id** | **String** |  | [optional] |
| **title** | **String** |  |  |
| **image_url** | **String** |  | [optional] |
| **thumb_url** | **String** | A small copy of &#x60;imageUrl&#x60;, when the catalog has one.    The room binds this for everything except the few items you are standing  in front of. A 600x600 original costs 1.83 MiB of VRAM; a 150x150 thumb  costs 0.11 MiB, and at more than a couple of metres they are the same  handful of pixels on screen. Null when the catalog never made one, which  the renderer treats as \&quot;use the original\&quot; rather than as \&quot;draw nothing\&quot;. | [optional] |
| **size** | [**GetSpatialSceneResponseSize**](GetSpatialSceneResponseSize.md) |  | [optional] |
| **cost_cents** | **Float** | Cents the seller paid. Drives the &#x60;value&#x60; overlay and capital density. | [optional] |
| **age_days** | **Float** | Days since first listed anywhere. Drives the &#x60;aging&#x60; overlay. | [optional] |
| **status** | **String** |  |  |
| **location** | **String** | Free-text or structured location, when the unit has one. | [optional] |
| **market_tagged** | **Boolean** | True when this row resolved to a catalog product. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetSpatialSceneResponseItems.new(
  id: null,
  unit_id: null,
  title: null,
  image_url: null,
  thumb_url: null,
  size: null,
  cost_cents: null,
  age_days: null,
  status: null,
  location: null,
  market_tagged: null
)
```

