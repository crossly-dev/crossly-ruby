# Crossly::BrandDropsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_brand_drop**](BrandDropsApi.md#create_brand_drop) | **POST** /v1/brand-drops | Create a brand drop as a draft (name, dropAt in the future, optional description, cover image and Crossly platform-listing ids). Approved partners only (403 drop_partner_required); counts against your monthly allowance (403 drop_quota_exhausted). |
| [**get_brand_drop**](BrandDropsApi.md#get_brand_drop) | **GET** /v1/brand-drops/{id} | One of your brand drops, with its status and any note from Crossly’s review. |
| [**get_brand_drop_partner**](BrandDropsApi.md#get_brand_drop_partner) | **GET** /v1/brand-drops/partner | Your drop-partner terms (fee, promotion tier, monthly allowance, whether you may schedule without review) and how many drops you have created this month. partner is null when you are not an approved partner — apply at crossly.net/drops/apply. |
| [**list_brand_drop_listings**](BrandDropsApi.md#list_brand_drop_listings) | **GET** /v1/brand-drops/{id}/listings | The listings a brand drop releases when it goes live. |
| [**list_brand_drops**](BrandDropsApi.md#list_brand_drops) | **GET** /v1/brand-drops | Your brand drops, newest start time first. Filter with ?status&#x3D;draft|pending_review|scheduled|live|sold_out|ended|cancelled. Empty when you are not a partner. |
| [**update_brand_drop**](BrandDropsApi.md#update_brand_drop) | **PATCH** /v1/brand-drops/{id} | Edit a brand drop and/or change its status: draft (withdraw / unschedule), pending_review (submit for review), scheduled (only with canSelfPublish — 403 drop_review_required otherwise), cancelled. Editing name, time or description of a reviewed drop sends it back to review. Live and finished drops cannot be changed. |
| [**update_brand_drop_listing**](BrandDropsApi.md#update_brand_drop_listing) | **PUT** /v1/brand-drops/{id}/listings | Replace the listings a brand drop releases, by master listing id (up to 100). Each must already be listed on Crossly — otherwise 400 listing_not_on_crossly naming them. Not allowed once the drop is live or finished. |


## create_brand_drop

> <BrandDropResponse> create_brand_drop

Create a brand drop as a draft (name, dropAt in the future, optional description, cover image and Crossly platform-listing ids). Approved partners only (403 drop_partner_required); counts against your monthly allowance (403 drop_quota_exhausted).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new

begin
  # Create a brand drop as a draft (name, dropAt in the future, optional description, cover image and Crossly platform-listing ids). Approved partners only (403 drop_partner_required); counts against your monthly allowance (403 drop_quota_exhausted).
  result = api_instance.create_brand_drop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->create_brand_drop: #{e}"
end
```

#### Using the create_brand_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandDropResponse>, Integer, Hash)> create_brand_drop_with_http_info

```ruby
begin
  # Create a brand drop as a draft (name, dropAt in the future, optional description, cover image and Crossly platform-listing ids). Approved partners only (403 drop_partner_required); counts against your monthly allowance (403 drop_quota_exhausted).
  data, status_code, headers = api_instance.create_brand_drop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->create_brand_drop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BrandDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_brand_drop

> <BrandDropResponse> get_brand_drop(id)

One of your brand drops, with its status and any note from Crossly’s review.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One of your brand drops, with its status and any note from Crossly’s review.
  result = api_instance.get_brand_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->get_brand_drop: #{e}"
end
```

#### Using the get_brand_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandDropResponse>, Integer, Hash)> get_brand_drop_with_http_info(id)

```ruby
begin
  # One of your brand drops, with its status and any note from Crossly’s review.
  data, status_code, headers = api_instance.get_brand_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->get_brand_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BrandDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_brand_drop_partner

> <GetBrandDropPartnerResponse> get_brand_drop_partner

Your drop-partner terms (fee, promotion tier, monthly allowance, whether you may schedule without review) and how many drops you have created this month. partner is null when you are not an approved partner — apply at crossly.net/drops/apply.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new

begin
  # Your drop-partner terms (fee, promotion tier, monthly allowance, whether you may schedule without review) and how many drops you have created this month. partner is null when you are not an approved partner — apply at crossly.net/drops/apply.
  result = api_instance.get_brand_drop_partner
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->get_brand_drop_partner: #{e}"
end
```

#### Using the get_brand_drop_partner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandDropPartnerResponse>, Integer, Hash)> get_brand_drop_partner_with_http_info

```ruby
begin
  # Your drop-partner terms (fee, promotion tier, monthly allowance, whether you may schedule without review) and how many drops you have created this month. partner is null when you are not an approved partner — apply at crossly.net/drops/apply.
  data, status_code, headers = api_instance.get_brand_drop_partner_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandDropPartnerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->get_brand_drop_partner_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandDropPartnerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_brand_drop_listings

> <ListBrandDropListingsResponse> list_brand_drop_listings(id)

The listings a brand drop releases when it goes live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The listings a brand drop releases when it goes live.
  result = api_instance.list_brand_drop_listings(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->list_brand_drop_listings: #{e}"
end
```

#### Using the list_brand_drop_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandDropListingsResponse>, Integer, Hash)> list_brand_drop_listings_with_http_info(id)

```ruby
begin
  # The listings a brand drop releases when it goes live.
  data, status_code, headers = api_instance.list_brand_drop_listings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandDropListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->list_brand_drop_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBrandDropListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_brand_drops

> <ListBrandDropsResponse> list_brand_drops

Your brand drops, newest start time first. Filter with ?status=draft|pending_review|scheduled|live|sold_out|ended|cancelled. Empty when you are not a partner.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new

begin
  # Your brand drops, newest start time first. Filter with ?status=draft|pending_review|scheduled|live|sold_out|ended|cancelled. Empty when you are not a partner.
  result = api_instance.list_brand_drops
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->list_brand_drops: #{e}"
end
```

#### Using the list_brand_drops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandDropsResponse>, Integer, Hash)> list_brand_drops_with_http_info

```ruby
begin
  # Your brand drops, newest start time first. Filter with ?status=draft|pending_review|scheduled|live|sold_out|ended|cancelled. Empty when you are not a partner.
  data, status_code, headers = api_instance.list_brand_drops_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandDropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->list_brand_drops_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBrandDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_brand_drop

> <BrandDropResponse> update_brand_drop(id)

Edit a brand drop and/or change its status: draft (withdraw / unschedule), pending_review (submit for review), scheduled (only with canSelfPublish — 403 drop_review_required otherwise), cancelled. Editing name, time or description of a reviewed drop sends it back to review. Live and finished drops cannot be changed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit a brand drop and/or change its status: draft (withdraw / unschedule), pending_review (submit for review), scheduled (only with canSelfPublish — 403 drop_review_required otherwise), cancelled. Editing name, time or description of a reviewed drop sends it back to review. Live and finished drops cannot be changed.
  result = api_instance.update_brand_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->update_brand_drop: #{e}"
end
```

#### Using the update_brand_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandDropResponse>, Integer, Hash)> update_brand_drop_with_http_info(id)

```ruby
begin
  # Edit a brand drop and/or change its status: draft (withdraw / unschedule), pending_review (submit for review), scheduled (only with canSelfPublish — 403 drop_review_required otherwise), cancelled. Editing name, time or description of a reviewed drop sends it back to review. Live and finished drops cannot be changed.
  data, status_code, headers = api_instance.update_brand_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->update_brand_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BrandDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_brand_drop_listing

> <ListBrandDropListingsResponse> update_brand_drop_listing(id)

Replace the listings a brand drop releases, by master listing id (up to 100). Each must already be listed on Crossly — otherwise 400 listing_not_on_crossly naming them. Not allowed once the drop is live or finished.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandDropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Replace the listings a brand drop releases, by master listing id (up to 100). Each must already be listed on Crossly — otherwise 400 listing_not_on_crossly naming them. Not allowed once the drop is live or finished.
  result = api_instance.update_brand_drop_listing(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->update_brand_drop_listing: #{e}"
end
```

#### Using the update_brand_drop_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandDropListingsResponse>, Integer, Hash)> update_brand_drop_listing_with_http_info(id)

```ruby
begin
  # Replace the listings a brand drop releases, by master listing id (up to 100). Each must already be listed on Crossly — otherwise 400 listing_not_on_crossly naming them. Not allowed once the drop is live or finished.
  data, status_code, headers = api_instance.update_brand_drop_listing_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandDropListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandDropsApi->update_brand_drop_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBrandDropListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

