# Crossly::BreaksApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_break**](BreaksApi.md#create_break) | **POST** /v1/breaks | Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw. |
| [**create_break_cancel**](BreaksApi.md#create_break_cancel) | **POST** /v1/breaks/{id}/cancel | Cancel a break before any spot is paid for; after that, refund those orders instead (409). |
| [**create_break_draw**](BreaksApi.md#create_break_draw) | **POST** /v1/breaks/{id}/draw | Draw a sold-out random break: assigns spots from the committed seed and reveals it. |
| [**create_break_opened**](BreaksApi.md#create_break_opened) | **POST** /v1/breaks/{id}/opened | Mark the product opened on stream. |
| [**create_break_spot_hit**](BreaksApi.md#create_break_spot_hit) | **POST** /v1/breaks/{id}/spots/{spotId}/hits | Record what a spot pulled. |
| [**get_break**](BreaksApi.md#get_break) | **GET** /v1/breaks/{id} | A break’s board with every spot, its buyer and its hits. |
| [**list_breaks**](BreaksApi.md#list_breaks) | **GET** /v1/breaks | Your card breaks, newest first. |


## create_break

> <CreateBreakResponse> create_break

Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new

begin
  # Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.
  result = api_instance.create_break
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break: #{e}"
end
```

#### Using the create_break_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakResponse>, Integer, Hash)> create_break_with_http_info

```ruby
begin
  # Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.
  data, status_code, headers = api_instance.create_break_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_break_cancel

> <CreateBreakCancelResponse> create_break_cancel(id)

Cancel a break before any spot is paid for; after that, refund those orders instead (409).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new
id = 'id_example' # String | 

begin
  # Cancel a break before any spot is paid for; after that, refund those orders instead (409).
  result = api_instance.create_break_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_cancel: #{e}"
end
```

#### Using the create_break_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> create_break_cancel_with_http_info(id)

```ruby
begin
  # Cancel a break before any spot is paid for; after that, refund those orders instead (409).
  data, status_code, headers = api_instance.create_break_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_break_draw

> <CreateBreakDrawResponse> create_break_draw(id)

Draw a sold-out random break: assigns spots from the committed seed and reveals it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new
id = 'id_example' # String | 

begin
  # Draw a sold-out random break: assigns spots from the committed seed and reveals it.
  result = api_instance.create_break_draw(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_draw: #{e}"
end
```

#### Using the create_break_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakDrawResponse>, Integer, Hash)> create_break_draw_with_http_info(id)

```ruby
begin
  # Draw a sold-out random break: assigns spots from the committed seed and reveals it.
  data, status_code, headers = api_instance.create_break_draw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakDrawResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_draw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_break_opened

> <CreateBreakCancelResponse> create_break_opened(id)

Mark the product opened on stream.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new
id = 'id_example' # String | 

begin
  # Mark the product opened on stream.
  result = api_instance.create_break_opened(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_opened: #{e}"
end
```

#### Using the create_break_opened_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> create_break_opened_with_http_info(id)

```ruby
begin
  # Mark the product opened on stream.
  data, status_code, headers = api_instance.create_break_opened_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_opened_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_break_spot_hit

> <CreateBreakCancelResponse> create_break_spot_hit(id, spot_id)

Record what a spot pulled.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new
id = 'id_example' # String | 
spot_id = 'spot_id_example' # String | 

begin
  # Record what a spot pulled.
  result = api_instance.create_break_spot_hit(id, spot_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_spot_hit: #{e}"
end
```

#### Using the create_break_spot_hit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> create_break_spot_hit_with_http_info(id, spot_id)

```ruby
begin
  # Record what a spot pulled.
  data, status_code, headers = api_instance.create_break_spot_hit_with_http_info(id, spot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->create_break_spot_hit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **spot_id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_break

> <GetBreakResponse> get_break(id)

A break’s board with every spot, its buyer and its hits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new
id = 'id_example' # String | 

begin
  # A break’s board with every spot, its buyer and its hits.
  result = api_instance.get_break(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->get_break: #{e}"
end
```

#### Using the get_break_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBreakResponse>, Integer, Hash)> get_break_with_http_info(id)

```ruby
begin
  # A break’s board with every spot, its buyer and its hits.
  data, status_code, headers = api_instance.get_break_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBreakResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->get_break_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_breaks

> <ListBreaksResponse> list_breaks

Your card breaks, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BreaksApi.new

begin
  # Your card breaks, newest first.
  result = api_instance.list_breaks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->list_breaks: #{e}"
end
```

#### Using the list_breaks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBreaksResponse>, Integer, Hash)> list_breaks_with_http_info

```ruby
begin
  # Your card breaks, newest first.
  data, status_code, headers = api_instance.list_breaks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBreaksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BreaksApi->list_breaks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBreaksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

