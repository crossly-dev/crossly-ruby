# Crossly::StorefrontApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_storefront_shipping**](StorefrontApi.md#get_storefront_shipping) | **GET** /v1/storefront/shipping | Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address. |
| [**update_storefront_shipping**](StorefrontApi.md#update_storefront_shipping) | **PUT** /v1/storefront/shipping | Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin). |


## get_storefront_shipping

> <GetStorefrontShippingResponse> get_storefront_shipping

Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontApi.new

begin
  # Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.
  result = api_instance.get_storefront_shipping
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontApi->get_storefront_shipping: #{e}"
end
```

#### Using the get_storefront_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontShippingResponse>, Integer, Hash)> get_storefront_shipping_with_http_info

```ruby
begin
  # Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.
  data, status_code, headers = api_instance.get_storefront_shipping_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontShippingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontApi->get_storefront_shipping_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetStorefrontShippingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_shipping

> <GetStorefrontShippingResponse> update_storefront_shipping

Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontApi.new

begin
  # Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).
  result = api_instance.update_storefront_shipping
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontApi->update_storefront_shipping: #{e}"
end
```

#### Using the update_storefront_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontShippingResponse>, Integer, Hash)> update_storefront_shipping_with_http_info

```ruby
begin
  # Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).
  data, status_code, headers = api_instance.update_storefront_shipping_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontShippingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontApi->update_storefront_shipping_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetStorefrontShippingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

