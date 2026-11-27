# Crossly::PayoutApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payout_connect_onboard**](PayoutApi.md#create_payout_connect_onboard) | **POST** /v1/payout/connect/onboard | Start or resume payout-account onboarding; returns a Stripe-hosted URL. |
| [**create_payout_identity_link**](PayoutApi.md#create_payout_identity_link) | **POST** /v1/payouts/identity/link | Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs. |
| [**create_payout_payout**](PayoutApi.md#create_payout_payout) | **POST** /v1/payout/payouts | Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only). |
| [**get_payout_connect**](PayoutApi.md#get_payout_connect) | **GET** /v1/payout/connect | Your Stripe payout account: status, country, agreement and payout currency. |
| [**get_payout_estimate**](PayoutApi.md#get_payout_estimate) | **GET** /v1/payout/estimate | What one platform nets at a given price, after fees and shipping. |
| [**get_payout_gross_for_net**](PayoutApi.md#get_payout_gross_for_net) | **GET** /v1/payout/gross-for-net | The gross price needed to clear a target net on one platform. |
| [**get_payout_identity**](PayoutApi.md#get_payout_identity) | **GET** /v1/payouts/identity | Stripe&#39;s verification of your payout account: status and what Stripe still needs, in plain words. |
| [**get_payout_wallet**](PayoutApi.md#get_payout_wallet) | **GET** /v1/payout/wallet | Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions. |
| [**list_payout_compare**](PayoutApi.md#list_payout_compare) | **GET** /v1/payout/compare | Rank platforms by what they net at a given price. Defaults to connected ones. |
| [**update_payout_schedule**](PayoutApi.md#update_payout_schedule) | **PUT** /v1/payout/schedule | Change the automatic payout schedule. |


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


## create_payout_identity_link

> <CreatePayoutIdentityLinkResponse> create_payout_identity_link(create_payout_connect_onboard_request)

Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.

Creates the payout account first when there is none (country: ISO alpha-2, default the ship-from country). type is account_onboarding (Stripe shows only what is outstanding) or account_update. The link expires in minutes; ask for a new one rather than storing it. Nothing changes until a person completes it.

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
  # Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.
  result = api_instance.create_payout_identity_link(create_payout_connect_onboard_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_identity_link: #{e}"
end
```

#### Using the create_payout_identity_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayoutIdentityLinkResponse>, Integer, Hash)> create_payout_identity_link_with_http_info(create_payout_connect_onboard_request)

```ruby
begin
  # Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.
  data, status_code, headers = api_instance.create_payout_identity_link_with_http_info(create_payout_connect_onboard_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayoutIdentityLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_identity_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payout_connect_onboard_request** | **CreatePayoutConnectOnboardRequest** |  |  |

### Return type

**CreatePayoutIdentityLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payout_payout

> <CreatePayoutPayoutResponse> create_payout_payout(create_payout_payout_request)

Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).

amountCents defaults to everything eligible. Pass idempotencyKey so a retry is the same payout. Returns { payout, feeCents }. 409 when the account cannot be paid or instant is unavailable.

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
create_payout_payout_request = Crossly::CreatePayoutPayoutRequest.new({method: 'instant'}) # CreatePayoutPayoutRequest | 

begin
  # Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).
  result = api_instance.create_payout_payout(create_payout_payout_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_payout: #{e}"
end
```

#### Using the create_payout_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayoutPayoutResponse>, Integer, Hash)> create_payout_payout_with_http_info(create_payout_payout_request)

```ruby
begin
  # Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).
  data, status_code, headers = api_instance.create_payout_payout_with_http_info(create_payout_payout_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayoutPayoutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->create_payout_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payout_payout_request** | **CreatePayoutPayoutRequest** |  |  |

### Return type

**CreatePayoutPayoutResponse**

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


## get_payout_identity

> <GetPayoutIdentityResponse> get_payout_identity(opts)

Stripe's verification of your payout account: status and what Stripe still needs, in plain words.

status is not_started, pending (Stripe is checking), action_required (dueNow lists what to add), verified (payouts on) or restricted (disabledReasonText says why). dueNow / dueLater / inReview are Stripe's requirement keys as plain-words lines ({ keys, label }); errors carry Stripe's reason. Cached up to 60 s; fresh=1 re-reads Stripe. Payouts are gated on payoutsEnabled only.

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
opts = {
  fresh: '0' # String | 
}

begin
  # Stripe's verification of your payout account: status and what Stripe still needs, in plain words.
  result = api_instance.get_payout_identity(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_identity: #{e}"
end
```

#### Using the get_payout_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutIdentityResponse>, Integer, Hash)> get_payout_identity_with_http_info(opts)

```ruby
begin
  # Stripe's verification of your payout account: status and what Stripe still needs, in plain words.
  data, status_code, headers = api_instance.get_payout_identity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutIdentityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fresh** | **String** |  | [optional] |

### Return type

**GetPayoutIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_wallet

> <GetPayoutWalletResponse> get_payout_wallet

Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.

connected:false (with defaultCountry) before onboarding. balance has availableCents, pendingCents and instantAvailableCents in the account currency. instant.available says whether an instant payout can be made now, with feeCents/netCents for the full instant-available amount and reason when not.

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
  # Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.
  result = api_instance.get_payout_wallet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_wallet: #{e}"
end
```

#### Using the get_payout_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutWalletResponse>, Integer, Hash)> get_payout_wallet_with_http_info

```ruby
begin
  # Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.
  data, status_code, headers = api_instance.get_payout_wallet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutWalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->get_payout_wallet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPayoutWalletResponse**

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


## update_payout_schedule

> <UpdatePayoutScheduleResponse> update_payout_schedule(update_payout_schedule_request)

Change the automatic payout schedule.

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
update_payout_schedule_request = Crossly::UpdatePayoutScheduleRequest.new({interval: 'manual'}) # UpdatePayoutScheduleRequest | 

begin
  # Change the automatic payout schedule.
  result = api_instance.update_payout_schedule(update_payout_schedule_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->update_payout_schedule: #{e}"
end
```

#### Using the update_payout_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePayoutScheduleResponse>, Integer, Hash)> update_payout_schedule_with_http_info(update_payout_schedule_request)

```ruby
begin
  # Change the automatic payout schedule.
  data, status_code, headers = api_instance.update_payout_schedule_with_http_info(update_payout_schedule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePayoutScheduleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PayoutApi->update_payout_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_payout_schedule_request** | **UpdatePayoutScheduleRequest** |  |  |

### Return type

**UpdatePayoutScheduleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

