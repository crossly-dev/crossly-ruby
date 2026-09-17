# Crossly::CompWatchlistsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_comp_watchlist**](CompWatchlistsApi.md#create_comp_watchlist) | **POST** /v1/comp-watchlists | Create a sold-comp watchlist. |
| [**create_comp_watchlist_scrape**](CompWatchlistsApi.md#create_comp_watchlist_scrape) | **POST** /v1/comp-watchlists/{id}/scrape | Manually trigger a watchlist scrape. |
| [**delete_comp_watchlist**](CompWatchlistsApi.md#delete_comp_watchlist) | **DELETE** /v1/comp-watchlists/{id} | Delete a sold-comp watchlist. |
| [**list_comp_watchlist_recent**](CompWatchlistsApi.md#list_comp_watchlist_recent) | **GET** /v1/comp-watchlists/{id}/recent | Recent external sold comps matching this watchlist. |
| [**list_comp_watchlists**](CompWatchlistsApi.md#list_comp_watchlists) | **GET** /v1/comp-watchlists | List the seller&#39;s sold-comp watchlists. |


## create_comp_watchlist

> <CreateCompWatchlistResponse> create_comp_watchlist

Create a sold-comp watchlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CompWatchlistsApi.new

begin
  # Create a sold-comp watchlist.
  result = api_instance.create_comp_watchlist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->create_comp_watchlist: #{e}"
end
```

#### Using the create_comp_watchlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCompWatchlistResponse>, Integer, Hash)> create_comp_watchlist_with_http_info

```ruby
begin
  # Create a sold-comp watchlist.
  data, status_code, headers = api_instance.create_comp_watchlist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCompWatchlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->create_comp_watchlist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCompWatchlistResponse**](CreateCompWatchlistResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_comp_watchlist_scrape

> <CreateCompWatchlistScrapeResponse> create_comp_watchlist_scrape(id)

Manually trigger a watchlist scrape.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CompWatchlistsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Manually trigger a watchlist scrape.
  result = api_instance.create_comp_watchlist_scrape(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->create_comp_watchlist_scrape: #{e}"
end
```

#### Using the create_comp_watchlist_scrape_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCompWatchlistScrapeResponse>, Integer, Hash)> create_comp_watchlist_scrape_with_http_info(id)

```ruby
begin
  # Manually trigger a watchlist scrape.
  data, status_code, headers = api_instance.create_comp_watchlist_scrape_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCompWatchlistScrapeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->create_comp_watchlist_scrape_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateCompWatchlistScrapeResponse**](CreateCompWatchlistScrapeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_comp_watchlist

> <DeleteCompWatchlistResponse> delete_comp_watchlist(id)

Delete a sold-comp watchlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CompWatchlistsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a sold-comp watchlist.
  result = api_instance.delete_comp_watchlist(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->delete_comp_watchlist: #{e}"
end
```

#### Using the delete_comp_watchlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCompWatchlistResponse>, Integer, Hash)> delete_comp_watchlist_with_http_info(id)

```ruby
begin
  # Delete a sold-comp watchlist.
  data, status_code, headers = api_instance.delete_comp_watchlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCompWatchlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->delete_comp_watchlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteCompWatchlistResponse**](DeleteCompWatchlistResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_comp_watchlist_recent

> <V1List> list_comp_watchlist_recent(id)

Recent external sold comps matching this watchlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CompWatchlistsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Recent external sold comps matching this watchlist.
  result = api_instance.list_comp_watchlist_recent(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->list_comp_watchlist_recent: #{e}"
end
```

#### Using the list_comp_watchlist_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_comp_watchlist_recent_with_http_info(id)

```ruby
begin
  # Recent external sold comps matching this watchlist.
  data, status_code, headers = api_instance.list_comp_watchlist_recent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->list_comp_watchlist_recent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_comp_watchlists

> <V1List> list_comp_watchlists

List the seller's sold-comp watchlists.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CompWatchlistsApi.new

begin
  # List the seller's sold-comp watchlists.
  result = api_instance.list_comp_watchlists
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->list_comp_watchlists: #{e}"
end
```

#### Using the list_comp_watchlists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_comp_watchlists_with_http_info

```ruby
begin
  # List the seller's sold-comp watchlists.
  data, status_code, headers = api_instance.list_comp_watchlists_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CompWatchlistsApi->list_comp_watchlists_with_http_info: #{e}"
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

