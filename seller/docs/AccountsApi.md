# Crossly::AccountsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account**](AccountsApi.md#create_account) | **POST** /v1/accounts | Connect a new platform account (kicks off OAuth or extension handshake). |
| [**create_connection_cardnexus_api_key**](AccountsApi.md#create_connection_cardnexus_api_key) | **POST** /v1/connections/cardnexus/api-key | Connect CardNexus with a personal API key (validated live before it is stored). |
| [**create_connection_email_check**](AccountsApi.md#create_connection_email_check) | **POST** /v1/connections/email/{id}/check | Check an email connection now: sign in to it live (IMAP login, or a working Gmail / Outlook token) and, when that works and it is not paused, scan it straight away. data.ok false carries a plain reason. |
| [**create_connection_email_imap**](AccountsApi.md#create_connection_email_imap) | **POST** /v1/connections/email/imap | Add an IMAP mailbox. The sign-in is verified before it is saved; most providers need an app password. watchedPlatforms picks the marketplaces it is read for (null &#x3D; all). |
| [**create_connection_email_imap_test**](AccountsApi.md#create_connection_email_imap_test) | **POST** /v1/connections/email/imap/test | Check IMAP credentials without saving them. A failure is a 400 with a plain reason. |
| [**create_connection_lightspeed_x_token**](AccountsApi.md#create_connection_lightspeed_x_token) | **POST** /v1/connections/lightspeed_x/token | Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix. |
| [**create_connection_store_attach**](AccountsApi.md#create_connection_store_attach) | **POST** /v1/connections/stores/attach | Let this store (X-Storefront-Id) use one of your marketplace accounts. |
| [**create_connection_store_copy**](AccountsApi.md#create_connection_store_copy) | **POST** /v1/connections/stores/copy | Let several of your stores use a marketplace account at once. |
| [**create_connection_store_detach**](AccountsApi.md#create_connection_store_detach) | **POST** /v1/connections/stores/detach | Stop this store using a marketplace account. The account stays connected for your other stores. |
| [**create_platform_account_connect**](AccountsApi.md#create_platform_account_connect) | **POST** /v1/platform-accounts/{platform}/connect | Revive or initiate connection for a cookie platform. |
| [**create_platform_account_disconnect**](AccountsApi.md#create_platform_account_disconnect) | **POST** /v1/platform-accounts/{platform}/disconnect | Disconnect every account of a platform (archives the rows and deletes their stored sessions). |
| [**create_platform_account_history_import**](AccountsApi.md#create_platform_account_history_import) | **POST** /v1/platform-accounts/{platform}/history-import | Set how far back to backfill order history + active listings for a platform account (or every pending account of the platform), and run it now. |
| [**create_platform_account_refresh_status**](AccountsApi.md#create_platform_account_refresh_status) | **POST** /v1/platform-accounts/refresh-status | Run on-demand healthchecks across cookie accounts. |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{id} | Disconnect a platform account. |
| [**delete_connection_by_id**](AccountsApi.md#delete_connection_by_id) | **DELETE** /v1/connections/by-id/{id} | Disconnect a specific OAuth connection by id. |
| [**delete_connection_email**](AccountsApi.md#delete_connection_email) | **DELETE** /v1/connections/email/{id} | Disconnect an email connection. |
| [**delete_connection_email_imap**](AccountsApi.md#delete_connection_email_imap) | **DELETE** /v1/connections/email/imap/{id} | Disconnect an email connection. |
| [**delete_connection_own_app**](AccountsApi.md#delete_connection_own_app) | **DELETE** /v1/connections/own-apps/{platform} | Remove your own developer app for a marketplace; the connections it authorized are switched off. |
| [**get_channel_account_history_import**](AccountsApi.md#get_channel_account_history_import) | **GET** /v1/channel-accounts/{accountId}/history-import | Get one platform account&#39;s order-history import window (how far back its past sales and active listings import): days null &#x3D; All time, 0 &#x3D; None, N &#x3D; the last N days; chosen&#x3D;false &#x3D; never chosen. |
| [**get_connection_email**](AccountsApi.md#get_connection_email) | **GET** /v1/connections/email/{id} | One email connection: health, last scan, the marketplaces it watches and its 7-day counts. |
| [**get_connection_extension_online**](AccountsApi.md#get_connection_extension_online) | **GET** /v1/connections/extension-online | Check if the browser extension is online. |
| [**get_connection_policy_management_option**](AccountsApi.md#get_connection_policy_management_option) | **GET** /v1/connections/policy-management/{connectionId}/options/{source} | List the live options a marketplace policy field offers (e.g. Allegro delivery methods). |
| [**get_connection_store**](AccountsApi.md#get_connection_store) | **GET** /v1/connections/stores | Your stores and which marketplace accounts each may use (its default per platform, and the store each account was connected from). |
| [**get_oauth_init**](AccountsApi.md#get_oauth_init) | **GET** /v1/oauth/{platform}/init | Return the OAuth authorize URL for an API-track platform. |
| [**get_platform_limit**](AccountsApi.md#get_platform_limit) | **GET** /v1/platforms/limits | eBay free-tier + Etsy fees aggregate. |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /v1/accounts | List your connected platform accounts. |
| [**list_connection_email**](AccountsApi.md#list_connection_email) | **GET** /v1/connections/email | List email connections (mailboxes Crossly reads marketplace email from). |
| [**list_connection_email_emails**](AccountsApi.md#list_connection_email_emails) | **GET** /v1/connections/email/{id}/emails | An email connection&#39;s inbox: the marketplace emails Crossly picked up from it and what it did with each, newest first. Filter by platform, type, matched/unmatched and date; page with next_cursor. |
| [**list_connection_own_apps**](AccountsApi.md#list_connection_own_apps) | **GET** /v1/connections/own-apps | List the marketplaces you can connect with your own developer app, and what you&#39;ve saved. |
| [**list_connection_policy_management**](AccountsApi.md#list_connection_policy_management) | **GET** /v1/connections/policy-management | List eBay and Etsy accounts with whether Crossly manages their policies. |
| [**list_connections**](AccountsApi.md#list_connections) | **GET** /v1/connections | List OAuth-connected API platforms, each flagged with whether this store (X-Storefront-Id) uses it. |
| [**list_platforms**](AccountsApi.md#list_platforms) | **GET** /v1/platforms | List marketplaces with their availability (connect, own_app, coming_soon) and capability chips. |
| [**update_channel_account_history_import**](AccountsApi.md#update_channel_account_history_import) | **PUT** /v1/channel-accounts/{accountId}/history-import | Set one platform account&#39;s order-history import window (how far back its past sales and active listings import). Runs the one-time backfill now when the account has not had it yet. |
| [**update_connection_email**](AccountsApi.md#update_connection_email) | **PATCH** /v1/connections/email/{id} | Change an email connection: label, watchedPlatforms (null &#x3D; every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first). |
| [**update_connection_email_imap**](AccountsApi.md#update_connection_email_imap) | **PATCH** /v1/connections/email/imap/{id} | Change an email connection: label, watchedPlatforms (null &#x3D; every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first). |
| [**update_connection_own_app**](AccountsApi.md#update_connection_own_app) | **PUT** /v1/connections/own-apps/{platform} | Save your own developer app for a marketplace (client id, secret and any required parameters). |
| [**update_connection_policy_management**](AccountsApi.md#update_connection_policy_management) | **PUT** /v1/connections/policy-management/{connectionId} | Turn Crossly policy management on or off for one eBay or Etsy account. |
| [**update_platform_preference**](AccountsApi.md#update_platform_preference) | **PATCH** /v1/platforms/{platform}/preferences | Update per-platform connection preferences. |


## create_account

> <CreateAccountResponse> create_account(create_account_request)

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
create_account_request = Crossly::CreateAccountRequest.new({platform: 'platform_example'}) # CreateAccountRequest | 

begin
  # Connect a new platform account (kicks off OAuth or extension handshake).
  result = api_instance.create_account(create_account_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountResponse>, Integer, Hash)> create_account_with_http_info(create_account_request)

```ruby
begin
  # Connect a new platform account (kicks off OAuth or extension handshake).
  data, status_code, headers = api_instance.create_account_with_http_info(create_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_account_request** | **CreateAccountRequest** |  |  |

### Return type

**CreateAccountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_cardnexus_api_key

> <CreateConnectionCardnexusApiKeyResponse> create_connection_cardnexus_api_key(update_web3_marketplace_key_request)

Connect CardNexus with a personal API key (validated live before it is stored).

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
update_web3_marketplace_key_request = Crossly::UpdateWeb3MarketplaceKeyRequest.new({api_key: 'api_key_example'}) # UpdateWeb3MarketplaceKeyRequest | 

begin
  # Connect CardNexus with a personal API key (validated live before it is stored).
  result = api_instance.create_connection_cardnexus_api_key(update_web3_marketplace_key_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_cardnexus_api_key: #{e}"
end
```

#### Using the create_connection_cardnexus_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionCardnexusApiKeyResponse>, Integer, Hash)> create_connection_cardnexus_api_key_with_http_info(update_web3_marketplace_key_request)

```ruby
begin
  # Connect CardNexus with a personal API key (validated live before it is stored).
  data, status_code, headers = api_instance.create_connection_cardnexus_api_key_with_http_info(update_web3_marketplace_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionCardnexusApiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_cardnexus_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_web3_marketplace_key_request** | **UpdateWeb3MarketplaceKeyRequest** |  |  |

### Return type

**CreateConnectionCardnexusApiKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_email_check

> <CreateConnectionEmailCheckResponse> create_connection_email_check(id)

Check an email connection now: sign in to it live (IMAP login, or a working Gmail / Outlook token) and, when that works and it is not paused, scan it straight away. data.ok false carries a plain reason.

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
  # Check an email connection now: sign in to it live (IMAP login, or a working Gmail / Outlook token) and, when that works and it is not paused, scan it straight away. data.ok false carries a plain reason.
  result = api_instance.create_connection_email_check(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_check: #{e}"
end
```

#### Using the create_connection_email_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionEmailCheckResponse>, Integer, Hash)> create_connection_email_check_with_http_info(id)

```ruby
begin
  # Check an email connection now: sign in to it live (IMAP login, or a working Gmail / Outlook token) and, when that works and it is not paused, scan it straight away. data.ok false carries a plain reason.
  data, status_code, headers = api_instance.create_connection_email_check_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionEmailCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateConnectionEmailCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_connection_email_imap

> <CreateConnectionEmailImapResponse> create_connection_email_imap(create_connection_email_imap_request)

Add an IMAP mailbox. The sign-in is verified before it is saved; most providers need an app password. watchedPlatforms picks the marketplaces it is read for (null = all).

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
create_connection_email_imap_request = Crossly::CreateConnectionEmailImapRequest.new({host: 'host_example', username: 'username_example', password: 'password_example'}) # CreateConnectionEmailImapRequest | 

begin
  # Add an IMAP mailbox. The sign-in is verified before it is saved; most providers need an app password. watchedPlatforms picks the marketplaces it is read for (null = all).
  result = api_instance.create_connection_email_imap(create_connection_email_imap_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap: #{e}"
end
```

#### Using the create_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionEmailImapResponse>, Integer, Hash)> create_connection_email_imap_with_http_info(create_connection_email_imap_request)

```ruby
begin
  # Add an IMAP mailbox. The sign-in is verified before it is saved; most providers need an app password. watchedPlatforms picks the marketplaces it is read for (null = all).
  data, status_code, headers = api_instance.create_connection_email_imap_with_http_info(create_connection_email_imap_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionEmailImapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_email_imap_request** | **CreateConnectionEmailImapRequest** |  |  |

### Return type

**CreateConnectionEmailImapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_email_imap_test

> <CreateConnectionEmailImapTestResponse> create_connection_email_imap_test(create_connection_email_imap_test_request)

Check IMAP credentials without saving them. A failure is a 400 with a plain reason.

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
create_connection_email_imap_test_request = Crossly::CreateConnectionEmailImapTestRequest.new({host: 'host_example', username: 'username_example', password: 'password_example'}) # CreateConnectionEmailImapTestRequest | 

begin
  # Check IMAP credentials without saving them. A failure is a 400 with a plain reason.
  result = api_instance.create_connection_email_imap_test(create_connection_email_imap_test_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_test: #{e}"
end
```

#### Using the create_connection_email_imap_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionEmailImapTestResponse>, Integer, Hash)> create_connection_email_imap_test_with_http_info(create_connection_email_imap_test_request)

```ruby
begin
  # Check IMAP credentials without saving them. A failure is a 400 with a plain reason.
  data, status_code, headers = api_instance.create_connection_email_imap_test_with_http_info(create_connection_email_imap_test_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionEmailImapTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_email_imap_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_email_imap_test_request** | **CreateConnectionEmailImapTestRequest** |  |  |

### Return type

**CreateConnectionEmailImapTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_lightspeed_x_token

> <CreateConnectionLightspeedXTokenResponse> create_connection_lightspeed_x_token(create_connection_lightspeed_x_token_request)

Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.

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
create_connection_lightspeed_x_token_request = Crossly::CreateConnectionLightspeedXTokenRequest.new({domain_prefix: 'domain_prefix_example', access_token: 'access_token_example'}) # CreateConnectionLightspeedXTokenRequest | 

begin
  # Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.
  result = api_instance.create_connection_lightspeed_x_token(create_connection_lightspeed_x_token_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_lightspeed_x_token: #{e}"
end
```

#### Using the create_connection_lightspeed_x_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionLightspeedXTokenResponse>, Integer, Hash)> create_connection_lightspeed_x_token_with_http_info(create_connection_lightspeed_x_token_request)

```ruby
begin
  # Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.
  data, status_code, headers = api_instance.create_connection_lightspeed_x_token_with_http_info(create_connection_lightspeed_x_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionLightspeedXTokenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_lightspeed_x_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_lightspeed_x_token_request** | **CreateConnectionLightspeedXTokenRequest** |  |  |

### Return type

**CreateConnectionLightspeedXTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_store_attach

> <CreateConnectionStoreAttachResponse> create_connection_store_attach(opts)

Let this store (X-Storefront-Id) use one of your marketplace accounts.

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
opts = {
  create_connection_store_attach_request: Crossly::CreateConnectionStoreAttachRequest.new({kind: 'api', connection_id: 'connection_id_example'}) # CreateConnectionStoreAttachRequest | 
}

begin
  # Let this store (X-Storefront-Id) use one of your marketplace accounts.
  result = api_instance.create_connection_store_attach(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_attach: #{e}"
end
```

#### Using the create_connection_store_attach_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionStoreAttachResponse>, Integer, Hash)> create_connection_store_attach_with_http_info(opts)

```ruby
begin
  # Let this store (X-Storefront-Id) use one of your marketplace accounts.
  data, status_code, headers = api_instance.create_connection_store_attach_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionStoreAttachResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_attach_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_store_attach_request** | **CreateConnectionStoreAttachRequest** |  | [optional] |

### Return type

**CreateConnectionStoreAttachResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_store_copy

> <CreateConnectionStoreCopyResponse> create_connection_store_copy(opts)

Let several of your stores use a marketplace account at once.

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
opts = {
  create_connection_store_copy_request: Crossly::CreateConnectionStoreCopyRequest.new({kind: 'api', connection_id: 'connection_id_example', storefront_ids: ['storefront_ids_example']}) # CreateConnectionStoreCopyRequest | 
}

begin
  # Let several of your stores use a marketplace account at once.
  result = api_instance.create_connection_store_copy(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_copy: #{e}"
end
```

#### Using the create_connection_store_copy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionStoreCopyResponse>, Integer, Hash)> create_connection_store_copy_with_http_info(opts)

```ruby
begin
  # Let several of your stores use a marketplace account at once.
  data, status_code, headers = api_instance.create_connection_store_copy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionStoreCopyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_copy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_store_copy_request** | **CreateConnectionStoreCopyRequest** |  | [optional] |

### Return type

**CreateConnectionStoreCopyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_connection_store_detach

> <CreateConnectionStoreDetachResponse> create_connection_store_detach(opts)

Stop this store using a marketplace account. The account stays connected for your other stores.

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
opts = {
  create_connection_store_attach_request: Crossly::CreateConnectionStoreAttachRequest.new({kind: 'api', connection_id: 'connection_id_example'}) # CreateConnectionStoreAttachRequest | 
}

begin
  # Stop this store using a marketplace account. The account stays connected for your other stores.
  result = api_instance.create_connection_store_detach(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_detach: #{e}"
end
```

#### Using the create_connection_store_detach_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnectionStoreDetachResponse>, Integer, Hash)> create_connection_store_detach_with_http_info(opts)

```ruby
begin
  # Stop this store using a marketplace account. The account stays connected for your other stores.
  data, status_code, headers = api_instance.create_connection_store_detach_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnectionStoreDetachResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_connection_store_detach_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_connection_store_attach_request** | **CreateConnectionStoreAttachRequest** |  | [optional] |

### Return type

**CreateConnectionStoreDetachResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_platform_account_connect

> <CreatePlatformAccountConnectResponse> create_platform_account_connect(platform, opts)

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
opts = {
  create_platform_account_connect_request: Crossly::CreatePlatformAccountConnectRequest.new # CreatePlatformAccountConnectRequest | 
}

begin
  # Revive or initiate connection for a cookie platform.
  result = api_instance.create_platform_account_connect(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_connect: #{e}"
end
```

#### Using the create_platform_account_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountConnectResponse>, Integer, Hash)> create_platform_account_connect_with_http_info(platform, opts)

```ruby
begin
  # Revive or initiate connection for a cookie platform.
  data, status_code, headers = api_instance.create_platform_account_connect_with_http_info(platform, opts)
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
| **create_platform_account_connect_request** | **CreatePlatformAccountConnectRequest** |  | [optional] |

### Return type

**CreatePlatformAccountConnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_platform_account_disconnect

> <CreatePlatformAccountDisconnectResponse> create_platform_account_disconnect(platform)

Disconnect every account of a platform (archives the rows and deletes their stored sessions).

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
  # Disconnect every account of a platform (archives the rows and deletes their stored sessions).
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
  # Disconnect every account of a platform (archives the rows and deletes their stored sessions).
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

**CreatePlatformAccountDisconnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_platform_account_history_import

> <CreatePlatformAccountHistoryImportResponse> create_platform_account_history_import(platform, create_platform_account_history_import_request)

Set how far back to backfill order history + active listings for a platform account (or every pending account of the platform), and run it now.

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
create_platform_account_history_import_request = Crossly::CreatePlatformAccountHistoryImportRequest.new({days: 37}) # CreatePlatformAccountHistoryImportRequest | 

begin
  # Set how far back to backfill order history + active listings for a platform account (or every pending account of the platform), and run it now.
  result = api_instance.create_platform_account_history_import(platform, create_platform_account_history_import_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->create_platform_account_history_import: #{e}"
end
```

#### Using the create_platform_account_history_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlatformAccountHistoryImportResponse>, Integer, Hash)> create_platform_account_history_import_with_http_info(platform, create_platform_account_history_import_request)

```ruby
begin
  # Set how far back to backfill order history + active listings for a platform account (or every pending account of the platform), and run it now.
  data, status_code, headers = api_instance.create_platform_account_history_import_with_http_info(platform, create_platform_account_history_import_request)
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
| **create_platform_account_history_import_request** | **CreatePlatformAccountHistoryImportRequest** |  |  |

### Return type

**CreatePlatformAccountHistoryImportResponse**

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

**CreatePlatformAccountRefreshStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_account

> <OkResponse> delete_account(id)

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

> <Array(<OkResponse>, Integer, Hash)> delete_account_with_http_info(id)

```ruby
begin
  # Disconnect a platform account.
  data, status_code, headers = api_instance.delete_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_by_id

> <SuccessResponse> delete_connection_by_id(id)

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

> <Array(<SuccessResponse>, Integer, Hash)> delete_connection_by_id_with_http_info(id)

```ruby
begin
  # Disconnect a specific OAuth connection by id.
  data, status_code, headers = api_instance.delete_connection_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_email

> <DeleteConnectionEmailResponse> delete_connection_email(id)

Disconnect an email connection.

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
  # Disconnect an email connection.
  result = api_instance.delete_connection_email(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email: #{e}"
end
```

#### Using the delete_connection_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectionEmailResponse>, Integer, Hash)> delete_connection_email_with_http_info(id)

```ruby
begin
  # Disconnect an email connection.
  data, status_code, headers = api_instance.delete_connection_email_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_email_imap

> <DeleteConnectionEmailResponse> delete_connection_email_imap(id)

Disconnect an email connection.

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
  # Disconnect an email connection.
  result = api_instance.delete_connection_email_imap(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email_imap: #{e}"
end
```

#### Using the delete_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectionEmailResponse>, Integer, Hash)> delete_connection_email_imap_with_http_info(id)

```ruby
begin
  # Disconnect an email connection.
  data, status_code, headers = api_instance.delete_connection_email_imap_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connection_own_app

> <DeleteConnectionOwnAppResponse> delete_connection_own_app(platform)

Remove your own developer app for a marketplace; the connections it authorized are switched off.

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
  # Remove your own developer app for a marketplace; the connections it authorized are switched off.
  result = api_instance.delete_connection_own_app(platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_own_app: #{e}"
end
```

#### Using the delete_connection_own_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnectionOwnAppResponse>, Integer, Hash)> delete_connection_own_app_with_http_info(platform)

```ruby
begin
  # Remove your own developer app for a marketplace; the connections it authorized are switched off.
  data, status_code, headers = api_instance.delete_connection_own_app_with_http_info(platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnectionOwnAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->delete_connection_own_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |

### Return type

**DeleteConnectionOwnAppResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_channel_account_history_import

> <GetChannelAccountHistoryImportResponse> get_channel_account_history_import(account_id)

Get one platform account's order-history import window (how far back its past sales and active listings import): days null = All time, 0 = None, N = the last N days; chosen=false = never chosen.

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
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one platform account's order-history import window (how far back its past sales and active listings import): days null = All time, 0 = None, N = the last N days; chosen=false = never chosen.
  result = api_instance.get_channel_account_history_import(account_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_channel_account_history_import: #{e}"
end
```

#### Using the get_channel_account_history_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChannelAccountHistoryImportResponse>, Integer, Hash)> get_channel_account_history_import_with_http_info(account_id)

```ruby
begin
  # Get one platform account's order-history import window (how far back its past sales and active listings import): days null = All time, 0 = None, N = the last N days; chosen=false = never chosen.
  data, status_code, headers = api_instance.get_channel_account_history_import_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChannelAccountHistoryImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_channel_account_history_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

**GetChannelAccountHistoryImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_email

> <GetConnectionEmailResponse> get_connection_email(id)

One email connection: health, last scan, the marketplaces it watches and its 7-day counts.

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
  # One email connection: health, last scan, the marketplaces it watches and its 7-day counts.
  result = api_instance.get_connection_email(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_email: #{e}"
end
```

#### Using the get_connection_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionEmailResponse>, Integer, Hash)> get_connection_email_with_http_info(id)

```ruby
begin
  # One email connection: health, last scan, the marketplaces it watches and its 7-day counts.
  data, status_code, headers = api_instance.get_connection_email_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetConnectionEmailResponse**

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

**GetConnectionExtensionOnlineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_policy_management_option

> <GetConnectionPolicyManagementOptionResponse> get_connection_policy_management_option(connection_id, source)

List the live options a marketplace policy field offers (e.g. Allegro delivery methods).

For one of your managed connections, the choices a preset's `platformFields` picker offers, from the marketplace (`source` is the field's `optionsSource`, e.g. `delivery-methods`). An unknown connection or source is a 404.

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
connection_id = 'connection_id_example' # String | 
source = 'source_example' # String | 

begin
  # List the live options a marketplace policy field offers (e.g. Allegro delivery methods).
  result = api_instance.get_connection_policy_management_option(connection_id, source)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_policy_management_option: #{e}"
end
```

#### Using the get_connection_policy_management_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionPolicyManagementOptionResponse>, Integer, Hash)> get_connection_policy_management_option_with_http_info(connection_id, source)

```ruby
begin
  # List the live options a marketplace policy field offers (e.g. Allegro delivery methods).
  data, status_code, headers = api_instance.get_connection_policy_management_option_with_http_info(connection_id, source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionPolicyManagementOptionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_policy_management_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection_id** | **String** |  |  |
| **source** | **String** |  |  |

### Return type

**GetConnectionPolicyManagementOptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_store

> <GetConnectionStoreResponse> get_connection_store

Your stores and which marketplace accounts each may use (its default per platform, and the store each account was connected from).

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
  # Your stores and which marketplace accounts each may use (its default per platform, and the store each account was connected from).
  result = api_instance.get_connection_store
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_store: #{e}"
end
```

#### Using the get_connection_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionStoreResponse>, Integer, Hash)> get_connection_store_with_http_info

```ruby
begin
  # Your stores and which marketplace accounts each may use (its default per platform, and the store each account was connected from).
  data, status_code, headers = api_instance.get_connection_store_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->get_connection_store_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetConnectionStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oauth_init

> <GetOauthInitResponse> get_oauth_init(platform, opts)

Return the OAuth authorize URL for an API-track platform.

Most platforms return `{ url }` (Shopify, Etsy, Amazon and the other marketplaces Atlas Connections connects: the URL Atlas returns for this seller). Bonanza adds `{ oneShot: true }`. WooCommerce requires `?siteUrl=...`. Walmart (and CardNexus before its approval link) returns `{ status: \"own_credentials\", connectWith, docsUrl, message }`: connect with your own keys. An own_app marketplace (GET /api/v1/platforms) needs your app saved first (PUT /api/v1/connections/own-apps/:platform), else 400 own_app_required.

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

**GetOauthInitResponse**

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

**GetPlatformLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <ListAccountsResponse> list_accounts

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

> <Array(<ListAccountsResponse>, Integer, Hash)> list_accounts_with_http_info

```ruby
begin
  # List your connected platform accounts.
  data, status_code, headers = api_instance.list_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connection_email

> <ListConnectionEmailResponse> list_connection_email

List email connections (mailboxes Crossly reads marketplace email from).

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
  # List email connections (mailboxes Crossly reads marketplace email from).
  result = api_instance.list_connection_email
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_email: #{e}"
end
```

#### Using the list_connection_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionEmailResponse>, Integer, Hash)> list_connection_email_with_http_info

```ruby
begin
  # List email connections (mailboxes Crossly reads marketplace email from).
  data, status_code, headers = api_instance.list_connection_email_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_email_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connection_email_emails

> <ListConnectionEmailEmailsResponse> list_connection_email_emails(id, opts)

An email connection's inbox: the marketplace emails Crossly picked up from it and what it did with each, newest first. Filter by platform, type, matched/unmatched and date; page with next_cursor.

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
opts = {
  q: 'q_example', # String | 
  platform: 'platform_example', # String | 
  type: 'sale', # String | 
  match: 'matched', # String | 
  from: Date.parse('2013-10-20'), # Date | 
  to: Date.parse('2013-10-20'), # Date | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # An email connection's inbox: the marketplace emails Crossly picked up from it and what it did with each, newest first. Filter by platform, type, matched/unmatched and date; page with next_cursor.
  result = api_instance.list_connection_email_emails(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_email_emails: #{e}"
end
```

#### Using the list_connection_email_emails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionEmailEmailsResponse>, Integer, Hash)> list_connection_email_emails_with_http_info(id, opts)

```ruby
begin
  # An email connection's inbox: the marketplace emails Crossly picked up from it and what it did with each, newest first. Filter by platform, type, matched/unmatched and date; page with next_cursor.
  data, status_code, headers = api_instance.list_connection_email_emails_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionEmailEmailsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_email_emails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **q** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **match** | **String** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListConnectionEmailEmailsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connection_own_apps

> <ListConnectionOwnAppsResponse> list_connection_own_apps

List the marketplaces you can connect with your own developer app, and what you've saved.

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
  # List the marketplaces you can connect with your own developer app, and what you've saved.
  result = api_instance.list_connection_own_apps
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_own_apps: #{e}"
end
```

#### Using the list_connection_own_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionOwnAppsResponse>, Integer, Hash)> list_connection_own_apps_with_http_info

```ruby
begin
  # List the marketplaces you can connect with your own developer app, and what you've saved.
  data, status_code, headers = api_instance.list_connection_own_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionOwnAppsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_own_apps_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListConnectionOwnAppsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connection_policy_management

> <ListConnectionPolicyManagementResponse> list_connection_policy_management

List eBay and Etsy accounts with whether Crossly manages their policies.

One row per connected eBay or Etsy account: `eligible` (eBay only on EBAY_US), `managed` (Crossly keeps its policies / shipping profiles in step with your default presets) and sync `notes`.

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
  # List eBay and Etsy accounts with whether Crossly manages their policies.
  result = api_instance.list_connection_policy_management
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_policy_management: #{e}"
end
```

#### Using the list_connection_policy_management_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionPolicyManagementResponse>, Integer, Hash)> list_connection_policy_management_with_http_info

```ruby
begin
  # List eBay and Etsy accounts with whether Crossly manages their policies.
  data, status_code, headers = api_instance.list_connection_policy_management_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionPolicyManagementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connection_policy_management_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListConnectionPolicyManagementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connections

> <ListConnectionsResponse> list_connections

List OAuth-connected API platforms, each flagged with whether this store (X-Storefront-Id) uses it.

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
  # List OAuth-connected API platforms, each flagged with whether this store (X-Storefront-Id) uses it.
  result = api_instance.list_connections
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionsResponse>, Integer, Hash)> list_connections_with_http_info

```ruby
begin
  # List OAuth-connected API platforms, each flagged with whether this store (X-Storefront-Id) uses it.
  data, status_code, headers = api_instance.list_connections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_connections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListConnectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_platforms

> <ListPlatformsResponse> list_platforms

List marketplaces with their availability (connect, own_app, coming_soon) and capability chips.

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
  # List marketplaces with their availability (connect, own_app, coming_soon) and capability chips.
  result = api_instance.list_platforms
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_platforms: #{e}"
end
```

#### Using the list_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPlatformsResponse>, Integer, Hash)> list_platforms_with_http_info

```ruby
begin
  # List marketplaces with their availability (connect, own_app, coming_soon) and capability chips.
  data, status_code, headers = api_instance.list_platforms_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPlatformsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->list_platforms_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPlatformsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_channel_account_history_import

> <UpdateChannelAccountHistoryImportResponse> update_channel_account_history_import(account_id, update_channel_account_history_import_request)

Set one platform account's order-history import window (how far back its past sales and active listings import). Runs the one-time backfill now when the account has not had it yet.

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
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_channel_account_history_import_request = Crossly::UpdateChannelAccountHistoryImportRequest.new({days: 37}) # UpdateChannelAccountHistoryImportRequest | 

begin
  # Set one platform account's order-history import window (how far back its past sales and active listings import). Runs the one-time backfill now when the account has not had it yet.
  result = api_instance.update_channel_account_history_import(account_id, update_channel_account_history_import_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_channel_account_history_import: #{e}"
end
```

#### Using the update_channel_account_history_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateChannelAccountHistoryImportResponse>, Integer, Hash)> update_channel_account_history_import_with_http_info(account_id, update_channel_account_history_import_request)

```ruby
begin
  # Set one platform account's order-history import window (how far back its past sales and active listings import). Runs the one-time backfill now when the account has not had it yet.
  data, status_code, headers = api_instance.update_channel_account_history_import_with_http_info(account_id, update_channel_account_history_import_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateChannelAccountHistoryImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_channel_account_history_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_channel_account_history_import_request** | **UpdateChannelAccountHistoryImportRequest** |  |  |

### Return type

**UpdateChannelAccountHistoryImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_connection_email

> <UpdateConnectionEmailResponse> update_connection_email(id, update_connection_email_imap_request)

Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).

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
update_connection_email_imap_request = Crossly::UpdateConnectionEmailImapRequest.new # UpdateConnectionEmailImapRequest | 

begin
  # Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).
  result = api_instance.update_connection_email(id, update_connection_email_imap_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email: #{e}"
end
```

#### Using the update_connection_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConnectionEmailResponse>, Integer, Hash)> update_connection_email_with_http_info(id, update_connection_email_imap_request)

```ruby
begin
  # Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).
  data, status_code, headers = api_instance.update_connection_email_with_http_info(id, update_connection_email_imap_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_connection_email_imap_request** | **UpdateConnectionEmailImapRequest** |  |  |

### Return type

**UpdateConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_connection_email_imap

> <UpdateConnectionEmailResponse> update_connection_email_imap(id, update_connection_email_imap_request)

Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).

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
update_connection_email_imap_request = Crossly::UpdateConnectionEmailImapRequest.new # UpdateConnectionEmailImapRequest | 

begin
  # Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).
  result = api_instance.update_connection_email_imap(id, update_connection_email_imap_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email_imap: #{e}"
end
```

#### Using the update_connection_email_imap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConnectionEmailResponse>, Integer, Hash)> update_connection_email_imap_with_http_info(id, update_connection_email_imap_request)

```ruby
begin
  # Change an email connection: label, watchedPlatforms (null = every marketplace), isActive (false pauses it), or an IMAP server / username / password (the sign-in is verified first).
  data, status_code, headers = api_instance.update_connection_email_imap_with_http_info(id, update_connection_email_imap_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConnectionEmailResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_email_imap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_connection_email_imap_request** | **UpdateConnectionEmailImapRequest** |  |  |

### Return type

**UpdateConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_connection_own_app

> <UpdateConnectionOwnAppResponse> update_connection_own_app(platform, update_connection_own_app_request)

Save your own developer app for a marketplace (client id, secret and any required parameters).

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
update_connection_own_app_request = Crossly::UpdateConnectionOwnAppRequest.new({client_id: 'client_id_example'}) # UpdateConnectionOwnAppRequest | 

begin
  # Save your own developer app for a marketplace (client id, secret and any required parameters).
  result = api_instance.update_connection_own_app(platform, update_connection_own_app_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_own_app: #{e}"
end
```

#### Using the update_connection_own_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConnectionOwnAppResponse>, Integer, Hash)> update_connection_own_app_with_http_info(platform, update_connection_own_app_request)

```ruby
begin
  # Save your own developer app for a marketplace (client id, secret and any required parameters).
  data, status_code, headers = api_instance.update_connection_own_app_with_http_info(platform, update_connection_own_app_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConnectionOwnAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_own_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **update_connection_own_app_request** | **UpdateConnectionOwnAppRequest** |  |  |

### Return type

**UpdateConnectionOwnAppResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_connection_policy_management

> <ListConnectionPolicyManagementItem> update_connection_policy_management(connection_id, update_connection_policy_management_request)

Turn Crossly policy management on or off for one eBay or Etsy account.

Body `{ managed: boolean }`. On: Crossly may overwrite that account's own policies with your default presets and queues a sync now (409 for an ineligible account, e.g. non-US eBay). Off: Crossly stops touching them. A connection that is not yours (or not eBay/Etsy) is a 404.

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
connection_id = 'connection_id_example' # String | 
update_connection_policy_management_request = Crossly::UpdateConnectionPolicyManagementRequest.new({managed: false}) # UpdateConnectionPolicyManagementRequest | 

begin
  # Turn Crossly policy management on or off for one eBay or Etsy account.
  result = api_instance.update_connection_policy_management(connection_id, update_connection_policy_management_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_policy_management: #{e}"
end
```

#### Using the update_connection_policy_management_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectionPolicyManagementItem>, Integer, Hash)> update_connection_policy_management_with_http_info(connection_id, update_connection_policy_management_request)

```ruby
begin
  # Turn Crossly policy management on or off for one eBay or Etsy account.
  data, status_code, headers = api_instance.update_connection_policy_management_with_http_info(connection_id, update_connection_policy_management_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectionPolicyManagementItem>
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_connection_policy_management_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection_id** | **String** |  |  |
| **update_connection_policy_management_request** | **UpdateConnectionPolicyManagementRequest** |  |  |

### Return type

**ListConnectionPolicyManagementItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_platform_preference

> <UpdatePlatformPreferenceResponse> update_platform_preference(platform, update_platform_preference_request, opts)

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
update_platform_preference_request = Crossly::UpdatePlatformPreferenceRequest.new # UpdatePlatformPreferenceRequest | 
opts = {
  connection_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  # Update per-platform connection preferences.
  result = api_instance.update_platform_preference(platform, update_platform_preference_request, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountsApi->update_platform_preference: #{e}"
end
```

#### Using the update_platform_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePlatformPreferenceResponse>, Integer, Hash)> update_platform_preference_with_http_info(platform, update_platform_preference_request, opts)

```ruby
begin
  # Update per-platform connection preferences.
  data, status_code, headers = api_instance.update_platform_preference_with_http_info(platform, update_platform_preference_request, opts)
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
| **update_platform_preference_request** | **UpdatePlatformPreferenceRequest** |  |  |
| **connection_id** | **String** |  | [optional] |

### Return type

**UpdatePlatformPreferenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

