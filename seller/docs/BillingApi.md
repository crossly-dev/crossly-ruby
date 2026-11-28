# Crossly::BillingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billing_upgrade**](BillingApi.md#create_billing_upgrade) | **POST** /v1/billing/upgrade | Start an upgrade of a store&#39;s plan. |
| [**get_billing_usage**](BillingApi.md#get_billing_usage) | **GET** /v1/billing/usage | A store&#39;s plan and its usage against the plan&#39;s limits (used of limit, per metered limit). |
| [**list_billing_app_allowances**](BillingApi.md#list_billing_app_allowances) | **GET** /v1/billing/app-allowances | Your listing allowances through OAuth apps (used of limit, per app, with its platform scope). |
| [**list_billing_invoices**](BillingApi.md#list_billing_invoices) | **GET** /v1/billing/invoices | List a store&#39;s plan invoices, newest first, with search and filters. |
| [**list_billing_plans**](BillingApi.md#list_billing_plans) | **GET** /v1/billing/plans | List the plans with their prices, limits and features. |


## create_billing_upgrade

> <CreateBillingUpgradeResponse> create_billing_upgrade(create_billing_upgrade_request)

Start an upgrade of a store's plan.

Returns a Stripe Checkout URL. Nothing is charged by this call — a person completes the payment. Downgrades and cancellation are not available to a token at all; they stay with the account owner. Every store has its own plan: the store is `X-Storefront-Id` (omitted: the default store). A store already on a plan answers 409 (change it in Billing); a store sharing a grandfathered plan can pass `separate: true` to take its own.

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
  # Start an upgrade of a store's plan.
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
  # Start an upgrade of a store's plan.
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


## get_billing_usage

> <GetBillingUsageResponse> get_billing_usage

A store's plan and its usage against the plan's limits (used of limit, per metered limit).

The store is `X-Storefront-Id` (omitted: the default store). `pooled` is true when one plan covers several stores and its limits are shared by them; `used` is then the sum across those stores. A null `limit` means no cap. `upgradeTier` is the cheapest plan that raises a limit; `resetsAt` is when a monthly count starts again (null for a standing count). A teammate's token needs a billing grant on that store.

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
  # A store's plan and its usage against the plan's limits (used of limit, per metered limit).
  result = api_instance.get_billing_usage
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->get_billing_usage: #{e}"
end
```

#### Using the get_billing_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBillingUsageResponse>, Integer, Hash)> get_billing_usage_with_http_info

```ruby
begin
  # A store's plan and its usage against the plan's limits (used of limit, per metered limit).
  data, status_code, headers = api_instance.get_billing_usage_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBillingUsageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->get_billing_usage_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBillingUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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


## list_billing_invoices

> <ListBillingInvoicesResponse> list_billing_invoices(opts)

List a store's plan invoices, newest first, with search and filters.

The store is `X-Storefront-Id` (omitted: the default store). Filters: `status`, `from`/`to` (YYYY-MM-DD, inclusive, UTC), `min`/`max` (amount in cents), `q` (part of the invoice number). Paged by `cursor`: pass `meta.nextCursor` of the previous page; null means the last page. Amounts are cents in `currency`.

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
opts = {
  cursor: 'cursor_example', # String | 
  status: 'draft', # String | 
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  min: 56, # Integer | 
  max: 56, # Integer | 
  q: 'q_example', # String | 
  limit: 56 # Integer | 
}

begin
  # List a store's plan invoices, newest first, with search and filters.
  result = api_instance.list_billing_invoices(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_invoices: #{e}"
end
```

#### Using the list_billing_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBillingInvoicesResponse>, Integer, Hash)> list_billing_invoices_with_http_info(opts)

```ruby
begin
  # List a store's plan invoices, newest first, with search and filters.
  data, status_code, headers = api_instance.list_billing_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBillingInvoicesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BillingApi->list_billing_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **min** | **Integer** |  | [optional] |
| **max** | **Integer** |  | [optional] |
| **q** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListBillingInvoicesResponse**

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

