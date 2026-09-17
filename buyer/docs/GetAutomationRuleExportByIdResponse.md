# CrosslyBuyer::GetAutomationRuleExportByIdResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **action** | [**GetAutomationRuleExportResponseAction**](GetAutomationRuleExportResponseAction.md) |  |  |
| **trigger** | [**GetAutomationRuleExportResponseAction**](GetAutomationRuleExportResponseAction.md) |  |  |
| **schema_version** | **Float** |  |  |
| **condition** | [**GetAutomationRuleExportResponseCondition**](GetAutomationRuleExportResponseCondition.md) |  | [optional] |
| **metadata** | [**GetAutomationRuleExportResponseMetadata**](GetAutomationRuleExportResponseMetadata.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **schema** | **String** | Optional reference to the public schema URL — purely cosmetic. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetAutomationRuleExportByIdResponse.new(
  name: null,
  action: null,
  trigger: null,
  schema_version: null,
  condition: null,
  metadata: null,
  description: null,
  platforms: null,
  schema: null
)
```

