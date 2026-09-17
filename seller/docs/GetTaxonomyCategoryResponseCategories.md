# Crossly::GetTaxonomyCategoryResponseCategories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **label** | **String** |  |  |
| **leaf** | **Boolean** |  |  |
| **parent_id** | **String** |  | [optional] |
| **path** | **String** | Root-first ancestor path including the leaf, when the caller supplied  it. Suggestions carry it; the tree walk does not. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::GetTaxonomyCategoryResponseCategories.new(
  id: null,
  label: null,
  leaf: null,
  parent_id: null,
  path: null
)
```

