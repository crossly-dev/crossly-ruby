# Crossly::UpdateOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **quantity** | **Float** |  |  |
| **notes** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **platform** | **String** |  |  |
| **cancelled_at** | **Time** |  | [optional] |
| **listing_id** | **String** |  | [optional] |
| **inventory_item_id** | **String** |  | [optional] |
| **platform_listing_id** | **String** |  | [optional] |
| **handling_time_days** | **Float** |  | [optional] |
| **platform_order_id** | **String** |  | [optional] |
| **buyer_username** | **String** |  | [optional] |
| **sales_channel** | **String** |  |  |
| **channel_location_id** | **String** |  | [optional] |
| **package_preset_id** | **String** |  | [optional] |
| **carrier** | **String** |  | [optional] |
| **service** | **String** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **easypost_shipment_id** | **String** |  | [optional] |
| **easypost_tracker_id** | **String** |  | [optional] |
| **easypost_rate_id** | **String** |  | [optional] |
| **shipping_label_url** | **String** |  | [optional] |
| **label_purchased_at** | **Time** |  | [optional] |
| **shipped_at** | **Time** |  | [optional] |
| **estimated_delivery** | **String** |  | [optional] |
| **delivered_at** | **Time** |  | [optional] |
| **carrier_status** | **String** |  | [optional] |
| **carrier_status_detail** | **String** |  | [optional] |
| **tracking_history** | [**Array&lt;ListOrdersItemTrackingHistory&gt;**](ListOrdersItemTrackingHistory.md) |  | [optional] |
| **delivery_location** | **String** |  | [optional] |
| **delivery_signature** | **String** |  | [optional] |
| **tracking_submitted_at** | **Time** |  | [optional] |
| **tracking_submit_status** | **String** |  | [optional] |
| **label_cost** | **String** |  | [optional] |
| **cost_of_goods** | **String** |  | [optional] |
| **requested_carrier** | **String** |  | [optional] |
| **requested_service** | **String** |  | [optional] |
| **ship_by_at** | **Time** |  | [optional] |
| **ship_by_alerted_at** | **Time** |  | [optional] |
| **oversold_by** | **Float** |  |  |
| **last_status_check_at** | **Time** |  | [optional] |
| **last_chat_check_at** | **Time** |  | [optional] |
| **is_disputed** | **Boolean** |  |  |
| **dispute_reason** | **String** |  | [optional] |
| **dispute_platform_case_id** | **String** |  | [optional] |
| **dispute_resolved_at** | **Time** |  | [optional] |
| **refund_amount** | **String** |  | [optional] |
| **refund_reason** | **String** |  | [optional] |
| **refund_platform_id** | **String** |  | [optional] |
| **refunded_at** | **Time** |  | [optional] |
| **cancellation_reason** | **String** |  | [optional] |
| **arrival_condition_requested_at** | **Time** |  | [optional] |
| **arrival_condition_submitted_at** | **Time** |  | [optional] |
| **arrival_condition_declined_at** | **Time** |  | [optional] |
| **delivery_photo_url** | **String** |  | [optional] |
| **purchase_order_ref** | **String** |  | [optional] |
| **arrival_condition_photos** | **Array&lt;String&gt;** |  |  |
| **buyer_email** | **String** |  | [optional] |
| **fulfillment_method** | **String** |  |  |
| **deleted_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::UpdateOrderResponse.new(
  id: null,
  created_at: null,
  updated_at: null,
  user_id: null,
  quantity: null,
  notes: null,
  status: null,
  platform: null,
  cancelled_at: null,
  listing_id: null,
  inventory_item_id: null,
  platform_listing_id: null,
  handling_time_days: null,
  platform_order_id: null,
  buyer_username: null,
  sales_channel: null,
  channel_location_id: null,
  package_preset_id: null,
  carrier: null,
  service: null,
  tracking_number: null,
  easypost_shipment_id: null,
  easypost_tracker_id: null,
  easypost_rate_id: null,
  shipping_label_url: null,
  label_purchased_at: null,
  shipped_at: null,
  estimated_delivery: null,
  delivered_at: null,
  carrier_status: null,
  carrier_status_detail: null,
  tracking_history: null,
  delivery_location: null,
  delivery_signature: null,
  tracking_submitted_at: null,
  tracking_submit_status: null,
  label_cost: null,
  cost_of_goods: null,
  requested_carrier: null,
  requested_service: null,
  ship_by_at: null,
  ship_by_alerted_at: null,
  oversold_by: null,
  last_status_check_at: null,
  last_chat_check_at: null,
  is_disputed: null,
  dispute_reason: null,
  dispute_platform_case_id: null,
  dispute_resolved_at: null,
  refund_amount: null,
  refund_reason: null,
  refund_platform_id: null,
  refunded_at: null,
  cancellation_reason: null,
  arrival_condition_requested_at: null,
  arrival_condition_submitted_at: null,
  arrival_condition_declined_at: null,
  delivery_photo_url: null,
  purchase_order_ref: null,
  arrival_condition_photos: null,
  buyer_email: null,
  fulfillment_method: null,
  deleted_at: null
)
```

