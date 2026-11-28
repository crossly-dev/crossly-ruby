# Crossly::SalesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sale_bulk_delete**](SalesApi.md#create_sale_bulk_delete) | **POST** /v1/sales/bulk-delete | Bulk soft-delete sales rows. |
| [**list_sales**](SalesApi.md#list_sales) | **GET** /v1/sales | List sales (each unique sale event). |


## create_sale_bulk_delete

> <CreateSaleBulkDeleteResponse> create_sale_bulk_delete(create_listing_by_id_request)

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
create_listing_by_id_request = Crossly::CreateListingByIdRequest.new({ids: ['ids_example']}) # CreateListingByIdRequest | 

begin
  # Bulk soft-delete sales rows.
  result = api_instance.create_sale_bulk_delete(create_listing_by_id_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->create_sale_bulk_delete: #{e}"
end
```

#### Using the create_sale_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSaleBulkDeleteResponse>, Integer, Hash)> create_sale_bulk_delete_with_http_info(create_listing_by_id_request)

```ruby
begin
  # Bulk soft-delete sales rows.
  data, status_code, headers = api_instance.create_sale_bulk_delete_with_http_info(create_listing_by_id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSaleBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->create_sale_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_listing_by_id_request** | **CreateListingByIdRequest** |  |  |

### Return type

**CreateSaleBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_sales

> <ListSalesResponse> list_sales(opts)

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
opts = {
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # List sales (each unique sale event).
  result = api_instance.list_sales(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->list_sales: #{e}"
end
```

#### Using the list_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSalesResponse>, Integer, Hash)> list_sales_with_http_info(opts)

```ruby
begin
  # List sales (each unique sale event).
  data, status_code, headers = api_instance.list_sales_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSalesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SalesApi->list_sales_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListSalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

