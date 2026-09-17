# Crossly::NetworkApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_pool**](NetworkApi.md#create_network_pool) | **POST** /v1/network/pool | Join the Crossly Network reciprocal engagement pool. |
| [**delete_network_pool**](NetworkApi.md#delete_network_pool) | **DELETE** /v1/network/pool | Leave the Crossly Network pool. |
| [**get_network_pool**](NetworkApi.md#get_network_pool) | **GET** /v1/network/pool | The seller&#39;s Crossly Network pool membership row. |
| [**get_network_pool_size**](NetworkApi.md#get_network_pool_size) | **GET** /v1/network/pool/size | Total members in the Crossly Network pool. |
| [**list_network_pool_log**](NetworkApi.md#list_network_pool_log) | **GET** /v1/network/pool/log | Recent engagement history — both sent and received. |
| [**update_network_pool**](NetworkApi.md#update_network_pool) | **PATCH** /v1/network/pool | Update per-action toggles + platforms on pool membership. |


## create_network_pool

> <CreateNetworkPoolResponse> create_network_pool

Join the Crossly Network reciprocal engagement pool.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new

begin
  # Join the Crossly Network reciprocal engagement pool.
  result = api_instance.create_network_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->create_network_pool: #{e}"
end
```

#### Using the create_network_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNetworkPoolResponse>, Integer, Hash)> create_network_pool_with_http_info

```ruby
begin
  # Join the Crossly Network reciprocal engagement pool.
  data, status_code, headers = api_instance.create_network_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNetworkPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->create_network_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateNetworkPoolResponse**](CreateNetworkPoolResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_network_pool

> <DeleteNetworkPoolResponse> delete_network_pool

Leave the Crossly Network pool.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new

begin
  # Leave the Crossly Network pool.
  result = api_instance.delete_network_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->delete_network_pool: #{e}"
end
```

#### Using the delete_network_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteNetworkPoolResponse>, Integer, Hash)> delete_network_pool_with_http_info

```ruby
begin
  # Leave the Crossly Network pool.
  data, status_code, headers = api_instance.delete_network_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteNetworkPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->delete_network_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeleteNetworkPoolResponse**](DeleteNetworkPoolResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_pool

> <GetNetworkPoolResponse> get_network_pool

The seller's Crossly Network pool membership row.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new

begin
  # The seller's Crossly Network pool membership row.
  result = api_instance.get_network_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->get_network_pool: #{e}"
end
```

#### Using the get_network_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNetworkPoolResponse>, Integer, Hash)> get_network_pool_with_http_info

```ruby
begin
  # The seller's Crossly Network pool membership row.
  data, status_code, headers = api_instance.get_network_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNetworkPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->get_network_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNetworkPoolResponse**](GetNetworkPoolResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_pool_size

> <GetNetworkPoolSizeResponse> get_network_pool_size

Total members in the Crossly Network pool.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new

begin
  # Total members in the Crossly Network pool.
  result = api_instance.get_network_pool_size
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->get_network_pool_size: #{e}"
end
```

#### Using the get_network_pool_size_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNetworkPoolSizeResponse>, Integer, Hash)> get_network_pool_size_with_http_info

```ruby
begin
  # Total members in the Crossly Network pool.
  data, status_code, headers = api_instance.get_network_pool_size_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNetworkPoolSizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->get_network_pool_size_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNetworkPoolSizeResponse**](GetNetworkPoolSizeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_network_pool_log

> <V1List> list_network_pool_log(opts)

Recent engagement history — both sent and received.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new
opts = {
  limit: 56 # Integer | 
}

begin
  # Recent engagement history — both sent and received.
  result = api_instance.list_network_pool_log(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->list_network_pool_log: #{e}"
end
```

#### Using the list_network_pool_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_network_pool_log_with_http_info(opts)

```ruby
begin
  # Recent engagement history — both sent and received.
  data, status_code, headers = api_instance.list_network_pool_log_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->list_network_pool_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_network_pool

> <UpdateNetworkPoolResponse> update_network_pool

Update per-action toggles + platforms on pool membership.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NetworkApi.new

begin
  # Update per-action toggles + platforms on pool membership.
  result = api_instance.update_network_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->update_network_pool: #{e}"
end
```

#### Using the update_network_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateNetworkPoolResponse>, Integer, Hash)> update_network_pool_with_http_info

```ruby
begin
  # Update per-action toggles + platforms on pool membership.
  data, status_code, headers = api_instance.update_network_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateNetworkPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NetworkApi->update_network_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UpdateNetworkPoolResponse**](UpdateNetworkPoolResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

