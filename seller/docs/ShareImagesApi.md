# Crossly::ShareImagesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_share_image_drop**](ShareImagesApi.md#get_share_image_drop) | **GET** /v1/share-images/drops/{id} | The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out). |
| [**get_share_image_event**](ShareImagesApi.md#get_share_image_event) | **GET** /v1/share-images/events/{slug} | The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out). |
| [**get_share_image_group_buy**](ShareImagesApi.md#get_share_image_group_buy) | **GET** /v1/share-images/group-buys/{id} | The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out). |


## get_share_image_drop

> <ShareImageResponse> get_share_image_drop(id)

The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ShareImagesApi.new
id = 'id_example' # String | 

begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  result = api_instance.get_share_image_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_drop: #{e}"
end
```

#### Using the get_share_image_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShareImageResponse>, Integer, Hash)> get_share_image_drop_with_http_info(id)

```ruby
begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  data, status_code, headers = api_instance.get_share_image_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShareImageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ShareImageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_share_image_event

> <ShareImageResponse> get_share_image_event(slug)

The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ShareImagesApi.new
slug = 'slug_example' # String | 

begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  result = api_instance.get_share_image_event(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_event: #{e}"
end
```

#### Using the get_share_image_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShareImageResponse>, Integer, Hash)> get_share_image_event_with_http_info(slug)

```ruby
begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  data, status_code, headers = api_instance.get_share_image_event_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShareImageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ShareImageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_share_image_group_buy

> <ShareImageResponse> get_share_image_group_buy(id)

The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ShareImagesApi.new
id = 'id_example' # String | 

begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  result = api_instance.get_share_image_group_buy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_group_buy: #{e}"
end
```

#### Using the get_share_image_group_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShareImageResponse>, Integer, Hash)> get_share_image_group_buy_with_http_info(id)

```ruby
begin
  # The share card (og:image) of one of yours: { kind, imageUrl, pageUrl, bucket, title, description }. The image changes only when its state bucket does (progress in tenths, tier reached, time left, sold out).
  data, status_code, headers = api_instance.get_share_image_group_buy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShareImageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ShareImagesApi->get_share_image_group_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ShareImageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

