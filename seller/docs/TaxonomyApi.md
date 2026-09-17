# Crossly::TaxonomyApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_taxonomy_category**](TaxonomyApi.md#get_taxonomy_category) | **GET** /v1/taxonomy/{platform}/categories | Categories for a platform. Default is top-level; pass &#x60;?parent&#x3D;&lt;categoryId&gt;&#x60; to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows). |
| [**get_taxonomy_category_aspect**](TaxonomyApi.md#get_taxonomy_category_aspect) | **GET** /v1/taxonomy/{platform}/categories/{id}/aspects | Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category. |
| [**get_taxonomy_category_children**](TaxonomyApi.md#get_taxonomy_category_children) | **GET** /v1/taxonomy/{platform}/categories/{id}/children | Direct children of a category node. |
| [**get_taxonomy_required_field**](TaxonomyApi.md#get_taxonomy_required_field) | **GET** /v1/taxonomy/{platform}/required-fields | Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides. |
| [**list_taxonomy_suggest**](TaxonomyApi.md#list_taxonomy_suggest) | **GET** /v1/taxonomy/{platform}/suggest | Reverse lookup — suggest categories matching a search phrase. eBay-only today. |


## get_taxonomy_category

> <GetTaxonomyCategoryResponse> get_taxonomy_category(platform, opts)

Categories for a platform. Default is top-level; pass `?parent=<categoryId>` to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxonomyApi.new
platform = 'platform_example' # String | 
opts = {
  parent: 'parent_example' # String | 
}

begin
  # Categories for a platform. Default is top-level; pass `?parent=<categoryId>` to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).
  result = api_instance.get_taxonomy_category(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category: #{e}"
end
```

#### Using the get_taxonomy_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxonomyCategoryResponse>, Integer, Hash)> get_taxonomy_category_with_http_info(platform, opts)

```ruby
begin
  # Categories for a platform. Default is top-level; pass `?parent=<categoryId>` to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).
  data, status_code, headers = api_instance.get_taxonomy_category_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxonomyCategoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **parent** | **String** |  | [optional] |

### Return type

[**GetTaxonomyCategoryResponse**](GetTaxonomyCategoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_taxonomy_category_aspect

> <GetTaxonomyCategoryAspectResponse> get_taxonomy_category_aspect(platform, id)

Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxonomyApi.new
platform = 'platform_example' # String | 
id = 'id_example' # String | 

begin
  # Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.
  result = api_instance.get_taxonomy_category_aspect(platform, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category_aspect: #{e}"
end
```

#### Using the get_taxonomy_category_aspect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxonomyCategoryAspectResponse>, Integer, Hash)> get_taxonomy_category_aspect_with_http_info(platform, id)

```ruby
begin
  # Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.
  data, status_code, headers = api_instance.get_taxonomy_category_aspect_with_http_info(platform, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxonomyCategoryAspectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category_aspect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**GetTaxonomyCategoryAspectResponse**](GetTaxonomyCategoryAspectResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_taxonomy_category_children

> <GetTaxonomyCategoryChildrenResponse> get_taxonomy_category_children(platform, id)

Direct children of a category node.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxonomyApi.new
platform = 'platform_example' # String | 
id = 'id_example' # String | 

begin
  # Direct children of a category node.
  result = api_instance.get_taxonomy_category_children(platform, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category_children: #{e}"
end
```

#### Using the get_taxonomy_category_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxonomyCategoryChildrenResponse>, Integer, Hash)> get_taxonomy_category_children_with_http_info(platform, id)

```ruby
begin
  # Direct children of a category node.
  data, status_code, headers = api_instance.get_taxonomy_category_children_with_http_info(platform, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxonomyCategoryChildrenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_category_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**GetTaxonomyCategoryChildrenResponse**](GetTaxonomyCategoryChildrenResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_taxonomy_required_field

> <GetTaxonomyRequiredFieldResponse> get_taxonomy_required_field(platform, opts)

Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxonomyApi.new
platform = 'platform_example' # String | 
opts = {
  category_id: 'category_id_example' # String | Optional — used to inline aspects when present.
}

begin
  # Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.
  result = api_instance.get_taxonomy_required_field(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_required_field: #{e}"
end
```

#### Using the get_taxonomy_required_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxonomyRequiredFieldResponse>, Integer, Hash)> get_taxonomy_required_field_with_http_info(platform, opts)

```ruby
begin
  # Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.
  data, status_code, headers = api_instance.get_taxonomy_required_field_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxonomyRequiredFieldResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_required_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **category_id** | **String** | Optional — used to inline aspects when present. | [optional] |

### Return type

[**GetTaxonomyRequiredFieldResponse**](GetTaxonomyRequiredFieldResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxonomy_suggest

> <V1List> list_taxonomy_suggest(platform, opts)

Reverse lookup — suggest categories matching a search phrase. eBay-only today.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxonomyApi.new
platform = 'platform_example' # String | 
opts = {
  q: 'q_example' # String | 
}

begin
  # Reverse lookup — suggest categories matching a search phrase. eBay-only today.
  result = api_instance.list_taxonomy_suggest(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomy_suggest: #{e}"
end
```

#### Using the list_taxonomy_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_taxonomy_suggest_with_http_info(platform, opts)

```ruby
begin
  # Reverse lookup — suggest categories matching a search phrase. eBay-only today.
  data, status_code, headers = api_instance.list_taxonomy_suggest_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomy_suggest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **q** | **String** |  | [optional] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

