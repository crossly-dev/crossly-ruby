# CrosslyBuyer::Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | 1-indexed page number. |  |
| **limit** | **Integer** | Rows per page. |  |
| **total** | **Integer** | Total matching rows, when the endpoint counts them. | [optional] |
| **total_pages** | **Integer** | Derived from total and limit. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::Pagination.new(
  page: null,
  limit: null,
  total: null,
  total_pages: null
)
```

