# Crossly::V1List

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Array&lt;Object&gt;** | The rows. |  |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **meta** | **Hash&lt;String, Object&gt;** | Endpoint-specific extras that are NOT pagination — e.g. &#x60;pendingCents&#x60;, &#x60;basis&#x60;. Omitted when empty. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::V1List.new(
  data: null,
  pagination: null,
  meta: null
)
```

