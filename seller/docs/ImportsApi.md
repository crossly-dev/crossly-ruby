# Crossly::ImportsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_import**](ImportsApi.md#create_import) | **POST** /v1/imports | Start a bulk-import job for an existing platform connection. |
| [**get_import**](ImportsApi.md#get_import) | **GET** /v1/imports/{id} | Get one import job. |
| [**get_import_site**](ImportsApi.md#get_import_site) | **GET** /v1/imports/sites | Which sites (eBay marketplaces) an account&#39;s listings are on, with counts — to choose what an import brings in. |
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

**CreateImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_import

> <ListImportsItem> get_import(id)

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

> <Array(<ListImportsItem>, Integer, Hash)> get_import_with_http_info(id)

```ruby
begin
  # Get one import job.
  data, status_code, headers = api_instance.get_import_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImportsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->get_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListImportsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_import_site

> <GetImportSiteResponse> get_import_site(opts)

Which sites (eBay marketplaces) an account's listings are on, with counts — to choose what an import brings in.

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
opts = {
  platform: 'platform_example' # String | Default ebay.
}

begin
  # Which sites (eBay marketplaces) an account's listings are on, with counts — to choose what an import brings in.
  result = api_instance.get_import_site(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->get_import_site: #{e}"
end
```

#### Using the get_import_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImportSiteResponse>, Integer, Hash)> get_import_site_with_http_info(opts)

```ruby
begin
  # Which sites (eBay marketplaces) an account's listings are on, with counts — to choose what an import brings in.
  data, status_code, headers = api_instance.get_import_site_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImportSiteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->get_import_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Default ebay. | [optional] |

### Return type

**GetImportSiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imports

> <ListImportsResponse> list_imports

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

> <Array(<ListImportsResponse>, Integer, Hash)> list_imports_with_http_info

```ruby
begin
  # List bulk-import jobs.
  data, status_code, headers = api_instance.list_imports_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImportsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ImportsApi->list_imports_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListImportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

