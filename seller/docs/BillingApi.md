# Crossly::BillingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billing_upgrade**](BillingApi.md#create_billing_upgrade) | **POST** /v1/billing/upgrade | Start an upgrade to a higher plan. |


## create_billing_upgrade

> <CreateBillingUpgradeResponse> create_billing_upgrade(inline_object)

Start an upgrade to a higher plan.

Returns a Stripe Checkout URL. Nothing is charged by this call — a person completes the payment. Downgrades and cancellation are not available to a token at all; they stay with the account owner.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BillingApi.new
inline_object = Crossly::InlineObject.new({tier: 'starter'}) # InlineObject | 

begin
  # Start an upgrade to a higher plan.
  result = api_instance.create_billing_upgrade(inline_object)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->create_billing_upgrade: #{e}"
end
```

#### Using the create_billing_upgrade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBillingUpgradeResponse>, Integer, Hash)> create_billing_upgrade_with_http_info(inline_object)

```ruby
begin
  # Start an upgrade to a higher plan.
  data, status_code, headers = api_instance.create_billing_upgrade_with_http_info(inline_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBillingUpgradeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->create_billing_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object** | [**InlineObject**](InlineObject.md) |  |  |

### Return type

[**CreateBillingUpgradeResponse**](CreateBillingUpgradeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

