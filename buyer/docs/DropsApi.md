# CrosslyBuyer::DropsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_drop_join**](DropsApi.md#create_buyer_drop_join) | **POST** /v1/buyer/drops/{id}/join | Join a drop&#39;s line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry. |
| [**delete_buyer_drop_join**](DropsApi.md#delete_buyer_drop_join) | **DELETE** /v1/buyer/drops/{id}/join | Leave a drop&#39;s line before the draw. |
| [**get_buyer_drop_me**](DropsApi.md#get_buyer_drop_me) | **GET** /v1/buyer/drops/{id}/me | Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live. |


## create_buyer_drop_join

> <CreateBuyerDropJoinResponse> create_buyer_drop_join(id)

Join a drop's line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Join a drop's line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.
  result = api_instance.create_buyer_drop_join(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->create_buyer_drop_join: #{e}"
end
```

#### Using the create_buyer_drop_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerDropJoinResponse>, Integer, Hash)> create_buyer_drop_join_with_http_info(id)

```ruby
begin
  # Join a drop's line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.
  data, status_code, headers = api_instance.create_buyer_drop_join_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerDropJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->create_buyer_drop_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerDropJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_drop_join

> <DeleteBuyerDropJoinResponse> delete_buyer_drop_join(id)

Leave a drop's line before the draw.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Leave a drop's line before the draw.
  result = api_instance.delete_buyer_drop_join(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->delete_buyer_drop_join: #{e}"
end
```

#### Using the delete_buyer_drop_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBuyerDropJoinResponse>, Integer, Hash)> delete_buyer_drop_join_with_http_info(id)

```ruby
begin
  # Leave a drop's line before the draw.
  data, status_code, headers = api_instance.delete_buyer_drop_join_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBuyerDropJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->delete_buyer_drop_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteBuyerDropJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_drop_me

> <GetBuyerDropMeResponse> get_buyer_drop_me(id)

Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::DropsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.
  result = api_instance.get_buyer_drop_me(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->get_buyer_drop_me: #{e}"
end
```

#### Using the get_buyer_drop_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerDropMeResponse>, Integer, Hash)> get_buyer_drop_me_with_http_info(id)

```ruby
begin
  # Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.
  data, status_code, headers = api_instance.get_buyer_drop_me_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerDropMeResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling DropsApi->get_buyer_drop_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerDropMeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

