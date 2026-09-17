# CrosslyBuyer::GetOrderShipmentResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **source** | **String** |  |  |
| **order_id** | **String** |  |  |
| **carrier** | **String** |  | [optional] |
| **service** | **String** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **voided_at** | **Time** |  | [optional] |
| **label_cost_cents** | **Float** |  | [optional] |
| **label_url** | **String** |  | [optional] |
| **shippo_shipment_id** | **String** |  | [optional] |
| **tracking_registered_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderShipmentResponseData.new(
  id: null,
  created_at: null,
  user_id: null,
  source: null,
  order_id: null,
  carrier: null,
  service: null,
  tracking_number: null,
  voided_at: null,
  label_cost_cents: null,
  label_url: null,
  shippo_shipment_id: null,
  tracking_registered_at: null
)
```

