# Crossly::GroupBuysApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_buy**](GroupBuysApi.md#create_group_buy) | **POST** /v1/group-buys | Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays. |


## create_group_buy

> <CreateBreakResponse> create_group_buy

Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.

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
  # Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.
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
  # Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.
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

