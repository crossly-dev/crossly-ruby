# CrosslyBuyer::ListTaxonomySuggestItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **display** | **String** |  |  |
| **level** | **Float** |  |  |
| **catalog** | [**ListTaxonomySuggestItemCatalog**](ListTaxonomySuggestItemCatalog.md) |  |  |
| **breadcrumb** | **String** | \&quot;Kids &gt; Toys &gt; Building Sets &amp; Blocks\&quot; for the picker list. |  |
| **displays** | [**ListTaxonomySuggestItemDisplays**](ListTaxonomySuggestItemDisplays.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListTaxonomySuggestItem.new(
  external_id: null,
  display: null,
  level: null,
  catalog: null,
  breadcrumb: null,
  displays: null
)
```

