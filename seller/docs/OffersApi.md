# Crossly::OffersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_offer_respond**](OffersApi.md#create_offer_respond) | **POST** /v1/offers/{id}/respond | Accept, decline, or counter a buyer offer on a Crossly marketplace listing. The response carries floorCents and floorSource (listing | item | break_even | null): your floor for that listing, null for a bundle. |
| [**get_listing_offer_floor**](OffersApi.md#get_listing_offer_floor) | **GET** /v1/listings/{id}/offer-floor | The lowest price an offer may be accepted or countered at for this listing on a platform: grossCents, origin (listing | item | break_even | null), text, and the same as floorCents + floorSource. |
| [**get_offer**](OffersApi.md#get_offer) | **GET** /v1/offers | List buyer offers on your Crossly marketplace listings, including bundles. |


## create_offer_respond

> <CreateOfferRespondResponse> create_offer_respond(id, create_offer_respond_request)

Accept, decline, or counter a buyer offer on a Crossly marketplace listing. The response carries floorCents and floorSource (listing | item | break_even | null): your floor for that listing, null for a bundle.

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
create_offer_respond_request = Crossly::CreateOfferRespondRequest.new({action: 'accept'}) # CreateOfferRespondRequest | 

begin
  # Accept, decline, or counter a buyer offer on a Crossly marketplace listing. The response carries floorCents and floorSource (listing | item | break_even | null): your floor for that listing, null for a bundle.
  result = api_instance.create_offer_respond(id, create_offer_respond_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->create_offer_respond: #{e}"
end
```

#### Using the create_offer_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOfferRespondResponse>, Integer, Hash)> create_offer_respond_with_http_info(id, create_offer_respond_request)

```ruby
begin
  # Accept, decline, or counter a buyer offer on a Crossly marketplace listing. The response carries floorCents and floorSource (listing | item | break_even | null): your floor for that listing, null for a bundle.
  data, status_code, headers = api_instance.create_offer_respond_with_http_info(id, create_offer_respond_request)
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
| **create_offer_respond_request** | **CreateOfferRespondRequest** |  |  |

### Return type

**CreateOfferRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_listing_offer_floor

> <GetListingOfferFloorResponse> get_listing_offer_floor(platform, id)

The lowest price an offer may be accepted or countered at for this listing on a platform: grossCents, origin (listing | item | break_even | null), text, and the same as floorCents + floorSource.

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
platform = 'platform_example' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The lowest price an offer may be accepted or countered at for this listing on a platform: grossCents, origin (listing | item | break_even | null), text, and the same as floorCents + floorSource.
  result = api_instance.get_listing_offer_floor(platform, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->get_listing_offer_floor: #{e}"
end
```

#### Using the get_listing_offer_floor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingOfferFloorResponse>, Integer, Hash)> get_listing_offer_floor_with_http_info(platform, id)

```ruby
begin
  # The lowest price an offer may be accepted or countered at for this listing on a platform: grossCents, origin (listing | item | break_even | null), text, and the same as floorCents + floorSource.
  data, status_code, headers = api_instance.get_listing_offer_floor_with_http_info(platform, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingOfferFloorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling OffersApi->get_listing_offer_floor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**GetListingOfferFloorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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

**GetOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

