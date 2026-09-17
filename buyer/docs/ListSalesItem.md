# CrosslyBuyer::ListSalesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **cancelled_at** | **Time** |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **listing_id** | **String** |  | [optional] |
| **inventory_item_id** | **String** |  | [optional] |
| **platform_listing_id** | **String** |  | [optional] |
| **platform_order_id** | **String** |  | [optional] |
| **cost_of_goods** | **String** |  | [optional] |
| **deleted_at** | **Time** |  | [optional] |
| **sale_price** | **String** |  | [optional] |
| **platform_fee** | **String** |  | [optional] |
| **shipping_cost** | **String** |  | [optional] |
| **net_profit** | **String** |  | [optional] |
| **tax_collected** | **String** |  | [optional] |
| **shipping_charged** | **String** |  | [optional] |
| **fee_source** | **String** |  | [optional] |
| **detected_by** | **String** |  |  |
| **detected_at** | **Time** |  |  |
| **documents** | [**Array&lt;ListSalesItemDocuments&gt;**](ListSalesItemDocuments.md) |  | [optional] |
| **refunded_amount** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListSalesItem.new(
  id: null,
  user_id: null,
  platform: null,
  cancelled_at: null,
  order_id: null,
  listing_id: null,
  inventory_item_id: null,
  platform_listing_id: null,
  platform_order_id: null,
  cost_of_goods: null,
  deleted_at: null,
  sale_price: null,
  platform_fee: null,
  shipping_cost: null,
  net_profit: null,
  tax_collected: null,
  shipping_charged: null,
  fee_source: null,
  detected_by: null,
  detected_at: null,
  documents: null,
  refunded_amount: null
)
```

