# Crossly::TaxonomyApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_category_by_id**](TaxonomyApi.md#get_category_by_id) | **GET** /v1/categories/{id} | One canonical category and the category it maps to on each marketplace. |
| [**get_taxonomy_category**](TaxonomyApi.md#get_taxonomy_category) | **GET** /v1/taxonomy/{platform}/categories | Categories for a platform. Default is top-level; pass &#x60;?parent&#x3D;&lt;categoryId&gt;&#x60; to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows). |
| [**get_taxonomy_category_aspect**](TaxonomyApi.md#get_taxonomy_category_aspect) | **GET** /v1/taxonomy/{platform}/categories/{id}/aspects | Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category. |
| [**get_taxonomy_category_children**](TaxonomyApi.md#get_taxonomy_category_children) | **GET** /v1/taxonomy/{platform}/categories/{id}/children | Direct children of a category node. |
| [**get_taxonomy_required_field**](TaxonomyApi.md#get_taxonomy_required_field) | **GET** /v1/taxonomy/{platform}/required-fields | Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides. |
| [**list_category_aspects**](TaxonomyApi.md#list_category_aspects) | **GET** /v1/categories/{id}/aspects | Item specifics for a canonical category: required/optional, known values, per-marketplace names. |
| [**list_category_search**](TaxonomyApi.md#list_category_search) | **GET** /v1/categories/search | Search or browse Crossly&#39;s canonical categories (the ids listings take as categoryId). |
| [**list_taxonomy_ebay_charities**](TaxonomyApi.md#list_taxonomy_ebay_charities) | **GET** /v1/taxonomy/ebay/charities | Search eBay for Charity organisations (the charityId an eBay listing donates to). |
| [**list_taxonomy_suggest**](TaxonomyApi.md#list_taxonomy_suggest) | **GET** /v1/taxonomy/{platform}/suggest | Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead). |


## get_category_by_id

> <GetCategoryByIdResponse> get_category_by_id(id)

One canonical category and the category it maps to on each marketplace.

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
id = 'id_example' # String | 

begin
  # One canonical category and the category it maps to on each marketplace.
  result = api_instance.get_category_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_category_by_id: #{e}"
end
```

#### Using the get_category_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategoryByIdResponse>, Integer, Hash)> get_category_by_id_with_http_info(id)

```ruby
begin
  # One canonical category and the category it maps to on each marketplace.
  data, status_code, headers = api_instance.get_category_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategoryByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->get_category_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetCategoryByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

**GetTaxonomyCategoryResponse**

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

**GetTaxonomyCategoryAspectResponse**

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

**GetTaxonomyCategoryChildrenResponse**

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

**GetTaxonomyRequiredFieldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_category_aspects

> <ListCategoryAspectsResponse> list_category_aspects(id, opts)

Item specifics for a canonical category: required/optional, known values, per-marketplace names.

Required-ness and cardinality come from the eBay category the concept maps to. `freeText` = any text is accepted; otherwise `values` are the known values (up to `valuesLimit`). `marketplaces` gives the attribute name each marketplace uses for the aspect. Send them as `itemSpecifics` on POST /v1/listings.

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
id = 'id_example' # String | 
opts = {
  values_limit: 56 # Integer | 
}

begin
  # Item specifics for a canonical category: required/optional, known values, per-marketplace names.
  result = api_instance.list_category_aspects(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_category_aspects: #{e}"
end
```

#### Using the list_category_aspects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCategoryAspectsResponse>, Integer, Hash)> list_category_aspects_with_http_info(id, opts)

```ruby
begin
  # Item specifics for a canonical category: required/optional, known values, per-marketplace names.
  data, status_code, headers = api_instance.list_category_aspects_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCategoryAspectsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_category_aspects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **values_limit** | **Integer** |  | [optional][default to 50] |

### Return type

**ListCategoryAspectsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_category_search

> <ListCategorySearchResponse> list_category_search(opts)

Search or browse Crossly's canonical categories (the ids listings take as categoryId).

`q` matches the category name and path. `path` (e.g. \"Clothing & Shoes > Men\") limits to one branch. Without `q`, `meta.branches` lists the next level under `path` (the root when omitted) so a client can walk the tree down to a leaf.

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
opts = {
  q: 'q_example', # String | 
  path: 'path_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Search or browse Crossly's canonical categories (the ids listings take as categoryId).
  result = api_instance.list_category_search(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_category_search: #{e}"
end
```

#### Using the list_category_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCategorySearchResponse>, Integer, Hash)> list_category_search_with_http_info(opts)

```ruby
begin
  # Search or browse Crossly's canonical categories (the ids listings take as categoryId).
  data, status_code, headers = api_instance.list_category_search_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCategorySearchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_category_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListCategorySearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxonomy_ebay_charities

> <ListTaxonomyEbayCharitiesResponse> list_taxonomy_ebay_charities(opts)

Search eBay for Charity organisations (the charityId an eBay listing donates to).

Send the chosen `charityOrgId` as `overrides.ebay.charityId` with `overrides.ebay.donationPercentage` (10-100 in steps of 5) on a listing to donate that share of the eBay sale. `q` needs at least 2 characters.

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
opts = {
  q: 'q_example', # String | 
  limit: 56, # Integer | 
  marketplace: 'EBAY_US' # String | 
}

begin
  # Search eBay for Charity organisations (the charityId an eBay listing donates to).
  result = api_instance.list_taxonomy_ebay_charities(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomy_ebay_charities: #{e}"
end
```

#### Using the list_taxonomy_ebay_charities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxonomyEbayCharitiesResponse>, Integer, Hash)> list_taxonomy_ebay_charities_with_http_info(opts)

```ruby
begin
  # Search eBay for Charity organisations (the charityId an eBay listing donates to).
  data, status_code, headers = api_instance.list_taxonomy_ebay_charities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxonomyEbayCharitiesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomy_ebay_charities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |
| **marketplace** | **String** |  | [optional][default to &#39;EBAY_US&#39;] |

### Return type

**ListTaxonomyEbayCharitiesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxonomy_suggest

> <ListTaxonomySuggestResponse> list_taxonomy_suggest(platform, opts)

Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).

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
  # Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).
  result = api_instance.list_taxonomy_suggest(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomy_suggest: #{e}"
end
```

#### Using the list_taxonomy_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxonomySuggestResponse>, Integer, Hash)> list_taxonomy_suggest_with_http_info(platform, opts)

```ruby
begin
  # Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).
  data, status_code, headers = api_instance.list_taxonomy_suggest_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxonomySuggestResponse>
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

**ListTaxonomySuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

