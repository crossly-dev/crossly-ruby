# CrosslyBuyer::GetSpatialPublicResponseSolvedPlacements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **String** |  |  |
| **unit_id** | **String** |  | [optional] |
| **container_key** | **String** |  |  |
| **container_index** | **Float** |  |  |
| **slot_index** | **Float** |  |  |
| **position** | **Object** | Local position inside the container, metres. |  |
| **group_path** | **Array&lt;String&gt;** |  |  |
| **pinned** | **Boolean** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetSpatialPublicResponseSolvedPlacements.new(
  item_id: null,
  unit_id: null,
  container_key: null,
  container_index: null,
  slot_index: null,
  position: null,
  group_path: null,
  pinned: null
)
```

