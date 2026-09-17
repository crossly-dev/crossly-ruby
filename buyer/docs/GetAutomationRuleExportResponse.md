# CrosslyBuyer::GetAutomationRuleExportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | **String** |  |  |
| **schema_version** | **Float** |  |  |
| **exported_at** | **String** |  |  |
| **recipes** | [**Array&lt;GetAutomationRuleExportResponseRecipes&gt;**](GetAutomationRuleExportResponseRecipes.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAutomationRuleExportResponse.new(
  schema: null,
  schema_version: null,
  exported_at: null,
  recipes: null
)
```

