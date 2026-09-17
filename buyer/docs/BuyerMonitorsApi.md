# CrosslyBuyer::BuyerMonitorsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_monitor**](BuyerMonitorsApi.md#create_buyer_monitor) | **POST** /v1/buyer/monitors | Watch a search, and be told when it matches. |
| [**delete_buyer_monitor**](BuyerMonitorsApi.md#delete_buyer_monitor) | **DELETE** /v1/buyer/monitors/{id} | Delete a monitor. |
| [**list_buyer_monitor_matches**](BuyerMonitorsApi.md#list_buyer_monitor_matches) | **GET** /v1/buyer/monitors/{id}/matches | What this monitor has matched. |
| [**list_buyer_monitors**](BuyerMonitorsApi.md#list_buyer_monitors) | **GET** /v1/buyer/monitors | Your monitors. |
| [**update_buyer_monitor**](BuyerMonitorsApi.md#update_buyer_monitor) | **PATCH** /v1/buyer/monitors/{id} | Pause, resume or rename a monitor. |


## create_buyer_monitor

> <CreateBuyerMonitorResponse> create_buyer_monitor

Watch a search, and be told when it matches.

Works immediately — there is no review step. The signing secret is returned ONCE, here; it is never readable again. The first sweep SEEDS without firing: a restock alert created while the item is already in stock has not observed a restock, and a new-listing monitor would otherwise deliver the entire back catalogue.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerMonitorsApi.new

begin
  # Watch a search, and be told when it matches.
  result = api_instance.create_buyer_monitor
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->create_buyer_monitor: #{e}"
end
```

#### Using the create_buyer_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerMonitorResponse>, Integer, Hash)> create_buyer_monitor_with_http_info

```ruby
begin
  # Watch a search, and be told when it matches.
  data, status_code, headers = api_instance.create_buyer_monitor_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerMonitorResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->create_buyer_monitor_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerMonitorResponse**](CreateBuyerMonitorResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_monitor

> delete_buyer_monitor(id)

Delete a monitor.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerMonitorsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a monitor.
  api_instance.delete_buyer_monitor(id)
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->delete_buyer_monitor: #{e}"
end
```

#### Using the delete_buyer_monitor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_buyer_monitor_with_http_info(id)

```ruby
begin
  # Delete a monitor.
  data, status_code, headers = api_instance.delete_buyer_monitor_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->delete_buyer_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_monitor_matches

> <V1List> list_buyer_monitor_matches(id)

What this monitor has matched.

The read side of a `poll` monitor, and an audit trail for a `webhook` one — so a missed delivery does not mean lost data.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerMonitorsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # What this monitor has matched.
  result = api_instance.list_buyer_monitor_matches(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->list_buyer_monitor_matches: #{e}"
end
```

#### Using the list_buyer_monitor_matches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_monitor_matches_with_http_info(id)

```ruby
begin
  # What this monitor has matched.
  data, status_code, headers = api_instance.list_buyer_monitor_matches_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->list_buyer_monitor_matches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_monitors

> <V1List> list_buyer_monitors

Your monitors.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerMonitorsApi.new

begin
  # Your monitors.
  result = api_instance.list_buyer_monitors
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->list_buyer_monitors: #{e}"
end
```

#### Using the list_buyer_monitors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_monitors_with_http_info

```ruby
begin
  # Your monitors.
  data, status_code, headers = api_instance.list_buyer_monitors_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->list_buyer_monitors_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_monitor

> <UpdateBuyerMonitorResponse> update_buyer_monitor(id)

Pause, resume or rename a monitor.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerMonitorsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Pause, resume or rename a monitor.
  result = api_instance.update_buyer_monitor(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->update_buyer_monitor: #{e}"
end
```

#### Using the update_buyer_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBuyerMonitorResponse>, Integer, Hash)> update_buyer_monitor_with_http_info(id)

```ruby
begin
  # Pause, resume or rename a monitor.
  data, status_code, headers = api_instance.update_buyer_monitor_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBuyerMonitorResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerMonitorsApi->update_buyer_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateBuyerMonitorResponse**](UpdateBuyerMonitorResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

