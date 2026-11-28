# Crossly::ChannelInventoryApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_channel_account_setting**](ChannelInventoryApi.md#delete_channel_account_setting) | **DELETE** /v1/channel-accounts/{accountId}/settings | Reset a platform account&#39;s settings in the store to the defaults (no cap, no buffer, sync on, end on sell-out, republish automatically). |
| [**delete_channel_inventory**](ChannelInventoryApi.md#delete_channel_inventory) | **DELETE** /v1/channel-inventory/{platform}/{slot} | Deprecated alias of DELETE /api/v1/channel-accounts/:accountId/settings (removed next release). |
| [**get_channel_account_setting**](ChannelInventoryApi.md#get_channel_account_setting) | **GET** /v1/channel-accounts/{accountId}/settings | Get one platform account&#39;s inventory and restock settings in the store. |
| [**get_channel_inventory**](ChannelInventoryApi.md#get_channel_inventory) | **GET** /v1/channel-inventory/{platform}/{slot} | Deprecated alias of GET /api/v1/channel-accounts/:accountId/settings (removed next release). |
| [**list_channel_accounts**](ChannelInventoryApi.md#list_channel_accounts) | **GET** /v1/channel-accounts | List every platform account of the store with its inventory and restock settings. |
| [**list_channel_inventory**](ChannelInventoryApi.md#list_channel_inventory) | **GET** /v1/channel-inventory | Deprecated alias of GET /api/v1/channel-accounts (removed next release). |
| [**update_channel_account_setting**](ChannelInventoryApi.md#update_channel_account_setting) | **PUT** /v1/channel-accounts/{accountId}/settings | Set a platform account&#39;s quantity cap, buffer, sync toggle, out-of-stock action, exclusions and restock auto-republish in the store (merge write). |
| [**update_channel_inventory**](ChannelInventoryApi.md#update_channel_inventory) | **PUT** /v1/channel-inventory/{platform}/{slot} | Deprecated alias of PUT /api/v1/channel-accounts/:accountId/settings (removed next release). |


## delete_channel_account_setting

> <ListChannelAccountsItem> delete_channel_account_setting(account_id)

Reset a platform account's settings in the store to the defaults (no cap, no buffer, sync on, end on sell-out, republish automatically).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Reset a platform account's settings in the store to the defaults (no cap, no buffer, sync on, end on sell-out, republish automatically).
  result = api_instance.delete_channel_account_setting(account_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->delete_channel_account_setting: #{e}"
end
```

#### Using the delete_channel_account_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> delete_channel_account_setting_with_http_info(account_id)

```ruby
begin
  # Reset a platform account's settings in the store to the defaults (no cap, no buffer, sync on, end on sell-out, republish automatically).
  data, status_code, headers = api_instance.delete_channel_account_setting_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->delete_channel_account_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_channel_inventory

> <ListChannelAccountsItem> delete_channel_inventory(platform, slot)

Deprecated alias of DELETE /api/v1/channel-accounts/:accountId/settings (removed next release).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
platform = 'platform_example' # String | 
slot = 56 # Integer | 

begin
  # Deprecated alias of DELETE /api/v1/channel-accounts/:accountId/settings (removed next release).
  result = api_instance.delete_channel_inventory(platform, slot)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->delete_channel_inventory: #{e}"
end
```

#### Using the delete_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> delete_channel_inventory_with_http_info(platform, slot)

```ruby
begin
  # Deprecated alias of DELETE /api/v1/channel-accounts/:accountId/settings (removed next release).
  data, status_code, headers = api_instance.delete_channel_inventory_with_http_info(platform, slot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->delete_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **slot** | **Integer** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_channel_account_setting

> <ListChannelAccountsItem> get_channel_account_setting(account_id)

Get one platform account's inventory and restock settings in the store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one platform account's inventory and restock settings in the store.
  result = api_instance.get_channel_account_setting(account_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->get_channel_account_setting: #{e}"
end
```

#### Using the get_channel_account_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> get_channel_account_setting_with_http_info(account_id)

```ruby
begin
  # Get one platform account's inventory and restock settings in the store.
  data, status_code, headers = api_instance.get_channel_account_setting_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->get_channel_account_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_channel_inventory

> <ListChannelAccountsItem> get_channel_inventory(platform, slot)

Deprecated alias of GET /api/v1/channel-accounts/:accountId/settings (removed next release).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
platform = 'platform_example' # String | 
slot = 56 # Integer | 

begin
  # Deprecated alias of GET /api/v1/channel-accounts/:accountId/settings (removed next release).
  result = api_instance.get_channel_inventory(platform, slot)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->get_channel_inventory: #{e}"
end
```

#### Using the get_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> get_channel_inventory_with_http_info(platform, slot)

```ruby
begin
  # Deprecated alias of GET /api/v1/channel-accounts/:accountId/settings (removed next release).
  data, status_code, headers = api_instance.get_channel_inventory_with_http_info(platform, slot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->get_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **slot** | **Integer** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_channel_accounts

> <ListChannelAccountsResponse> list_channel_accounts

List every platform account of the store with its inventory and restock settings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new

begin
  # List every platform account of the store with its inventory and restock settings.
  result = api_instance.list_channel_accounts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_accounts: #{e}"
end
```

#### Using the list_channel_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsResponse>, Integer, Hash)> list_channel_accounts_with_http_info

```ruby
begin
  # List every platform account of the store with its inventory and restock settings.
  data, status_code, headers = api_instance.list_channel_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListChannelAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_channel_inventory

> <ListChannelAccountsResponse> list_channel_inventory

Deprecated alias of GET /api/v1/channel-accounts (removed next release).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new

begin
  # Deprecated alias of GET /api/v1/channel-accounts (removed next release).
  result = api_instance.list_channel_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_inventory: #{e}"
end
```

#### Using the list_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsResponse>, Integer, Hash)> list_channel_inventory_with_http_info

```ruby
begin
  # Deprecated alias of GET /api/v1/channel-accounts (removed next release).
  data, status_code, headers = api_instance.list_channel_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListChannelAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_channel_account_setting

> <ListChannelAccountsItem> update_channel_account_setting(account_id, update_channel_inventory_request)

Set a platform account's quantity cap, buffer, sync toggle, out-of-stock action, exclusions and restock auto-republish in the store (merge write).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_channel_inventory_request = Crossly::UpdateChannelInventoryRequest.new # UpdateChannelInventoryRequest | 

begin
  # Set a platform account's quantity cap, buffer, sync toggle, out-of-stock action, exclusions and restock auto-republish in the store (merge write).
  result = api_instance.update_channel_account_setting(account_id, update_channel_inventory_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_account_setting: #{e}"
end
```

#### Using the update_channel_account_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> update_channel_account_setting_with_http_info(account_id, update_channel_inventory_request)

```ruby
begin
  # Set a platform account's quantity cap, buffer, sync toggle, out-of-stock action, exclusions and restock auto-republish in the store (merge write).
  data, status_code, headers = api_instance.update_channel_account_setting_with_http_info(account_id, update_channel_inventory_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_account_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_channel_inventory_request** | **UpdateChannelInventoryRequest** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_channel_inventory

> <ListChannelAccountsItem> update_channel_inventory(platform, slot, update_channel_inventory_request)

Deprecated alias of PUT /api/v1/channel-accounts/:accountId/settings (removed next release).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ChannelInventoryApi.new
platform = 'platform_example' # String | 
slot = 56 # Integer | 
update_channel_inventory_request = Crossly::UpdateChannelInventoryRequest.new # UpdateChannelInventoryRequest | 

begin
  # Deprecated alias of PUT /api/v1/channel-accounts/:accountId/settings (removed next release).
  result = api_instance.update_channel_inventory(platform, slot, update_channel_inventory_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_inventory: #{e}"
end
```

#### Using the update_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelAccountsItem>, Integer, Hash)> update_channel_inventory_with_http_info(platform, slot, update_channel_inventory_request)

```ruby
begin
  # Deprecated alias of PUT /api/v1/channel-accounts/:accountId/settings (removed next release).
  data, status_code, headers = api_instance.update_channel_inventory_with_http_info(platform, slot, update_channel_inventory_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelAccountsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **slot** | **Integer** |  |  |
| **update_channel_inventory_request** | **UpdateChannelInventoryRequest** |  |  |

### Return type

**ListChannelAccountsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

