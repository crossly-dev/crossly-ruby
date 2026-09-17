# Crossly::OrdersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
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
| [**create_order_pull_platform_label**](OrdersApi.md#create_order_pull_platform_label) | **POST** /v1/orders/{id}/pull-platform-label | Pull a pre-paid label from cookie platforms (Poshmark/Mercari). |
| [**create_order_rate**](OrdersApi.md#create_order_rate) | **POST** /v1/orders/{id}/rates | EasyPost rate quote for an order. |
| [**create_order_refund**](OrdersApi.md#create_order_refund) | **POST** /v1/orders/{id}/refund | Issue a full or partial refund on the platform. |
| [**create_order_tracking**](OrdersApi.md#create_order_tracking) | **POST** /v1/orders/{id}/tracking | Submit tracking number + carrier and notify the platform. |
| [**get_order**](OrdersApi.md#get_order) | **GET** /v1/orders/{id} | Get one order. |
| [**get_order_cancel_eligibility**](OrdersApi.md#get_order_cancel_eligibility) | **GET** /v1/orders/{id}/cancel-eligibility | Whether this order can be cancelled, and which reason codes the marketplace accepts. |
| [**get_order_count**](OrdersApi.md#get_order_count) | **GET** /v1/orders/counts | Tab badge counts by status. |
| [**get_order_evidence**](OrdersApi.md#get_order_evidence) | **GET** /v1/orders/{id}/evidence | Everything recorded about how this order was packed and how it arrived. |
| [**get_order_packing_slip**](OrdersApi.md#get_order_packing_slip) | **GET** /v1/orders/{id}/packing-slip | Single-order packing slip PDF. |
| [**get_order_proof_of_delivery**](OrdersApi.md#get_order_proof_of_delivery) | **GET** /v1/orders/{id}/proof-of-delivery | Proof-of-delivery evidence from the carrier&#39;s scan record (PDF, or JSON). |
| [**get_order_shipment**](OrdersApi.md#get_order_shipment) | **GET** /v1/orders/{id}/shipments | List the parcels an order shipped in. |
| [**list_order_units**](OrdersApi.md#list_order_units) | **GET** /v1/orders/{id}/units | List the identified units that shipped on an order. |
| [**list_orders**](OrdersApi.md#list_orders) | **GET** /v1/orders | List orders. |
| [**update_order**](OrdersApi.md#update_order) | **PATCH** /v1/orders/{id} | Update order (status, notes, tracking). |


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

[**CreateOrderBulkDeleteResponse**](CreateOrderBulkDeleteResponse.md)

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

> <CreateOrderBulkMarkDisputedResponse> create_order_bulk_mark_disputed

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

> <Array(<CreateOrderBulkMarkDisputedResponse>, Integer, Hash)> create_order_bulk_mark_disputed_with_http_info

```ruby
begin
  # Bulk mark orders as disputed with a shared reason.
  data, status_code, headers = api_instance.create_order_bulk_mark_disputed_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderBulkMarkDisputedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_bulk_mark_disputed_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateOrderBulkMarkDisputedResponse**](CreateOrderBulkMarkDisputedResponse.md)

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

[**CreateOrderBulkMarkShippedResponse**](CreateOrderBulkMarkShippedResponse.md)

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

[**CreateOrderCancelResponse**](CreateOrderCancelResponse.md)

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

[**CreateOrderDisputeResponse**](CreateOrderDisputeResponse.md)

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

[**CreateOrderImportResponse**](CreateOrderImportResponse.md)

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

[**CreateOrderLabelResponse**](CreateOrderLabelResponse.md)

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

[**CreateOrderMessageResponse**](CreateOrderMessageResponse.md)

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

[**CreateOrderPullPlatformLabelResponse**](CreateOrderPullPlatformLabelResponse.md)

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

[**CreateOrderRateResponse**](CreateOrderRateResponse.md)

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

[**CreateOrderRefundResponse**](CreateOrderRefundResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_tracking

> <CreateOrderTrackingResponse> create_order_tracking(id)

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

> <Array(<CreateOrderTrackingResponse>, Integer, Hash)> create_order_tracking_with_http_info(id)

```ruby
begin
  # Submit tracking number + carrier and notify the platform.
  data, status_code, headers = api_instance.create_order_tracking_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderTrackingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->create_order_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateOrderTrackingResponse**](CreateOrderTrackingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order

> <GetOrderResponse> get_order(id)

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

> <Array(<GetOrderResponse>, Integer, Hash)> get_order_with_http_info(id)

```ruby
begin
  # Get one order.
  data, status_code, headers = api_instance.get_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetOrderResponse**](GetOrderResponse.md)

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

[**GetOrderCancelEligibilityResponse**](GetOrderCancelEligibilityResponse.md)

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

[**GetOrderEvidenceResponse**](GetOrderEvidenceResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

[**GetOrderProofOfDeliveryResponse**](GetOrderProofOfDeliveryResponse.md)

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

[**GetOrderShipmentResponse**](GetOrderShipmentResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_units

> <V1List> list_order_units(id)

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

> <Array(<V1List>, Integer, Hash)> list_order_units_with_http_info(id)

```ruby
begin
  # List the identified units that shipped on an order.
  data, status_code, headers = api_instance.list_order_units_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->list_order_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orders

> <V1List> list_orders(opts)

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

> <Array(<V1List>, Integer, Hash)> list_orders_with_http_info(opts)

```ruby
begin
  # List orders.
  data, status_code, headers = api_instance.list_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
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

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order

> <UpdateOrderResponse> update_order(id)

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

> <Array(<UpdateOrderResponse>, Integer, Hash)> update_order_with_http_info(id)

```ruby
begin
  # Update order (status, notes, tracking).
  data, status_code, headers = api_instance.update_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OrdersApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateOrderResponse**](UpdateOrderResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

