# Crossly::BrandingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_branding_drop**](BrandingApi.md#create_branding_drop) | **POST** /v1/branding/drops | Create a drop as a draft. &#x60;config&#x60; is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing. |
| [**create_branding_drop_control**](BrandingApi.md#create_branding_drop_control) | **POST** /v1/branding/drops/{id}/controls/{control} | Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle). |
| [**create_branding_drop_publish**](BrandingApi.md#create_branding_drop_publish) | **POST** /v1/branding/drops/{id}/publish | Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required). |
| [**create_branding_event_cancel**](BrandingApi.md#create_branding_event_cancel) | **POST** /v1/branding/events/{id}/cancel | Cancel a published event with the reason attendees see. |
| [**create_branding_event_check_in**](BrandingApi.md#create_branding_event_check_in) | **POST** /v1/branding/events/{id}/check-in | Check a ticket in at the door by its QR token. |
| [**create_branding_event_message**](BrandingApi.md#create_branding_event_message) | **POST** /v1/branding/events/{id}/messages | Message the event&#39;s attendees: all, going, or ticketed. |
| [**delete_branding_drop**](BrandingApi.md#delete_branding_drop) | **DELETE** /v1/branding/drops/{id} | Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control. |
| [**get_branding_brand**](BrandingApi.md#get_branding_brand) | **GET** /v1/branding/brand | Your brand profile (approved brand partners). |
| [**get_branding_business_verification**](BrandingApi.md#get_branding_business_verification) | **GET** /v1/branding/business-verification | Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it. |
| [**get_branding_drop**](BrandingApi.md#get_branding_drop) | **GET** /v1/branding/drops/{id} | One of your drops. |
| [**get_branding_event**](BrandingApi.md#get_branding_event) | **GET** /v1/branding/events | Your events: upcoming grouped by date (today, this_week, later), or past. |
| [**get_branding_setting**](BrandingApi.md#get_branding_setting) | **GET** /v1/branding/settings | The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers. |
| [**list_branding_drops**](BrandingApi.md#list_branding_drops) | **GET** /v1/branding/drops | Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope&#x3D;upcoming|live|past|drafts|all. |
| [**update_branding_brand**](BrandingApi.md#update_branding_brand) | **PATCH** /v1/branding/brand | Edit your brand profile: logoUrl, bannerUrl, story, links. |
| [**update_branding_drop**](BrandingApi.md#update_branding_drop) | **PATCH** /v1/branding/drops/{id} | Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems). |
| [**update_branding_event_setting**](BrandingApi.md#update_branding_event_setting) | **PUT** /v1/branding/events/{id}/settings | Save an event&#39;s full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers. |
| [**update_branding_setting**](BrandingApi.md#update_branding_setting) | **PATCH** /v1/branding/settings | Change the store’s Branding defaults (any subset of the fields). |


## create_branding_drop

> <CreateBrandingDropResponse> create_branding_drop

Create a drop as a draft. `config` is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Create a drop as a draft. `config` is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.
  result = api_instance.create_branding_drop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop: #{e}"
end
```

#### Using the create_branding_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingDropResponse>, Integer, Hash)> create_branding_drop_with_http_info

```ruby
begin
  # Create a drop as a draft. `config` is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.
  data, status_code, headers = api_instance.create_branding_drop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_branding_drop_control

> <GetBrandingDropResponse> create_branding_drop_control(id, control)

Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = 'id_example' # String | 
control = 'control_example' # String | 

begin
  # Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).
  result = api_instance.create_branding_drop_control(id, control)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop_control: #{e}"
end
```

#### Using the create_branding_drop_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingDropResponse>, Integer, Hash)> create_branding_drop_control_with_http_info(id, control)

```ruby
begin
  # Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).
  data, status_code, headers = api_instance.create_branding_drop_control_with_http_info(id, control)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop_control_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **control** | **String** |  |  |

### Return type

**GetBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_branding_drop_publish

> <CreateBrandingDropPublishResponse> create_branding_drop_publish(id)

Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).
  result = api_instance.create_branding_drop_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop_publish: #{e}"
end
```

#### Using the create_branding_drop_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingDropPublishResponse>, Integer, Hash)> create_branding_drop_publish_with_http_info(id)

```ruby
begin
  # Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).
  data, status_code, headers = api_instance.create_branding_drop_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingDropPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_drop_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBrandingDropPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_branding_event_cancel

> <CreateBrandingEventCancelResponse> create_branding_event_cancel(id)

Cancel a published event with the reason attendees see.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Cancel a published event with the reason attendees see.
  result = api_instance.create_branding_event_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_cancel: #{e}"
end
```

#### Using the create_branding_event_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingEventCancelResponse>, Integer, Hash)> create_branding_event_cancel_with_http_info(id)

```ruby
begin
  # Cancel a published event with the reason attendees see.
  data, status_code, headers = api_instance.create_branding_event_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingEventCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBrandingEventCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_branding_event_check_in

> <CreateBrandingEventCheckInResponse> create_branding_event_check_in(id)

Check a ticket in at the door by its QR token.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Check a ticket in at the door by its QR token.
  result = api_instance.create_branding_event_check_in(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_check_in: #{e}"
end
```

#### Using the create_branding_event_check_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingEventCheckInResponse>, Integer, Hash)> create_branding_event_check_in_with_http_info(id)

```ruby
begin
  # Check a ticket in at the door by its QR token.
  data, status_code, headers = api_instance.create_branding_event_check_in_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingEventCheckInResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_check_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBrandingEventCheckInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_branding_event_message

> <CreateBrandingEventMessageResponse> create_branding_event_message(id)

Message the event's attendees: all, going, or ticketed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Message the event's attendees: all, going, or ticketed.
  result = api_instance.create_branding_event_message(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_message: #{e}"
end
```

#### Using the create_branding_event_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingEventMessageResponse>, Integer, Hash)> create_branding_event_message_with_http_info(id)

```ruby
begin
  # Message the event's attendees: all, going, or ticketed.
  data, status_code, headers = api_instance.create_branding_event_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingEventMessageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->create_branding_event_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBrandingEventMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_branding_drop

> <DeleteBrandingDropResponse> delete_branding_drop(id)

Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.
  result = api_instance.delete_branding_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->delete_branding_drop: #{e}"
end
```

#### Using the delete_branding_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBrandingDropResponse>, Integer, Hash)> delete_branding_drop_with_http_info(id)

```ruby
begin
  # Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.
  data, status_code, headers = api_instance.delete_branding_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBrandingDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->delete_branding_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branding_brand

> <GetBrandingBrandResponse> get_branding_brand

Your brand profile (approved brand partners).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Your brand profile (approved brand partners).
  result = api_instance.get_branding_brand
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_brand: #{e}"
end
```

#### Using the get_branding_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingBrandResponse>, Integer, Hash)> get_branding_brand_with_http_info

```ruby
begin
  # Your brand profile (approved brand partners).
  data, status_code, headers = api_instance.get_branding_brand_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingBrandResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_brand_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingBrandResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branding_business_verification

> <GetBrandingBusinessVerificationResponse> get_branding_business_verification

Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.
  result = api_instance.get_branding_business_verification
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_business_verification: #{e}"
end
```

#### Using the get_branding_business_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingBusinessVerificationResponse>, Integer, Hash)> get_branding_business_verification_with_http_info

```ruby
begin
  # Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.
  data, status_code, headers = api_instance.get_branding_business_verification_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingBusinessVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_business_verification_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingBusinessVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branding_drop

> <GetBrandingDropResponse> get_branding_drop(id)

One of your drops.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One of your drops.
  result = api_instance.get_branding_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_drop: #{e}"
end
```

#### Using the get_branding_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingDropResponse>, Integer, Hash)> get_branding_drop_with_http_info(id)

```ruby
begin
  # One of your drops.
  data, status_code, headers = api_instance.get_branding_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branding_event

> <GetBrandingEventResponse> get_branding_event

Your events: upcoming grouped by date (today, this_week, later), or past.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Your events: upcoming grouped by date (today, this_week, later), or past.
  result = api_instance.get_branding_event
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_event: #{e}"
end
```

#### Using the get_branding_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingEventResponse>, Integer, Hash)> get_branding_event_with_http_info

```ruby
begin
  # Your events: upcoming grouped by date (today, this_week, later), or past.
  data, status_code, headers = api_instance.get_branding_event_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_event_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branding_setting

> <GetBrandingSettingResponse> get_branding_setting

The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.
  result = api_instance.get_branding_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_setting: #{e}"
end
```

#### Using the get_branding_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingSettingResponse>, Integer, Hash)> get_branding_setting_with_http_info

```ruby
begin
  # The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.
  data, status_code, headers = api_instance.get_branding_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->get_branding_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_branding_drops

> <ListBrandingDropsResponse> list_branding_drops

Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope=upcoming|live|past|drafts|all.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope=upcoming|live|past|drafts|all.
  result = api_instance.list_branding_drops
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->list_branding_drops: #{e}"
end
```

#### Using the list_branding_drops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandingDropsResponse>, Integer, Hash)> list_branding_drops_with_http_info

```ruby
begin
  # Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope=upcoming|live|past|drafts|all.
  data, status_code, headers = api_instance.list_branding_drops_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandingDropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->list_branding_drops_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBrandingDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_branding_brand

> <GetBrandingBrandResponse> update_branding_brand

Edit your brand profile: logoUrl, bannerUrl, story, links.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Edit your brand profile: logoUrl, bannerUrl, story, links.
  result = api_instance.update_branding_brand
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_brand: #{e}"
end
```

#### Using the update_branding_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingBrandResponse>, Integer, Hash)> update_branding_brand_with_http_info

```ruby
begin
  # Edit your brand profile: logoUrl, bannerUrl, story, links.
  data, status_code, headers = api_instance.update_branding_brand_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingBrandResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_brand_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingBrandResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_branding_drop

> <CreateBrandingDropResponse> update_branding_drop(id)

Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).
  result = api_instance.update_branding_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_drop: #{e}"
end
```

#### Using the update_branding_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBrandingDropResponse>, Integer, Hash)> update_branding_drop_with_http_info(id)

```ruby
begin
  # Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).
  data, status_code, headers = api_instance.update_branding_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBrandingDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_branding_event_setting

> <UpdateBrandingEventSettingResponse> update_branding_event_setting(id)

Save an event's full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Save an event's full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.
  result = api_instance.update_branding_event_setting(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_event_setting: #{e}"
end
```

#### Using the update_branding_event_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBrandingEventSettingResponse>, Integer, Hash)> update_branding_event_setting_with_http_info(id)

```ruby
begin
  # Save an event's full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.
  data, status_code, headers = api_instance.update_branding_event_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBrandingEventSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_event_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateBrandingEventSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_branding_setting

> <GetBrandingSettingResponse> update_branding_setting

Change the store’s Branding defaults (any subset of the fields).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BrandingApi.new

begin
  # Change the store’s Branding defaults (any subset of the fields).
  result = api_instance.update_branding_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_setting: #{e}"
end
```

#### Using the update_branding_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBrandingSettingResponse>, Integer, Hash)> update_branding_setting_with_http_info

```ruby
begin
  # Change the store’s Branding defaults (any subset of the fields).
  data, status_code, headers = api_instance.update_branding_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBrandingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BrandingApi->update_branding_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBrandingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

