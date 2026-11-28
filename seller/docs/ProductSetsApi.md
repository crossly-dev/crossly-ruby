# Crossly::ProductSetsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_set**](ProductSetsApi.md#create_product_set) | **POST** /v1/product-sets | Create a product set (filters, explicit picks, or both). |
| [**create_product_set_bulk**](ProductSetsApi.md#create_product_set_bulk) | **POST** /v1/product-sets/{id}/bulk | Run a bulk action (delist / relist / check-status) against the set&#39;s current members. |
| [**create_product_set_member**](ProductSetsApi.md#create_product_set_member) | **POST** /v1/product-sets/{id}/members | Add / exclude / remove explicit picks for a set. |
| [**delete_product_set**](ProductSetsApi.md#delete_product_set) | **DELETE** /v1/product-sets/{id} | Delete a product set (its id is also dropped from any channel exclusion lists). |
| [**get_product_set**](ProductSetsApi.md#get_product_set) | **GET** /v1/product-sets/{id} | Get one product set (its filters and pick counts). |
| [**list_product_set_members**](ProductSetsApi.md#list_product_set_members) | **GET** /v1/product-sets/{id}/members | Evaluate a set now and return a page of its member listings. |
| [**list_product_sets**](ProductSetsApi.md#list_product_sets) | **GET** /v1/product-sets | List your saved product sets with their live member counts. |
| [**update_product_set**](ProductSetsApi.md#update_product_set) | **PATCH** /v1/product-sets/{id} | Update a set: rename, description, or replace its filters. |


## create_product_set

> <ListProductSetsItem> create_product_set(create_product_set_request)

Create a product set (filters, explicit picks, or both).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
create_product_set_request = Crossly::CreateProductSetRequest.new({name: 'name_example'}) # CreateProductSetRequest | 

begin
  # Create a product set (filters, explicit picks, or both).
  result = api_instance.create_product_set(create_product_set_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set: #{e}"
end
```

#### Using the create_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetsItem>, Integer, Hash)> create_product_set_with_http_info(create_product_set_request)

```ruby
begin
  # Create a product set (filters, explicit picks, or both).
  data, status_code, headers = api_instance.create_product_set_with_http_info(create_product_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_product_set_request** | **CreateProductSetRequest** |  |  |

### Return type

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product_set_bulk

> <CreateProductSetBulkResponse> create_product_set_bulk(id, create_product_set_bulk_request)

Run a bulk action (delist / relist / check-status) against the set's current members.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_product_set_bulk_request = Crossly::CreateProductSetBulkRequest.new({action: 'delist'}) # CreateProductSetBulkRequest | 

begin
  # Run a bulk action (delist / relist / check-status) against the set's current members.
  result = api_instance.create_product_set_bulk(id, create_product_set_bulk_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set_bulk: #{e}"
end
```

#### Using the create_product_set_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductSetBulkResponse>, Integer, Hash)> create_product_set_bulk_with_http_info(id, create_product_set_bulk_request)

```ruby
begin
  # Run a bulk action (delist / relist / check-status) against the set's current members.
  data, status_code, headers = api_instance.create_product_set_bulk_with_http_info(id, create_product_set_bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductSetBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_set_bulk_request** | **CreateProductSetBulkRequest** |  |  |

### Return type

**CreateProductSetBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product_set_member

> <ListProductSetsItem> create_product_set_member(id, create_product_set_member_request)

Add / exclude / remove explicit picks for a set.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_product_set_member_request = Crossly::CreateProductSetMemberRequest.new # CreateProductSetMemberRequest | 

begin
  # Add / exclude / remove explicit picks for a set.
  result = api_instance.create_product_set_member(id, create_product_set_member_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set_member: #{e}"
end
```

#### Using the create_product_set_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetsItem>, Integer, Hash)> create_product_set_member_with_http_info(id, create_product_set_member_request)

```ruby
begin
  # Add / exclude / remove explicit picks for a set.
  data, status_code, headers = api_instance.create_product_set_member_with_http_info(id, create_product_set_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->create_product_set_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_set_member_request** | **CreateProductSetMemberRequest** |  |  |

### Return type

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_set

> <OkResponse> delete_product_set(id)

Delete a product set (its id is also dropped from any channel exclusion lists).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a product set (its id is also dropped from any channel exclusion lists).
  result = api_instance.delete_product_set(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->delete_product_set: #{e}"
end
```

#### Using the delete_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_product_set_with_http_info(id)

```ruby
begin
  # Delete a product set (its id is also dropped from any channel exclusion lists).
  data, status_code, headers = api_instance.delete_product_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->delete_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_set

> <ListProductSetsItem> get_product_set(id)

Get one product set (its filters and pick counts).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one product set (its filters and pick counts).
  result = api_instance.get_product_set(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->get_product_set: #{e}"
end
```

#### Using the get_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetsItem>, Integer, Hash)> get_product_set_with_http_info(id)

```ruby
begin
  # Get one product set (its filters and pick counts).
  data, status_code, headers = api_instance.get_product_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->get_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_set_members

> <ListProductSetMembersResponse> list_product_set_members(id, opts)

Evaluate a set now and return a page of its member listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Evaluate a set now and return a page of its member listings.
  result = api_instance.list_product_set_members(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->list_product_set_members: #{e}"
end
```

#### Using the list_product_set_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetMembersResponse>, Integer, Hash)> list_product_set_members_with_http_info(id, opts)

```ruby
begin
  # Evaluate a set now and return a page of its member listings.
  data, status_code, headers = api_instance.list_product_set_members_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetMembersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->list_product_set_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **page** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListProductSetMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_sets

> <ListProductSetsResponse> list_product_sets

List your saved product sets with their live member counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new

begin
  # List your saved product sets with their live member counts.
  result = api_instance.list_product_sets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->list_product_sets: #{e}"
end
```

#### Using the list_product_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetsResponse>, Integer, Hash)> list_product_sets_with_http_info

```ruby
begin
  # List your saved product sets with their live member counts.
  data, status_code, headers = api_instance.list_product_sets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->list_product_sets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListProductSetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product_set

> <ListProductSetsItem> update_product_set(id, update_product_set_request)

Update a set: rename, description, or replace its filters.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductSetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_product_set_request = Crossly::UpdateProductSetRequest.new # UpdateProductSetRequest | 

begin
  # Update a set: rename, description, or replace its filters.
  result = api_instance.update_product_set(id, update_product_set_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->update_product_set: #{e}"
end
```

#### Using the update_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductSetsItem>, Integer, Hash)> update_product_set_with_http_info(id, update_product_set_request)

```ruby
begin
  # Update a set: rename, description, or replace its filters.
  data, status_code, headers = api_instance.update_product_set_with_http_info(id, update_product_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductSetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductSetsApi->update_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_product_set_request** | **UpdateProductSetRequest** |  |  |

### Return type

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

