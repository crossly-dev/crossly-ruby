# Crossly::SavedViewsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_saved_view**](SavedViewsApi.md#create_saved_view) | **POST** /v1/saved-views | Create a saved view preset. |
| [**delete_saved_view**](SavedViewsApi.md#delete_saved_view) | **DELETE** /v1/saved-views/{id} | Delete a saved view preset. |
| [**list_saved_views**](SavedViewsApi.md#list_saved_views) | **GET** /v1/saved-views | List the seller&#39;s saved view presets. |
| [**update_saved_view**](SavedViewsApi.md#update_saved_view) | **PATCH** /v1/saved-views/{id} | Update a saved view preset. |


## create_saved_view

> <CreateSavedViewResponse> create_saved_view

Create a saved view preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SavedViewsApi.new

begin
  # Create a saved view preset.
  result = api_instance.create_saved_view
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->create_saved_view: #{e}"
end
```

#### Using the create_saved_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSavedViewResponse>, Integer, Hash)> create_saved_view_with_http_info

```ruby
begin
  # Create a saved view preset.
  data, status_code, headers = api_instance.create_saved_view_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSavedViewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->create_saved_view_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateSavedViewResponse**](CreateSavedViewResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_saved_view

> <DeleteSavedViewResponse> delete_saved_view(id)

Delete a saved view preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SavedViewsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a saved view preset.
  result = api_instance.delete_saved_view(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->delete_saved_view: #{e}"
end
```

#### Using the delete_saved_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSavedViewResponse>, Integer, Hash)> delete_saved_view_with_http_info(id)

```ruby
begin
  # Delete a saved view preset.
  data, status_code, headers = api_instance.delete_saved_view_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSavedViewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->delete_saved_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteSavedViewResponse**](DeleteSavedViewResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_saved_views

> <V1List> list_saved_views(opts)

List the seller's saved view presets.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SavedViewsApi.new
opts = {
  resource: 'resource_example' # String | 
}

begin
  # List the seller's saved view presets.
  result = api_instance.list_saved_views(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->list_saved_views: #{e}"
end
```

#### Using the list_saved_views_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_saved_views_with_http_info(opts)

```ruby
begin
  # List the seller's saved view presets.
  data, status_code, headers = api_instance.list_saved_views_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->list_saved_views_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** |  | [optional] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_saved_view

> <UpdateSavedViewResponse> update_saved_view(id)

Update a saved view preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SavedViewsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update a saved view preset.
  result = api_instance.update_saved_view(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->update_saved_view: #{e}"
end
```

#### Using the update_saved_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSavedViewResponse>, Integer, Hash)> update_saved_view_with_http_info(id)

```ruby
begin
  # Update a saved view preset.
  data, status_code, headers = api_instance.update_saved_view_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSavedViewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SavedViewsApi->update_saved_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateSavedViewResponse**](UpdateSavedViewResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

