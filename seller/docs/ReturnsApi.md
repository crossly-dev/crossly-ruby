# Crossly::ReturnsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_return**](ReturnsApi.md#create_return) | **POST** /v1/returns | Open a return record on an order (rejects if another open return exists). |
| [**get_return**](ReturnsApi.md#get_return) | **GET** /v1/returns/{id} | Get one return record. |
| [**list_returns**](ReturnsApi.md#list_returns) | **GET** /v1/returns | List returns (physical-return workflow). status&#x3D;open|closed|&lt;exact&gt;. |
| [**update_return**](ReturnsApi.md#update_return) | **PATCH** /v1/returns/{id} | Transition return status (received/inspected/restocked) and bump inventory on restock. |


## create_return

> <CreateReturnResponse> create_return

Open a return record on an order (rejects if another open return exists).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new

begin
  # Open a return record on an order (rejects if another open return exists).
  result = api_instance.create_return
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return: #{e}"
end
```

#### Using the create_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReturnResponse>, Integer, Hash)> create_return_with_http_info

```ruby
begin
  # Open a return record on an order (rejects if another open return exists).
  data, status_code, headers = api_instance.create_return_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateReturnResponse**](CreateReturnResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_return

> <GetReturnResponse> get_return(id)

Get one return record.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one return record.
  result = api_instance.get_return(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->get_return: #{e}"
end
```

#### Using the get_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReturnResponse>, Integer, Hash)> get_return_with_http_info(id)

```ruby
begin
  # Get one return record.
  data, status_code, headers = api_instance.get_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->get_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetReturnResponse**](GetReturnResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_returns

> <V1List> list_returns

List returns (physical-return workflow). status=open|closed|<exact>.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new

begin
  # List returns (physical-return workflow). status=open|closed|<exact>.
  result = api_instance.list_returns
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_returns: #{e}"
end
```

#### Using the list_returns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_returns_with_http_info

```ruby
begin
  # List returns (physical-return workflow). status=open|closed|<exact>.
  data, status_code, headers = api_instance.list_returns_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_returns_with_http_info: #{e}"
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


## update_return

> <UpdateReturnResponse> update_return(id)

Transition return status (received/inspected/restocked) and bump inventory on restock.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Transition return status (received/inspected/restocked) and bump inventory on restock.
  result = api_instance.update_return(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return: #{e}"
end
```

#### Using the update_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateReturnResponse>, Integer, Hash)> update_return_with_http_info(id)

```ruby
begin
  # Transition return status (received/inspected/restocked) and bump inventory on restock.
  data, status_code, headers = api_instance.update_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateReturnResponse**](UpdateReturnResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

