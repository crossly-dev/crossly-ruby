# Crossly::GroupBuysApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_buy**](GroupBuysApi.md#create_group_buy) | **POST** /v1/group-buys | Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted. |
| [**create_group_buy_cancel**](GroupBuysApi.md#create_group_buy_cancel) | **POST** /v1/group-buys/{id}/cancel | Cancel a group buy: every hold is released and every charge refunded. |
| [**create_group_buy_close**](GroupBuysApi.md#create_group_buy_close) | **POST** /v1/group-buys/{id}/close | Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply). |
| [**create_group_buy_extend**](GroupBuysApi.md#create_group_buy_extend) | **POST** /v1/group-buys/{id}/extend | Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30). |
| [**create_group_buy_message**](GroupBuysApi.md#create_group_buy_message) | **POST** /v1/group-buys/{id}/message | Send a notification to every buyer committed to the group buy. |
| [**get_group_buy**](GroupBuysApi.md#get_group_buy) | **GET** /v1/group-buys/{id} | One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed. |
| [**get_group_buy_participants_csv**](GroupBuysApi.md#get_group_buy_participants_csv) | **GET** /v1/group-buys/{id}/participants.csv | Every participant of a group buy as CSV: quantity, status, amounts and ship-to. |
| [**list_group_buys**](GroupBuysApi.md#list_group_buys) | **GET** /v1/group-buys | Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends. |
| [**update_group_buy**](GroupBuysApi.md#update_group_buy) | **PATCH** /v1/group-buys/{id} | Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits. |


## create_group_buy

> <CreateBreakResponse> create_group_buy

Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new

begin
  # Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.
  result = api_instance.create_group_buy
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy: #{e}"
end
```

#### Using the create_group_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakResponse>, Integer, Hash)> create_group_buy_with_http_info

```ruby
begin
  # Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.
  data, status_code, headers = api_instance.create_group_buy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_group_buy_cancel

> <CreateGroupBuyCancelResponse> create_group_buy_cancel(id)

Cancel a group buy: every hold is released and every charge refunded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Cancel a group buy: every hold is released and every charge refunded.
  result = api_instance.create_group_buy_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_cancel: #{e}"
end
```

#### Using the create_group_buy_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGroupBuyCancelResponse>, Integer, Hash)> create_group_buy_cancel_with_http_info(id)

```ruby
begin
  # Cancel a group buy: every hold is released and every charge refunded.
  data, status_code, headers = api_instance.create_group_buy_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGroupBuyCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateGroupBuyCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_group_buy_close

> <CreateGroupBuyCloseResponse> create_group_buy_close(id)

Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).
  result = api_instance.create_group_buy_close(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_close: #{e}"
end
```

#### Using the create_group_buy_close_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGroupBuyCloseResponse>, Integer, Hash)> create_group_buy_close_with_http_info(id)

```ruby
begin
  # Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).
  data, status_code, headers = api_instance.create_group_buy_close_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGroupBuyCloseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_close_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateGroupBuyCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_group_buy_extend

> <CreateGroupBuyExtendResponse> create_group_buy_extend(id)

Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).
  result = api_instance.create_group_buy_extend(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_extend: #{e}"
end
```

#### Using the create_group_buy_extend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGroupBuyExtendResponse>, Integer, Hash)> create_group_buy_extend_with_http_info(id)

```ruby
begin
  # Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).
  data, status_code, headers = api_instance.create_group_buy_extend_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGroupBuyExtendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_extend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateGroupBuyExtendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_group_buy_message

> <CreateGroupBuyMessageResponse> create_group_buy_message(id)

Send a notification to every buyer committed to the group buy.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Send a notification to every buyer committed to the group buy.
  result = api_instance.create_group_buy_message(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_message: #{e}"
end
```

#### Using the create_group_buy_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGroupBuyMessageResponse>, Integer, Hash)> create_group_buy_message_with_http_info(id)

```ruby
begin
  # Send a notification to every buyer committed to the group buy.
  data, status_code, headers = api_instance.create_group_buy_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGroupBuyMessageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->create_group_buy_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateGroupBuyMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_buy

> <GetGroupBuyResponse> get_group_buy(id)

One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.
  result = api_instance.get_group_buy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->get_group_buy: #{e}"
end
```

#### Using the get_group_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroupBuyResponse>, Integer, Hash)> get_group_buy_with_http_info(id)

```ruby
begin
  # One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.
  data, status_code, headers = api_instance.get_group_buy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->get_group_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_buy_participants_csv

> String get_group_buy_participants_csv(id)

Every participant of a group buy as CSV: quantity, status, amounts and ship-to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Every participant of a group buy as CSV: quantity, status, amounts and ship-to.
  result = api_instance.get_group_buy_participants_csv(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->get_group_buy_participants_csv: #{e}"
end
```

#### Using the get_group_buy_participants_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_group_buy_participants_csv_with_http_info(id)

```ruby
begin
  # Every participant of a group buy as CSV: quantity, status, amounts and ship-to.
  data, status_code, headers = api_instance.get_group_buy_participants_csv_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->get_group_buy_participants_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_group_buys

> <ListGroupBuysResponse> list_group_buys

Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new

begin
  # Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.
  result = api_instance.list_group_buys
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->list_group_buys: #{e}"
end
```

#### Using the list_group_buys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroupBuysResponse>, Integer, Hash)> list_group_buys_with_http_info

```ruby
begin
  # Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.
  data, status_code, headers = api_instance.list_group_buys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroupBuysResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->list_group_buys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListGroupBuysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group_buy

> <UpdateGroupBuyResponse> update_group_buy(id)

Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GroupBuysApi.new
id = 'id_example' # String | 

begin
  # Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.
  result = api_instance.update_group_buy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->update_group_buy: #{e}"
end
```

#### Using the update_group_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> update_group_buy_with_http_info(id)

```ruby
begin
  # Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.
  data, status_code, headers = api_instance.update_group_buy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GroupBuysApi->update_group_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

