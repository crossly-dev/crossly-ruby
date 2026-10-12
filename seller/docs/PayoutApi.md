# Crossly::PayoutApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payout_connect_onboard**](PayoutApi.md#create_payout_connect_onboard) | **POST** /v1/payout/connect/onboard | Start or resume payout-account onboarding; returns a Stripe-hosted URL. |
| [**get_payout_connect**](PayoutApi.md#get_payout_connect) | **GET** /v1/payout/connect | Your Stripe payout account: status, country, agreement and payout currency. |
| [**get_payout_estimate**](PayoutApi.md#get_payout_estimate) | **GET** /v1/payout/estimate | What one platform nets at a given price, after fees and shipping. |
| [**get_payout_gross_for_net**](PayoutApi.md#get_payout_gross_for_net) | **GET** /v1/payout/gross-for-net | The gross price needed to clear a target net on one platform. |
| [**list_payout_compare**](PayoutApi.md#list_payout_compare) | **GET** /v1/payout/compare | Rank platforms by what they net at a given price. Defaults to connected ones. |


## create_payout_connect_onboard

> <CreatePayoutConnectOnboardResponse> create_payout_connect_onboard(create_payout_connect_onboard_request)

Start or resume payout-account onboarding; returns a Stripe-hosted URL.

country (ISO 3166-1 alpha-2) defaults to the storefront ship-from country, then US. Fixed once the account exists. Nothing is set up until a person completes the link.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PayoutApi.new
create_payout_connect_onboard_request = Crossly::CreatePayoutConnectOnboardRequest.new # CreatePayoutConnectOnboardRequest | 

begin
  # Start or resume payout-account onboarding; returns a Stripe-hosted URL.
  result = api_instance.create_payout_connect_onboard(create_payout_connect_onboard_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_connect_onboard: #{e}"
end
```

#### Using the create_payout_connect_onboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayoutConnectOnboardResponse>, Integer, Hash)> create_payout_connect_onboard_with_http_info(create_payout_connect_onboard_request)

```ruby
begin
  # Start or resume payout-account onboarding; returns a Stripe-hosted URL.
  data, status_code, headers = api_instance.create_payout_connect_onboard_with_http_info(create_payout_connect_onboard_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayoutConnectOnboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_connect_onboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payout_connect_onboard_request** | **CreatePayoutConnectOnboardRequest** |  |  |

### Return type

**CreatePayoutConnectOnboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payout_connect

> <GetPayoutConnectResponse> get_payout_connect

Your Stripe payout account: status, country, agreement and payout currency.

status is not_started (with defaultCountry), pending, active, restricted or payouts_unavailable. Only active can be paid; payouts_unavailable means Stripe offers no payout path to the account's country yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PayoutApi.new

begin
  # Your Stripe payout account: status, country, agreement and payout currency.
  result = api_instance.get_payout_connect
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_connect: #{e}"
end
```

#### Using the get_payout_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutConnectResponse>, Integer, Hash)> get_payout_connect_with_http_info

```ruby
begin
  # Your Stripe payout account: status, country, agreement and payout currency.
  data, status_code, headers = api_instance.get_payout_connect_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutConnectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_connect_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPayoutConnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_estimate

> <GetPayoutEstimateResponse> get_payout_estimate

What one platform nets at a given price, after fees and shipping.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PayoutApi.new

begin
  # What one platform nets at a given price, after fees and shipping.
  result = api_instance.get_payout_estimate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_estimate: #{e}"
end
```

#### Using the get_payout_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutEstimateResponse>, Integer, Hash)> get_payout_estimate_with_http_info

```ruby
begin
  # What one platform nets at a given price, after fees and shipping.
  data, status_code, headers = api_instance.get_payout_estimate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutEstimateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_estimate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPayoutEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_gross_for_net

> <GetPayoutGrossForNetResponse> get_payout_gross_for_net

The gross price needed to clear a target net on one platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PayoutApi.new

begin
  # The gross price needed to clear a target net on one platform.
  result = api_instance.get_payout_gross_for_net
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_gross_for_net: #{e}"
end
```

#### Using the get_payout_gross_for_net_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutGrossForNetResponse>, Integer, Hash)> get_payout_gross_for_net_with_http_info

```ruby
begin
  # The gross price needed to clear a target net on one platform.
  data, status_code, headers = api_instance.get_payout_gross_for_net_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutGrossForNetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_gross_for_net_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPayoutGrossForNetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payout_compare

> <ListPayoutCompareResponse> list_payout_compare

Rank platforms by what they net at a given price. Defaults to connected ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PayoutApi.new

begin
  # Rank platforms by what they net at a given price. Defaults to connected ones.
  result = api_instance.list_payout_compare
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->list_payout_compare: #{e}"
end
```

#### Using the list_payout_compare_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPayoutCompareResponse>, Integer, Hash)> list_payout_compare_with_http_info

```ruby
begin
  # Rank platforms by what they net at a given price. Defaults to connected ones.
  data, status_code, headers = api_instance.list_payout_compare_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPayoutCompareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->list_payout_compare_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPayoutCompareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

