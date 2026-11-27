# Crossly::SourceSyncApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_source_sync_sync**](SourceSyncApi.md#create_source_sync_sync) | **POST** /v1/source-sync/{platform}/sync | Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202). |
| [**get_source_sync_location**](SourceSyncApi.md#get_source_sync_location) | **GET** /v1/source-sync/{platform}/locations | POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with. |
| [**list_source_sync**](SourceSyncApi.md#list_source_sync) | **GET** /v1/source-sync | List source-capable stores with their continuous-sync settings and status. |
| [**list_source_sync_events**](SourceSyncApi.md#list_source_sync_events) | **GET** /v1/source-sync/events | Recent source-sync activity: each webhook delivery and reconcile change, with its outcome. |
| [**update_source_sync**](SourceSyncApi.md#update_source_sync) | **PATCH** /v1/source-sync/{platform} | Update a store&#39;s source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels. |
| [**update_source_sync_location**](SourceSyncApi.md#update_source_sync_location) | **PUT** /v1/source-sync/{platform}/location | POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists. |


## create_source_sync_sync

> <CreateSourceSyncSyncResponse> create_source_sync_sync(platform)

Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new
platform = 'shopify' # String | 

begin
  # Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).
  result = api_instance.create_source_sync_sync(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->create_source_sync_sync: #{e}"
end
```

#### Using the create_source_sync_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSourceSyncSyncResponse>, Integer, Hash)> create_source_sync_sync_with_http_info(platform)

```ruby
begin
  # Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).
  data, status_code, headers = api_instance.create_source_sync_sync_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSourceSyncSyncResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->create_source_sync_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

**CreateSourceSyncSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_sync_location

> <GetSourceSyncLocationResponse> get_source_sync_location(platform)

POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new
platform = 'lightspeed_r' # String | 

begin
  # POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.
  result = api_instance.get_source_sync_location(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->get_source_sync_location: #{e}"
end
```

#### Using the get_source_sync_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSourceSyncLocationResponse>, Integer, Hash)> get_source_sync_location_with_http_info(platform)

```ruby
begin
  # POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.
  data, status_code, headers = api_instance.get_source_sync_location_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSourceSyncLocationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->get_source_sync_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

**GetSourceSyncLocationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_source_sync

> <ListSourceSyncResponse> list_source_sync

List source-capable stores with their continuous-sync settings and status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new

begin
  # List source-capable stores with their continuous-sync settings and status.
  result = api_instance.list_source_sync
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->list_source_sync: #{e}"
end
```

#### Using the list_source_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceSyncResponse>, Integer, Hash)> list_source_sync_with_http_info

```ruby
begin
  # List source-capable stores with their continuous-sync settings and status.
  data, status_code, headers = api_instance.list_source_sync_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceSyncResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->list_source_sync_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListSourceSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_source_sync_events

> <ListSourceSyncEventsResponse> list_source_sync_events(opts)

Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new
opts = {
  platform: 'shopify', # String | 
  limit: 56 # Integer | 
}

begin
  # Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.
  result = api_instance.list_source_sync_events(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->list_source_sync_events: #{e}"
end
```

#### Using the list_source_sync_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceSyncEventsResponse>, Integer, Hash)> list_source_sync_events_with_http_info(opts)

```ruby
begin
  # Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.
  data, status_code, headers = api_instance.list_source_sync_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceSyncEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->list_source_sync_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListSourceSyncEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_source_sync

> <ListSourceSyncItem> update_source_sync(platform)

Update a store's source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new
platform = 'shopify' # String | 

begin
  # Update a store's source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.
  result = api_instance.update_source_sync(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->update_source_sync: #{e}"
end
```

#### Using the update_source_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceSyncItem>, Integer, Hash)> update_source_sync_with_http_info(platform)

```ruby
begin
  # Update a store's source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.
  data, status_code, headers = api_instance.update_source_sync_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceSyncItem>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->update_source_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

**ListSourceSyncItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_source_sync_location

> <GetSourceSyncLocationResponse> update_source_sync_location(platform, update_source_sync_location_request)

POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourceSyncApi.new
platform = 'lightspeed_r' # String | 
update_source_sync_location_request = Crossly::UpdateSourceSyncLocationRequest.new({location_id: 'location_id_example'}) # UpdateSourceSyncLocationRequest | 

begin
  # POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.
  result = api_instance.update_source_sync_location(platform, update_source_sync_location_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->update_source_sync_location: #{e}"
end
```

#### Using the update_source_sync_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSourceSyncLocationResponse>, Integer, Hash)> update_source_sync_location_with_http_info(platform, update_source_sync_location_request)

```ruby
begin
  # POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.
  data, status_code, headers = api_instance.update_source_sync_location_with_http_info(platform, update_source_sync_location_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSourceSyncLocationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourceSyncApi->update_source_sync_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **update_source_sync_location_request** | **UpdateSourceSyncLocationRequest** |  |  |

### Return type

**GetSourceSyncLocationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

