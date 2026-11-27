# Crossly::BulkBatchesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bulk_batch**](BulkBatchesApi.md#create_bulk_batch) | **POST** /v1/bulk-batches | Open an empty capture batch for a preset. |
| [**create_bulk_batch_identify**](BulkBatchesApi.md#create_bulk_batch_identify) | **POST** /v1/bulk-batches/{id}/identify | Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background. |
| [**create_bulk_batch_item**](BulkBatchesApi.md#create_bulk_batch_item) | **POST** /v1/bulk-batches/{id}/items | Append one item (every photo of it, primary first). |
| [**create_bulk_batch_item_bulk**](BulkBatchesApi.md#create_bulk_batch_item_bulk) | **POST** /v1/bulk-batches/{id}/items/bulk | Set price/quantity/condition/status on many items. |
| [**create_bulk_batch_publish**](BulkBatchesApi.md#create_bulk_batch_publish) | **POST** /v1/bulk-batches/{id}/publish | Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing. |
| [**delete_bulk_batch**](BulkBatchesApi.md#delete_bulk_batch) | **DELETE** /v1/bulk-batches/{id} | Discard a batch (listings it produced stay). |
| [**delete_bulk_batch_item**](BulkBatchesApi.md#delete_bulk_batch_item) | **DELETE** /v1/bulk-batches/items/{id} | Remove one unpublished item. |
| [**get_bulk_batch**](BulkBatchesApi.md#get_bulk_batch) | **GET** /v1/bulk-batches/{id} | Get one bulk batch with its items (capture order) and matched catalog rows. |
| [**list_bulk_batches**](BulkBatchesApi.md#list_bulk_batches) | **GET** /v1/bulk-batches | List recent bulk list batches, newest first. |
| [**update_bulk_batch**](BulkBatchesApi.md#update_bulk_batch) | **PATCH** /v1/bulk-batches/{id} | Change batch settings, or set stage \&quot;identify\&quot; when capture is done. |
| [**update_bulk_batch_item**](BulkBatchesApi.md#update_bulk_batch_item) | **PATCH** /v1/bulk-batches/items/{id} | Correct one item (match, title, price, photos…). |


## create_bulk_batch

> <ListBulkBatchesItem> create_bulk_batch

Open an empty capture batch for a preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new

begin
  # Open an empty capture batch for a preset.
  result = api_instance.create_bulk_batch
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch: #{e}"
end
```

#### Using the create_bulk_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBulkBatchesItem>, Integer, Hash)> create_bulk_batch_with_http_info

```ruby
begin
  # Open an empty capture batch for a preset.
  data, status_code, headers = api_instance.create_bulk_batch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBulkBatchesItem>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBulkBatchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_bulk_batch_identify

> <CreateBulkBatchIdentifyResponse> create_bulk_batch_identify(id)

Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.
  result = api_instance.create_bulk_batch_identify(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_identify: #{e}"
end
```

#### Using the create_bulk_batch_identify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBulkBatchIdentifyResponse>, Integer, Hash)> create_bulk_batch_identify_with_http_info(id)

```ruby
begin
  # Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.
  data, status_code, headers = api_instance.create_bulk_batch_identify_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBulkBatchIdentifyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_identify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBulkBatchIdentifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_bulk_batch_item

> <CreateBulkBatchItemResponse> create_bulk_batch_item(id)

Append one item (every photo of it, primary first).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Append one item (every photo of it, primary first).
  result = api_instance.create_bulk_batch_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_item: #{e}"
end
```

#### Using the create_bulk_batch_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBulkBatchItemResponse>, Integer, Hash)> create_bulk_batch_item_with_http_info(id)

```ruby
begin
  # Append one item (every photo of it, primary first).
  data, status_code, headers = api_instance.create_bulk_batch_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBulkBatchItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBulkBatchItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_bulk_batch_item_bulk

> <UpdatedResponse> create_bulk_batch_item_bulk(id)

Set price/quantity/condition/status on many items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Set price/quantity/condition/status on many items.
  result = api_instance.create_bulk_batch_item_bulk(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_item_bulk: #{e}"
end
```

#### Using the create_bulk_batch_item_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatedResponse>, Integer, Hash)> create_bulk_batch_item_bulk_with_http_info(id)

```ruby
begin
  # Set price/quantity/condition/status on many items.
  data, status_code, headers = api_instance.create_bulk_batch_item_bulk_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_item_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_bulk_batch_publish

> <CreateBulkBatchPublishResponse> create_bulk_batch_publish(id)

Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.
  result = api_instance.create_bulk_batch_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_publish: #{e}"
end
```

#### Using the create_bulk_batch_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBulkBatchPublishResponse>, Integer, Hash)> create_bulk_batch_publish_with_http_info(id)

```ruby
begin
  # Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.
  data, status_code, headers = api_instance.create_bulk_batch_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBulkBatchPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->create_bulk_batch_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBulkBatchPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_bulk_batch

> <OkResponse> delete_bulk_batch(id)

Discard a batch (listings it produced stay).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Discard a batch (listings it produced stay).
  result = api_instance.delete_bulk_batch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->delete_bulk_batch: #{e}"
end
```

#### Using the delete_bulk_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_bulk_batch_with_http_info(id)

```ruby
begin
  # Discard a batch (listings it produced stay).
  data, status_code, headers = api_instance.delete_bulk_batch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->delete_bulk_batch_with_http_info: #{e}"
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


## delete_bulk_batch_item

> <OkResponse> delete_bulk_batch_item(id)

Remove one unpublished item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove one unpublished item.
  result = api_instance.delete_bulk_batch_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->delete_bulk_batch_item: #{e}"
end
```

#### Using the delete_bulk_batch_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_bulk_batch_item_with_http_info(id)

```ruby
begin
  # Remove one unpublished item.
  data, status_code, headers = api_instance.delete_bulk_batch_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->delete_bulk_batch_item_with_http_info: #{e}"
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


## get_bulk_batch

> <GetBulkBatchResponse> get_bulk_batch(id)

Get one bulk batch with its items (capture order) and matched catalog rows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one bulk batch with its items (capture order) and matched catalog rows.
  result = api_instance.get_bulk_batch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->get_bulk_batch: #{e}"
end
```

#### Using the get_bulk_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBulkBatchResponse>, Integer, Hash)> get_bulk_batch_with_http_info(id)

```ruby
begin
  # Get one bulk batch with its items (capture order) and matched catalog rows.
  data, status_code, headers = api_instance.get_bulk_batch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBulkBatchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->get_bulk_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBulkBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_bulk_batches

> <ListBulkBatchesResponse> list_bulk_batches(opts)

List recent bulk list batches, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
opts = {
  limit: 56 # Integer | 
}

begin
  # List recent bulk list batches, newest first.
  result = api_instance.list_bulk_batches(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->list_bulk_batches: #{e}"
end
```

#### Using the list_bulk_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBulkBatchesResponse>, Integer, Hash)> list_bulk_batches_with_http_info(opts)

```ruby
begin
  # List recent bulk list batches, newest first.
  data, status_code, headers = api_instance.list_bulk_batches_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBulkBatchesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->list_bulk_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListBulkBatchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bulk_batch

> <ListBulkBatchesItem> update_bulk_batch(id)

Change batch settings, or set stage \"identify\" when capture is done.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Change batch settings, or set stage \"identify\" when capture is done.
  result = api_instance.update_bulk_batch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->update_bulk_batch: #{e}"
end
```

#### Using the update_bulk_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBulkBatchesItem>, Integer, Hash)> update_bulk_batch_with_http_info(id)

```ruby
begin
  # Change batch settings, or set stage \"identify\" when capture is done.
  data, status_code, headers = api_instance.update_bulk_batch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBulkBatchesItem>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->update_bulk_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBulkBatchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bulk_batch_item

> <CreateBulkBatchItemResponse> update_bulk_batch_item(id)

Correct one item (match, title, price, photos…).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BulkBatchesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Correct one item (match, title, price, photos…).
  result = api_instance.update_bulk_batch_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->update_bulk_batch_item: #{e}"
end
```

#### Using the update_bulk_batch_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBulkBatchItemResponse>, Integer, Hash)> update_bulk_batch_item_with_http_info(id)

```ruby
begin
  # Correct one item (match, title, price, photos…).
  data, status_code, headers = api_instance.update_bulk_batch_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBulkBatchItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BulkBatchesApi->update_bulk_batch_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBulkBatchItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

