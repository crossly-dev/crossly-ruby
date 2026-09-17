# CrosslyBuyer::BuyerCheckoutApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_checkout**](BuyerCheckoutApi.md#create_buyer_checkout) | **POST** /v1/buyer/checkout | Buy a listing without being present. |
| [**get_buyer_checkout_control**](BuyerCheckoutApi.md#get_buyer_checkout_control) | **GET** /v1/buyer/checkout/controls | What this key is allowed to spend. |
| [**update_buyer_checkout_control**](BuyerCheckoutApi.md#update_buyer_checkout_control) | **PUT** /v1/buyer/checkout/controls | Switch this key on for spending, and set its limits. |


## create_buyer_checkout

> <CreateBuyerCheckoutResponse> create_buyer_checkout

Buy a listing without being present.

An Idempotency-Key header is REQUIRED — this endpoint refuses without one, because a retried request would otherwise buy the item twice and a retry is the most likely thing an automated buyer does. Derive the key from what you are buying and reuse it across retries; a fresh random value per attempt satisfies the check and keeps the bug. The item is QUOTED first and the delivered total is checked against both your maxTotalCents and this key's limits before anything is charged. A card that demands 3-D Secure cannot be charged unattended; that answers 402 with `authentication_required` and the purchase must be finished on Crossly.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCheckoutApi.new

begin
  # Buy a listing without being present.
  result = api_instance.create_buyer_checkout
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->create_buyer_checkout: #{e}"
end
```

#### Using the create_buyer_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCheckoutResponse>, Integer, Hash)> create_buyer_checkout_with_http_info

```ruby
begin
  # Buy a listing without being present.
  data, status_code, headers = api_instance.create_buyer_checkout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCheckoutResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->create_buyer_checkout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerCheckoutResponse**](CreateBuyerCheckoutResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_checkout_control

> <GetBuyerCheckoutControlResponse> get_buyer_checkout_control

What this key is allowed to spend.

Reports the controls for the key making the call — not for your account. Every key has its own switch and its own limits.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCheckoutApi.new

begin
  # What this key is allowed to spend.
  result = api_instance.get_buyer_checkout_control
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->get_buyer_checkout_control: #{e}"
end
```

#### Using the get_buyer_checkout_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCheckoutControlResponse>, Integer, Hash)> get_buyer_checkout_control_with_http_info

```ruby
begin
  # What this key is allowed to spend.
  data, status_code, headers = api_instance.get_buyer_checkout_control_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCheckoutControlResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->get_buyer_checkout_control_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBuyerCheckoutControlResponse**](GetBuyerCheckoutControlResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_checkout_control

> <UpdateBuyerCheckoutControlResponse> update_buyer_checkout_control

Switch this key on for spending, and set its limits.

A key can only ever raise or lower ITS OWN limits, and only if the token already carries buyer:checkout:write. Turning it off takes effect immediately.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCheckoutApi.new

begin
  # Switch this key on for spending, and set its limits.
  result = api_instance.update_buyer_checkout_control
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->update_buyer_checkout_control: #{e}"
end
```

#### Using the update_buyer_checkout_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBuyerCheckoutControlResponse>, Integer, Hash)> update_buyer_checkout_control_with_http_info

```ruby
begin
  # Switch this key on for spending, and set its limits.
  data, status_code, headers = api_instance.update_buyer_checkout_control_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBuyerCheckoutControlResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCheckoutApi->update_buyer_checkout_control_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UpdateBuyerCheckoutControlResponse**](UpdateBuyerCheckoutControlResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

