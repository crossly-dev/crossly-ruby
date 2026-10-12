# Crossly::NFTMarketApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_nft_market_external_resale**](NFTMarketApi.md#create_nft_market_external_resale) | **POST** /v1/nft-market/external-resale | Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only. |
| [**create_nft_market_listing**](NFTMarketApi.md#create_nft_market_listing) | **POST** /v1/nft-market/listings | List an NFT you own for resale on the Crossly marketplace. |
| [**create_nft_market_listing_cancel**](NFTMarketApi.md#create_nft_market_listing_cancel) | **POST** /v1/nft-market/listings/{id}/cancel | Cancel one of your open NFT listings. |
| [**create_nft_market_listing_confirm_sale**](NFTMarketApi.md#create_nft_market_listing_confirm_sale) | **POST** /v1/nft-market/listings/{id}/confirm-sale | Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only. |
| [**get_nft_market_listing**](NFTMarketApi.md#get_nft_market_listing) | **GET** /v1/nft-market/listings | Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL). |


## create_nft_market_external_resale

> <CreateNftMarketExternalResaleResponse> create_nft_market_external_resale

Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NFTMarketApi.new

begin
  # Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.
  result = api_instance.create_nft_market_external_resale
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_external_resale: #{e}"
end
```

#### Using the create_nft_market_external_resale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNftMarketExternalResaleResponse>, Integer, Hash)> create_nft_market_external_resale_with_http_info

```ruby
begin
  # Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.
  data, status_code, headers = api_instance.create_nft_market_external_resale_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNftMarketExternalResaleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_external_resale_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateNftMarketExternalResaleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_nft_market_listing

> <CreateNftMarketListingResponse> create_nft_market_listing

List an NFT you own for resale on the Crossly marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NFTMarketApi.new

begin
  # List an NFT you own for resale on the Crossly marketplace.
  result = api_instance.create_nft_market_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing: #{e}"
end
```

#### Using the create_nft_market_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNftMarketListingResponse>, Integer, Hash)> create_nft_market_listing_with_http_info

```ruby
begin
  # List an NFT you own for resale on the Crossly marketplace.
  data, status_code, headers = api_instance.create_nft_market_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNftMarketListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateNftMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_nft_market_listing_cancel

> <OkResponse> create_nft_market_listing_cancel(id)

Cancel one of your open NFT listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NFTMarketApi.new
id = 'id_example' # String | 

begin
  # Cancel one of your open NFT listings.
  result = api_instance.create_nft_market_listing_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing_cancel: #{e}"
end
```

#### Using the create_nft_market_listing_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_nft_market_listing_cancel_with_http_info(id)

```ruby
begin
  # Cancel one of your open NFT listings.
  data, status_code, headers = api_instance.create_nft_market_listing_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_nft_market_listing_confirm_sale

> <OkResponse> create_nft_market_listing_confirm_sale(id)

Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NFTMarketApi.new
id = 'id_example' # String | 

begin
  # Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.
  result = api_instance.create_nft_market_listing_confirm_sale(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing_confirm_sale: #{e}"
end
```

#### Using the create_nft_market_listing_confirm_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_nft_market_listing_confirm_sale_with_http_info(id)

```ruby
begin
  # Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.
  data, status_code, headers = api_instance.create_nft_market_listing_confirm_sale_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->create_nft_market_listing_confirm_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nft_market_listing

> <GetNftMarketListingResponse> get_nft_market_listing

Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::NFTMarketApi.new

begin
  # Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).
  result = api_instance.get_nft_market_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->get_nft_market_listing: #{e}"
end
```

#### Using the get_nft_market_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNftMarketListingResponse>, Integer, Hash)> get_nft_market_listing_with_http_info

```ruby
begin
  # Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).
  data, status_code, headers = api_instance.get_nft_market_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNftMarketListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling NFTMarketApi->get_nft_market_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetNftMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

