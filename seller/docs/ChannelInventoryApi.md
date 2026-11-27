# Crossly::ChannelInventoryApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_channel_inventory**](ChannelInventoryApi.md#delete_channel_inventory) | **DELETE** /v1/channel-inventory/{platform}/{slot} | Reset a channel&#39;s inventory controls to the default (no cap, no buffer, sync on, end on sell-out). |
| [**get_channel_inventory**](ChannelInventoryApi.md#get_channel_inventory) | **GET** /v1/channel-inventory/{platform}/{slot} | Get one channel&#39;s inventory controls. |
| [**list_channel_inventory**](ChannelInventoryApi.md#list_channel_inventory) | **GET** /v1/channel-inventory | List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions). |
| [**update_channel_inventory**](ChannelInventoryApi.md#update_channel_inventory) | **PUT** /v1/channel-inventory/{platform}/{slot} | Set a channel&#39;s quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write). |


## delete_channel_inventory

> <ListChannelInventoryItem> delete_channel_inventory(platform, slot)

Reset a channel's inventory controls to the default (no cap, no buffer, sync on, end on sell-out).

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
  # Reset a channel's inventory controls to the default (no cap, no buffer, sync on, end on sell-out).
  result = api_instance.delete_channel_inventory(platform, slot)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->delete_channel_inventory: #{e}"
end
```

#### Using the delete_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelInventoryItem>, Integer, Hash)> delete_channel_inventory_with_http_info(platform, slot)

```ruby
begin
  # Reset a channel's inventory controls to the default (no cap, no buffer, sync on, end on sell-out).
  data, status_code, headers = api_instance.delete_channel_inventory_with_http_info(platform, slot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelInventoryItem>
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

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_channel_inventory

> <ListChannelInventoryItem> get_channel_inventory(platform, slot)

Get one channel's inventory controls.

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
  # Get one channel's inventory controls.
  result = api_instance.get_channel_inventory(platform, slot)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->get_channel_inventory: #{e}"
end
```

#### Using the get_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelInventoryItem>, Integer, Hash)> get_channel_inventory_with_http_info(platform, slot)

```ruby
begin
  # Get one channel's inventory controls.
  data, status_code, headers = api_instance.get_channel_inventory_with_http_info(platform, slot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelInventoryItem>
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

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_channel_inventory

> <ListChannelInventoryResponse> list_channel_inventory

List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).

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
  # List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).
  result = api_instance.list_channel_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_inventory: #{e}"
end
```

#### Using the list_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelInventoryResponse>, Integer, Hash)> list_channel_inventory_with_http_info

```ruby
begin
  # List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).
  data, status_code, headers = api_instance.list_channel_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->list_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListChannelInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_channel_inventory

> <ListChannelInventoryItem> update_channel_inventory(platform, slot)

Set a channel's quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).

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
  # Set a channel's quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).
  result = api_instance.update_channel_inventory(platform, slot)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_inventory: #{e}"
end
```

#### Using the update_channel_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannelInventoryItem>, Integer, Hash)> update_channel_inventory_with_http_info(platform, slot)

```ruby
begin
  # Set a channel's quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).
  data, status_code, headers = api_instance.update_channel_inventory_with_http_info(platform, slot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannelInventoryItem>
rescue Crossly::ApiError => e
  puts "Error when calling ChannelInventoryApi->update_channel_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **slot** | **Integer** |  |  |

### Return type

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

