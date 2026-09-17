# CrosslyBuyer::GetReturnResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **notes** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **reason** | **String** |  | [optional] |
| **requested_at** | **Time** |  |  |
| **order_id** | **String** |  |  |
| **received_at** | **Time** |  | [optional] |
| **refund_amount** | **String** |  | [optional] |
| **restocked_to_inventory_item_id** | **String** |  | [optional] |
| **inspected_at** | **Time** |  | [optional] |
| **inspected_unit_id** | **String** |  | [optional] |
| **inspected_identifier** | **String** |  | [optional] |
| **identity_check** | **String** |  |  |
| **restocked_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetReturnResponse.new(
  id: null,
  created_at: null,
  user_id: null,
  notes: null,
  status: null,
  reason: null,
  requested_at: null,
  order_id: null,
  received_at: null,
  refund_amount: null,
  restocked_to_inventory_item_id: null,
  inspected_at: null,
  inspected_unit_id: null,
  inspected_identifier: null,
  identity_check: null,
  restocked_at: null
)
```

