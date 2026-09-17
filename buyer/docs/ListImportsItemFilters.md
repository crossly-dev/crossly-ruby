# CrosslyBuyer::ListImportsItemFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listed_after** | **String** |  | [optional] |
| **listed_before** | **String** |  | [optional] |
| **min_price** | **Float** |  | [optional] |
| **max_price** | **Float** |  | [optional] |
| **condition_includes** | **Array&lt;String&gt;** |  | [optional] |
| **max_import** | **Float** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListImportsItemFilters.new(
  listed_after: null,
  listed_before: null,
  min_price: null,
  max_price: null,
  condition_includes: null,
  max_import: null
)
```

