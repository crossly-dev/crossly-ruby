# Crossly::SkuPresetsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sku_preset**](SkuPresetsApi.md#create_sku_preset) | **POST** /v1/sku-presets | Create a named SKU preset in the store (optionally the default). |
| [**create_sku_preset_preview**](SkuPresetsApi.md#create_sku_preset_preview) | **POST** /v1/sku-presets/preview | Generate a SKU from a saved preset (presetId) or an unsaved template, for the given listing fields (or a sample listing when fields is omitted). Nothing is written. |
| [**delete_sku_preset**](SkuPresetsApi.md#delete_sku_preset) | **DELETE** /v1/sku-presets/{id} | Delete a SKU preset of the store. |
| [**get_sku_preset**](SkuPresetsApi.md#get_sku_preset) | **GET** /v1/sku-presets/{id} | Get one SKU preset of the store. |
| [**list_sku_presets**](SkuPresetsApi.md#list_sku_presets) | **GET** /v1/sku-presets | List the store&#39;s SKU presets, which one is the default, and the template new listings auto-fill their SKU from (meta.autoFill). |
| [**update_sku_preset**](SkuPresetsApi.md#update_sku_preset) | **PATCH** /v1/sku-presets/{id} | Rename a SKU preset, change its template, or make it the store&#39;s default. |
| [**update_sku_preset_default**](SkuPresetsApi.md#update_sku_preset_default) | **PUT** /v1/sku-presets/default | Choose the store&#39;s default SKU preset, which auto-fills the SKU of new listings created without one. presetId null clears it (manual SKUs). |


## create_sku_preset

> <ListSkuPresetsItem> create_sku_preset(create_sku_preset_request)

Create a named SKU preset in the store (optionally the default).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
create_sku_preset_request = Crossly::CreateSkuPresetRequest.new({name: 'name_example', template: 'template_example'}) # CreateSkuPresetRequest | 

begin
  # Create a named SKU preset in the store (optionally the default).
  result = api_instance.create_sku_preset(create_sku_preset_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->create_sku_preset: #{e}"
end
```

#### Using the create_sku_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSkuPresetsItem>, Integer, Hash)> create_sku_preset_with_http_info(create_sku_preset_request)

```ruby
begin
  # Create a named SKU preset in the store (optionally the default).
  data, status_code, headers = api_instance.create_sku_preset_with_http_info(create_sku_preset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSkuPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->create_sku_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sku_preset_request** | **CreateSkuPresetRequest** |  |  |

### Return type

**ListSkuPresetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sku_preset_preview

> <CreateSkuPresetPreviewResponse> create_sku_preset_preview(create_sku_preset_preview_request)

Generate a SKU from a saved preset (presetId) or an unsaved template, for the given listing fields (or a sample listing when fields is omitted). Nothing is written.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
create_sku_preset_preview_request = Crossly::CreateSkuPresetPreviewRequest.new # CreateSkuPresetPreviewRequest | 

begin
  # Generate a SKU from a saved preset (presetId) or an unsaved template, for the given listing fields (or a sample listing when fields is omitted). Nothing is written.
  result = api_instance.create_sku_preset_preview(create_sku_preset_preview_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->create_sku_preset_preview: #{e}"
end
```

#### Using the create_sku_preset_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSkuPresetPreviewResponse>, Integer, Hash)> create_sku_preset_preview_with_http_info(create_sku_preset_preview_request)

```ruby
begin
  # Generate a SKU from a saved preset (presetId) or an unsaved template, for the given listing fields (or a sample listing when fields is omitted). Nothing is written.
  data, status_code, headers = api_instance.create_sku_preset_preview_with_http_info(create_sku_preset_preview_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSkuPresetPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->create_sku_preset_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sku_preset_preview_request** | **CreateSkuPresetPreviewRequest** |  |  |

### Return type

**CreateSkuPresetPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sku_preset

> <DeleteSkuPresetResponse> delete_sku_preset(id)

Delete a SKU preset of the store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a SKU preset of the store.
  result = api_instance.delete_sku_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->delete_sku_preset: #{e}"
end
```

#### Using the delete_sku_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSkuPresetResponse>, Integer, Hash)> delete_sku_preset_with_http_info(id)

```ruby
begin
  # Delete a SKU preset of the store.
  data, status_code, headers = api_instance.delete_sku_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSkuPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->delete_sku_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteSkuPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sku_preset

> <ListSkuPresetsItem> get_sku_preset(id)

Get one SKU preset of the store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one SKU preset of the store.
  result = api_instance.get_sku_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->get_sku_preset: #{e}"
end
```

#### Using the get_sku_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSkuPresetsItem>, Integer, Hash)> get_sku_preset_with_http_info(id)

```ruby
begin
  # Get one SKU preset of the store.
  data, status_code, headers = api_instance.get_sku_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSkuPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->get_sku_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListSkuPresetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sku_presets

> <ListSkuPresetsResponse> list_sku_presets

List the store's SKU presets, which one is the default, and the template new listings auto-fill their SKU from (meta.autoFill).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new

begin
  # List the store's SKU presets, which one is the default, and the template new listings auto-fill their SKU from (meta.autoFill).
  result = api_instance.list_sku_presets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->list_sku_presets: #{e}"
end
```

#### Using the list_sku_presets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSkuPresetsResponse>, Integer, Hash)> list_sku_presets_with_http_info

```ruby
begin
  # List the store's SKU presets, which one is the default, and the template new listings auto-fill their SKU from (meta.autoFill).
  data, status_code, headers = api_instance.list_sku_presets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSkuPresetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->list_sku_presets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListSkuPresetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sku_preset

> <ListSkuPresetsItem> update_sku_preset(id, update_sku_preset_request)

Rename a SKU preset, change its template, or make it the store's default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_sku_preset_request = Crossly::UpdateSkuPresetRequest.new # UpdateSkuPresetRequest | 

begin
  # Rename a SKU preset, change its template, or make it the store's default.
  result = api_instance.update_sku_preset(id, update_sku_preset_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->update_sku_preset: #{e}"
end
```

#### Using the update_sku_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSkuPresetsItem>, Integer, Hash)> update_sku_preset_with_http_info(id, update_sku_preset_request)

```ruby
begin
  # Rename a SKU preset, change its template, or make it the store's default.
  data, status_code, headers = api_instance.update_sku_preset_with_http_info(id, update_sku_preset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSkuPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->update_sku_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_sku_preset_request** | **UpdateSkuPresetRequest** |  |  |

### Return type

**ListSkuPresetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sku_preset_default

> <UpdateSkuPresetDefaultResponse> update_sku_preset_default(update_sku_preset_default_request)

Choose the store's default SKU preset, which auto-fills the SKU of new listings created without one. presetId null clears it (manual SKUs).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SkuPresetsApi.new
update_sku_preset_default_request = Crossly::UpdateSkuPresetDefaultRequest.new({preset_id: 'preset_id_example'}) # UpdateSkuPresetDefaultRequest | 

begin
  # Choose the store's default SKU preset, which auto-fills the SKU of new listings created without one. presetId null clears it (manual SKUs).
  result = api_instance.update_sku_preset_default(update_sku_preset_default_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->update_sku_preset_default: #{e}"
end
```

#### Using the update_sku_preset_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSkuPresetDefaultResponse>, Integer, Hash)> update_sku_preset_default_with_http_info(update_sku_preset_default_request)

```ruby
begin
  # Choose the store's default SKU preset, which auto-fills the SKU of new listings created without one. presetId null clears it (manual SKUs).
  data, status_code, headers = api_instance.update_sku_preset_default_with_http_info(update_sku_preset_default_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSkuPresetDefaultResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SkuPresetsApi->update_sku_preset_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_sku_preset_default_request** | **UpdateSkuPresetDefaultRequest** |  |  |

### Return type

**UpdateSkuPresetDefaultResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

