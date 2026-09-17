# Crossly::GetSpatialPublicResponseSolved

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **containers** | [**Array&lt;GetSpatialPublicResponseSolvedContainers&gt;**](GetSpatialPublicResponseSolvedContainers.md) |  |  |
| **placements** | [**Array&lt;GetSpatialPublicResponseSolvedPlacements&gt;**](GetSpatialPublicResponseSolvedPlacements.md) |  |  |
| **dividers** | [**Array&lt;GetSpatialPublicResponseSolvedDividers&gt;**](GetSpatialPublicResponseSolvedDividers.md) |  |  |
| **overflow** | **Array&lt;String&gt;** | Items that did not fit anywhere. Surfaced, never silently dropped. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetSpatialPublicResponseSolved.new(
  containers: null,
  placements: null,
  dividers: null,
  overflow: null
)
```

