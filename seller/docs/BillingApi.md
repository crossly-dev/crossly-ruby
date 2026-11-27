# Crossly::BillingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billing_upgrade**](BillingApi.md#create_billing_upgrade) | **POST** /v1/billing/upgrade | Start an upgrade to a higher plan. |
| [**list_billing_app_allowances**](BillingApi.md#list_billing_app_allowances) | **GET** /v1/billing/app-allowances | Your listing allowances through OAuth apps (used of limit, per app, with its platform scope). |
| [**list_billing_plans**](BillingApi.md#list_billing_plans) | **GET** /v1/billing/plans | List the plans with their prices, limits and features. |


## create_billing_upgrade

> <CreateBillingUpgradeResponse> create_billing_upgrade(create_billing_upgrade_request)

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
create_billing_upgrade_request = Crossly::CreateBillingUpgradeRequest.new({tier: 'starter'}) # CreateBillingUpgradeRequest | 

begin
  # Start an upgrade to a higher plan.
  result = api_instance.create_billing_upgrade(create_billing_upgrade_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->create_billing_upgrade: #{e}"
end
```

#### Using the create_billing_upgrade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBillingUpgradeResponse>, Integer, Hash)> create_billing_upgrade_with_http_info(create_billing_upgrade_request)

```ruby
begin
  # Start an upgrade to a higher plan.
  data, status_code, headers = api_instance.create_billing_upgrade_with_http_info(create_billing_upgrade_request)
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
| **create_billing_upgrade_request** | **CreateBillingUpgradeRequest** |  |  |

### Return type

**CreateBillingUpgradeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_billing_app_allowances

> <ListBillingAppAllowancesResponse> list_billing_app_allowances

Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).

Staff can let an OAuth app list above a seller's plan, counted apart from the plan's itemsPerMonth and only on the allowance's platforms. `label` is the sentence to show (12 of 10,000 managed by Infinity; ... this month via Infinity (resets Dec 1); or counts toward your plan for limitMode shared).

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

begin
  # Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).
  result = api_instance.list_billing_app_allowances
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_app_allowances: #{e}"
end
```

#### Using the list_billing_app_allowances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBillingAppAllowancesResponse>, Integer, Hash)> list_billing_app_allowances_with_http_info

```ruby
begin
  # Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).
  data, status_code, headers = api_instance.list_billing_app_allowances_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBillingAppAllowancesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_app_allowances_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBillingAppAllowancesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_billing_plans

> <ListBillingPlansResponse> list_billing_plans

List the plans with their prices, limits and features.

Prices are the Stripe Prices checkout charges (whole USD). A null limit means no cap.

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

begin
  # List the plans with their prices, limits and features.
  result = api_instance.list_billing_plans
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_plans: #{e}"
end
```

#### Using the list_billing_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBillingPlansResponse>, Integer, Hash)> list_billing_plans_with_http_info

```ruby
begin
  # List the plans with their prices, limits and features.
  data, status_code, headers = api_instance.list_billing_plans_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBillingPlansResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_plans_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBillingPlansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

