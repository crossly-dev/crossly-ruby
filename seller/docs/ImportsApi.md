# Crossly::ImportsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_import**](ImportsApi.md#create_import) | **POST** /v1/imports | Start a bulk-import job for an existing platform connection. |
| [**get_import**](ImportsApi.md#get_import) | **GET** /v1/imports/{id} | Get one import job. |
| [**list_imports**](ImportsApi.md#list_imports) | **GET** /v1/imports | List bulk-import jobs. |


## create_import

> <CreateImportResponse> create_import

Start a bulk-import job for an existing platform connection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ImportsApi.new

begin
  # Start a bulk-import job for an existing platform connection.
  result = api_instance.create_import
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->create_import: #{e}"
end
```

#### Using the create_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateImportResponse>, Integer, Hash)> create_import_with_http_info

```ruby
begin
  # Start a bulk-import job for an existing platform connection.
  data, status_code, headers = api_instance.create_import_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->create_import_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateImportResponse**](CreateImportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_import

> <GetImportResponse> get_import(id)

Get one import job.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ImportsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one import job.
  result = api_instance.get_import(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->get_import: #{e}"
end
```

#### Using the get_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImportResponse>, Integer, Hash)> get_import_with_http_info(id)

```ruby
begin
  # Get one import job.
  data, status_code, headers = api_instance.get_import_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->get_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetImportResponse**](GetImportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imports

> <V1List> list_imports

List bulk-import jobs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ImportsApi.new

begin
  # List bulk-import jobs.
  result = api_instance.list_imports
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->list_imports: #{e}"
end
```

#### Using the list_imports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_imports_with_http_info

```ruby
begin
  # List bulk-import jobs.
  data, status_code, headers = api_instance.list_imports_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->list_imports_with_http_info: #{e}"
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

