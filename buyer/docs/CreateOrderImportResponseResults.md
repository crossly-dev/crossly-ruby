# CrosslyBuyer::CreateOrderImportResponseResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ok** | **Boolean** |  |  |
| **accounts_started** | **Float** | Cookie track: number of account slots kicked off. API track: always 1. | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateOrderImportResponseResults.new(
  platform: null,
  ok: null,
  accounts_started: null
)
```

