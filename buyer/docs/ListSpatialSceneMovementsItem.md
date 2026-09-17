# CrosslyBuyer::ListSpatialSceneMovementsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **at** | **String** |  |  |
| **kind** | **String** |  |  |
| **source** | **String** |  |  |
| **quantity** | **Float** |  |  |
| **item_id** | **String** |  |  |
| **unit_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **from_node_id** | **String** |  | [optional] |
| **to_node_id** | **String** |  | [optional] |
| **from_code** | **String** |  | [optional] |
| **to_code** | **String** |  | [optional] |
| **actor_id** | **String** | NULL when nothing human did it, OR when attribution is redacted for this caller. &#x60;actorsRedacted&#x60; on the payload distinguishes the two. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListSpatialSceneMovementsItem.new(
  id: null,
  at: null,
  kind: null,
  source: null,
  quantity: null,
  item_id: null,
  unit_id: null,
  title: null,
  from_node_id: null,
  to_node_id: null,
  from_code: null,
  to_code: null,
  actor_id: null
)
```

