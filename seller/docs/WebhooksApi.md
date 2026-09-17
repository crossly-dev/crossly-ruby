# Crossly::WebhooksApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v1/webhooks | Register a webhook endpoint (returns the signing secret once). |
| [**create_webhook_test**](WebhooksApi.md#create_webhook_test) | **POST** /v1/webhooks/{id}/test | Fire a synthetic test.ping delivery to one webhook. |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v1/webhooks/{id} | Delete a webhook endpoint. |
| [**get_webhook_stream**](WebhooksApi.md#get_webhook_stream) | **GET** /v1/webhooks/stream | Stream this account&#39;s webhook events as they happen (SSE). |
| [**list_webhooks**](WebhooksApi.md#list_webhooks) | **GET** /v1/webhooks | List your registered webhook endpoints. |


## create_webhook

> <CreateWebhookResponse> create_webhook

Register a webhook endpoint (returns the signing secret once).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WebhooksApi.new

begin
  # Register a webhook endpoint (returns the signing secret once).
  result = api_instance.create_webhook
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookResponse>, Integer, Hash)> create_webhook_with_http_info

```ruby
begin
  # Register a webhook endpoint (returns the signing secret once).
  data, status_code, headers = api_instance.create_webhook_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateWebhookResponse**](CreateWebhookResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_webhook_test

> <CreateWebhookTestResponse> create_webhook_test(id)

Fire a synthetic test.ping delivery to one webhook.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WebhooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Fire a synthetic test.ping delivery to one webhook.
  result = api_instance.create_webhook_test(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_test: #{e}"
end
```

#### Using the create_webhook_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookTestResponse>, Integer, Hash)> create_webhook_test_with_http_info(id)

```ruby
begin
  # Fire a synthetic test.ping delivery to one webhook.
  data, status_code, headers = api_instance.create_webhook_test_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateWebhookTestResponse**](CreateWebhookTestResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_webhook

> <DeleteWebhookResponse> delete_webhook(id)

Delete a webhook endpoint.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WebhooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a webhook endpoint.
  result = api_instance.delete_webhook(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWebhookResponse>, Integer, Hash)> delete_webhook_with_http_info(id)

```ruby
begin
  # Delete a webhook endpoint.
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWebhookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteWebhookResponse**](DeleteWebhookResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_stream

> String get_webhook_stream

Stream this account's webhook events as they happen (SSE).

A long-lived text/event-stream. Each event is one `data:` line of JSON: {eventName, eventId, createdAt, payload}. Used by `crossly dev` to forward live events to a local URL without exposing the machine to the internet. Does not replay history — you see what happens from the moment you connect.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WebhooksApi.new

begin
  # Stream this account's webhook events as they happen (SSE).
  result = api_instance.get_webhook_stream
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_stream: #{e}"
end
```

#### Using the get_webhook_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_webhook_stream_with_http_info

```ruby
begin
  # Stream this account's webhook events as they happen (SSE).
  data, status_code, headers = api_instance.get_webhook_stream_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_stream_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json


## list_webhooks

> <V1List> list_webhooks

List your registered webhook endpoints.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WebhooksApi.new

begin
  # List your registered webhook endpoints.
  result = api_instance.list_webhooks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks: #{e}"
end
```

#### Using the list_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_webhooks_with_http_info

```ruby
begin
  # List your registered webhook endpoints.
  data, status_code, headers = api_instance.list_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_with_http_info: #{e}"
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

