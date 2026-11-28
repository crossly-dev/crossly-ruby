# Crossly::AppsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_app**](AppsApi.md#get_app) | **GET** /v1/apps/{clientId} | Get one listed app by client id or profile slug. 404 if it is not in the directory. |
| [**get_app_earning**](AppsApi.md#get_app_earning) | **GET** /v1/apps/{id}/earnings | Your store&#39;s OAuth app&#39;s revenue-share earnings: summary (with the store they pay out to) + ledger. The app&#39;s store owner, or a teammate with apps:read on it. |
| [**get_app_listing_allowance**](AppsApi.md#get_app_listing_allowance) | **GET** /v1/apps/{id}/listing-allowance | Your OAuth app&#39;s listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only. |
| [**list_apps**](AppsApi.md#list_apps) | **GET** /v1/apps | Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging). |


## get_app

> <ListAppsItem> get_app(client_id)

Get one listed app by client id or profile slug. 404 if it is not in the directory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppsApi.new
client_id = 'client_id_example' # String | 

begin
  # Get one listed app by client id or profile slug. 404 if it is not in the directory.
  result = api_instance.get_app(client_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app: #{e}"
end
```

#### Using the get_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppsItem>, Integer, Hash)> get_app_with_http_info(client_id)

```ruby
begin
  # Get one listed app by client id or profile slug. 404 if it is not in the directory.
  data, status_code, headers = api_instance.get_app_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppsItem>
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  |  |

### Return type

**ListAppsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app_earning

> <GetAppEarningResponse> get_app_earning(id)

Your store's OAuth app's revenue-share earnings: summary (with the store they pay out to) + ledger. The app's store owner, or a teammate with apps:read on it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Your store's OAuth app's revenue-share earnings: summary (with the store they pay out to) + ledger. The app's store owner, or a teammate with apps:read on it.
  result = api_instance.get_app_earning(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app_earning: #{e}"
end
```

#### Using the get_app_earning_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAppEarningResponse>, Integer, Hash)> get_app_earning_with_http_info(id)

```ruby
begin
  # Your store's OAuth app's revenue-share earnings: summary (with the store they pay out to) + ledger. The app's store owner, or a teammate with apps:read on it.
  data, status_code, headers = api_instance.get_app_earning_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAppEarningResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app_earning_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetAppEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app_listing_allowance

> <GetAppListingAllowanceResponse> get_app_listing_allowance(id)

Your OAuth app's listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Your OAuth app's listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.
  result = api_instance.get_app_listing_allowance(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app_listing_allowance: #{e}"
end
```

#### Using the get_app_listing_allowance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAppListingAllowanceResponse>, Integer, Hash)> get_app_listing_allowance_with_http_info(id)

```ruby
begin
  # Your OAuth app's listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.
  data, status_code, headers = api_instance.get_app_listing_allowance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAppListingAllowanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->get_app_listing_allowance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetAppListingAllowanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_apps

> <ListAppsResponse> list_apps(opts)

Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppsApi.new
opts = {
  directory: 'seller', # String | 
  sort: 'popular', # String | 
  featured: 'true', # String | 
  category: 'category_example', # String | 
  q: 'q_example', # String | 
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).
  result = api_instance.list_apps(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->list_apps: #{e}"
end
```

#### Using the list_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppsResponse>, Integer, Hash)> list_apps_with_http_info(opts)

```ruby
begin
  # Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).
  data, status_code, headers = api_instance.list_apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppsApi->list_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directory** | **String** |  | [optional] |
| **sort** | **String** |  | [optional] |
| **featured** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **q** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

**ListAppsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

