# Crossly::SalesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sale_bulk_delete**](SalesApi.md#create_sale_bulk_delete) | **POST** /v1/sales/bulk-delete | Bulk soft-delete sales rows. |
| [**list_sales**](SalesApi.md#list_sales) | **GET** /v1/sales | List sales (each unique sale event). |


## create_sale_bulk_delete

> <CreateSaleBulkDeleteResponse> create_sale_bulk_delete

Bulk soft-delete sales rows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SalesApi.new

begin
  # Bulk soft-delete sales rows.
  result = api_instance.create_sale_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->create_sale_bulk_delete: #{e}"
end
```

#### Using the create_sale_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSaleBulkDeleteResponse>, Integer, Hash)> create_sale_bulk_delete_with_http_info

```ruby
begin
  # Bulk soft-delete sales rows.
  data, status_code, headers = api_instance.create_sale_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSaleBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->create_sale_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateSaleBulkDeleteResponse**](CreateSaleBulkDeleteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sales

> <V1List> list_sales

List sales (each unique sale event).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SalesApi.new

begin
  # List sales (each unique sale event).
  result = api_instance.list_sales
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->list_sales: #{e}"
end
```

#### Using the list_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_sales_with_http_info

```ruby
begin
  # List sales (each unique sale event).
  data, status_code, headers = api_instance.list_sales_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->list_sales_with_http_info: #{e}"
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

