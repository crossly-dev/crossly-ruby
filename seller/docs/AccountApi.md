# Crossly::AccountApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account_cancel_deletion**](AccountApi.md#create_account_cancel_deletion) | **POST** /v1/account/cancel-deletion | Cancel a pending account deletion. |
| [**create_account_logout_all**](AccountApi.md#create_account_logout_all) | **POST** /v1/account/logout-all | Revoke every browser auth session for this user. |
| [**create_account_request_deletion**](AccountApi.md#create_account_request_deletion) | **POST** /v1/account/request-deletion | Schedule account deletion after a grace period. |
| [**delete_auth_session**](AccountApi.md#delete_auth_session) | **DELETE** /v1/auth/sessions | Revoke all active browser sessions. |
| [**delete_auth_session_by_session_id**](AccountApi.md#delete_auth_session_by_session_id) | **DELETE** /v1/auth/sessions/{sessionId} | Revoke a single browser session by id. |
| [**delete_connected_app**](AccountApi.md#delete_connected_app) | **DELETE** /v1/connected-apps/{grantId} | Disconnect a third-party app. Its tokens stop working immediately. |
| [**get_account_deletion_status**](AccountApi.md#get_account_deletion_status) | **GET** /v1/account/deletion-status | Get the currently-pending deletion request, if any. |
| [**get_me**](AccountApi.md#get_me) | **GET** /v1/me | Identity check — authenticated user + PAT scopes + account state. |
| [**list_auth_sessions**](AccountApi.md#list_auth_sessions) | **GET** /v1/auth/sessions | List active browser auth sessions. |
| [**list_connected_apps**](AccountApi.md#list_connected_apps) | **GET** /v1/connected-apps | List third-party OAuth apps with access to this account. |


## create_account_cancel_deletion

> <CreateAccountCancelDeletionResponse> create_account_cancel_deletion

Cancel a pending account deletion.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Cancel a pending account deletion.
  result = api_instance.create_account_cancel_deletion
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_cancel_deletion: #{e}"
end
```

#### Using the create_account_cancel_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountCancelDeletionResponse>, Integer, Hash)> create_account_cancel_deletion_with_http_info

```ruby
begin
  # Cancel a pending account deletion.
  data, status_code, headers = api_instance.create_account_cancel_deletion_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountCancelDeletionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_cancel_deletion_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAccountCancelDeletionResponse**](CreateAccountCancelDeletionResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_account_logout_all

> <CreateAccountLogoutAllResponse> create_account_logout_all

Revoke every browser auth session for this user.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Revoke every browser auth session for this user.
  result = api_instance.create_account_logout_all
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_logout_all: #{e}"
end
```

#### Using the create_account_logout_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountLogoutAllResponse>, Integer, Hash)> create_account_logout_all_with_http_info

```ruby
begin
  # Revoke every browser auth session for this user.
  data, status_code, headers = api_instance.create_account_logout_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountLogoutAllResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_logout_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAccountLogoutAllResponse**](CreateAccountLogoutAllResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_account_request_deletion

> <CreateAccountRequestDeletionResponse> create_account_request_deletion

Schedule account deletion after a grace period.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Schedule account deletion after a grace period.
  result = api_instance.create_account_request_deletion
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_request_deletion: #{e}"
end
```

#### Using the create_account_request_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountRequestDeletionResponse>, Integer, Hash)> create_account_request_deletion_with_http_info

```ruby
begin
  # Schedule account deletion after a grace period.
  data, status_code, headers = api_instance.create_account_request_deletion_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountRequestDeletionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_request_deletion_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAccountRequestDeletionResponse**](CreateAccountRequestDeletionResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_auth_session

> <DeleteAuthSessionResponse> delete_auth_session

Revoke all active browser sessions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Revoke all active browser sessions.
  result = api_instance.delete_auth_session
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session: #{e}"
end
```

#### Using the delete_auth_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAuthSessionResponse>, Integer, Hash)> delete_auth_session_with_http_info

```ruby
begin
  # Revoke all active browser sessions.
  data, status_code, headers = api_instance.delete_auth_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAuthSessionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeleteAuthSessionResponse**](DeleteAuthSessionResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_auth_session_by_session_id

> <DeleteAuthSessionBySessionIdResponse> delete_auth_session_by_session_id(session_id)

Revoke a single browser session by id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
session_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Revoke a single browser session by id.
  result = api_instance.delete_auth_session_by_session_id(session_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_by_session_id: #{e}"
end
```

#### Using the delete_auth_session_by_session_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAuthSessionBySessionIdResponse>, Integer, Hash)> delete_auth_session_by_session_id_with_http_info(session_id)

```ruby
begin
  # Revoke a single browser session by id.
  data, status_code, headers = api_instance.delete_auth_session_by_session_id_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAuthSessionBySessionIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_by_session_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** |  |  |

### Return type

[**DeleteAuthSessionBySessionIdResponse**](DeleteAuthSessionBySessionIdResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connected_app

> <DeleteConnectedAppResponse> delete_connected_app(grant_id)

Disconnect a third-party app. Its tokens stop working immediately.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
grant_id = 'grant_id_example' # String | 

begin
  # Disconnect a third-party app. Its tokens stop working immediately.
  result = api_instance.delete_connected_app(grant_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_connected_app: #{e}"
end
```

#### Using the delete_connected_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectedAppResponse>, Integer, Hash)> delete_connected_app_with_http_info(grant_id)

```ruby
begin
  # Disconnect a third-party app. Its tokens stop working immediately.
  data, status_code, headers = api_instance.delete_connected_app_with_http_info(grant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectedAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_connected_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_id** | **String** |  |  |

### Return type

[**DeleteConnectedAppResponse**](DeleteConnectedAppResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_deletion_status

> <GetAccountDeletionStatusResponse> get_account_deletion_status

Get the currently-pending deletion request, if any.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Get the currently-pending deletion request, if any.
  result = api_instance.get_account_deletion_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_deletion_status: #{e}"
end
```

#### Using the get_account_deletion_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDeletionStatusResponse>, Integer, Hash)> get_account_deletion_status_with_http_info

```ruby
begin
  # Get the currently-pending deletion request, if any.
  data, status_code, headers = api_instance.get_account_deletion_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDeletionStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_deletion_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccountDeletionStatusResponse**](GetAccountDeletionStatusResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_me

> <InlineResponse200> get_me

Identity check — authenticated user + PAT scopes + account state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Identity check — authenticated user + PAT scopes + account state.
  result = api_instance.get_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> get_me_with_http_info

```ruby
begin
  # Identity check — authenticated user + PAT scopes + account state.
  data, status_code, headers = api_instance.get_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_auth_sessions

> <V1List> list_auth_sessions

List active browser auth sessions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # List active browser auth sessions.
  result = api_instance.list_auth_sessions
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_auth_sessions: #{e}"
end
```

#### Using the list_auth_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_auth_sessions_with_http_info

```ruby
begin
  # List active browser auth sessions.
  data, status_code, headers = api_instance.list_auth_sessions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_auth_sessions_with_http_info: #{e}"
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


## list_connected_apps

> <V1List> list_connected_apps

List third-party OAuth apps with access to this account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # List third-party OAuth apps with access to this account.
  result = api_instance.list_connected_apps
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_connected_apps: #{e}"
end
```

#### Using the list_connected_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_connected_apps_with_http_info

```ruby
begin
  # List third-party OAuth apps with access to this account.
  data, status_code, headers = api_instance.list_connected_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_connected_apps_with_http_info: #{e}"
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

