# Crossly::StallsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stall_book**](StallsApi.md#create_stall_book) | **POST** /v1/stalls/book | Book and pay for a pop-up stall: { street, spotIndex, rail, unit: \&quot;day\&quot;, startDate, days } or { ..., unit: \&quot;event\&quot;, eventIds }, optional booth { canopy, pattern, lights, counter, piece } (premium values need holding; checked before paying). Paid up front; full-access token and Idempotency-Key required. |
| [**create_stall_booking_cancel**](StallsApi.md#create_stall_booking_cancel) | **POST** /v1/stalls/bookings/{id}/cancel | Cancel a stall before it opens: a full refund on the rail it was paid on. Final once it has opened. |
| [**get_stall_quote**](StallsApi.md#get_stall_quote) | **GET** /v1/stalls/quote | Quote a stall: street, spot, and either unit&#x3D;day with start (YYYY-MM-DD) and days, or unit&#x3D;event with events (comma-separated event ids). Returns the line items in cents, the rails the spot accepts and whether it is bookable. |
| [**list_stall_mine**](StallsApi.md#list_stall_mine) | **GET** /v1/stalls/mine | Your stall bookings, newest first, with visits, offers and sales while the stall was up. |
| [**list_street_events**](StallsApi.md#list_street_events) | **GET** /v1/streets/{slug}/events | Current and upcoming street events (Night Market, Swap Meet) on a street, soonest first. |
| [**list_street_stalls**](StallsApi.md#list_street_stalls) | **GET** /v1/streets/{slug}/stalls | Today&#39;s pop-up stalls on a street (each with its live listings, awning, sign and seller), plus the spots still free today. meta carries the street, the phase (day / night_market / swap_meet) and the free spots. |
| [**update_stall_booking**](StallsApi.md#update_stall_booking) | **PATCH** /v1/stalls/bookings/{id} | Change a booked stall before or while it is up: listingIds (up to 6 of your live listings), awning { colour, pattern }, booth { canopy, pattern, lights, counter, piece } (premium values need holding), sign, attendant. |


## create_stall_book

> <CreateStallBookResponse> create_stall_book

Book and pay for a pop-up stall: { street, spotIndex, rail, unit: \"day\", startDate, days } or { ..., unit: \"event\", eventIds }, optional booth { canopy, pattern, lights, counter, piece } (premium values need holding; checked before paying). Paid up front; full-access token and Idempotency-Key required.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new

begin
  # Book and pay for a pop-up stall: { street, spotIndex, rail, unit: \"day\", startDate, days } or { ..., unit: \"event\", eventIds }, optional booth { canopy, pattern, lights, counter, piece } (premium values need holding; checked before paying). Paid up front; full-access token and Idempotency-Key required.
  result = api_instance.create_stall_book
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->create_stall_book: #{e}"
end
```

#### Using the create_stall_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStallBookResponse>, Integer, Hash)> create_stall_book_with_http_info

```ruby
begin
  # Book and pay for a pop-up stall: { street, spotIndex, rail, unit: \"day\", startDate, days } or { ..., unit: \"event\", eventIds }, optional booth { canopy, pattern, lights, counter, piece } (premium values need holding; checked before paying). Paid up front; full-access token and Idempotency-Key required.
  data, status_code, headers = api_instance.create_stall_book_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStallBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->create_stall_book_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateStallBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_stall_booking_cancel

> <CreateStallBookingCancelResponse> create_stall_booking_cancel(id)

Cancel a stall before it opens: a full refund on the rail it was paid on. Final once it has opened.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new
id = 'id_example' # String | 

begin
  # Cancel a stall before it opens: a full refund on the rail it was paid on. Final once it has opened.
  result = api_instance.create_stall_booking_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->create_stall_booking_cancel: #{e}"
end
```

#### Using the create_stall_booking_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStallBookingCancelResponse>, Integer, Hash)> create_stall_booking_cancel_with_http_info(id)

```ruby
begin
  # Cancel a stall before it opens: a full refund on the rail it was paid on. Final once it has opened.
  data, status_code, headers = api_instance.create_stall_booking_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStallBookingCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->create_stall_booking_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateStallBookingCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stall_quote

> <GetStallQuoteResponse> get_stall_quote(street, spot, opts)

Quote a stall: street, spot, and either unit=day with start (YYYY-MM-DD) and days, or unit=event with events (comma-separated event ids). Returns the line items in cents, the rails the spot accepts and whether it is bookable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new
street = 'street_example' # String | 
spot = 56 # Integer | 
opts = {
  unit: 'day', # String | 
  start: 'start_example', # String | YYYY-MM-DD (unit=day).
  days: 56, # Integer | How many days (unit=day).
  events: 'events_example' # String | Comma-separated street event ids (unit=event).
}

begin
  # Quote a stall: street, spot, and either unit=day with start (YYYY-MM-DD) and days, or unit=event with events (comma-separated event ids). Returns the line items in cents, the rails the spot accepts and whether it is bookable.
  result = api_instance.get_stall_quote(street, spot, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->get_stall_quote: #{e}"
end
```

#### Using the get_stall_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStallQuoteResponse>, Integer, Hash)> get_stall_quote_with_http_info(street, spot, opts)

```ruby
begin
  # Quote a stall: street, spot, and either unit=day with start (YYYY-MM-DD) and days, or unit=event with events (comma-separated event ids). Returns the line items in cents, the rails the spot accepts and whether it is bookable.
  data, status_code, headers = api_instance.get_stall_quote_with_http_info(street, spot, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStallQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->get_stall_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street** | **String** |  |  |
| **spot** | **Integer** |  |  |
| **unit** | **String** |  | [optional] |
| **start** | **String** | YYYY-MM-DD (unit&#x3D;day). | [optional] |
| **days** | **Integer** | How many days (unit&#x3D;day). | [optional] |
| **events** | **String** | Comma-separated street event ids (unit&#x3D;event). | [optional] |

### Return type

**GetStallQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stall_mine

> <ListStallMineResponse> list_stall_mine

Your stall bookings, newest first, with visits, offers and sales while the stall was up.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new

begin
  # Your stall bookings, newest first, with visits, offers and sales while the stall was up.
  result = api_instance.list_stall_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_stall_mine: #{e}"
end
```

#### Using the list_stall_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStallMineResponse>, Integer, Hash)> list_stall_mine_with_http_info

```ruby
begin
  # Your stall bookings, newest first, with visits, offers and sales while the stall was up.
  data, status_code, headers = api_instance.list_stall_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStallMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_stall_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListStallMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_street_events

> <ListStreetEventsResponse> list_street_events(slug)

Current and upcoming street events (Night Market, Swap Meet) on a street, soonest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new
slug = 'slug_example' # String | 

begin
  # Current and upcoming street events (Night Market, Swap Meet) on a street, soonest first.
  result = api_instance.list_street_events(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_street_events: #{e}"
end
```

#### Using the list_street_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStreetEventsResponse>, Integer, Hash)> list_street_events_with_http_info(slug)

```ruby
begin
  # Current and upcoming street events (Night Market, Swap Meet) on a street, soonest first.
  data, status_code, headers = api_instance.list_street_events_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStreetEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_street_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListStreetEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_street_stalls

> <ListStreetStallsResponse> list_street_stalls(slug)

Today's pop-up stalls on a street (each with its live listings, awning, sign and seller), plus the spots still free today. meta carries the street, the phase (day / night_market / swap_meet) and the free spots.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new
slug = 'slug_example' # String | 

begin
  # Today's pop-up stalls on a street (each with its live listings, awning, sign and seller), plus the spots still free today. meta carries the street, the phase (day / night_market / swap_meet) and the free spots.
  result = api_instance.list_street_stalls(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_street_stalls: #{e}"
end
```

#### Using the list_street_stalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStreetStallsResponse>, Integer, Hash)> list_street_stalls_with_http_info(slug)

```ruby
begin
  # Today's pop-up stalls on a street (each with its live listings, awning, sign and seller), plus the spots still free today. meta carries the street, the phase (day / night_market / swap_meet) and the free spots.
  data, status_code, headers = api_instance.list_street_stalls_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStreetStallsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->list_street_stalls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListStreetStallsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stall_booking

> <CreateStallBookResponse> update_stall_booking(id)

Change a booked stall before or while it is up: listingIds (up to 6 of your live listings), awning { colour, pattern }, booth { canopy, pattern, lights, counter, piece } (premium values need holding), sign, attendant.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StallsApi.new
id = 'id_example' # String | 

begin
  # Change a booked stall before or while it is up: listingIds (up to 6 of your live listings), awning { colour, pattern }, booth { canopy, pattern, lights, counter, piece } (premium values need holding), sign, attendant.
  result = api_instance.update_stall_booking(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->update_stall_booking: #{e}"
end
```

#### Using the update_stall_booking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStallBookResponse>, Integer, Hash)> update_stall_booking_with_http_info(id)

```ruby
begin
  # Change a booked stall before or while it is up: listingIds (up to 6 of your live listings), awning { colour, pattern }, booth { canopy, pattern, lights, counter, piece } (premium values need holding), sign, attendant.
  data, status_code, headers = api_instance.update_stall_booking_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStallBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StallsApi->update_stall_booking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateStallBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

