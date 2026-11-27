# Crossly::ReferenceApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_brand**](ReferenceApi.md#get_brand) | **GET** /v1/brands | Search the Crossly brand index. Returns up to 50 matches. |
| [**get_category**](ReferenceApi.md#get_category) | **GET** /v1/categories | List Crossly&#39;s canonical category tree. |
| [**get_department**](ReferenceApi.md#get_department) | **GET** /v1/departments | Search the eBay-sourced \&quot;Department\&quot; item-specific values. |
| [**get_gender**](ReferenceApi.md#get_gender) | **GET** /v1/genders | Search the eBay-sourced \&quot;Gender\&quot; item-specific values. |
| [**get_pattern**](ReferenceApi.md#get_pattern) | **GET** /v1/patterns | Search the eBay-sourced \&quot;Pattern\&quot; item-specific values. |
| [**get_reference_postal**](ReferenceApi.md#get_reference_postal) | **GET** /v1/reference/postal/{country}/{code} | Look up a postal code: canonical shape, state and US metro areas. |
| [**get_size_system**](ReferenceApi.md#get_size_system) | **GET** /v1/size-systems | Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR). |
| [**get_style**](ReferenceApi.md#get_style) | **GET** /v1/styles | Search the eBay-sourced \&quot;Style\&quot; item-specific values. |
| [**get_type**](ReferenceApi.md#get_type) | **GET** /v1/types | Search the eBay-sourced \&quot;Type\&quot; item-specific values. |
| [**list_reference_countries**](ReferenceApi.md#list_reference_countries) | **GET** /v1/reference/countries | Every country with its delivery-address rules. |
| [**list_reference_metros**](ReferenceApi.md#list_reference_metros) | **GET** /v1/reference/metros | Search US metro areas (CSA / CBSA) for location rules. |


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

**GetBrandResponse**

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

**GetCategoryResponse**

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

**GetDepartmentResponse**

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

**GetGenderResponse**

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

**GetPatternResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reference_postal

> <GetReferencePostalResponse> get_reference_postal(country, code)

Look up a postal code: canonical shape, state and US metro areas.

Every country gets its canonical shape and `valid`. A US ZIP (territories normalize to country US with `territory`) also gets state, county FIPS and CBSA/CSA. `metroStatus` is known (the ZIP is mapped), unmapped (a ZIP with no metro mapping: it matches no metro rule) or no_zip.

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
country = 'country_example' # String | 
code = 'code_example' # String | 

begin
  # Look up a postal code: canonical shape, state and US metro areas.
  result = api_instance.get_reference_postal(country, code)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_reference_postal: #{e}"
end
```

#### Using the get_reference_postal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReferencePostalResponse>, Integer, Hash)> get_reference_postal_with_http_info(country, code)

```ruby
begin
  # Look up a postal code: canonical shape, state and US metro areas.
  data, status_code, headers = api_instance.get_reference_postal_with_http_info(country, code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReferencePostalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->get_reference_postal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |
| **code** | **String** |  |  |

### Return type

**GetReferencePostalResponse**

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

**GetSizeSystemResponse**

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

**GetStyleResponse**

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

**GetTypeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reference_countries

> <ListReferenceCountriesResponse> list_reference_countries

Every country with its delivery-address rules.

ISO 3166-1 alpha-2 code, name, main currency and region tags, plus what a delivery address there needs: whether a postal code / state is required, what they are called locally, and the fixed state list where carriers want one. `embargoed` marks destinations Crossly cannot deliver to.

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
  # Every country with its delivery-address rules.
  result = api_instance.list_reference_countries
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->list_reference_countries: #{e}"
end
```

#### Using the list_reference_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReferenceCountriesResponse>, Integer, Hash)> list_reference_countries_with_http_info

```ruby
begin
  # Every country with its delivery-address rules.
  data, status_code, headers = api_instance.list_reference_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReferenceCountriesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->list_reference_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListReferenceCountriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reference_metros

> <ListReferenceMetrosResponse> list_reference_metros(q, opts)

Search US metro areas (CSA / CBSA) for location rules.

Combined Statistical Areas first, then Core-Based Statistical Areas, matched on title (or an exact code); at most 20. `q` needs 2+ characters. `meta.datasetAvailable` is false when the census dataset is not loaded, in which case no metro rule can match.

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
q = 'q_example' # String | 
opts = {
  limit: 56 # Integer | 
}

begin
  # Search US metro areas (CSA / CBSA) for location rules.
  result = api_instance.list_reference_metros(q, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->list_reference_metros: #{e}"
end
```

#### Using the list_reference_metros_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReferenceMetrosResponse>, Integer, Hash)> list_reference_metros_with_http_info(q, opts)

```ruby
begin
  # Search US metro areas (CSA / CBSA) for location rules.
  data, status_code, headers = api_instance.list_reference_metros_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReferenceMetrosResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReferenceApi->list_reference_metros_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

**ListReferenceMetrosResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

