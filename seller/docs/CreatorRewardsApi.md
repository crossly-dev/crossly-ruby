# Crossly::CreatorRewardsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_creator_reward_formula**](CreatorRewardsApi.md#get_creator_reward_formula) | **GET** /v1/creator-rewards/formula | The Creator Rewards formula: the pool&#39;s share of Crossly&#39;s Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead). |
| [**get_creator_reward_me**](CreatorRewardsApi.md#get_creator_reward_me) | **GET** /v1/creator-rewards/me/{month} | One month of your Creator Rewards (YYYY-MM). |
| [**get_public_creator_reward_reconciliation**](CreatorRewardsApi.md#get_public_creator_reward_reconciliation) | **GET** /v1/public/creator-rewards/reconciliation | Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly&#39;s take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice). |
| [**list_creator_reward_me**](CreatorRewardsApi.md#list_creator_reward_me) | **GET** /v1/creator-rewards/me | Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part). |
| [**list_creator_reward_months**](CreatorRewardsApi.md#list_creator_reward_months) | **GET** /v1/creator-rewards/months | Every calculated month: Crossly&#39;s take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason. |


## get_creator_reward_formula

> <GetCreatorRewardFormulaResponse> get_creator_reward_formula

The Creator Rewards formula: the pool's share of Crossly's Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorRewardsApi.new

begin
  # The Creator Rewards formula: the pool's share of Crossly's Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).
  result = api_instance.get_creator_reward_formula
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_creator_reward_formula: #{e}"
end
```

#### Using the get_creator_reward_formula_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorRewardFormulaResponse>, Integer, Hash)> get_creator_reward_formula_with_http_info

```ruby
begin
  # The Creator Rewards formula: the pool's share of Crossly's Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).
  data, status_code, headers = api_instance.get_creator_reward_formula_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorRewardFormulaResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_creator_reward_formula_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorRewardFormulaResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_reward_me

> <GetCreatorRewardMeResponse> get_creator_reward_me(month)

One month of your Creator Rewards (YYYY-MM).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorRewardsApi.new
month = 'month_example' # String | 

begin
  # One month of your Creator Rewards (YYYY-MM).
  result = api_instance.get_creator_reward_me(month)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_creator_reward_me: #{e}"
end
```

#### Using the get_creator_reward_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorRewardMeResponse>, Integer, Hash)> get_creator_reward_me_with_http_info(month)

```ruby
begin
  # One month of your Creator Rewards (YYYY-MM).
  data, status_code, headers = api_instance.get_creator_reward_me_with_http_info(month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorRewardMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_creator_reward_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** |  |  |

### Return type

**GetCreatorRewardMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_public_creator_reward_reconciliation

> <GetPublicCreatorRewardReconciliationResponse> get_public_creator_reward_reconciliation(opts)

Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly's take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).

### Examples

```ruby
require 'time'
require 'crossly'

api_instance = Crossly::CreatorRewardsApi.new
opts = {
  limit: 56 # Integer | Months to return, newest first (default 24).
}

begin
  # Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly's take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).
  result = api_instance.get_public_creator_reward_reconciliation(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_public_creator_reward_reconciliation: #{e}"
end
```

#### Using the get_public_creator_reward_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPublicCreatorRewardReconciliationResponse>, Integer, Hash)> get_public_creator_reward_reconciliation_with_http_info(opts)

```ruby
begin
  # Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly's take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).
  data, status_code, headers = api_instance.get_public_creator_reward_reconciliation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPublicCreatorRewardReconciliationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->get_public_creator_reward_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Months to return, newest first (default 24). | [optional] |

### Return type

**GetPublicCreatorRewardReconciliationResponse**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_reward_me

> <ListCreatorRewardMeResponse> list_creator_reward_me

Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorRewardsApi.new

begin
  # Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).
  result = api_instance.list_creator_reward_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->list_creator_reward_me: #{e}"
end
```

#### Using the list_creator_reward_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorRewardMeResponse>, Integer, Hash)> list_creator_reward_me_with_http_info

```ruby
begin
  # Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).
  data, status_code, headers = api_instance.list_creator_reward_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorRewardMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->list_creator_reward_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorRewardMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_reward_months

> <ListCreatorRewardMonthsResponse> list_creator_reward_months

Every calculated month: Crossly's take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorRewardsApi.new

begin
  # Every calculated month: Crossly's take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.
  result = api_instance.list_creator_reward_months
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->list_creator_reward_months: #{e}"
end
```

#### Using the list_creator_reward_months_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorRewardMonthsResponse>, Integer, Hash)> list_creator_reward_months_with_http_info

```ruby
begin
  # Every calculated month: Crossly's take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.
  data, status_code, headers = api_instance.list_creator_reward_months_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorRewardMonthsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorRewardsApi->list_creator_reward_months_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorRewardMonthsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

