# CrosslyBuyer::GetTaxScheduleCResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Float** |  |  |
| **business_name** | **String** |  | [optional] |
| **ein** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **gross_receipts** | **Float** |  |  |
| **returns_and_allowances** | **Float** |  |  |
| **net_sales** | **Float** |  |  |
| **expenses** | [**GetTaxScheduleCResponseExpenses**](GetTaxScheduleCResponseExpenses.md) |  |  |
| **net_profit** | **Float** |  |  |
| **counts** | [**GetTaxScheduleCResponseCounts**](GetTaxScheduleCResponseCounts.md) |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetTaxScheduleCResponse.new(
  year: null,
  business_name: null,
  ein: null,
  address: null,
  gross_receipts: null,
  returns_and_allowances: null,
  net_sales: null,
  expenses: null,
  net_profit: null,
  counts: null
)
```

