# Crossly::AccountsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account**](AccountsApi.md#create_account) | **POST** /v1/accounts | Connect a new platform account (kicks off OAuth or extension handshake). |
| [**create_connection_email_imap**](AccountsApi.md#create_connection_email_imap) | **POST** /v1/connections/email/imap | Add an IMAP mailbox connection. |
| [**create_connection_email_imap_test**](AccountsApi.md#create_connection_email_imap_test) | **POST** /v1/connections/email/imap/test | Validate IMAP credentials without persisting. |
| [**create_connection_request**](AccountsApi.md#create_connection_request) | **POST** /v1/connections/{platform}/request | Express interest in a request_only platform. |
| [**create_platform_account_connect**](AccountsApi.md#create_platform_account_connect) | **POST** /v1/platform-accounts/{platform}/connect | Revive or initiate connection for a cookie platform. |
| [**create_platform_account_disconnect**](AccountsApi.md#create_platform_account_disconnect) | **POST** /v1/platform-accounts/{platform}/disconnect | Archive every active account row for a platform. |
| [**create_platform_account_history_import**](AccountsApi.md#create_platform_account_history_import) | **POST** /v1/platform-accounts/{platform}/history-import | Set how far back to backfill order history + active listings for a platform, and run it now. |
| [**create_platform_account_refresh_status**](AccountsApi.md#create_platform_account_refresh_status) | **POST** /v1/platform-accounts/refresh-status | Run on-demand healthchecks across cookie accounts. |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{id} | Disconnect a platform account. |
| [**delete_connection_by_id**](AccountsApi.md#delete_connection_by_id) | **DELETE** /v1/connections/by-id/{id} | Disconnect a specific OAuth connection by id. |
| [**delete_connection_email_imap**](AccountsApi.md#delete_connection_email_imap) | **DELETE** /v1/connections/email/imap/{id} | Remove an IMAP mailbox connection. |
| [**get_connection_email**](AccountsApi.md#get_connection_email) | **GET** /v1/connections/email | List IMAP and email-OAuth connections. |
| [**get_connection_extension_online**](AccountsApi.md#get_connection_extension_online) | **GET** /v1/connections/extension-online | Check if the browser extension is online. |
| [**get_oauth_init**](AccountsApi.md#get_oauth_init) | **GET** /v1/oauth/{platform}/init | Return the OAuth authorize URL for an API-track platform. |
| [**get_platform_limit**](AccountsApi.md#get_platform_limit) | **GET** /v1/platforms/limits | eBay free-tier + Etsy fees aggregate. |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /v1/accounts | List your connected platform accounts. |
| [**list_connections**](AccountsApi.md#list_connections) | **GET** /v1/connections | List OAuth-connected API platforms. |
| [**update_connection_email_imap**](AccountsApi.md#update_connection_email_imap) | **PATCH** /v1/connections/email/imap/{id} | Edit an IMAP mailbox connection. |
| [**update_platform_preference**](AccountsApi.md#update_platform_preference) | **PATCH** /v1/platforms/{platform}/preferences | Update per-platform connection preferences. |


## create_account

> <CreateAccountResponse> create_account

Connect a new platform account (kicks off OAuth or extension handshake).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # Connect a new platform account (kicks off OAuth or extension handshake).
  result = api_instance.create_account
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountResponse>, Integer, Hash)> create_account_with_http_info

```ruby
begin
  # Connect a new platform account (kicks off OAuth or extension handshake).
  data, status_code, headers = api_instance.create_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAccountResponse**](CreateAccountResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_connection_email_imap

> <CreateConnectionEmailImapResponse> create_connection_email_imap

Add an IMAP mailbox connection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # Add an IMAP mailbox connection.
  result = api_instance.create_connection_email_imap
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap: #{e}"
end
```

#### Using the create_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionEmailImapResponse>, Integer, Hash)> create_connection_email_imap_with_http_info

```ruby
begin
  # Add an IMAP mailbox connection.
  data, status_code, headers = api_instance.create_connection_email_imap_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionEmailImapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateConnectionEmailImapResponse**](CreateConnectionEmailImapResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_connection_email_imap_test

> <CreateConnectionEmailImapTestResponse> create_connection_email_imap_test

Validate IMAP credentials without persisting.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # Validate IMAP credentials without persisting.
  result = api_instance.create_connection_email_imap_test
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_test: #{e}"
end
```

#### Using the create_connection_email_imap_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionEmailImapTestResponse>, Integer, Hash)> create_connection_email_imap_test_with_http_info

```ruby
begin
  # Validate IMAP credentials without persisting.
  data, status_code, headers = api_instance.create_connection_email_imap_test_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionEmailImapTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_test_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateConnectionEmailImapTestResponse**](CreateConnectionEmailImapTestResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_connection_request

> <CreateConnectionRequestResponse> create_connection_request(platform)

Express interest in a request_only platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 

begin
  # Express interest in a request_only platform.
  result = api_instance.create_connection_request(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_request: #{e}"
end
```

#### Using the create_connection_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionRequestResponse>, Integer, Hash)> create_connection_request_with_http_info(platform)

```ruby
begin
  # Express interest in a request_only platform.
  data, status_code, headers = api_instance.create_connection_request_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionRequestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

[**CreateConnectionRequestResponse**](CreateConnectionRequestResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_platform_account_connect

> <CreatePlatformAccountConnectResponse> create_platform_account_connect(platform)

Revive or initiate connection for a cookie platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 

begin
  # Revive or initiate connection for a cookie platform.
  result = api_instance.create_platform_account_connect(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_connect: #{e}"
end
```

#### Using the create_platform_account_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountConnectResponse>, Integer, Hash)> create_platform_account_connect_with_http_info(platform)

```ruby
begin
  # Revive or initiate connection for a cookie platform.
  data, status_code, headers = api_instance.create_platform_account_connect_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlatformAccountConnectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_connect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

[**CreatePlatformAccountConnectResponse**](CreatePlatformAccountConnectResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_platform_account_disconnect

> <CreatePlatformAccountDisconnectResponse> create_platform_account_disconnect(platform)

Archive every active account row for a platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 

begin
  # Archive every active account row for a platform.
  result = api_instance.create_platform_account_disconnect(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_disconnect: #{e}"
end
```

#### Using the create_platform_account_disconnect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountDisconnectResponse>, Integer, Hash)> create_platform_account_disconnect_with_http_info(platform)

```ruby
begin
  # Archive every active account row for a platform.
  data, status_code, headers = api_instance.create_platform_account_disconnect_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlatformAccountDisconnectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_disconnect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

[**CreatePlatformAccountDisconnectResponse**](CreatePlatformAccountDisconnectResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_platform_account_history_import

> <CreatePlatformAccountHistoryImportResponse> create_platform_account_history_import(platform, inline_object1)

Set how far back to backfill order history + active listings for a platform, and run it now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 
inline_object1 = Crossly::InlineObject1.new({days: 3.56}) # InlineObject1 | 

begin
  # Set how far back to backfill order history + active listings for a platform, and run it now.
  result = api_instance.create_platform_account_history_import(platform, inline_object1)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_history_import: #{e}"
end
```

#### Using the create_platform_account_history_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountHistoryImportResponse>, Integer, Hash)> create_platform_account_history_import_with_http_info(platform, inline_object1)

```ruby
begin
  # Set how far back to backfill order history + active listings for a platform, and run it now.
  data, status_code, headers = api_instance.create_platform_account_history_import_with_http_info(platform, inline_object1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlatformAccountHistoryImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_history_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **inline_object1** | [**InlineObject1**](InlineObject1.md) |  |  |

### Return type

[**CreatePlatformAccountHistoryImportResponse**](CreatePlatformAccountHistoryImportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_platform_account_refresh_status

> <CreatePlatformAccountRefreshStatusResponse> create_platform_account_refresh_status

Run on-demand healthchecks across cookie accounts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # Run on-demand healthchecks across cookie accounts.
  result = api_instance.create_platform_account_refresh_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_refresh_status: #{e}"
end
```

#### Using the create_platform_account_refresh_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountRefreshStatusResponse>, Integer, Hash)> create_platform_account_refresh_status_with_http_info

```ruby
begin
  # Run on-demand healthchecks across cookie accounts.
  data, status_code, headers = api_instance.create_platform_account_refresh_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlatformAccountRefreshStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_refresh_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreatePlatformAccountRefreshStatusResponse**](CreatePlatformAccountRefreshStatusResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_account

> <DeleteAccountResponse> delete_account(id)

Disconnect a platform account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Disconnect a platform account.
  result = api_instance.delete_account(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAccountResponse>, Integer, Hash)> delete_account_with_http_info(id)

```ruby
begin
  # Disconnect a platform account.
  data, status_code, headers = api_instance.delete_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAccountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteAccountResponse**](DeleteAccountResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_by_id

> <DeleteConnectionByIdResponse> delete_connection_by_id(id)

Disconnect a specific OAuth connection by id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Disconnect a specific OAuth connection by id.
  result = api_instance.delete_connection_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_by_id: #{e}"
end
```

#### Using the delete_connection_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectionByIdResponse>, Integer, Hash)> delete_connection_by_id_with_http_info(id)

```ruby
begin
  # Disconnect a specific OAuth connection by id.
  data, status_code, headers = api_instance.delete_connection_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectionByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteConnectionByIdResponse**](DeleteConnectionByIdResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_email_imap

> <DeleteConnectionEmailImapResponse> delete_connection_email_imap(id)

Remove an IMAP mailbox connection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove an IMAP mailbox connection.
  result = api_instance.delete_connection_email_imap(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email_imap: #{e}"
end
```

#### Using the delete_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectionEmailImapResponse>, Integer, Hash)> delete_connection_email_imap_with_http_info(id)

```ruby
begin
  # Remove an IMAP mailbox connection.
  data, status_code, headers = api_instance.delete_connection_email_imap_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectionEmailImapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteConnectionEmailImapResponse**](DeleteConnectionEmailImapResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_email

> <GetConnectionEmailResponse> get_connection_email

List IMAP and email-OAuth connections.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # List IMAP and email-OAuth connections.
  result = api_instance.get_connection_email
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_email: #{e}"
end
```

#### Using the get_connection_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionEmailResponse>, Integer, Hash)> get_connection_email_with_http_info

```ruby
begin
  # List IMAP and email-OAuth connections.
  data, status_code, headers = api_instance.get_connection_email_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_email_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetConnectionEmailResponse**](GetConnectionEmailResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_extension_online

> <GetConnectionExtensionOnlineResponse> get_connection_extension_online

Check if the browser extension is online.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # Check if the browser extension is online.
  result = api_instance.get_connection_extension_online
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_extension_online: #{e}"
end
```

#### Using the get_connection_extension_online_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionExtensionOnlineResponse>, Integer, Hash)> get_connection_extension_online_with_http_info

```ruby
begin
  # Check if the browser extension is online.
  data, status_code, headers = api_instance.get_connection_extension_online_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionExtensionOnlineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_extension_online_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetConnectionExtensionOnlineResponse**](GetConnectionExtensionOnlineResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oauth_init

> <GetOauthInitResponse> get_oauth_init(platform, opts)

Return the OAuth authorize URL for an API-track platform.

Most platforms return `{ url }`. Etsy adds `{ correlationId }` (PKCE verifier stashed in Redis). Bonanza adds `{ oneShot: true }`. WooCommerce requires `?siteUrl=...`. Walmart returns `{ status: \"request_only\", requestUrl, message }` instead of a URL because per-seller OAuth needs Solution Provider approval.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 
opts = {
  shop: 'shop_example', # String | 
  region: 'region_example', # String | 
  site_url: 'site_url_example' # String | 
}

begin
  # Return the OAuth authorize URL for an API-track platform.
  result = api_instance.get_oauth_init(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_oauth_init: #{e}"
end
```

#### Using the get_oauth_init_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOauthInitResponse>, Integer, Hash)> get_oauth_init_with_http_info(platform, opts)

```ruby
begin
  # Return the OAuth authorize URL for an API-track platform.
  data, status_code, headers = api_instance.get_oauth_init_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOauthInitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_oauth_init_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **shop** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **site_url** | **String** |  | [optional] |

### Return type

[**GetOauthInitResponse**](GetOauthInitResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_platform_limit

> <GetPlatformLimitResponse> get_platform_limit

eBay free-tier + Etsy fees aggregate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # eBay free-tier + Etsy fees aggregate.
  result = api_instance.get_platform_limit
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_platform_limit: #{e}"
end
```

#### Using the get_platform_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlatformLimitResponse>, Integer, Hash)> get_platform_limit_with_http_info

```ruby
begin
  # eBay free-tier + Etsy fees aggregate.
  data, status_code, headers = api_instance.get_platform_limit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlatformLimitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_platform_limit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPlatformLimitResponse**](GetPlatformLimitResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <V1List> list_accounts

List your connected platform accounts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # List your connected platform accounts.
  result = api_instance.list_accounts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_accounts: #{e}"
end
```

#### Using the list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_accounts_with_http_info

```ruby
begin
  # List your connected platform accounts.
  data, status_code, headers = api_instance.list_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_accounts_with_http_info: #{e}"
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


## list_connections

> <V1List> list_connections

List OAuth-connected API platforms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new

begin
  # List OAuth-connected API platforms.
  result = api_instance.list_connections
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_connections_with_http_info

```ruby
begin
  # List OAuth-connected API platforms.
  data, status_code, headers = api_instance.list_connections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connections_with_http_info: #{e}"
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


## update_connection_email_imap

> <UpdateConnectionEmailImapResponse> update_connection_email_imap(id)

Edit an IMAP mailbox connection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit an IMAP mailbox connection.
  result = api_instance.update_connection_email_imap(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email_imap: #{e}"
end
```

#### Using the update_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConnectionEmailImapResponse>, Integer, Hash)> update_connection_email_imap_with_http_info(id)

```ruby
begin
  # Edit an IMAP mailbox connection.
  data, status_code, headers = api_instance.update_connection_email_imap_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConnectionEmailImapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateConnectionEmailImapResponse**](UpdateConnectionEmailImapResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_platform_preference

> <UpdatePlatformPreferenceResponse> update_platform_preference(platform, opts)

Update per-platform connection preferences.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountsApi.new
platform = 'platform_example' # String | 
opts = {
  connection_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  # Update per-platform connection preferences.
  result = api_instance.update_platform_preference(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_platform_preference: #{e}"
end
```

#### Using the update_platform_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePlatformPreferenceResponse>, Integer, Hash)> update_platform_preference_with_http_info(platform, opts)

```ruby
begin
  # Update per-platform connection preferences.
  data, status_code, headers = api_instance.update_platform_preference_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePlatformPreferenceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_platform_preference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **connection_id** | **String** |  | [optional] |

### Return type

[**UpdatePlatformPreferenceResponse**](UpdatePlatformPreferenceResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

