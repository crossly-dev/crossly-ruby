# Crossly::MobileApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mobile_push_test**](MobileApi.md#create_mobile_push_test) | **POST** /v1/mobile/push-test | Fire a no-op test push to this user&#39;s devices. |
| [**create_mobile_push_token**](MobileApi.md#create_mobile_push_token) | **POST** /v1/mobile/push-token | Register an Expo push token for this user. |
| [**delete_mobile_push_token**](MobileApi.md#delete_mobile_push_token) | **DELETE** /v1/mobile/push-tokens | Clear ALL registered push tokens for this user. |
| [**list_mobile_push_tokens**](MobileApi.md#list_mobile_push_tokens) | **GET** /v1/mobile/push-tokens | List registered Expo push tokens (masked). |


## create_mobile_push_test

> <CreateMobilePushTestResponse> create_mobile_push_test

Fire a no-op test push to this user's devices.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MobileApi.new

begin
  # Fire a no-op test push to this user's devices.
  result = api_instance.create_mobile_push_test
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->create_mobile_push_test: #{e}"
end
```

#### Using the create_mobile_push_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMobilePushTestResponse>, Integer, Hash)> create_mobile_push_test_with_http_info

```ruby
begin
  # Fire a no-op test push to this user's devices.
  data, status_code, headers = api_instance.create_mobile_push_test_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMobilePushTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->create_mobile_push_test_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateMobilePushTestResponse**](CreateMobilePushTestResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_mobile_push_token

> <CreateMobilePushTokenResponse> create_mobile_push_token

Register an Expo push token for this user.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MobileApi.new

begin
  # Register an Expo push token for this user.
  result = api_instance.create_mobile_push_token
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->create_mobile_push_token: #{e}"
end
```

#### Using the create_mobile_push_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMobilePushTokenResponse>, Integer, Hash)> create_mobile_push_token_with_http_info

```ruby
begin
  # Register an Expo push token for this user.
  data, status_code, headers = api_instance.create_mobile_push_token_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMobilePushTokenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->create_mobile_push_token_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateMobilePushTokenResponse**](CreateMobilePushTokenResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mobile_push_token

> <DeleteMobilePushTokenResponse> delete_mobile_push_token

Clear ALL registered push tokens for this user.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MobileApi.new

begin
  # Clear ALL registered push tokens for this user.
  result = api_instance.delete_mobile_push_token
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->delete_mobile_push_token: #{e}"
end
```

#### Using the delete_mobile_push_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteMobilePushTokenResponse>, Integer, Hash)> delete_mobile_push_token_with_http_info

```ruby
begin
  # Clear ALL registered push tokens for this user.
  data, status_code, headers = api_instance.delete_mobile_push_token_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMobilePushTokenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->delete_mobile_push_token_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeleteMobilePushTokenResponse**](DeleteMobilePushTokenResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mobile_push_tokens

> <V1List> list_mobile_push_tokens

List registered Expo push tokens (masked).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MobileApi.new

begin
  # List registered Expo push tokens (masked).
  result = api_instance.list_mobile_push_tokens
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->list_mobile_push_tokens: #{e}"
end
```

#### Using the list_mobile_push_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_mobile_push_tokens_with_http_info

```ruby
begin
  # List registered Expo push tokens (masked).
  data, status_code, headers = api_instance.list_mobile_push_tokens_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling MobileApi->list_mobile_push_tokens_with_http_info: #{e}"
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

