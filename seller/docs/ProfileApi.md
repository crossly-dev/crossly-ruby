# Crossly::ProfileApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_me**](ProfileApi.md#update_me) | **PATCH** /v1/me | Update the authenticated user&#39;s profile (display name, etc). |


## update_me

> <UpdateMeResponse> update_me

Update the authenticated user's profile (display name, etc).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new

begin
  # Update the authenticated user's profile (display name, etc).
  result = api_instance.update_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_me: #{e}"
end
```

#### Using the update_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateMeResponse>, Integer, Hash)> update_me_with_http_info

```ruby
begin
  # Update the authenticated user's profile (display name, etc).
  data, status_code, headers = api_instance.update_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UpdateMeResponse**](UpdateMeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

