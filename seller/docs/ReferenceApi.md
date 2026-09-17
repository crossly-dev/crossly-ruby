# Crossly::ReferenceApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_brand**](ReferenceApi.md#get_brand) | **GET** /v1/brands | Search the Crossly brand index. Returns up to 50 matches. |
| [**get_category**](ReferenceApi.md#get_category) | **GET** /v1/categories | List Crossly&#39;s canonical category tree. |
| [**get_department**](ReferenceApi.md#get_department) | **GET** /v1/departments | Search the eBay-sourced \&quot;Department\&quot; item-specific values. |
| [**get_gender**](ReferenceApi.md#get_gender) | **GET** /v1/genders | Search the eBay-sourced \&quot;Gender\&quot; item-specific values. |
| [**get_pattern**](ReferenceApi.md#get_pattern) | **GET** /v1/patterns | Search the eBay-sourced \&quot;Pattern\&quot; item-specific values. |
| [**get_size_system**](ReferenceApi.md#get_size_system) | **GET** /v1/size-systems | Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR). |
| [**get_style**](ReferenceApi.md#get_style) | **GET** /v1/styles | Search the eBay-sourced \&quot;Style\&quot; item-specific values. |
| [**get_type**](ReferenceApi.md#get_type) | **GET** /v1/types | Search the eBay-sourced \&quot;Type\&quot; item-specific values. |


## get_brand

> <GetBrandResponse> get_brand

Search the Crossly brand index. Returns up to 50 matches.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the Crossly brand index. Returns up to 50 matches.
  result = api_instance.get_brand
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_brand: #{e}"
end
```

#### Using the get_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandResponse>, Integer, Hash)> get_brand_with_http_info

```ruby
begin
  # Search the Crossly brand index. Returns up to 50 matches.
  data, status_code, headers = api_instance.get_brand_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_brand_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBrandResponse**](GetBrandResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_category

> <GetCategoryResponse> get_category

List Crossly's canonical category tree.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # List Crossly's canonical category tree.
  result = api_instance.get_category
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_category: #{e}"
end
```

#### Using the get_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategoryResponse>, Integer, Hash)> get_category_with_http_info

```ruby
begin
  # List Crossly's canonical category tree.
  data, status_code, headers = api_instance.get_category_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_category_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCategoryResponse**](GetCategoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_department

> <GetDepartmentResponse> get_department

Search the eBay-sourced \"Department\" item-specific values.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the eBay-sourced \"Department\" item-specific values.
  result = api_instance.get_department
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_department: #{e}"
end
```

#### Using the get_department_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDepartmentResponse>, Integer, Hash)> get_department_with_http_info

```ruby
begin
  # Search the eBay-sourced \"Department\" item-specific values.
  data, status_code, headers = api_instance.get_department_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDepartmentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_department_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDepartmentResponse**](GetDepartmentResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_gender

> <GetGenderResponse> get_gender

Search the eBay-sourced \"Gender\" item-specific values.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the eBay-sourced \"Gender\" item-specific values.
  result = api_instance.get_gender
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_gender: #{e}"
end
```

#### Using the get_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGenderResponse>, Integer, Hash)> get_gender_with_http_info

```ruby
begin
  # Search the eBay-sourced \"Gender\" item-specific values.
  data, status_code, headers = api_instance.get_gender_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGenderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_gender_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetGenderResponse**](GetGenderResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pattern

> <GetPatternResponse> get_pattern

Search the eBay-sourced \"Pattern\" item-specific values.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the eBay-sourced \"Pattern\" item-specific values.
  result = api_instance.get_pattern
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_pattern: #{e}"
end
```

#### Using the get_pattern_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPatternResponse>, Integer, Hash)> get_pattern_with_http_info

```ruby
begin
  # Search the eBay-sourced \"Pattern\" item-specific values.
  data, status_code, headers = api_instance.get_pattern_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPatternResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_pattern_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPatternResponse**](GetPatternResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_size_system

> <GetSizeSystemResponse> get_size_system

Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).
  result = api_instance.get_size_system
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_size_system: #{e}"
end
```

#### Using the get_size_system_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSizeSystemResponse>, Integer, Hash)> get_size_system_with_http_info

```ruby
begin
  # Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).
  data, status_code, headers = api_instance.get_size_system_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSizeSystemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_size_system_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetSizeSystemResponse**](GetSizeSystemResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_style

> <GetStyleResponse> get_style

Search the eBay-sourced \"Style\" item-specific values.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the eBay-sourced \"Style\" item-specific values.
  result = api_instance.get_style
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_style: #{e}"
end
```

#### Using the get_style_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStyleResponse>, Integer, Hash)> get_style_with_http_info

```ruby
begin
  # Search the eBay-sourced \"Style\" item-specific values.
  data, status_code, headers = api_instance.get_style_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStyleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_style_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetStyleResponse**](GetStyleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_type

> <GetTypeResponse> get_type

Search the eBay-sourced \"Type\" item-specific values.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReferenceApi.new

begin
  # Search the eBay-sourced \"Type\" item-specific values.
  result = api_instance.get_type
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_type: #{e}"
end
```

#### Using the get_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTypeResponse>, Integer, Hash)> get_type_with_http_info

```ruby
begin
  # Search the eBay-sourced \"Type\" item-specific values.
  data, status_code, headers = api_instance.get_type_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTypeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_type_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTypeResponse**](GetTypeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

