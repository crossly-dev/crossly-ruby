# Crossly::DiscountsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automatic_discount**](DiscountsApi.md#create_automatic_discount) | **POST** /v1/automatic-discounts | Create an automatic discount. |
| [**create_automatic_discount_preview**](DiscountsApi.md#create_automatic_discount_preview) | **POST** /v1/automatic-discounts/preview | Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets. |
| [**create_discount_code**](DiscountsApi.md#create_discount_code) | **POST** /v1/discount-codes | Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking. |
| [**create_discount_code_generate**](DiscountsApi.md#create_discount_code_generate) | **POST** /v1/discount-codes/{id}/generate | Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits). |
| [**create_discount_code_pause_all**](DiscountsApi.md#create_discount_code_pause_all) | **POST** /v1/discount-codes/pause-all | Pause every active discount code of the store at once (paused: true), or resume every paused one (paused: false). Archived codes are left alone; returns how many changed. |
| [**create_discount_code_status**](DiscountsApi.md#create_discount_code_status) | **POST** /v1/discount-codes/{id}/status | Pause, resume (active) or archive a discount code. |
| [**create_discount_holder**](DiscountsApi.md#create_discount_holder) | **POST** /v1/discounts/holders | Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted). |
| [**delete_automatic_discount**](DiscountsApi.md#delete_automatic_discount) | **DELETE** /v1/automatic-discounts/{id} | Delete an automatic discount. |
| [**delete_discount_holder**](DiscountsApi.md#delete_discount_holder) | **DELETE** /v1/discounts/holders/{id} | Delete a Collection holders deal. Returns &#x60;{ ok }&#x60;. |
| [**get_discount_code**](DiscountsApi.md#get_discount_code) | **GET** /v1/discount-codes/{id} | One discount code with its rules and usage. |
| [**get_discount_code_share**](DiscountsApi.md#get_discount_code_share) | **GET** /v1/discount-codes/{id}/share | The share link that pre-applies the code at checkout (the store page with ?code&#x3D;) and a QR code of it as a PNG data URL. |
| [**get_discount_holder**](DiscountsApi.md#get_discount_holder) | **GET** /v1/discounts/holders/{id} | One Collection holders deal with its usage (uses, cents given). |
| [**list_automatic_discounts**](DiscountsApi.md#list_automatic_discounts) | **GET** /v1/automatic-discounts | Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule. |
| [**list_discount_code_redemptions**](DiscountsApi.md#list_discount_code_redemptions) | **GET** /v1/discount-codes/{id}/redemptions | A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first. |
| [**list_discount_codes**](DiscountsApi.md#list_discount_codes) | **GET** /v1/discount-codes | Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage. |
| [**list_discount_holders**](DiscountsApi.md#list_discount_holders) | **GET** /v1/discounts/holders | The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits. |
| [**update_automatic_discount**](DiscountsApi.md#update_automatic_discount) | **PUT** /v1/automatic-discounts/{id} | Replace an automatic discount. |
| [**update_discount_code**](DiscountsApi.md#update_discount_code) | **PATCH** /v1/discount-codes/{id} | Update a discount code. The code itself can be renamed only until it is first used. |
| [**update_discount_holder**](DiscountsApi.md#update_discount_holder) | **PUT** /v1/discounts/holders/{id} | Replace a Collection holders deal. |


## create_automatic_discount

> <CreateAutomaticDiscountResponse> create_automatic_discount(create_automatic_discount_request)

Create an automatic discount.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
create_automatic_discount_request = Crossly::CreateAutomaticDiscountRequest.new({name: 'name_example', kind: 'quantity', tiers: [Crossly::MinQtyPercentBps.new({min_qty: 3.56, percent_bps: 3.56})]}) # CreateAutomaticDiscountRequest | 

begin
  # Create an automatic discount.
  result = api_instance.create_automatic_discount(create_automatic_discount_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_automatic_discount: #{e}"
end
```

#### Using the create_automatic_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomaticDiscountResponse>, Integer, Hash)> create_automatic_discount_with_http_info(create_automatic_discount_request)

```ruby
begin
  # Create an automatic discount.
  data, status_code, headers = api_instance.create_automatic_discount_with_http_info(create_automatic_discount_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomaticDiscountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_automatic_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_automatic_discount_request** | **CreateAutomaticDiscountRequest** |  |  |

### Return type

**CreateAutomaticDiscountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automatic_discount_preview

> <CreateAutomaticDiscountPreviewResponse> create_automatic_discount_preview(create_automatic_discount_preview_request)

Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
create_automatic_discount_preview_request = Crossly::CreateAutomaticDiscountPreviewRequest.new({cart: [Crossly::CreateAutomaticDiscountPreviewRequestCart.new({platform_listing_id: 'platform_listing_id_example', quantity: 3.56})]}) # CreateAutomaticDiscountPreviewRequest | 

begin
  # Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.
  result = api_instance.create_automatic_discount_preview(create_automatic_discount_preview_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_automatic_discount_preview: #{e}"
end
```

#### Using the create_automatic_discount_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomaticDiscountPreviewResponse>, Integer, Hash)> create_automatic_discount_preview_with_http_info(create_automatic_discount_preview_request)

```ruby
begin
  # Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.
  data, status_code, headers = api_instance.create_automatic_discount_preview_with_http_info(create_automatic_discount_preview_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomaticDiscountPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_automatic_discount_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_automatic_discount_preview_request** | **CreateAutomaticDiscountPreviewRequest** |  |  |

### Return type

**CreateAutomaticDiscountPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discount_code

> <DiscountCodeResponse> create_discount_code(create_discount_code_request)

Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
create_discount_code_request = Crossly::CreateDiscountCodeRequest.new({code: 'code_example', kind: 'fixed'}) # CreateDiscountCodeRequest | 

begin
  # Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.
  result = api_instance.create_discount_code(create_discount_code_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code: #{e}"
end
```

#### Using the create_discount_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountCodeResponse>, Integer, Hash)> create_discount_code_with_http_info(create_discount_code_request)

```ruby
begin
  # Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.
  data, status_code, headers = api_instance.create_discount_code_with_http_info(create_discount_code_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountCodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_discount_code_request** | **CreateDiscountCodeRequest** |  |  |

### Return type

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discount_code_generate

> <CreateDiscountCodeGenerateResponse> create_discount_code_generate(id, create_discount_code_generate_request)

Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 
create_discount_code_generate_request = Crossly::CreateDiscountCodeGenerateRequest.new({count: 3.56}) # CreateDiscountCodeGenerateRequest | 

begin
  # Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).
  result = api_instance.create_discount_code_generate(id, create_discount_code_generate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_generate: #{e}"
end
```

#### Using the create_discount_code_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscountCodeGenerateResponse>, Integer, Hash)> create_discount_code_generate_with_http_info(id, create_discount_code_generate_request)

```ruby
begin
  # Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).
  data, status_code, headers = api_instance.create_discount_code_generate_with_http_info(id, create_discount_code_generate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscountCodeGenerateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_discount_code_generate_request** | **CreateDiscountCodeGenerateRequest** |  |  |

### Return type

**CreateDiscountCodeGenerateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discount_code_pause_all

> <CreateDiscountCodePauseAllResponse> create_discount_code_pause_all(create_discount_code_pause_all_request)

Pause every active discount code of the store at once (paused: true), or resume every paused one (paused: false). Archived codes are left alone; returns how many changed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
create_discount_code_pause_all_request = Crossly::CreateDiscountCodePauseAllRequest.new({paused: false}) # CreateDiscountCodePauseAllRequest | 

begin
  # Pause every active discount code of the store at once (paused: true), or resume every paused one (paused: false). Archived codes are left alone; returns how many changed.
  result = api_instance.create_discount_code_pause_all(create_discount_code_pause_all_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_pause_all: #{e}"
end
```

#### Using the create_discount_code_pause_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscountCodePauseAllResponse>, Integer, Hash)> create_discount_code_pause_all_with_http_info(create_discount_code_pause_all_request)

```ruby
begin
  # Pause every active discount code of the store at once (paused: true), or resume every paused one (paused: false). Archived codes are left alone; returns how many changed.
  data, status_code, headers = api_instance.create_discount_code_pause_all_with_http_info(create_discount_code_pause_all_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscountCodePauseAllResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_pause_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_discount_code_pause_all_request** | **CreateDiscountCodePauseAllRequest** |  |  |

### Return type

**CreateDiscountCodePauseAllResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discount_code_status

> <DiscountCodeResponse> create_discount_code_status(id, create_discount_code_status_request)

Pause, resume (active) or archive a discount code.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 
create_discount_code_status_request = Crossly::CreateDiscountCodeStatusRequest.new({status: 'active'}) # CreateDiscountCodeStatusRequest | 

begin
  # Pause, resume (active) or archive a discount code.
  result = api_instance.create_discount_code_status(id, create_discount_code_status_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_status: #{e}"
end
```

#### Using the create_discount_code_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountCodeResponse>, Integer, Hash)> create_discount_code_status_with_http_info(id, create_discount_code_status_request)

```ruby
begin
  # Pause, resume (active) or archive a discount code.
  data, status_code, headers = api_instance.create_discount_code_status_with_http_info(id, create_discount_code_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountCodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_code_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_discount_code_status_request** | **CreateDiscountCodeStatusRequest** |  |  |

### Return type

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discount_holder

> <CreateDiscountHolderResponse> create_discount_holder

Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new

begin
  # Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).
  result = api_instance.create_discount_holder
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_holder: #{e}"
end
```

#### Using the create_discount_holder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscountHolderResponse>, Integer, Hash)> create_discount_holder_with_http_info

```ruby
begin
  # Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).
  data, status_code, headers = api_instance.create_discount_holder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscountHolderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->create_discount_holder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_automatic_discount

> <UpdateGroupBuyResponse> delete_automatic_discount(id)

Delete an automatic discount.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 

begin
  # Delete an automatic discount.
  result = api_instance.delete_automatic_discount(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->delete_automatic_discount: #{e}"
end
```

#### Using the delete_automatic_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_automatic_discount_with_http_info(id)

```ruby
begin
  # Delete an automatic discount.
  data, status_code, headers = api_instance.delete_automatic_discount_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->delete_automatic_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discount_holder

> <OkResponse> delete_discount_holder(id)

Delete a Collection holders deal. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a Collection holders deal. Returns `{ ok }`.
  result = api_instance.delete_discount_holder(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->delete_discount_holder: #{e}"
end
```

#### Using the delete_discount_holder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_discount_holder_with_http_info(id)

```ruby
begin
  # Delete a Collection holders deal. Returns `{ ok }`.
  data, status_code, headers = api_instance.delete_discount_holder_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->delete_discount_holder_with_http_info: #{e}"
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


## get_discount_code

> <GetDiscountCodeResponse> get_discount_code(id)

One discount code with its rules and usage.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 

begin
  # One discount code with its rules and usage.
  result = api_instance.get_discount_code(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_code: #{e}"
end
```

#### Using the get_discount_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscountCodeResponse>, Integer, Hash)> get_discount_code_with_http_info(id)

```ruby
begin
  # One discount code with its rules and usage.
  data, status_code, headers = api_instance.get_discount_code_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscountCodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_code_share

> <GetDiscountCodeShareResponse> get_discount_code_share(id)

The share link that pre-applies the code at checkout (the store page with ?code=) and a QR code of it as a PNG data URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 

begin
  # The share link that pre-applies the code at checkout (the store page with ?code=) and a QR code of it as a PNG data URL.
  result = api_instance.get_discount_code_share(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_code_share: #{e}"
end
```

#### Using the get_discount_code_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscountCodeShareResponse>, Integer, Hash)> get_discount_code_share_with_http_info(id)

```ruby
begin
  # The share link that pre-applies the code at checkout (the store page with ?code=) and a QR code of it as a PNG data URL.
  data, status_code, headers = api_instance.get_discount_code_share_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscountCodeShareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_code_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDiscountCodeShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_holder

> <GetDiscountHolderResponse> get_discount_holder(id)

One Collection holders deal with its usage (uses, cents given).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One Collection holders deal with its usage (uses, cents given).
  result = api_instance.get_discount_holder(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_holder: #{e}"
end
```

#### Using the get_discount_holder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscountHolderResponse>, Integer, Hash)> get_discount_holder_with_http_info(id)

```ruby
begin
  # One Collection holders deal with its usage (uses, cents given).
  data, status_code, headers = api_instance.get_discount_holder_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscountHolderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->get_discount_holder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automatic_discounts

> <ListAutomaticDiscountsResponse> list_automatic_discounts

Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new

begin
  # Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.
  result = api_instance.list_automatic_discounts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_automatic_discounts: #{e}"
end
```

#### Using the list_automatic_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomaticDiscountsResponse>, Integer, Hash)> list_automatic_discounts_with_http_info

```ruby
begin
  # Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.
  data, status_code, headers = api_instance.list_automatic_discounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomaticDiscountsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_automatic_discounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListAutomaticDiscountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discount_code_redemptions

> <ListDiscountCodeRedemptionsResponse> list_discount_code_redemptions(id, opts)

A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 
opts = {
  limit: 8.14, # Float | 
  offset: 8.14 # Float | 
}

begin
  # A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.
  result = api_instance.list_discount_code_redemptions(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_code_redemptions: #{e}"
end
```

#### Using the list_discount_code_redemptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscountCodeRedemptionsResponse>, Integer, Hash)> list_discount_code_redemptions_with_http_info(id, opts)

```ruby
begin
  # A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.
  data, status_code, headers = api_instance.list_discount_code_redemptions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscountCodeRedemptionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_code_redemptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **offset** | **Float** |  | [optional] |

### Return type

**ListDiscountCodeRedemptionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discount_codes

> <ListDiscountCodesResponse> list_discount_codes(opts)

Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
opts = {
  archived: 'true' # String | 
}

begin
  # Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.
  result = api_instance.list_discount_codes(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_codes: #{e}"
end
```

#### Using the list_discount_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscountCodesResponse>, Integer, Hash)> list_discount_codes_with_http_info(opts)

```ruby
begin
  # Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.
  data, status_code, headers = api_instance.list_discount_codes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscountCodesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived** | **String** |  | [optional] |

### Return type

**ListDiscountCodesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discount_holders

> <ListDiscountHoldersResponse> list_discount_holders

The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new

begin
  # The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.
  result = api_instance.list_discount_holders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_holders: #{e}"
end
```

#### Using the list_discount_holders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscountHoldersResponse>, Integer, Hash)> list_discount_holders_with_http_info

```ruby
begin
  # The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.
  data, status_code, headers = api_instance.list_discount_holders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscountHoldersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->list_discount_holders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListDiscountHoldersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_automatic_discount

> <CreateAutomaticDiscountResponse> update_automatic_discount(id, create_automatic_discount_request)

Replace an automatic discount.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 
create_automatic_discount_request = Crossly::CreateAutomaticDiscountRequest.new({name: 'name_example', kind: 'quantity', tiers: [Crossly::MinQtyPercentBps.new({min_qty: 3.56, percent_bps: 3.56})]}) # CreateAutomaticDiscountRequest | 

begin
  # Replace an automatic discount.
  result = api_instance.update_automatic_discount(id, create_automatic_discount_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_automatic_discount: #{e}"
end
```

#### Using the update_automatic_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomaticDiscountResponse>, Integer, Hash)> update_automatic_discount_with_http_info(id, create_automatic_discount_request)

```ruby
begin
  # Replace an automatic discount.
  data, status_code, headers = api_instance.update_automatic_discount_with_http_info(id, create_automatic_discount_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomaticDiscountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_automatic_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_automatic_discount_request** | **CreateAutomaticDiscountRequest** |  |  |

### Return type

**CreateAutomaticDiscountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_code

> <DiscountCodeResponse> update_discount_code(id, update_discount_code_request)

Update a discount code. The code itself can be renamed only until it is first used.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = 'id_example' # String | 
update_discount_code_request = Crossly::UpdateDiscountCodeRequest.new # UpdateDiscountCodeRequest | 

begin
  # Update a discount code. The code itself can be renamed only until it is first used.
  result = api_instance.update_discount_code(id, update_discount_code_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_discount_code: #{e}"
end
```

#### Using the update_discount_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountCodeResponse>, Integer, Hash)> update_discount_code_with_http_info(id, update_discount_code_request)

```ruby
begin
  # Update a discount code. The code itself can be renamed only until it is first used.
  data, status_code, headers = api_instance.update_discount_code_with_http_info(id, update_discount_code_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountCodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_discount_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_discount_code_request** | **UpdateDiscountCodeRequest** |  |  |

### Return type

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_holder

> <CreateDiscountHolderResponse> update_discount_holder(id)

Replace a Collection holders deal.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DiscountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Replace a Collection holders deal.
  result = api_instance.update_discount_holder(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_discount_holder: #{e}"
end
```

#### Using the update_discount_holder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscountHolderResponse>, Integer, Hash)> update_discount_holder_with_http_info(id)

```ruby
begin
  # Replace a Collection holders deal.
  data, status_code, headers = api_instance.update_discount_holder_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscountHolderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DiscountsApi->update_discount_holder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

