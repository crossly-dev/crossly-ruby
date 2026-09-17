# Crossly::PayoutApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payout_estimate**](PayoutApi.md#get_payout_estimate) | **GET** /v1/payout/estimate | What one platform nets at a given price, after fees and shipping. |
| [**get_payout_gross_for_net**](PayoutApi.md#get_payout_gross_for_net) | **GET** /v1/payout/gross-for-net | The gross price needed to clear a target net on one platform. |
| [**list_payout_compare**](PayoutApi.md#list_payout_compare) | **GET** /v1/payout/compare | Rank platforms by what they net at a given price. Defaults to connected ones. |


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

[**GetPayoutEstimateResponse**](GetPayoutEstimateResponse.md)

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

[**GetPayoutGrossForNetResponse**](GetPayoutGrossForNetResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payout_compare

> <V1List> list_payout_compare

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

> <Array(<V1List>, Integer, Hash)> list_payout_compare_with_http_info

```ruby
begin
  # Rank platforms by what they net at a given price. Defaults to connected ones.
  data, status_code, headers = api_instance.list_payout_compare_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->list_payout_compare_with_http_info: #{e}"
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

