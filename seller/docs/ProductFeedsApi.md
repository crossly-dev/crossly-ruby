# Crossly::ProductFeedsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_feed**](ProductFeedsApi.md#create_product_feed) | **POST** /v1/product-feeds | Create a hosted product feed in the store for a channel. Returns its secret URL. |
| [**create_product_feed_copy**](ProductFeedsApi.md#create_product_feed_copy) | **POST** /v1/product-feeds/{id}/copy | Copy the feed’s settings to other stores as new feeds, each with its own URL. |
| [**create_product_feed_refresh**](ProductFeedsApi.md#create_product_feed_refresh) | **POST** /v1/product-feeds/{id}/refresh | Drop a scheduled feed’s stored copy so the next fetch builds it fresh. |
| [**create_product_feed_revoke_previous**](ProductFeedsApi.md#create_product_feed_revoke_previous) | **POST** /v1/product-feeds/{id}/revoke-previous | End a rotation’s grace window now: the previous URL stops answering. |
| [**create_product_feed_rotate**](ProductFeedsApi.md#create_product_feed_rotate) | **POST** /v1/product-feeds/{id}/rotate | Give the feed a new secret URL. The old URL keeps answering for graceHours (default: the feed’s setting; 0 &#x3D; stops at once). |
| [**delete_product_feed**](ProductFeedsApi.md#delete_product_feed) | **DELETE** /v1/product-feeds/{id} | Delete a feed. Its URL stops answering immediately. |
| [**delete_product_feed_item**](ProductFeedsApi.md#delete_product_feed_item) | **DELETE** /v1/product-feeds/{id}/items/{listingId} | Remove one listing’s override from this feed. |
| [**get_product_feed**](ProductFeedsApi.md#get_product_feed) | **GET** /v1/product-feeds/{id} | One feed: its settings, URLs, store and domain, and when it was last fetched and by whom. |
| [**get_product_feed_fetch**](ProductFeedsApi.md#get_product_feed_fetch) | **GET** /v1/product-feeds/{id}/fetches | Who fetched the feed and when (90 days): the channel, status, served from copy or live, item count, size. |
| [**get_product_feed_issue**](ProductFeedsApi.md#get_product_feed_issue) | **GET** /v1/product-feeds/{id}/issues | The feed’s flagged items one page at a time, by issue code and severity. Pass nextCursor back as after. |
| [**get_product_feed_item**](ProductFeedsApi.md#get_product_feed_item) | **GET** /v1/product-feeds/{id}/items | The feed’s per-item overrides (title, GTIN, category, custom labels… for this feed only). |
| [**get_product_feed_preview**](ProductFeedsApi.md#get_product_feed_preview) | **GET** /v1/product-feeds/{id}/preview | A page of the feed exactly as the channel reads it: every column per item, and the raw document text. |
| [**get_product_feed_report**](ProductFeedsApi.md#get_product_feed_report) | **GET** /v1/product-feeds/{id}/report | Validate a feed: counts per issue, items with errors (held back) and warnings (sent, limited reach), sample items, store domain and currency. |
| [**list_product_feeds**](ProductFeedsApi.md#list_product_feeds) | **GET** /v1/product-feeds | List the store’s hosted product feeds (Google, Meta, TikTok, Pinterest, Bing, Snapchat, RSS/Atom, JSON, CSV) with their URLs and last-fetch stats. |
| [**update_product_feed**](ProductFeedsApi.md#update_product_feed) | **PATCH** /v1/product-feeds/{id} | Edit a feed: name, format, on/paused, which listings (filters), field mapping, currency and region, images, UTM, refresh schedule. |
| [**update_product_feed_item**](ProductFeedsApi.md#update_product_feed_item) | **PUT** /v1/product-feeds/{id}/items/{listingId} | Set one listing’s override in this feed (the listing itself is unchanged). All fields empty removes it. |


## create_product_feed

> <ListProductFeedsItem> create_product_feed(create_product_feed_request)

Create a hosted product feed in the store for a channel. Returns its secret URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
create_product_feed_request = Crossly::CreateProductFeedRequest.new({channel: 'json'}) # CreateProductFeedRequest | 

begin
  # Create a hosted product feed in the store for a channel. Returns its secret URL.
  result = api_instance.create_product_feed(create_product_feed_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed: #{e}"
end
```

#### Using the create_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_with_http_info(create_product_feed_request)

```ruby
begin
  # Create a hosted product feed in the store for a channel. Returns its secret URL.
  data, status_code, headers = api_instance.create_product_feed_with_http_info(create_product_feed_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_product_feed_request** | **CreateProductFeedRequest** |  |  |

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product_feed_copy

> <CreateProductFeedCopyResponse> create_product_feed_copy(id, create_product_feed_copy_request)

Copy the feed’s settings to other stores as new feeds, each with its own URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_product_feed_copy_request = Crossly::CreateProductFeedCopyRequest.new({storefront_ids: ['storefront_ids_example']}) # CreateProductFeedCopyRequest | 

begin
  # Copy the feed’s settings to other stores as new feeds, each with its own URL.
  result = api_instance.create_product_feed_copy(id, create_product_feed_copy_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_copy: #{e}"
end
```

#### Using the create_product_feed_copy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductFeedCopyResponse>, Integer, Hash)> create_product_feed_copy_with_http_info(id, create_product_feed_copy_request)

```ruby
begin
  # Copy the feed’s settings to other stores as new feeds, each with its own URL.
  data, status_code, headers = api_instance.create_product_feed_copy_with_http_info(id, create_product_feed_copy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductFeedCopyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_copy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_feed_copy_request** | **CreateProductFeedCopyRequest** |  |  |

### Return type

**CreateProductFeedCopyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product_feed_refresh

> <ListProductFeedsItem> create_product_feed_refresh(id)

Drop a scheduled feed’s stored copy so the next fetch builds it fresh.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Drop a scheduled feed’s stored copy so the next fetch builds it fresh.
  result = api_instance.create_product_feed_refresh(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_refresh: #{e}"
end
```

#### Using the create_product_feed_refresh_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_refresh_with_http_info(id)

```ruby
begin
  # Drop a scheduled feed’s stored copy so the next fetch builds it fresh.
  data, status_code, headers = api_instance.create_product_feed_refresh_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_refresh_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_product_feed_revoke_previous

> <ListProductFeedsItem> create_product_feed_revoke_previous(id)

End a rotation’s grace window now: the previous URL stops answering.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # End a rotation’s grace window now: the previous URL stops answering.
  result = api_instance.create_product_feed_revoke_previous(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_revoke_previous: #{e}"
end
```

#### Using the create_product_feed_revoke_previous_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_revoke_previous_with_http_info(id)

```ruby
begin
  # End a rotation’s grace window now: the previous URL stops answering.
  data, status_code, headers = api_instance.create_product_feed_revoke_previous_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_revoke_previous_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_product_feed_rotate

> <ListProductFeedsItem> create_product_feed_rotate(id, opts)

Give the feed a new secret URL. The old URL keeps answering for graceHours (default: the feed’s setting; 0 = stops at once).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  create_product_feed_rotate_request: Crossly::CreateProductFeedRotateRequest.new # CreateProductFeedRotateRequest | 
}

begin
  # Give the feed a new secret URL. The old URL keeps answering for graceHours (default: the feed’s setting; 0 = stops at once).
  result = api_instance.create_product_feed_rotate(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_rotate: #{e}"
end
```

#### Using the create_product_feed_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_rotate_with_http_info(id, opts)

```ruby
begin
  # Give the feed a new secret URL. The old URL keeps answering for graceHours (default: the feed’s setting; 0 = stops at once).
  data, status_code, headers = api_instance.create_product_feed_rotate_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_rotate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_feed_rotate_request** | **CreateProductFeedRotateRequest** |  | [optional] |

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_feed

> <OkResponse> delete_product_feed(id)

Delete a feed. Its URL stops answering immediately.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a feed. Its URL stops answering immediately.
  result = api_instance.delete_product_feed(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->delete_product_feed: #{e}"
end
```

#### Using the delete_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_product_feed_with_http_info(id)

```ruby
begin
  # Delete a feed. Its URL stops answering immediately.
  data, status_code, headers = api_instance.delete_product_feed_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->delete_product_feed_with_http_info: #{e}"
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


## delete_product_feed_item

> <OkResponse> delete_product_feed_item(id, listing_id)

Remove one listing’s override from this feed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
listing_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove one listing’s override from this feed.
  result = api_instance.delete_product_feed_item(id, listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->delete_product_feed_item: #{e}"
end
```

#### Using the delete_product_feed_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_product_feed_item_with_http_info(id, listing_id)

```ruby
begin
  # Remove one listing’s override from this feed.
  data, status_code, headers = api_instance.delete_product_feed_item_with_http_info(id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->delete_product_feed_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **listing_id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed

> <GetProductFeedResponse> get_product_feed(id)

One feed: its settings, URLs, store and domain, and when it was last fetched and by whom.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One feed: its settings, URLs, store and domain, and when it was last fetched and by whom.
  result = api_instance.get_product_feed(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed: #{e}"
end
```

#### Using the get_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedResponse>, Integer, Hash)> get_product_feed_with_http_info(id)

```ruby
begin
  # One feed: its settings, URLs, store and domain, and when it was last fetched and by whom.
  data, status_code, headers = api_instance.get_product_feed_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetProductFeedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed_fetch

> <GetProductFeedFetchResponse> get_product_feed_fetch(id, opts)

Who fetched the feed and when (90 days): the channel, status, served from copy or live, item count, size.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  limit: 56 # Integer | 
}

begin
  # Who fetched the feed and when (90 days): the channel, status, served from copy or live, item count, size.
  result = api_instance.get_product_feed_fetch(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_fetch: #{e}"
end
```

#### Using the get_product_feed_fetch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedFetchResponse>, Integer, Hash)> get_product_feed_fetch_with_http_info(id, opts)

```ruby
begin
  # Who fetched the feed and when (90 days): the channel, status, served from copy or live, item count, size.
  data, status_code, headers = api_instance.get_product_feed_fetch_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedFetchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_fetch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **before** | **Time** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**GetProductFeedFetchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed_issue

> <GetProductFeedIssueResponse> get_product_feed_issue(id, opts)

The feed’s flagged items one page at a time, by issue code and severity. Pass nextCursor back as after.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  code: 'code_example', # String | 
  severity: 'error', # String | 
  after: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  limit: 56 # Integer | 
}

begin
  # The feed’s flagged items one page at a time, by issue code and severity. Pass nextCursor back as after.
  result = api_instance.get_product_feed_issue(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_issue: #{e}"
end
```

#### Using the get_product_feed_issue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedIssueResponse>, Integer, Hash)> get_product_feed_issue_with_http_info(id, opts)

```ruby
begin
  # The feed’s flagged items one page at a time, by issue code and severity. Pass nextCursor back as after.
  data, status_code, headers = api_instance.get_product_feed_issue_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedIssueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_issue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **code** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **after** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**GetProductFeedIssueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed_item

> <GetProductFeedItemResponse> get_product_feed_item(id)

The feed’s per-item overrides (title, GTIN, category, custom labels… for this feed only).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The feed’s per-item overrides (title, GTIN, category, custom labels… for this feed only).
  result = api_instance.get_product_feed_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_item: #{e}"
end
```

#### Using the get_product_feed_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedItemResponse>, Integer, Hash)> get_product_feed_item_with_http_info(id)

```ruby
begin
  # The feed’s per-item overrides (title, GTIN, category, custom labels… for this feed only).
  data, status_code, headers = api_instance.get_product_feed_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetProductFeedItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed_preview

> <GetProductFeedPreviewResponse> get_product_feed_preview(id, opts)

A page of the feed exactly as the channel reads it: every column per item, and the raw document text.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  format: 'xml', # String | 
  after: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  limit: 56 # Integer | 
}

begin
  # A page of the feed exactly as the channel reads it: every column per item, and the raw document text.
  result = api_instance.get_product_feed_preview(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_preview: #{e}"
end
```

#### Using the get_product_feed_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedPreviewResponse>, Integer, Hash)> get_product_feed_preview_with_http_info(id, opts)

```ruby
begin
  # A page of the feed exactly as the channel reads it: every column per item, and the raw document text.
  data, status_code, headers = api_instance.get_product_feed_preview_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **format** | **String** |  | [optional] |
| **after** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**GetProductFeedPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_feed_report

> <GetProductFeedReportResponse> get_product_feed_report(id)

Validate a feed: counts per issue, items with errors (held back) and warnings (sent, limited reach), sample items, store domain and currency.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Validate a feed: counts per issue, items with errors (held back) and warnings (sent, limited reach), sample items, store domain and currency.
  result = api_instance.get_product_feed_report(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_report: #{e}"
end
```

#### Using the get_product_feed_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFeedReportResponse>, Integer, Hash)> get_product_feed_report_with_http_info(id)

```ruby
begin
  # Validate a feed: counts per issue, items with errors (held back) and warnings (sent, limited reach), sample items, store domain and currency.
  data, status_code, headers = api_instance.get_product_feed_report_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFeedReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->get_product_feed_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetProductFeedReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_feeds

> <ListProductFeedsResponse> list_product_feeds

List the store’s hosted product feeds (Google, Meta, TikTok, Pinterest, Bing, Snapchat, RSS/Atom, JSON, CSV) with their URLs and last-fetch stats.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new

begin
  # List the store’s hosted product feeds (Google, Meta, TikTok, Pinterest, Bing, Snapchat, RSS/Atom, JSON, CSV) with their URLs and last-fetch stats.
  result = api_instance.list_product_feeds
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->list_product_feeds: #{e}"
end
```

#### Using the list_product_feeds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsResponse>, Integer, Hash)> list_product_feeds_with_http_info

```ruby
begin
  # List the store’s hosted product feeds (Google, Meta, TikTok, Pinterest, Bing, Snapchat, RSS/Atom, JSON, CSV) with their URLs and last-fetch stats.
  data, status_code, headers = api_instance.list_product_feeds_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->list_product_feeds_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListProductFeedsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product_feed

> <ListProductFeedsItem> update_product_feed(id, update_product_feed_request)

Edit a feed: name, format, on/paused, which listings (filters), field mapping, currency and region, images, UTM, refresh schedule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_product_feed_request = Crossly::UpdateProductFeedRequest.new # UpdateProductFeedRequest | 

begin
  # Edit a feed: name, format, on/paused, which listings (filters), field mapping, currency and region, images, UTM, refresh schedule.
  result = api_instance.update_product_feed(id, update_product_feed_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->update_product_feed: #{e}"
end
```

#### Using the update_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> update_product_feed_with_http_info(id, update_product_feed_request)

```ruby
begin
  # Edit a feed: name, format, on/paused, which listings (filters), field mapping, currency and region, images, UTM, refresh schedule.
  data, status_code, headers = api_instance.update_product_feed_with_http_info(id, update_product_feed_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->update_product_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_product_feed_request** | **UpdateProductFeedRequest** |  |  |

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_product_feed_item

> <UpdateProductFeedItemResponse> update_product_feed_item(id, listing_id, update_product_feed_item_request)

Set one listing’s override in this feed (the listing itself is unchanged). All fields empty removes it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductFeedsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
listing_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_product_feed_item_request = Crossly::UpdateProductFeedItemRequest.new # UpdateProductFeedItemRequest | 

begin
  # Set one listing’s override in this feed (the listing itself is unchanged). All fields empty removes it.
  result = api_instance.update_product_feed_item(id, listing_id, update_product_feed_item_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->update_product_feed_item: #{e}"
end
```

#### Using the update_product_feed_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProductFeedItemResponse>, Integer, Hash)> update_product_feed_item_with_http_info(id, listing_id, update_product_feed_item_request)

```ruby
begin
  # Set one listing’s override in this feed (the listing itself is unchanged). All fields empty removes it.
  data, status_code, headers = api_instance.update_product_feed_item_with_http_info(id, listing_id, update_product_feed_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProductFeedItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->update_product_feed_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **listing_id** | **String** |  |  |
| **update_product_feed_item_request** | **UpdateProductFeedItemRequest** |  |  |

### Return type

**UpdateProductFeedItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

