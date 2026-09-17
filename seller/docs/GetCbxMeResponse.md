# Crossly::GetCbxMeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** |  |  |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **terms** | [**GetCbxMeResponseTerms**](GetCbxMeResponseTerms.md) |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetCbxMeResponse.new(
  merchant_id: null,
  slug: null,
  name: null,
  status: null,
  scopes: null,
  terms: null
)
```

