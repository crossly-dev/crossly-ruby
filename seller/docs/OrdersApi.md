# Crossly::OrdersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_live_shipment_label**](OrdersApi.md#create_live_shipment_label) | **POST** /v1/live-shipments/{id}/label | Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded. |
| [**create_live_shipment_ship**](OrdersApi.md#create_live_shipment_ship) | **POST** /v1/live-shipments/{id}/ship | Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded. |
| [**create_order_bulk_delete**](OrdersApi.md#create_order_bulk_delete) | **POST** /v1/orders/bulk-delete | Bulk soft- or hard-delete orders by id. |
| [**create_order_bulk_export**](OrdersApi.md#create_order_bulk_export) | **POST** /v1/orders/bulk-export | Bulk export selected orders as CSV. |
| [**create_order_bulk_mark_disputed**](OrdersApi.md#create_order_bulk_mark_disputed) | **POST** /v1/orders/bulk-mark-disputed | Bulk mark orders as disputed with a shared reason. |
| [**create_order_bulk_mark_shipped**](OrdersApi.md#create_order_bulk_mark_shipped) | **POST** /v1/orders/bulk-mark-shipped | Bulk flip status&#x3D;shipped, clear the reserved-stock marker, and notify each platform. |
| [**create_order_bulk_packing_slip**](OrdersApi.md#create_order_bulk_packing_slip) | **POST** /v1/orders/bulk-packing-slips | Bulk packing slips PDF. |
| [**create_order_cancel**](OrdersApi.md#create_order_cancel) | **POST** /v1/orders/{id}/cancel | Cancel an order on its marketplace. |
| [**create_order_dispute**](OrdersApi.md#create_order_dispute) | **POST** /v1/orders/{id}/dispute | Flag an order as disputed. |
| [**create_order_import**](OrdersApi.md#create_order_import) | **POST** /v1/orders/import | Manually (re-)pull one or more connected platforms&#39; order history for a day-window. |
| [**create_order_label**](OrdersApi.md#create_order_label) | **POST** /v1/orders/{id}/label | Purchase EasyPost shipping label. |
| [**create_order_message**](OrdersApi.md#create_order_message) | **POST** /v1/orders/{id}/message | Message the order&#39;s buyer on the marketplace. |
| [**create_order_pickup**](OrdersApi.md#create_order_pickup) | **POST** /v1/orders/pickups | Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead). |
| [**create_order_pickup_label**](OrdersApi.md#create_order_pickup_label) | **POST** /v1/orders/{id}/pickup-label | Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short. |
| [**create_order_pull_platform_label**](OrdersApi.md#create_order_pull_platform_label) | **POST** /v1/orders/{id}/pull-platform-label | Pull a pre-paid label from cookie platforms (Poshmark/Mercari). |
| [**create_order_rate**](OrdersApi.md#create_order_rate) | **POST** /v1/orders/{id}/rates | EasyPost rate quote for an order. |
| [**create_order_refund**](OrdersApi.md#create_order_refund) | **POST** /v1/orders/{id}/refund | Issue a full or partial refund on the platform. |
| [**create_order_scan_form**](OrdersApi.md#create_order_scan_form) | **POST** /v1/orders/scan-forms | Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet. |
| [**create_order_tracking**](OrdersApi.md#create_order_tracking) | **POST** /v1/orders/{id}/tracking | Submit tracking number + carrier and notify the platform. |
| [**create_order_whatnot_label**](OrdersApi.md#create_order_whatnot_label) | **POST** /v1/orders/{id}/whatnot/label | Generate the Whatnot shipping label and record it on the order. |
| [**create_order_whatnot_package**](OrdersApi.md#create_order_whatnot_package) | **POST** /v1/orders/{id}/whatnot/package | Save a Whatnot shipment package (weight oz, box inches). |
| [**create_order_whatnot_package_quote**](OrdersApi.md#create_order_whatnot_package_quote) | **POST** /v1/orders/{id}/whatnot/package/quote | Quote what a Whatnot package change costs (cents). |
| [**create_rental_approve**](OrdersApi.md#create_rental_approve) | **POST** /v1/rentals/{id}/approve | Approve a requested rental (offers with requireApproval): the renter’s held card is charged. |
| [**create_rental_cancel**](OrdersApi.md#create_rental_cancel) | **POST** /v1/rentals/{id}/cancel | Cancel a booked rental that has not shipped: the renter is refunded in full. |
| [**create_rental_claim**](OrdersApi.md#create_rental_claim) | **POST** /v1/rentals/{id}/claim | Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back. |
| [**create_rental_decline**](OrdersApi.md#create_rental_decline) | **POST** /v1/rentals/{id}/decline | Decline a requested rental: the hold on the renter’s card is released. |
| [**create_rental_label**](OrdersApi.md#create_rental_label) | **POST** /v1/rentals/{id}/labels | Buy both labels for a booked rental: outbound to the renter, and the return label they use. |
| [**create_rental_returned**](OrdersApi.md#create_rental_returned) | **POST** /v1/rentals/{id}/returned | Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back. |
| [**create_rental_shipped**](OrdersApi.md#create_rental_shipped) | **POST** /v1/rentals/{id}/shipped | Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against. |
| [**get_order**](OrdersApi.md#get_order) | **GET** /v1/orders/{id} | Get one order. |
| [**get_order_cancel_eligibility**](OrdersApi.md#get_order_cancel_eligibility) | **GET** /v1/orders/{id}/cancel-eligibility | Whether this order can be cancelled, and which reason codes the marketplace accepts. |
| [**get_order_count**](OrdersApi.md#get_order_count) | **GET** /v1/orders/counts | Tab badge counts by status. |
| [**get_order_evidence**](OrdersApi.md#get_order_evidence) | **GET** /v1/orders/{id}/evidence | Everything recorded about how this order was packed and how it arrived. |
| [**get_order_label_print**](OrdersApi.md#get_order_label_print) | **GET** /v1/orders/{id}/label/print | The order&#39;s shipping label as a PDF sized for printing (cropped, upright, fitted). |
| [**get_order_packing_slip**](OrdersApi.md#get_order_packing_slip) | **GET** /v1/orders/{id}/packing-slip | Single-order packing slip PDF. |
| [**get_order_proof_of_delivery**](OrdersApi.md#get_order_proof_of_delivery) | **GET** /v1/orders/{id}/proof-of-delivery | Proof-of-delivery evidence from the carrier&#39;s scan record (PDF, or JSON). |
| [**get_order_scan_form**](OrdersApi.md#get_order_scan_form) | **GET** /v1/orders/scan-forms/{id} | One SCAN form; a queued form is re-read from the carrier and its PDF appears once built. |
| [**get_order_shipment**](OrdersApi.md#get_order_shipment) | **GET** /v1/orders/{id}/shipments | List the parcels an order shipped in. |
| [**get_order_whatnot_packing_slip**](OrdersApi.md#get_order_whatnot_packing_slip) | **GET** /v1/orders/{id}/whatnot/packing-slip | A fresh link to Whatnot&#39;s packing slip PDF. |
| [**get_order_whatnot_shipment**](OrdersApi.md#get_order_whatnot_shipment) | **GET** /v1/orders/{id}/whatnot/shipment | Whatnot shipment for an order (package, label, tracking). Records a label found on it. |
| [**list_layaways**](OrdersApi.md#list_layaways) | **GET** /v1/layaways | Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full. |
| [**list_live_shipments**](OrdersApi.md#list_live_shipments) | **GET** /v1/live-shipments | Your show boxes: every buyer’s orders from one live show, to ship together. |
| [**list_order_pickup_ready**](OrdersApi.md#list_order_pickup_ready) | **GET** /v1/orders/pickup-ready | Orders with a purchased Shippo label a courier can collect or a SCAN form can cover, grouped by carrier. |
| [**list_order_pickups**](OrdersApi.md#list_order_pickups) | **GET** /v1/orders/pickups | Booked carrier pickups, newest first. |
| [**list_order_scan_forms**](OrdersApi.md#list_order_scan_forms) | **GET** /v1/orders/scan-forms | SCAN forms, newest first. |
| [**list_order_units**](OrdersApi.md#list_order_units) | **GET** /v1/orders/{id}/units | List the identified units that shipped on an order. |
| [**list_orders**](OrdersApi.md#list_orders) | **GET** /v1/orders | List orders. |
| [**list_rentals**](OrdersApi.md#list_rentals) | **GET** /v1/rentals | Rentals of your items, with the ship-to and the outbound label. |
| [**update_order**](OrdersApi.md#update_order) | **PATCH** /v1/orders/{id} | Update order (status, notes, tracking). |


## create_live_shipment_label

> <CreateLiveShipmentShipResponse> create_live_shipment_label(id)

Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.
  result = api_instance.create_live_shipment_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_live_shipment_label: #{e}"
end
```

#### Using the create_live_shipment_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLiveShipmentShipResponse>, Integer, Hash)> create_live_shipment_label_with_http_info(id)

```ruby
begin
  # Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.
  data, status_code, headers = api_instance.create_live_shipment_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLiveShipmentShipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_live_shipment_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLiveShipmentShipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_shipment_ship

> <CreateLiveShipmentShipResponse> create_live_shipment_ship(id)

Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.
  result = api_instance.create_live_shipment_ship(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_live_shipment_ship: #{e}"
end
```

#### Using the create_live_shipment_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLiveShipmentShipResponse>, Integer, Hash)> create_live_shipment_ship_with_http_info(id)

```ruby
begin
  # Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.
  data, status_code, headers = api_instance.create_live_shipment_ship_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLiveShipmentShipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_live_shipment_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLiveShipmentShipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_bulk_delete

> <CreateOrderBulkDeleteResponse> create_order_bulk_delete

Bulk soft- or hard-delete orders by id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Bulk soft- or hard-delete orders by id.
  result = api_instance.create_order_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_delete: #{e}"
end
```

#### Using the create_order_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderBulkDeleteResponse>, Integer, Hash)> create_order_bulk_delete_with_http_info

```ruby
begin
  # Bulk soft- or hard-delete orders by id.
  data, status_code, headers = api_instance.create_order_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_bulk_export

> String create_order_bulk_export

Bulk export selected orders as CSV.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Bulk export selected orders as CSV.
  result = api_instance.create_order_bulk_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_export: #{e}"
end
```

#### Using the create_order_bulk_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_order_bulk_export_with_http_info

```ruby
begin
  # Bulk export selected orders as CSV.
  data, status_code, headers = api_instance.create_order_bulk_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_bulk_mark_disputed

> <CreateInventoryLabelRenameResponse> create_order_bulk_mark_disputed

Bulk mark orders as disputed with a shared reason.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Bulk mark orders as disputed with a shared reason.
  result = api_instance.create_order_bulk_mark_disputed
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_mark_disputed: #{e}"
end
```

#### Using the create_order_bulk_mark_disputed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryLabelRenameResponse>, Integer, Hash)> create_order_bulk_mark_disputed_with_http_info

```ruby
begin
  # Bulk mark orders as disputed with a shared reason.
  data, status_code, headers = api_instance.create_order_bulk_mark_disputed_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryLabelRenameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_mark_disputed_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateInventoryLabelRenameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_bulk_mark_shipped

> <CreateOrderBulkMarkShippedResponse> create_order_bulk_mark_shipped

Bulk flip status=shipped, clear the reserved-stock marker, and notify each platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Bulk flip status=shipped, clear the reserved-stock marker, and notify each platform.
  result = api_instance.create_order_bulk_mark_shipped
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_mark_shipped: #{e}"
end
```

#### Using the create_order_bulk_mark_shipped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderBulkMarkShippedResponse>, Integer, Hash)> create_order_bulk_mark_shipped_with_http_info

```ruby
begin
  # Bulk flip status=shipped, clear the reserved-stock marker, and notify each platform.
  data, status_code, headers = api_instance.create_order_bulk_mark_shipped_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderBulkMarkShippedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_mark_shipped_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderBulkMarkShippedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_bulk_packing_slip

> File create_order_bulk_packing_slip

Bulk packing slips PDF.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Bulk packing slips PDF.
  result = api_instance.create_order_bulk_packing_slip
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_packing_slip: #{e}"
end
```

#### Using the create_order_bulk_packing_slip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> create_order_bulk_packing_slip_with_http_info

```ruby
begin
  # Bulk packing slips PDF.
  data, status_code, headers = api_instance.create_order_bulk_packing_slip_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_packing_slip_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## create_order_cancel

> <CreateOrderCancelResponse> create_order_cancel(id)

Cancel an order on its marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Cancel an order on its marketplace.
  result = api_instance.create_order_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_cancel: #{e}"
end
```

#### Using the create_order_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderCancelResponse>, Integer, Hash)> create_order_cancel_with_http_info(id)

```ruby
begin
  # Cancel an order on its marketplace.
  data, status_code, headers = api_instance.create_order_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_dispute

> <CreateOrderDisputeResponse> create_order_dispute(id)

Flag an order as disputed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Flag an order as disputed.
  result = api_instance.create_order_dispute(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_dispute: #{e}"
end
```

#### Using the create_order_dispute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderDisputeResponse>, Integer, Hash)> create_order_dispute_with_http_info(id)

```ruby
begin
  # Flag an order as disputed.
  data, status_code, headers = api_instance.create_order_dispute_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderDisputeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_dispute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_import

> <CreateOrderImportResponse> create_order_import

Manually (re-)pull one or more connected platforms' order history for a day-window.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Manually (re-)pull one or more connected platforms' order history for a day-window.
  result = api_instance.create_order_import
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_import: #{e}"
end
```

#### Using the create_order_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderImportResponse>, Integer, Hash)> create_order_import_with_http_info

```ruby
begin
  # Manually (re-)pull one or more connected platforms' order history for a day-window.
  data, status_code, headers = api_instance.create_order_import_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_import_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_label

> <CreateOrderLabelResponse> create_order_label(id)

Purchase EasyPost shipping label.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Purchase EasyPost shipping label.
  result = api_instance.create_order_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_label: #{e}"
end
```

#### Using the create_order_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderLabelResponse>, Integer, Hash)> create_order_label_with_http_info(id)

```ruby
begin
  # Purchase EasyPost shipping label.
  data, status_code, headers = api_instance.create_order_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_message

> <CreateOrderMessageResponse> create_order_message(id)

Message the order's buyer on the marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Message the order's buyer on the marketplace.
  result = api_instance.create_order_message(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_message: #{e}"
end
```

#### Using the create_order_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderMessageResponse>, Integer, Hash)> create_order_message_with_http_info(id)

```ruby
begin
  # Message the order's buyer on the marketplace.
  data, status_code, headers = api_instance.create_order_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderMessageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_pickup

> <CreateOrderPickupResponse> create_order_pickup

Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).
  result = api_instance.create_order_pickup
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pickup: #{e}"
end
```

#### Using the create_order_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderPickupResponse>, Integer, Hash)> create_order_pickup_with_http_info

```ruby
begin
  # Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).
  data, status_code, headers = api_instance.create_order_pickup_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderPickupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pickup_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderPickupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_pickup_label

> <CreateOrderPickupLabelResponse> create_order_pickup_label(id)

Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short.
  result = api_instance.create_order_pickup_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pickup_label: #{e}"
end
```

#### Using the create_order_pickup_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderPickupLabelResponse>, Integer, Hash)> create_order_pickup_label_with_http_info(id)

```ruby
begin
  # Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short.
  data, status_code, headers = api_instance.create_order_pickup_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderPickupLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pickup_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderPickupLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_pull_platform_label

> <CreateOrderPullPlatformLabelResponse> create_order_pull_platform_label(id)

Pull a pre-paid label from cookie platforms (Poshmark/Mercari).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Pull a pre-paid label from cookie platforms (Poshmark/Mercari).
  result = api_instance.create_order_pull_platform_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pull_platform_label: #{e}"
end
```

#### Using the create_order_pull_platform_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderPullPlatformLabelResponse>, Integer, Hash)> create_order_pull_platform_label_with_http_info(id)

```ruby
begin
  # Pull a pre-paid label from cookie platforms (Poshmark/Mercari).
  data, status_code, headers = api_instance.create_order_pull_platform_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderPullPlatformLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_pull_platform_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderPullPlatformLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_rate

> <CreateOrderRateResponse> create_order_rate(id)

EasyPost rate quote for an order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # EasyPost rate quote for an order.
  result = api_instance.create_order_rate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_rate: #{e}"
end
```

#### Using the create_order_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderRateResponse>, Integer, Hash)> create_order_rate_with_http_info(id)

```ruby
begin
  # EasyPost rate quote for an order.
  data, status_code, headers = api_instance.create_order_rate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderRateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_refund

> <CreateOrderRefundResponse> create_order_refund(id)

Issue a full or partial refund on the platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Issue a full or partial refund on the platform.
  result = api_instance.create_order_refund(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_refund: #{e}"
end
```

#### Using the create_order_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderRefundResponse>, Integer, Hash)> create_order_refund_with_http_info(id)

```ruby
begin
  # Issue a full or partial refund on the platform.
  data, status_code, headers = api_instance.create_order_refund_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderRefundResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_scan_form

> <CreateOrderScanFormResponse> create_order_scan_form

Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.
  result = api_instance.create_order_scan_form
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_scan_form: #{e}"
end
```

#### Using the create_order_scan_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderScanFormResponse>, Integer, Hash)> create_order_scan_form_with_http_info

```ruby
begin
  # Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.
  data, status_code, headers = api_instance.create_order_scan_form_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderScanFormResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_scan_form_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderScanFormResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_tracking

> <CreateInboxOfferResponse> create_order_tracking(id)

Submit tracking number + carrier and notify the platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Submit tracking number + carrier and notify the platform.
  result = api_instance.create_order_tracking(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_tracking: #{e}"
end
```

#### Using the create_order_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxOfferResponse>, Integer, Hash)> create_order_tracking_with_http_info(id)

```ruby
begin
  # Submit tracking number + carrier and notify the platform.
  data, status_code, headers = api_instance.create_order_tracking_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateInboxOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_whatnot_label

> <CreateOrderWhatnotLabelResponse> create_order_whatnot_label(id)

Generate the Whatnot shipping label and record it on the order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Generate the Whatnot shipping label and record it on the order.
  result = api_instance.create_order_whatnot_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_label: #{e}"
end
```

#### Using the create_order_whatnot_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderWhatnotLabelResponse>, Integer, Hash)> create_order_whatnot_label_with_http_info(id)

```ruby
begin
  # Generate the Whatnot shipping label and record it on the order.
  data, status_code, headers = api_instance.create_order_whatnot_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderWhatnotLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderWhatnotLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_whatnot_package

> <CreateOrderWhatnotLabelResponse> create_order_whatnot_package(id)

Save a Whatnot shipment package (weight oz, box inches).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Save a Whatnot shipment package (weight oz, box inches).
  result = api_instance.create_order_whatnot_package(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_package: #{e}"
end
```

#### Using the create_order_whatnot_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderWhatnotLabelResponse>, Integer, Hash)> create_order_whatnot_package_with_http_info(id)

```ruby
begin
  # Save a Whatnot shipment package (weight oz, box inches).
  data, status_code, headers = api_instance.create_order_whatnot_package_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderWhatnotLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderWhatnotLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_whatnot_package_quote

> <CreateOrderWhatnotPackageQuoteResponse> create_order_whatnot_package_quote(id)

Quote what a Whatnot package change costs (cents).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Quote what a Whatnot package change costs (cents).
  result = api_instance.create_order_whatnot_package_quote(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_package_quote: #{e}"
end
```

#### Using the create_order_whatnot_package_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderWhatnotPackageQuoteResponse>, Integer, Hash)> create_order_whatnot_package_quote_with_http_info(id)

```ruby
begin
  # Quote what a Whatnot package change costs (cents).
  data, status_code, headers = api_instance.create_order_whatnot_package_quote_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderWhatnotPackageQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_whatnot_package_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderWhatnotPackageQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_approve

> <RentalResponse> create_rental_approve(id)

Approve a requested rental (offers with requireApproval): the renter’s held card is charged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Approve a requested rental (offers with requireApproval): the renter’s held card is charged.
  result = api_instance.create_rental_approve(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_approve: #{e}"
end
```

#### Using the create_rental_approve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_approve_with_http_info(id)

```ruby
begin
  # Approve a requested rental (offers with requireApproval): the renter’s held card is charged.
  data, status_code, headers = api_instance.create_rental_approve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_approve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_cancel

> <RentalResponse> create_rental_cancel(id)

Cancel a booked rental that has not shipped: the renter is refunded in full.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Cancel a booked rental that has not shipped: the renter is refunded in full.
  result = api_instance.create_rental_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_cancel: #{e}"
end
```

#### Using the create_rental_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_cancel_with_http_info(id)

```ruby
begin
  # Cancel a booked rental that has not shipped: the renter is refunded in full.
  data, status_code, headers = api_instance.create_rental_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_claim

> <RentalResponse> create_rental_claim(id)

Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.
  result = api_instance.create_rental_claim(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_claim: #{e}"
end
```

#### Using the create_rental_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_claim_with_http_info(id)

```ruby
begin
  # Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.
  data, status_code, headers = api_instance.create_rental_claim_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_decline

> <RentalResponse> create_rental_decline(id)

Decline a requested rental: the hold on the renter’s card is released.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Decline a requested rental: the hold on the renter’s card is released.
  result = api_instance.create_rental_decline(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_decline: #{e}"
end
```

#### Using the create_rental_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_decline_with_http_info(id)

```ruby
begin
  # Decline a requested rental: the hold on the renter’s card is released.
  data, status_code, headers = api_instance.create_rental_decline_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_label

> <RentalResponse> create_rental_label(id)

Buy both labels for a booked rental: outbound to the renter, and the return label they use.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Buy both labels for a booked rental: outbound to the renter, and the return label they use.
  result = api_instance.create_rental_label(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_label: #{e}"
end
```

#### Using the create_rental_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_label_with_http_info(id)

```ruby
begin
  # Buy both labels for a booked rental: outbound to the renter, and the return label they use.
  data, status_code, headers = api_instance.create_rental_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_returned

> <RentalResponse> create_rental_returned(id)

Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.
  result = api_instance.create_rental_returned(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_returned: #{e}"
end
```

#### Using the create_rental_returned_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_returned_with_http_info(id)

```ruby
begin
  # Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.
  data, status_code, headers = api_instance.create_rental_returned_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_returned_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_shipped

> <RentalResponse> create_rental_shipped(id)

Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.
  result = api_instance.create_rental_shipped(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_shipped: #{e}"
end
```

#### Using the create_rental_shipped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalResponse>, Integer, Hash)> create_rental_shipped_with_http_info(id)

```ruby
begin
  # Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.
  data, status_code, headers = api_instance.create_rental_shipped_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_rental_shipped_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order

> <ListOrdersItem> get_order(id)

Get one order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one order.
  result = api_instance.get_order(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order: #{e}"
end
```

#### Using the get_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrdersItem>, Integer, Hash)> get_order_with_http_info(id)

```ruby
begin
  # Get one order.
  data, status_code, headers = api_instance.get_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrdersItem>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListOrdersItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_cancel_eligibility

> <GetOrderCancelEligibilityResponse> get_order_cancel_eligibility(id)

Whether this order can be cancelled, and which reason codes the marketplace accepts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Whether this order can be cancelled, and which reason codes the marketplace accepts.
  result = api_instance.get_order_cancel_eligibility(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_cancel_eligibility: #{e}"
end
```

#### Using the get_order_cancel_eligibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderCancelEligibilityResponse>, Integer, Hash)> get_order_cancel_eligibility_with_http_info(id)

```ruby
begin
  # Whether this order can be cancelled, and which reason codes the marketplace accepts.
  data, status_code, headers = api_instance.get_order_cancel_eligibility_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderCancelEligibilityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_cancel_eligibility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderCancelEligibilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_count

> Hash&lt;String, Float&gt; get_order_count

Tab badge counts by status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Tab badge counts by status.
  result = api_instance.get_order_count
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_count: #{e}"
end
```

#### Using the get_order_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Float&gt;, Integer, Hash)> get_order_count_with_http_info

```ruby
begin
  # Tab badge counts by status.
  data, status_code, headers = api_instance.get_order_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Float&gt;
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Float&gt;**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_evidence

> <GetOrderEvidenceResponse> get_order_evidence(id)

Everything recorded about how this order was packed and how it arrived.

Returns the packing capture and its attestation verdict, the seal comparison (dispatch vs arrival), the buyer's arrival-condition state, and the identified units that shipped. Absence is reported as absence — an empty section means nothing was recorded, never that nothing happened.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # Everything recorded about how this order was packed and how it arrived.
  result = api_instance.get_order_evidence(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_evidence: #{e}"
end
```

#### Using the get_order_evidence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderEvidenceResponse>, Integer, Hash)> get_order_evidence_with_http_info(id)

```ruby
begin
  # Everything recorded about how this order was packed and how it arrived.
  data, status_code, headers = api_instance.get_order_evidence_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderEvidenceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_evidence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderEvidenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_label_print

> File get_order_label_print(id, opts)

The order's shipping label as a PDF sized for printing (cropped, upright, fitted).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  size: '4x6', # String | Paper. Default 4x6.
  flip: '0', # String | Turn the label a half turn.
  parcel_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A specific parcel's label; default the order's primary.
}

begin
  # The order's shipping label as a PDF sized for printing (cropped, upright, fitted).
  result = api_instance.get_order_label_print(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_label_print: #{e}"
end
```

#### Using the get_order_label_print_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_order_label_print_with_http_info(id, opts)

```ruby
begin
  # The order's shipping label as a PDF sized for printing (cropped, upright, fitted).
  data, status_code, headers = api_instance.get_order_label_print_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_label_print_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **size** | **String** | Paper. Default 4x6. | [optional] |
| **flip** | **String** | Turn the label a half turn. | [optional] |
| **parcel_id** | **String** | A specific parcel&#39;s label; default the order&#39;s primary. | [optional] |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_order_packing_slip

> File get_order_packing_slip(id)

Single-order packing slip PDF.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Single-order packing slip PDF.
  result = api_instance.get_order_packing_slip(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_packing_slip: #{e}"
end
```

#### Using the get_order_packing_slip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_order_packing_slip_with_http_info(id)

```ruby
begin
  # Single-order packing slip PDF.
  data, status_code, headers = api_instance.get_order_packing_slip_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_packing_slip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_order_proof_of_delivery

> <GetOrderProofOfDeliveryResponse> get_order_proof_of_delivery(id)

Proof-of-delivery evidence from the carrier's scan record (PDF, or JSON).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Proof-of-delivery evidence from the carrier's scan record (PDF, or JSON).
  result = api_instance.get_order_proof_of_delivery(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_proof_of_delivery: #{e}"
end
```

#### Using the get_order_proof_of_delivery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderProofOfDeliveryResponse>, Integer, Hash)> get_order_proof_of_delivery_with_http_info(id)

```ruby
begin
  # Proof-of-delivery evidence from the carrier's scan record (PDF, or JSON).
  data, status_code, headers = api_instance.get_order_proof_of_delivery_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderProofOfDeliveryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_proof_of_delivery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderProofOfDeliveryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_scan_form

> <GetOrderScanFormResponse> get_order_scan_form(id)

One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.
  result = api_instance.get_order_scan_form(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_scan_form: #{e}"
end
```

#### Using the get_order_scan_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderScanFormResponse>, Integer, Hash)> get_order_scan_form_with_http_info(id)

```ruby
begin
  # One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.
  data, status_code, headers = api_instance.get_order_scan_form_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderScanFormResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_scan_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderScanFormResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_shipment

> <GetOrderShipmentResponse> get_order_shipment(id)

List the parcels an order shipped in.

An order can ship in more than one box: eBay allows a second label, Poshmark sells up to ten additional ones, and a bundle can need two. The order record carries only the PRIMARY parcel, so this is the only place the rest are visible. totalLabelCostCents sums every non-voided parcel — reading label cost off the order understates a multi-parcel order by a whole label.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # List the parcels an order shipped in.
  result = api_instance.get_order_shipment(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_shipment: #{e}"
end
```

#### Using the get_order_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderShipmentResponse>, Integer, Hash)> get_order_shipment_with_http_info(id)

```ruby
begin
  # List the parcels an order shipped in.
  data, status_code, headers = api_instance.get_order_shipment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderShipmentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_whatnot_packing_slip

> <GetOrderWhatnotPackingSlipResponse> get_order_whatnot_packing_slip(id)

A fresh link to Whatnot's packing slip PDF.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # A fresh link to Whatnot's packing slip PDF.
  result = api_instance.get_order_whatnot_packing_slip(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_whatnot_packing_slip: #{e}"
end
```

#### Using the get_order_whatnot_packing_slip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderWhatnotPackingSlipResponse>, Integer, Hash)> get_order_whatnot_packing_slip_with_http_info(id)

```ruby
begin
  # A fresh link to Whatnot's packing slip PDF.
  data, status_code, headers = api_instance.get_order_whatnot_packing_slip_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderWhatnotPackingSlipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_whatnot_packing_slip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetOrderWhatnotPackingSlipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_whatnot_shipment

> <CreateOrderWhatnotLabelResponse> get_order_whatnot_shipment(id)

Whatnot shipment for an order (package, label, tracking). Records a label found on it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Whatnot shipment for an order (package, label, tracking). Records a label found on it.
  result = api_instance.get_order_whatnot_shipment(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_whatnot_shipment: #{e}"
end
```

#### Using the get_order_whatnot_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderWhatnotLabelResponse>, Integer, Hash)> get_order_whatnot_shipment_with_http_info(id)

```ruby
begin
  # Whatnot shipment for an order (package, label, tracking). Records a label found on it.
  data, status_code, headers = api_instance.get_order_whatnot_shipment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderWhatnotLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_whatnot_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderWhatnotLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_layaways

> <ListLayawaysResponse> list_layaways

Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.
  result = api_instance.list_layaways
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_layaways: #{e}"
end
```

#### Using the list_layaways_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLayawaysResponse>, Integer, Hash)> list_layaways_with_http_info

```ruby
begin
  # Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.
  data, status_code, headers = api_instance.list_layaways_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLayawaysResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_layaways_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLayawaysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_live_shipments

> <ListLiveShipmentsResponse> list_live_shipments

Your show boxes: every buyer’s orders from one live show, to ship together.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Your show boxes: every buyer’s orders from one live show, to ship together.
  result = api_instance.list_live_shipments
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_live_shipments: #{e}"
end
```

#### Using the list_live_shipments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLiveShipmentsResponse>, Integer, Hash)> list_live_shipments_with_http_info

```ruby
begin
  # Your show boxes: every buyer’s orders from one live show, to ship together.
  data, status_code, headers = api_instance.list_live_shipments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLiveShipmentsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_live_shipments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLiveShipmentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_pickup_ready

> <ListOrderPickupReadyResponse> list_order_pickup_ready

Orders with a purchased Shippo label a courier can collect or a SCAN form can cover, grouped by carrier.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Orders with a purchased Shippo label a courier can collect or a SCAN form can cover, grouped by carrier.
  result = api_instance.list_order_pickup_ready
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_pickup_ready: #{e}"
end
```

#### Using the list_order_pickup_ready_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrderPickupReadyResponse>, Integer, Hash)> list_order_pickup_ready_with_http_info

```ruby
begin
  # Orders with a purchased Shippo label a courier can collect or a SCAN form can cover, grouped by carrier.
  data, status_code, headers = api_instance.list_order_pickup_ready_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrderPickupReadyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_pickup_ready_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListOrderPickupReadyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_pickups

> <ListOrderPickupsResponse> list_order_pickups

Booked carrier pickups, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Booked carrier pickups, newest first.
  result = api_instance.list_order_pickups
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_pickups: #{e}"
end
```

#### Using the list_order_pickups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrderPickupsResponse>, Integer, Hash)> list_order_pickups_with_http_info

```ruby
begin
  # Booked carrier pickups, newest first.
  data, status_code, headers = api_instance.list_order_pickups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrderPickupsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_pickups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListOrderPickupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_scan_forms

> <ListOrderScanFormsResponse> list_order_scan_forms

SCAN forms, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # SCAN forms, newest first.
  result = api_instance.list_order_scan_forms
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_scan_forms: #{e}"
end
```

#### Using the list_order_scan_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrderScanFormsResponse>, Integer, Hash)> list_order_scan_forms_with_http_info

```ruby
begin
  # SCAN forms, newest first.
  data, status_code, headers = api_instance.list_order_scan_forms_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrderScanFormsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_scan_forms_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListOrderScanFormsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_units

> <ListOrderUnitsResponse> list_order_units(id)

List the identified units that shipped on an order.

The dispute-time read: what physically went out. An empty list means no identity was recorded, which is not the same as the order having no units.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = 'id_example' # String | 

begin
  # List the identified units that shipped on an order.
  result = api_instance.list_order_units(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_units: #{e}"
end
```

#### Using the list_order_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrderUnitsResponse>, Integer, Hash)> list_order_units_with_http_info(id)

```ruby
begin
  # List the identified units that shipped on an order.
  data, status_code, headers = api_instance.list_order_units_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrderUnitsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListOrderUnitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orders

> <ListOrdersResponse> list_orders(opts)

List orders.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  status: 'status_example', # String | 
  platform: 'platform_example' # String | 
}

begin
  # List orders.
  result = api_instance.list_orders(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_orders: #{e}"
end
```

#### Using the list_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrdersResponse>, Integer, Hash)> list_orders_with_http_info(opts)

```ruby
begin
  # List orders.
  data, status_code, headers = api_instance.list_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrdersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **status** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |

### Return type

**ListOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rentals

> <ListRentalsResponse> list_rentals

Rentals of your items, with the ship-to and the outbound label.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new

begin
  # Rentals of your items, with the ship-to and the outbound label.
  result = api_instance.list_rentals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_rentals: #{e}"
end
```

#### Using the list_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRentalsResponse>, Integer, Hash)> list_rentals_with_http_info

```ruby
begin
  # Rentals of your items, with the ship-to and the outbound label.
  data, status_code, headers = api_instance.list_rentals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRentalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_rentals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListRentalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order

> <ListOrdersItem> update_order(id)

Update order (status, notes, tracking).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OrdersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update order (status, notes, tracking).
  result = api_instance.update_order(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrdersItem>, Integer, Hash)> update_order_with_http_info(id)

```ruby
begin
  # Update order (status, notes, tracking).
  data, status_code, headers = api_instance.update_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrdersItem>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListOrdersItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

