# Crossly::DropsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drop**](DropsApi.md#create_drop) | **POST** /v1/drops | Set up a drop: { title, listingIds (1-10 of your live Crossly listings), units (at most their stock), opensLineAt, releaseAt (ISO), eligibility: \&quot;signed_in\&quot; | \&quot;verified\&quot; }. The line opens at opensLineAt with a published seed commitment; the draw runs at releaseAt. |
| [**delete_drop**](DropsApi.md#delete_drop) | **DELETE** /v1/drops/{id} | Call a drop off before its line opens. |
| [**get_drop**](DropsApi.md#get_drop) | **GET** /v1/drops/{id} | A drop: its listings, units, times, eligibility, the sha256 seed commitment and the entry count. After release also the revealed seed, the sorted entry ids and the draw order (recompute it with drawWinners(seed, dropId, entryIds, units)). |
| [**list_drop_mine**](DropsApi.md#list_drop_mine) | **GET** /v1/drops/mine | Your drops, latest release first, with entries, winners, claims, the waitlist and expired holds. |
| [**list_street_drops**](DropsApi.md#list_street_drops) | **GET** /v1/streets/{slug}/drops | Upcoming, open and just-released drops on a Crossly World street, one per shop, soonest first, with the plot (or live stall spot) each line forms at. |
| [**update_drop**](DropsApi.md#update_drop) | **PATCH** /v1/drops/{id} | Change a drop before its line opens (any of the set-up fields). |


## create_drop

> <CreateDropResponse> create_drop

Set up a drop: { title, listingIds (1-10 of your live Crossly listings), units (at most their stock), opensLineAt, releaseAt (ISO), eligibility: \"signed_in\" | \"verified\" }. The line opens at opensLineAt with a published seed commitment; the draw runs at releaseAt.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new

begin
  # Set up a drop: { title, listingIds (1-10 of your live Crossly listings), units (at most their stock), opensLineAt, releaseAt (ISO), eligibility: \"signed_in\" | \"verified\" }. The line opens at opensLineAt with a published seed commitment; the draw runs at releaseAt.
  result = api_instance.create_drop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->create_drop: #{e}"
end
```

#### Using the create_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDropResponse>, Integer, Hash)> create_drop_with_http_info

```ruby
begin
  # Set up a drop: { title, listingIds (1-10 of your live Crossly listings), units (at most their stock), opensLineAt, releaseAt (ISO), eligibility: \"signed_in\" | \"verified\" }. The line opens at opensLineAt with a published seed commitment; the draw runs at releaseAt.
  data, status_code, headers = api_instance.create_drop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->create_drop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_drop

> <DeleteDropResponse> delete_drop(id)

Call a drop off before its line opens.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Call a drop off before its line opens.
  result = api_instance.delete_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->delete_drop: #{e}"
end
```

#### Using the delete_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDropResponse>, Integer, Hash)> delete_drop_with_http_info(id)

```ruby
begin
  # Call a drop off before its line opens.
  data, status_code, headers = api_instance.delete_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->delete_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_drop

> <GetDropResponse> get_drop(id)

A drop: its listings, units, times, eligibility, the sha256 seed commitment and the entry count. After release also the revealed seed, the sorted entry ids and the draw order (recompute it with drawWinners(seed, dropId, entryIds, units)).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # A drop: its listings, units, times, eligibility, the sha256 seed commitment and the entry count. After release also the revealed seed, the sorted entry ids and the draw order (recompute it with drawWinners(seed, dropId, entryIds, units)).
  result = api_instance.get_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->get_drop: #{e}"
end
```

#### Using the get_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDropResponse>, Integer, Hash)> get_drop_with_http_info(id)

```ruby
begin
  # A drop: its listings, units, times, eligibility, the sha256 seed commitment and the entry count. After release also the revealed seed, the sorted entry ids and the draw order (recompute it with drawWinners(seed, dropId, entryIds, units)).
  data, status_code, headers = api_instance.get_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->get_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_drop_mine

> <ListDropMineResponse> list_drop_mine

Your drops, latest release first, with entries, winners, claims, the waitlist and expired holds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new

begin
  # Your drops, latest release first, with entries, winners, claims, the waitlist and expired holds.
  result = api_instance.list_drop_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->list_drop_mine: #{e}"
end
```

#### Using the list_drop_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDropMineResponse>, Integer, Hash)> list_drop_mine_with_http_info

```ruby
begin
  # Your drops, latest release first, with entries, winners, claims, the waitlist and expired holds.
  data, status_code, headers = api_instance.list_drop_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDropMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->list_drop_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListDropMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_street_drops

> <ListStreetDropsResponse> list_street_drops(slug)

Upcoming, open and just-released drops on a Crossly World street, one per shop, soonest first, with the plot (or live stall spot) each line forms at.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new
slug = 'slug_example' # String | 

begin
  # Upcoming, open and just-released drops on a Crossly World street, one per shop, soonest first, with the plot (or live stall spot) each line forms at.
  result = api_instance.list_street_drops(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->list_street_drops: #{e}"
end
```

#### Using the list_street_drops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStreetDropsResponse>, Integer, Hash)> list_street_drops_with_http_info(slug)

```ruby
begin
  # Upcoming, open and just-released drops on a Crossly World street, one per shop, soonest first, with the plot (or live stall spot) each line forms at.
  data, status_code, headers = api_instance.list_street_drops_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStreetDropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->list_street_drops_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListStreetDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_drop

> <CreateDropResponse> update_drop(id)

Change a drop before its line opens (any of the set-up fields).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Change a drop before its line opens (any of the set-up fields).
  result = api_instance.update_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->update_drop: #{e}"
end
```

#### Using the update_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDropResponse>, Integer, Hash)> update_drop_with_http_info(id)

```ruby
begin
  # Change a drop before its line opens (any of the set-up fields).
  data, status_code, headers = api_instance.update_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DropsApi->update_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

