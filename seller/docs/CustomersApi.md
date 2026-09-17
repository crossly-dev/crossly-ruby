# Crossly::CustomersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_bulk_delete**](CustomersApi.md#create_customer_bulk_delete) | **POST** /v1/customers/bulk-delete | Bulk blocklist customer handles. |
| [**create_customer_bulk_export**](CustomersApi.md#create_customer_bulk_export) | **POST** /v1/customers/bulk-export | Bulk export aggregated customers as CSV. |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v1/customers/{handle} | Get one customer with their recent 50 orders. |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /v1/customers | List aggregated customers (group-by lower(buyer_username)). |


## create_customer_bulk_delete

> <CreateCustomerBulkDeleteResponse> create_customer_bulk_delete

Bulk blocklist customer handles.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Bulk blocklist customer handles.
  result = api_instance.create_customer_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete: #{e}"
end
```

#### Using the create_customer_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerBulkDeleteResponse>, Integer, Hash)> create_customer_bulk_delete_with_http_info

```ruby
begin
  # Bulk blocklist customer handles.
  data, status_code, headers = api_instance.create_customer_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCustomerBulkDeleteResponse**](CreateCustomerBulkDeleteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_customer_bulk_export

> String create_customer_bulk_export

Bulk export aggregated customers as CSV.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Bulk export aggregated customers as CSV.
  result = api_instance.create_customer_bulk_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export: #{e}"
end
```

#### Using the create_customer_bulk_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_customer_bulk_export_with_http_info

```ruby
begin
  # Bulk export aggregated customers as CSV.
  data, status_code, headers = api_instance.create_customer_bulk_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export_with_http_info: #{e}"
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


## get_customer

> <GetCustomerResponse> get_customer(handle)

Get one customer with their recent 50 orders.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Get one customer with their recent 50 orders.
  result = api_instance.get_customer(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerResponse>, Integer, Hash)> get_customer_with_http_info(handle)

```ruby
begin
  # Get one customer with their recent 50 orders.
  data, status_code, headers = api_instance.get_customer_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

[**GetCustomerResponse**](GetCustomerResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <V1List> list_customers

List aggregated customers (group-by lower(buyer_username)).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # List aggregated customers (group-by lower(buyer_username)).
  result = api_instance.list_customers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_customers_with_http_info

```ruby
begin
  # List aggregated customers (group-by lower(buyer_username)).
  data, status_code, headers = api_instance.list_customers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

