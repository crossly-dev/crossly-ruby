# CrosslyBuyer::GetSpatialPublicResponseProfileContainers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Stable key. Persisted on every placement — never renamed. |  |
| **label** | **String** | What the seller calls it. \&quot;Page 3\&quot;, \&quot;Case\&quot;, \&quot;Long box\&quot;. |  |
| **model** | **String** | Which hand-authored mesh renders this container. A small closed set — the  art budget lives here and nowhere else. |  |
| **size** | **Object** | Outer bounds, for packing containers into a room. |  |
| **slots** | **Object** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetSpatialPublicResponseProfileContainers.new(
  key: null,
  label: null,
  model: null,
  size: null,
  slots: null
)
```

