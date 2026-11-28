# Crossly::ConnectionsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_device**](ConnectionsApi.md#delete_device) | **DELETE** /v1/devices/{id} | Unpair a machine. Its access ends at once and any waiting print job is cancelled. |
| [**get_connection_health**](ConnectionsApi.md#get_connection_health) | **GET** /v1/connection-health | Health of each connected marketplace account, with a plain-English diagnosis. |
| [**list_devices**](ConnectionsApi.md#list_devices) | **GET** /v1/devices | Machines paired to this account, and what each can do. |
| [**update_device**](ConnectionsApi.md#update_device) | **PATCH** /v1/devices/{id} | Rename a paired machine. |


## delete_device

> <DeleteDeviceResponse> delete_device(id)

Unpair a machine. Its access ends at once and any waiting print job is cancelled.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConnectionsApi.new
id = 'id_example' # String | 

begin
  # Unpair a machine. Its access ends at once and any waiting print job is cancelled.
  result = api_instance.delete_device(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->delete_device: #{e}"
end
```

#### Using the delete_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDeviceResponse>, Integer, Hash)> delete_device_with_http_info(id)

```ruby
begin
  # Unpair a machine. Its access ends at once and any waiting print job is cancelled.
  data, status_code, headers = api_instance.delete_device_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDeviceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->delete_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteDeviceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connection_health

> <GetConnectionHealthResponse> get_connection_health(opts)

Health of each connected marketplace account, with a plain-English diagnosis.

One entry per ACCOUNT, not per platform — a healthy slot 1 must not speak for a dead slot 2. States that were never measured are reported as \"unknown\" rather than as failures.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConnectionsApi.new
opts = {
  include_unconnected: true # Boolean | 
}

begin
  # Health of each connected marketplace account, with a plain-English diagnosis.
  result = api_instance.get_connection_health(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->get_connection_health: #{e}"
end
```

#### Using the get_connection_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionHealthResponse>, Integer, Hash)> get_connection_health_with_http_info(opts)

```ruby
begin
  # Health of each connected marketplace account, with a plain-English diagnosis.
  data, status_code, headers = api_instance.get_connection_health_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionHealthResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->get_connection_health_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_unconnected** | **Boolean** |  | [optional] |

### Return type

**GetConnectionHealthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_devices

> <ListDevicesResponse> list_devices

Machines paired to this account, and what each can do.

Capabilities are what the machine DECLARED it can do at pairing — print, scan_watch, browser, cookie_jar, proxy_bind, scale. A machine only declares \"scale\" when one actually answered, never on the assumption that one might.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConnectionsApi.new

begin
  # Machines paired to this account, and what each can do.
  result = api_instance.list_devices
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->list_devices: #{e}"
end
```

#### Using the list_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDevicesResponse>, Integer, Hash)> list_devices_with_http_info

```ruby
begin
  # Machines paired to this account, and what each can do.
  data, status_code, headers = api_instance.list_devices_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDevicesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->list_devices_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListDevicesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_device

> <UpdateDeviceResponse> update_device(id, update_device_request)

Rename a paired machine.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConnectionsApi.new
id = 'id_example' # String | 
update_device_request = Crossly::UpdateDeviceRequest.new({name: 'name_example'}) # UpdateDeviceRequest | 

begin
  # Rename a paired machine.
  result = api_instance.update_device(id, update_device_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->update_device: #{e}"
end
```

#### Using the update_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDeviceResponse>, Integer, Hash)> update_device_with_http_info(id, update_device_request)

```ruby
begin
  # Rename a paired machine.
  data, status_code, headers = api_instance.update_device_with_http_info(id, update_device_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDeviceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConnectionsApi->update_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_device_request** | **UpdateDeviceRequest** |  |  |

### Return type

**UpdateDeviceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

