# Crossly::GetTaxonomyCategoryAspectResponseAspects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **required** | **Boolean** |  |  |
| **data_type** | **String** | &#39;STRING&#39; | &#39;NUMBER&#39; | &#39;DATE&#39; — eBay&#39;s dataType per aspect. |  |
| **has_enum_values** | **Boolean** | True when the aspect is selection-only (no free-text). |  |
| **enum_values** | **Array&lt;String&gt;** |  | [optional] |
| **max_length** | **Float** | Helpful for client validation — max length when supplied. | [optional] |
| **cardinality** | **String** | Cardinality — SINGLE_VALUE / MULTIPLE_VALUES. |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetTaxonomyCategoryAspectResponseAspects.new(
  name: null,
  required: null,
  data_type: null,
  has_enum_values: null,
  enum_values: null,
  max_length: null,
  cardinality: null
)
```

