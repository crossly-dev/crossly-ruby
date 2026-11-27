# Crossly::ProductFeedsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_feed**](ProductFeedsApi.md#create_product_feed) | **POST** /v1/product-feeds | Create a hosted product feed for a channel. Returns its secret URL. |
| [**create_product_feed_rotate**](ProductFeedsApi.md#create_product_feed_rotate) | **POST** /v1/product-feeds/{id}/rotate | Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel. |
| [**delete_product_feed**](ProductFeedsApi.md#delete_product_feed) | **DELETE** /v1/product-feeds/{id} | Delete a feed. Its URL stops answering immediately. |
| [**get_product_feed_report**](ProductFeedsApi.md#get_product_feed_report) | **GET** /v1/product-feeds/{id}/report | Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items. |
| [**list_product_feeds**](ProductFeedsApi.md#list_product_feeds) | **GET** /v1/product-feeds | List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats. |
| [**update_product_feed**](ProductFeedsApi.md#update_product_feed) | **PATCH** /v1/product-feeds/{id} | Edit a feed: name, default format, enabled, listing filters, output settings. |


## create_product_feed

> <ListProductFeedsItem> create_product_feed

Create a hosted product feed for a channel. Returns its secret URL.

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
  # Create a hosted product feed for a channel. Returns its secret URL.
  result = api_instance.create_product_feed
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed: #{e}"
end
```

#### Using the create_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_with_http_info

```ruby
begin
  # Create a hosted product feed for a channel. Returns its secret URL.
  data, status_code, headers = api_instance.create_product_feed_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductFeedsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_product_feed_rotate

> <ListProductFeedsItem> create_product_feed_rotate(id)

Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.

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
  # Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.
  result = api_instance.create_product_feed_rotate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->create_product_feed_rotate: #{e}"
end
```

#### Using the create_product_feed_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> create_product_feed_rotate_with_http_info(id)

```ruby
begin
  # Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.
  data, status_code, headers = api_instance.create_product_feed_rotate_with_http_info(id)
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

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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


## get_product_feed_report

> <GetProductFeedReportResponse> get_product_feed_report(id)

Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.

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
  # Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.
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
  # Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.
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

List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.

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
  # List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.
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
  # List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.
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

> <ListProductFeedsItem> update_product_feed(id)

Edit a feed: name, default format, enabled, listing filters, output settings.

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
  # Edit a feed: name, default format, enabled, listing filters, output settings.
  result = api_instance.update_product_feed(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductFeedsApi->update_product_feed: #{e}"
end
```

#### Using the update_product_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductFeedsItem>, Integer, Hash)> update_product_feed_with_http_info(id)

```ruby
begin
  # Edit a feed: name, default format, enabled, listing filters, output settings.
  data, status_code, headers = api_instance.update_product_feed_with_http_info(id)
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

### Return type

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

