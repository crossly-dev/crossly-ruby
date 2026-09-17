# CrosslyBuyer::UpdatePolicyPresetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **kind** | **String** | &#39;return&#39; | &#39;shipping&#39; | &#39;payment&#39; — validated at the route layer. |  |
| **name** | **String** |  |  |
| **is_default** | **Boolean** | Auto-selected on new listings. At most one true per (user, kind). |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::UpdatePolicyPresetResponse.new(
  id: null,
  user_id: null,
  kind: null,
  name: null,
  is_default: null,
  created_at: null,
  updated_at: null
)
```

