# Crossly::DefaultApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listing_variation_group**](DefaultApi.md#get_listing_variation_group) | **GET** /v1/listings/{id}/variation-group |  |
| [**get_market_product**](DefaultApi.md#get_market_product) | **GET** /v1/market/products/{id} |  |
| [**get_market_variant_book**](DefaultApi.md#get_market_variant_book) | **GET** /v1/market/variants/{id}/book |  |
| [**get_variation_group**](DefaultApi.md#get_variation_group) | **GET** /v1/variation-groups/{id} |  |
| [**get_variation_group_publish_plan**](DefaultApi.md#get_variation_group_publish_plan) | **GET** /v1/variation-groups/{id}/publish-plan |  |
| [**list_market_graders**](DefaultApi.md#list_market_graders) | **GET** /v1/market/graders |  |
| [**list_market_products**](DefaultApi.md#list_market_products) | **GET** /v1/market/products |  |
| [**list_market_variant_tiers**](DefaultApi.md#list_market_variant_tiers) | **GET** /v1/market/variants/{id}/tiers |  |
| [**list_variation_groups**](DefaultApi.md#list_variation_groups) | **GET** /v1/variation-groups |  |


## get_listing_variation_group

> <GetListingVariationGroupResponse> get_listing_variation_group(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_listing_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_listing_variation_group: #{e}"
end
```

#### Using the get_listing_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingVariationGroupResponse>, Integer, Hash)> get_listing_variation_group_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_listing_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetListingVariationGroupResponse**](GetListingVariationGroupResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_product

> <GetMarketProductResponse> get_market_product(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_market_product(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product: #{e}"
end
```

#### Using the get_market_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketProductResponse>, Integer, Hash)> get_market_product_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketProductResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetMarketProductResponse**](GetMarketProductResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_variant_book

> <GetMarketVariantBookResponse> get_market_variant_book(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_market_variant_book(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_variant_book: #{e}"
end
```

#### Using the get_market_variant_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketVariantBookResponse>, Integer, Hash)> get_market_variant_book_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_variant_book_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketVariantBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_variant_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetMarketVariantBookResponse**](GetMarketVariantBookResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variation_group

> <GetVariationGroupResponse> get_variation_group(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group: #{e}"
end
```

#### Using the get_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVariationGroupResponse>, Integer, Hash)> get_variation_group_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetVariationGroupResponse**](GetVariationGroupResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variation_group_publish_plan

> <GetVariationGroupPublishPlanResponse> get_variation_group_publish_plan(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_variation_group_publish_plan(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_publish_plan: #{e}"
end
```

#### Using the get_variation_group_publish_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVariationGroupPublishPlanResponse>, Integer, Hash)> get_variation_group_publish_plan_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_variation_group_publish_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVariationGroupPublishPlanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_publish_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetVariationGroupPublishPlanResponse**](GetVariationGroupPublishPlanResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_graders

> <V1List> list_market_graders



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_graders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_graders: #{e}"
end
```

#### Using the list_market_graders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_market_graders_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_graders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_graders_with_http_info: #{e}"
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


## list_market_products

> <V1List> list_market_products



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_products
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_products: #{e}"
end
```

#### Using the list_market_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_market_products_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_products_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_products_with_http_info: #{e}"
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


## list_market_variant_tiers

> <V1List> list_market_variant_tiers(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.list_market_variant_tiers(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_variant_tiers: #{e}"
end
```

#### Using the list_market_variant_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_market_variant_tiers_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_variant_tiers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_variant_tiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_variation_groups

> <V1List> list_variation_groups



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_variation_groups
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_variation_groups: #{e}"
end
```

#### Using the list_variation_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_variation_groups_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_variation_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_variation_groups_with_http_info: #{e}"
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

