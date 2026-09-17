# CrosslyBuyer::GetMagicDraftResponseDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **listing_id** | **String** |  | [optional] |
| **run_id** | **String** |  |  |
| **selected_match_keys** | **Array&lt;String&gt;** |  | [optional] |
| **chosen_price_cents** | **Float** |  | [optional] |
| **chosen_quantity** | **Float** |  | [optional] |
| **chosen_condition** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetMagicDraftResponseDraft.new(
  id: null,
  created_at: null,
  user_id: null,
  listing_id: null,
  run_id: null,
  selected_match_keys: null,
  chosen_price_cents: null,
  chosen_quantity: null,
  chosen_condition: null
)
```

