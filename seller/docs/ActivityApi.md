# Crossly::ActivityApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_action_log**](ActivityApi.md#get_action_log) | **GET** /v1/action-log/{id} | Get one action-log event by id (ownership-checked). |
| [**get_action_log_facet**](ActivityApi.md#get_action_log_facet) | **GET** /v1/action-log/facets | Distinct platforms / actions / categories present in the caller&#39;s action log (last 90 days) — powers filter dropdowns before you query. |
| [**list_action_log**](ActivityApi.md#list_action_log) | **GET** /v1/action-log | List action-log events — the semantic \&quot;what happened\&quot; record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window. |
| [**list_action_log_calls**](ActivityApi.md#list_action_log_calls) | **GET** /v1/action-log/{id}/calls | The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \&quot;what was sent / what went wrong\&quot;. |


## get_action_log

> <GetActionLogResponse> get_action_log(id)

Get one action-log event by id (ownership-checked).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one action-log event by id (ownership-checked).
  result = api_instance.get_action_log(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log: #{e}"
end
```

#### Using the get_action_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogResponse>, Integer, Hash)> get_action_log_with_http_info(id)

```ruby
begin
  # Get one action-log event by id (ownership-checked).
  data, status_code, headers = api_instance.get_action_log_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetActionLogResponse**](GetActionLogResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action_log_facet

> <GetActionLogFacetResponse> get_action_log_facet

Distinct platforms / actions / categories present in the caller's action log (last 90 days) — powers filter dropdowns before you query.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new

begin
  # Distinct platforms / actions / categories present in the caller's action log (last 90 days) — powers filter dropdowns before you query.
  result = api_instance.get_action_log_facet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_facet: #{e}"
end
```

#### Using the get_action_log_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogFacetResponse>, Integer, Hash)> get_action_log_facet_with_http_info

```ruby
begin
  # Distinct platforms / actions / categories present in the caller's action log (last 90 days) — powers filter dropdowns before you query.
  data, status_code, headers = api_instance.get_action_log_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogFacetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetActionLogFacetResponse**](GetActionLogFacetResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_log

> <V1List> list_action_log(opts)

List action-log events — the semantic \"what happened\" record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  platform: 'platform_example', # String | 
  action: 'action_example', # String | 
  category: 'category_example', # String | 
  status: 'status_example', # String | 
  source: 'source_example', # String | 
  target_type: 'target_type_example', # String | 
  target_id: 'target_id_example', # String | 
  since: 'since_example', # String | ISO lower bound (inclusive) on created_at.
  _until: '_until_example', # String | ISO upper bound (exclusive) on created_at.
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # List action-log events — the semantic \"what happened\" record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.
  result = api_instance.list_action_log(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log: #{e}"
end
```

#### Using the list_action_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_action_log_with_http_info(opts)

```ruby
begin
  # List action-log events — the semantic \"what happened\" record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.
  data, status_code, headers = api_instance.list_action_log_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **target_type** | **String** |  | [optional] |
| **target_id** | **String** |  | [optional] |
| **since** | **String** | ISO lower bound (inclusive) on created_at. | [optional] |
| **_until** | **String** | ISO upper bound (exclusive) on created_at. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **offset** | **Integer** |  | [optional][default to 0] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_log_calls

> <V1List> list_action_log_calls(id)

The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \"what was sent / what went wrong\".

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \"what was sent / what went wrong\".
  result = api_instance.list_action_log_calls(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_calls: #{e}"
end
```

#### Using the list_action_log_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_action_log_calls_with_http_info(id)

```ruby
begin
  # The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \"what was sent / what went wrong\".
  data, status_code, headers = api_instance.list_action_log_calls_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

