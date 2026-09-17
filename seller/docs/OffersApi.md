# Crossly::OffersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_offer_respond**](OffersApi.md#create_offer_respond) | **POST** /v1/offers/{id}/respond | Accept, decline, or counter a buyer offer on a Crossly marketplace listing. |
| [**get_offer**](OffersApi.md#get_offer) | **GET** /v1/offers | List buyer offers on your Crossly marketplace listings, including bundles. |


## create_offer_respond

> <CreateOfferRespondResponse> create_offer_respond(id, inline_object2)

Accept, decline, or counter a buyer offer on a Crossly marketplace listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OffersApi.new
id = 'id_example' # String | Offer UUID.
inline_object2 = Crossly::InlineObject2.new({action: 'accept'}) # InlineObject2 | 

begin
  # Accept, decline, or counter a buyer offer on a Crossly marketplace listing.
  result = api_instance.create_offer_respond(id, inline_object2)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->create_offer_respond: #{e}"
end
```

#### Using the create_offer_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOfferRespondResponse>, Integer, Hash)> create_offer_respond_with_http_info(id, inline_object2)

```ruby
begin
  # Accept, decline, or counter a buyer offer on a Crossly marketplace listing.
  data, status_code, headers = api_instance.create_offer_respond_with_http_info(id, inline_object2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOfferRespondResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->create_offer_respond_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Offer UUID. |  |
| **inline_object2** | [**InlineObject2**](InlineObject2.md) |  |  |

### Return type

[**CreateOfferRespondResponse**](CreateOfferRespondResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_offer

> <GetOfferResponse> get_offer(opts)

List buyer offers on your Crossly marketplace listings, including bundles.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::OffersApi.new
opts = {
  status: 'pending', # String | Filter to one status. Omit for all.
  limit: 56 # Integer | 
}

begin
  # List buyer offers on your Crossly marketplace listings, including bundles.
  result = api_instance.get_offer(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->get_offer: #{e}"
end
```

#### Using the get_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOfferResponse>, Integer, Hash)> get_offer_with_http_info(opts)

```ruby
begin
  # List buyer offers on your Crossly marketplace listings, including bundles.
  data, status_code, headers = api_instance.get_offer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->get_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter to one status. Omit for all. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**GetOfferResponse**](GetOfferResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

