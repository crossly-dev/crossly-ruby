# Crossly::IntegrationsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_notification_integration**](IntegrationsApi.md#create_notification_integration) | **POST** /v1/notification-integrations | Add a Slack/Discord/Webhook destination. |
| [**create_notification_integration_test**](IntegrationsApi.md#create_notification_integration_test) | **POST** /v1/notification-integrations/{id}/test | Fire a canned test message to a notification destination. |
| [**delete_notification_integration**](IntegrationsApi.md#delete_notification_integration) | **DELETE** /v1/notification-integrations/{id} | Delete a notification destination. |
| [**list_notification_integrations**](IntegrationsApi.md#list_notification_integrations) | **GET** /v1/notification-integrations | List Slack/Discord/Webhook destinations for notify.* automation actions. |
| [**update_notification_integration**](IntegrationsApi.md#update_notification_integration) | **PATCH** /v1/notification-integrations/{id} | Edit a notification destination. |


## create_notification_integration

> <CreateNotificationIntegrationResponse> create_notification_integration

Add a Slack/Discord/Webhook destination.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # Add a Slack/Discord/Webhook destination.
  result = api_instance.create_notification_integration
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration: #{e}"
end
```

#### Using the create_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotificationIntegrationResponse>, Integer, Hash)> create_notification_integration_with_http_info

```ruby
begin
  # Add a Slack/Discord/Webhook destination.
  data, status_code, headers = api_instance.create_notification_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotificationIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateNotificationIntegrationResponse**](CreateNotificationIntegrationResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_notification_integration_test

> <CreateNotificationIntegrationTestResponse> create_notification_integration_test(id)

Fire a canned test message to a notification destination.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Fire a canned test message to a notification destination.
  result = api_instance.create_notification_integration_test(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_test: #{e}"
end
```

#### Using the create_notification_integration_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotificationIntegrationTestResponse>, Integer, Hash)> create_notification_integration_test_with_http_info(id)

```ruby
begin
  # Fire a canned test message to a notification destination.
  data, status_code, headers = api_instance.create_notification_integration_test_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotificationIntegrationTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateNotificationIntegrationTestResponse**](CreateNotificationIntegrationTestResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_notification_integration

> <DeleteNotificationIntegrationResponse> delete_notification_integration(id)

Delete a notification destination.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a notification destination.
  result = api_instance.delete_notification_integration(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_notification_integration: #{e}"
end
```

#### Using the delete_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteNotificationIntegrationResponse>, Integer, Hash)> delete_notification_integration_with_http_info(id)

```ruby
begin
  # Delete a notification destination.
  data, status_code, headers = api_instance.delete_notification_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteNotificationIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_notification_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteNotificationIntegrationResponse**](DeleteNotificationIntegrationResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_notification_integrations

> <V1List> list_notification_integrations

List Slack/Discord/Webhook destinations for notify.* automation actions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # List Slack/Discord/Webhook destinations for notify.* automation actions.
  result = api_instance.list_notification_integrations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_notification_integrations: #{e}"
end
```

#### Using the list_notification_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_notification_integrations_with_http_info

```ruby
begin
  # List Slack/Discord/Webhook destinations for notify.* automation actions.
  data, status_code, headers = api_instance.list_notification_integrations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_notification_integrations_with_http_info: #{e}"
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


## update_notification_integration

> <UpdateNotificationIntegrationResponse> update_notification_integration(id)

Edit a notification destination.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit a notification destination.
  result = api_instance.update_notification_integration(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_notification_integration: #{e}"
end
```

#### Using the update_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateNotificationIntegrationResponse>, Integer, Hash)> update_notification_integration_with_http_info(id)

```ruby
begin
  # Edit a notification destination.
  data, status_code, headers = api_instance.update_notification_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateNotificationIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_notification_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateNotificationIntegrationResponse**](UpdateNotificationIntegrationResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

