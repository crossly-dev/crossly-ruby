# Crossly::NeighbourhoodsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_neighbourhood**](NeighbourhoodsApi.md#get_neighbourhood) | **GET** /v1/neighbourhoods/{slug} | One neighbourhood street by slug. |
| [**list_neighbourhoods**](NeighbourhoodsApi.md#list_neighbourhoods) | **GET** /v1/neighbourhoods | Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \&quot;opening soon\&quot; (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/&lt;slug&gt; URL. |


## get_neighbourhood

> <GetNeighbourhoodResponse> get_neighbourhood(slug)

One neighbourhood street by slug.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NeighbourhoodsApi.new
slug = 'sneaker-row' # String | 

begin
  # One neighbourhood street by slug.
  result = api_instance.get_neighbourhood(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NeighbourhoodsApi->get_neighbourhood: #{e}"
end
```

#### Using the get_neighbourhood_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNeighbourhoodResponse>, Integer, Hash)> get_neighbourhood_with_http_info(slug)

```ruby
begin
  # One neighbourhood street by slug.
  data, status_code, headers = api_instance.get_neighbourhood_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNeighbourhoodResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NeighbourhoodsApi->get_neighbourhood_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetNeighbourhoodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_neighbourhoods

> <ListNeighbourhoodsResponse> list_neighbourhoods

Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \"opening soon\" (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/<slug> URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NeighbourhoodsApi.new

begin
  # Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \"opening soon\" (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/<slug> URL.
  result = api_instance.list_neighbourhoods
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NeighbourhoodsApi->list_neighbourhoods: #{e}"
end
```

#### Using the list_neighbourhoods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListNeighbourhoodsResponse>, Integer, Hash)> list_neighbourhoods_with_http_info

```ruby
begin
  # Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \"opening soon\" (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/<slug> URL.
  data, status_code, headers = api_instance.list_neighbourhoods_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListNeighbourhoodsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NeighbourhoodsApi->list_neighbourhoods_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListNeighbourhoodsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

