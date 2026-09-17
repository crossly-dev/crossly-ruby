# Crossly::PATApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pat**](PATApi.md#create_pat) | **POST** /v1/pat | Mint a new PAT. Full token returned ONCE — store it on the client. |
| [**delete_pat**](PATApi.md#delete_pat) | **DELETE** /v1/pat/{id} | Revoke a PAT by id. |
| [**get_pat_scope**](PATApi.md#get_pat_scope) | **GET** /v1/pat/scopes | List the canonical scope catalog. |
| [**list_pat**](PATApi.md#list_pat) | **GET** /v1/pat | List the caller&#39;s PATs (preview only). |


## create_pat

> <CreatePatResponse> create_pat

Mint a new PAT. Full token returned ONCE — store it on the client.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PATApi.new

begin
  # Mint a new PAT. Full token returned ONCE — store it on the client.
  result = api_instance.create_pat
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->create_pat: #{e}"
end
```

#### Using the create_pat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePatResponse>, Integer, Hash)> create_pat_with_http_info

```ruby
begin
  # Mint a new PAT. Full token returned ONCE — store it on the client.
  data, status_code, headers = api_instance.create_pat_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePatResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->create_pat_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreatePatResponse**](CreatePatResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pat

> <DeletePatResponse> delete_pat(id)

Revoke a PAT by id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PATApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Revoke a PAT by id.
  result = api_instance.delete_pat(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->delete_pat: #{e}"
end
```

#### Using the delete_pat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePatResponse>, Integer, Hash)> delete_pat_with_http_info(id)

```ruby
begin
  # Revoke a PAT by id.
  data, status_code, headers = api_instance.delete_pat_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePatResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->delete_pat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeletePatResponse**](DeletePatResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pat_scope

> <GetPatScopeResponse> get_pat_scope

List the canonical scope catalog.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PATApi.new

begin
  # List the canonical scope catalog.
  result = api_instance.get_pat_scope
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->get_pat_scope: #{e}"
end
```

#### Using the get_pat_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPatScopeResponse>, Integer, Hash)> get_pat_scope_with_http_info

```ruby
begin
  # List the canonical scope catalog.
  data, status_code, headers = api_instance.get_pat_scope_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPatScopeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->get_pat_scope_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPatScopeResponse**](GetPatScopeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pat

> <V1List> list_pat

List the caller's PATs (preview only).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PATApi.new

begin
  # List the caller's PATs (preview only).
  result = api_instance.list_pat
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->list_pat: #{e}"
end
```

#### Using the list_pat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_pat_with_http_info

```ruby
begin
  # List the caller's PATs (preview only).
  data, status_code, headers = api_instance.list_pat_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling PATApi->list_pat_with_http_info: #{e}"
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

