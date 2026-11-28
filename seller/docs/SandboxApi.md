# Crossly::SandboxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sandbox_reset**](SandboxApi.md#create_sandbox_reset) | **POST** /v1/sandbox/reset | Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept. |
| [**create_sandbox_simulate_inventory**](SandboxApi.md#create_sandbox_simulate_inventory) | **POST** /v1/sandbox/simulate/inventory | Change stock (set, increase or decrease); the new quantity is pushed to every channel. |
| [**create_sandbox_simulate_listing_sold_out**](SandboxApi.md#create_sandbox_simulate_listing_sold_out) | **POST** /v1/sandbox/simulate/listing.sold_out | A listing sells out on a marketplace with no order (stock moves, other channels delist). |
| [**create_sandbox_simulate_order**](SandboxApi.md#create_sandbox_simulate_order) | **POST** /v1/sandbox/simulate/order | Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates). |
| [**create_sandbox_simulate_order_address**](SandboxApi.md#create_sandbox_simulate_order_address) | **POST** /v1/sandbox/simulate/order.address | The buyer address of an order simulated with address \&quot;delayed\&quot; arrives now (order.address_available). |
| [**create_sandbox_simulate_order_cancelled**](SandboxApi.md#create_sandbox_simulate_order_cancelled) | **POST** /v1/sandbox/simulate/order.cancelled | The buyer or the marketplace cancels an order (order.cancelled). |
| [**create_sandbox_simulate_order_delivered**](SandboxApi.md#create_sandbox_simulate_order_delivered) | **POST** /v1/sandbox/simulate/order.delivered | The carrier delivers a shipped order (order.delivered). |
| [**create_sandbox_simulate_refund**](SandboxApi.md#create_sandbox_simulate_refund) | **POST** /v1/sandbox/simulate/refund | Refund an order in full or in part (refund.issued). |
| [**get_sandbox**](SandboxApi.md#get_sandbox) | **GET** /v1/sandbox | The sandbox seller this token acts on, its simulated channels and the failure modes. |
| [**list_sandbox_events**](SandboxApi.md#list_sandbox_events) | **GET** /v1/sandbox/events | The simulated marketplaces&#39; call log: verb, channel, outcome, latency. |


## create_sandbox_reset

> <CreateSandboxResetResponse> create_sandbox_reset

Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new

begin
  # Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.
  result = api_instance.create_sandbox_reset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_reset: #{e}"
end
```

#### Using the create_sandbox_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxResetResponse>, Integer, Hash)> create_sandbox_reset_with_http_info

```ruby
begin
  # Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.
  data, status_code, headers = api_instance.create_sandbox_reset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxResetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_reset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateSandboxResetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_sandbox_simulate_inventory

> <CreateInboxConversationBulkResponse> create_sandbox_simulate_inventory(create_sandbox_simulate_inventory_request)

Change stock (set, increase or decrease); the new quantity is pushed to every channel.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
create_sandbox_simulate_inventory_request = Crossly::CreateSandboxSimulateInventoryRequest.new({mode: 'set', value: 3.56}) # CreateSandboxSimulateInventoryRequest | 

begin
  # Change stock (set, increase or decrease); the new quantity is pushed to every channel.
  result = api_instance.create_sandbox_simulate_inventory(create_sandbox_simulate_inventory_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_inventory: #{e}"
end
```

#### Using the create_sandbox_simulate_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversationBulkResponse>, Integer, Hash)> create_sandbox_simulate_inventory_with_http_info(create_sandbox_simulate_inventory_request)

```ruby
begin
  # Change stock (set, increase or decrease); the new quantity is pushed to every channel.
  data, status_code, headers = api_instance.create_sandbox_simulate_inventory_with_http_info(create_sandbox_simulate_inventory_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversationBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sandbox_simulate_inventory_request** | **CreateSandboxSimulateInventoryRequest** |  |  |

### Return type

**CreateInboxConversationBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_listing_sold_out

> <CreateSandboxSimulateListingSoldOutResponse> create_sandbox_simulate_listing_sold_out(create_sandbox_simulate_listing_sold_out_request)

A listing sells out on a marketplace with no order (stock moves, other channels delist).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
create_sandbox_simulate_listing_sold_out_request = Crossly::CreateSandboxSimulateListingSoldOutRequest.new({listing_id: 'listing_id_example', platform: 'platform_example'}) # CreateSandboxSimulateListingSoldOutRequest | 

begin
  # A listing sells out on a marketplace with no order (stock moves, other channels delist).
  result = api_instance.create_sandbox_simulate_listing_sold_out(create_sandbox_simulate_listing_sold_out_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_listing_sold_out: #{e}"
end
```

#### Using the create_sandbox_simulate_listing_sold_out_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateListingSoldOutResponse>, Integer, Hash)> create_sandbox_simulate_listing_sold_out_with_http_info(create_sandbox_simulate_listing_sold_out_request)

```ruby
begin
  # A listing sells out on a marketplace with no order (stock moves, other channels delist).
  data, status_code, headers = api_instance.create_sandbox_simulate_listing_sold_out_with_http_info(create_sandbox_simulate_listing_sold_out_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateListingSoldOutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_listing_sold_out_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sandbox_simulate_listing_sold_out_request** | **CreateSandboxSimulateListingSoldOutRequest** |  |  |

### Return type

**CreateSandboxSimulateListingSoldOutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_order

> <CreateSandboxSimulateOrderResponse> create_sandbox_simulate_order(create_sandbox_simulate_order_request)

Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
create_sandbox_simulate_order_request = Crossly::CreateSandboxSimulateOrderRequest.new({lines: [Crossly::CreateSandboxSimulateOrderRequestLines.new]}) # CreateSandboxSimulateOrderRequest | 

begin
  # Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).
  result = api_instance.create_sandbox_simulate_order(create_sandbox_simulate_order_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order: #{e}"
end
```

#### Using the create_sandbox_simulate_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateOrderResponse>, Integer, Hash)> create_sandbox_simulate_order_with_http_info(create_sandbox_simulate_order_request)

```ruby
begin
  # Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).
  data, status_code, headers = api_instance.create_sandbox_simulate_order_with_http_info(create_sandbox_simulate_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateOrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sandbox_simulate_order_request** | **CreateSandboxSimulateOrderRequest** |  |  |

### Return type

**CreateSandboxSimulateOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_order_address

> <CreateSandboxSimulateOrderAddressResponse> create_sandbox_simulate_order_address(create_sandbox_simulate_order_address_request)

The buyer address of an order simulated with address \"delayed\" arrives now (order.address_available).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
create_sandbox_simulate_order_address_request = Crossly::CreateSandboxSimulateOrderAddressRequest.new({order_id: 'order_id_example'}) # CreateSandboxSimulateOrderAddressRequest | 

begin
  # The buyer address of an order simulated with address \"delayed\" arrives now (order.address_available).
  result = api_instance.create_sandbox_simulate_order_address(create_sandbox_simulate_order_address_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_address: #{e}"
end
```

#### Using the create_sandbox_simulate_order_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateOrderAddressResponse>, Integer, Hash)> create_sandbox_simulate_order_address_with_http_info(create_sandbox_simulate_order_address_request)

```ruby
begin
  # The buyer address of an order simulated with address \"delayed\" arrives now (order.address_available).
  data, status_code, headers = api_instance.create_sandbox_simulate_order_address_with_http_info(create_sandbox_simulate_order_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateOrderAddressResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sandbox_simulate_order_address_request** | **CreateSandboxSimulateOrderAddressRequest** |  |  |

### Return type

**CreateSandboxSimulateOrderAddressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_order_cancelled

> <CreateSandboxSimulateOrderCancelledResponse> create_sandbox_simulate_order_cancelled(order_id_reason_request)

The buyer or the marketplace cancels an order (order.cancelled).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
order_id_reason_request = Crossly::OrderIdReasonRequest.new({order_id: 'order_id_example'}) # OrderIdReasonRequest | 

begin
  # The buyer or the marketplace cancels an order (order.cancelled).
  result = api_instance.create_sandbox_simulate_order_cancelled(order_id_reason_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_cancelled: #{e}"
end
```

#### Using the create_sandbox_simulate_order_cancelled_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateOrderCancelledResponse>, Integer, Hash)> create_sandbox_simulate_order_cancelled_with_http_info(order_id_reason_request)

```ruby
begin
  # The buyer or the marketplace cancels an order (order.cancelled).
  data, status_code, headers = api_instance.create_sandbox_simulate_order_cancelled_with_http_info(order_id_reason_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateOrderCancelledResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_cancelled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id_reason_request** | **OrderIdReasonRequest** |  |  |

### Return type

**CreateSandboxSimulateOrderCancelledResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_order_delivered

> <CreateSandboxSimulateOrderDeliveredResponse> create_sandbox_simulate_order_delivered(order_id_reason_request)

The carrier delivers a shipped order (order.delivered).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
order_id_reason_request = Crossly::OrderIdReasonRequest.new({order_id: 'order_id_example'}) # OrderIdReasonRequest | 

begin
  # The carrier delivers a shipped order (order.delivered).
  result = api_instance.create_sandbox_simulate_order_delivered(order_id_reason_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_delivered: #{e}"
end
```

#### Using the create_sandbox_simulate_order_delivered_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateOrderDeliveredResponse>, Integer, Hash)> create_sandbox_simulate_order_delivered_with_http_info(order_id_reason_request)

```ruby
begin
  # The carrier delivers a shipped order (order.delivered).
  data, status_code, headers = api_instance.create_sandbox_simulate_order_delivered_with_http_info(order_id_reason_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateOrderDeliveredResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_order_delivered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id_reason_request** | **OrderIdReasonRequest** |  |  |

### Return type

**CreateSandboxSimulateOrderDeliveredResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sandbox_simulate_refund

> <CreateSandboxSimulateRefundResponse> create_sandbox_simulate_refund(create_sandbox_simulate_refund_request)

Refund an order in full or in part (refund.issued).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
create_sandbox_simulate_refund_request = Crossly::CreateSandboxSimulateRefundRequest.new({order_id: 'order_id_example'}) # CreateSandboxSimulateRefundRequest | 

begin
  # Refund an order in full or in part (refund.issued).
  result = api_instance.create_sandbox_simulate_refund(create_sandbox_simulate_refund_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_refund: #{e}"
end
```

#### Using the create_sandbox_simulate_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSandboxSimulateRefundResponse>, Integer, Hash)> create_sandbox_simulate_refund_with_http_info(create_sandbox_simulate_refund_request)

```ruby
begin
  # Refund an order in full or in part (refund.issued).
  data, status_code, headers = api_instance.create_sandbox_simulate_refund_with_http_info(create_sandbox_simulate_refund_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSandboxSimulateRefundResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->create_sandbox_simulate_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sandbox_simulate_refund_request** | **CreateSandboxSimulateRefundRequest** |  |  |

### Return type

**CreateSandboxSimulateRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sandbox

> <GetSandboxResponse> get_sandbox

The sandbox seller this token acts on, its simulated channels and the failure modes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new

begin
  # The sandbox seller this token acts on, its simulated channels and the failure modes.
  result = api_instance.get_sandbox
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->get_sandbox: #{e}"
end
```

#### Using the get_sandbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSandboxResponse>, Integer, Hash)> get_sandbox_with_http_info

```ruby
begin
  # The sandbox seller this token acts on, its simulated channels and the failure modes.
  data, status_code, headers = api_instance.get_sandbox_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSandboxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->get_sandbox_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetSandboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sandbox_events

> <ListSandboxEventsResponse> list_sandbox_events(opts)

The simulated marketplaces' call log: verb, channel, outcome, latency.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SandboxApi.new
opts = {
  limit: 8.14 # Float | 
}

begin
  # The simulated marketplaces' call log: verb, channel, outcome, latency.
  result = api_instance.list_sandbox_events(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->list_sandbox_events: #{e}"
end
```

#### Using the list_sandbox_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSandboxEventsResponse>, Integer, Hash)> list_sandbox_events_with_http_info(opts)

```ruby
begin
  # The simulated marketplaces' call log: verb, channel, outcome, latency.
  data, status_code, headers = api_instance.list_sandbox_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSandboxEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SandboxApi->list_sandbox_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** |  | [optional] |

### Return type

**ListSandboxEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

