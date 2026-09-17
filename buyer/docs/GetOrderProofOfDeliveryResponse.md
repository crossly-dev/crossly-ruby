# CrosslyBuyer::GetOrderProofOfDeliveryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_order_id** | **String** |  | [optional] |
| **item_title** | **String** |  | [optional] |
| **buyer_username** | **String** |  | [optional] |
| **ship_to_postal_code** | **String** | The ZIP we shipped to, for comparison against the delivery scan. | [optional] |
| **ship_to_city_state** | **String** |  | [optional] |
| **carrier** | **String** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **tracking_url** | **String** |  | [optional] |
| **shipped_at** | **String** |  | [optional] |
| **delivered_at** | **String** |  | [optional] |
| **delivery_location** | **String** |  | [optional] |
| **signature** | **String** | Null means the carrier captured none — NOT that delivery is unproven. | [optional] |
| **scans** | [**Array&lt;GetOrderProofOfDeliveryResponseScans&gt;**](GetOrderProofOfDeliveryResponseScans.md) |  |  |
| **gaps** | **Array&lt;String&gt;** | Why this document is weak, stated plainly so the seller isn&#39;t surprised  by the marketplace&#39;s response. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetOrderProofOfDeliveryResponse.new(
  order_id: null,
  platform: null,
  platform_order_id: null,
  item_title: null,
  buyer_username: null,
  ship_to_postal_code: null,
  ship_to_city_state: null,
  carrier: null,
  tracking_number: null,
  tracking_url: null,
  shipped_at: null,
  delivered_at: null,
  delivery_location: null,
  signature: null,
  scans: null,
  gaps: null
)
```

