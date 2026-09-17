# CrosslyBuyer::BuyerCatalogApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_identify**](BuyerCatalogApi.md#create_buyer_identify) | **POST** /v1/buyer/identify | Identify a held object and return a HUD-ready answer. |
| [**create_buyer_lockon**](BuyerCatalogApi.md#create_buyer_lockon) | **POST** /v1/buyer/lockons | Lock on to an object the buyer is holding. |
| [**create_buyer_lockon_confirm**](BuyerCatalogApi.md#create_buyer_lockon_confirm) | **POST** /v1/buyer/lockons/{id}/confirm | The buyer picked one of the candidates. |
| [**create_buyer_lockon_observe**](BuyerCatalogApi.md#create_buyer_lockon_observe) | **POST** /v1/buyer/lockons/{id}/observe | Add what this frame revealed, and get the current best answer. |
| [**create_buyer_scan**](BuyerCatalogApi.md#create_buyer_scan) | **POST** /v1/buyer/scan | Identify a physical item and find the cheapest place to buy it. |
| [**create_buyer_scan_session**](BuyerCatalogApi.md#create_buyer_scan_session) | **POST** /v1/buyer/scan/sessions | Open a Live Shop session. |
| [**create_buyer_scan_session_end**](BuyerCatalogApi.md#create_buyer_scan_session_end) | **POST** /v1/buyer/scan/sessions/{id}/end | Close a Live Shop session. |
| [**get_buyer_anywhere**](BuyerCatalogApi.md#get_buyer_anywhere) | **GET** /v1/buyer/anywhere | Cheapest source for an item — Crossly first, then other retailers. |
| [**get_buyer_catalog_facet**](BuyerCatalogApi.md#get_buyer_catalog_facet) | **GET** /v1/buyer/catalog/facets | Brands, categories and conditions that currently have stock. |
| [**get_buyer_catalog_listing**](BuyerCatalogApi.md#get_buyer_catalog_listing) | **GET** /v1/buyer/catalog/listings/{slug} | One listing, in full. |
| [**get_buyer_catalog_listing_availability**](BuyerCatalogApi.md#get_buyer_catalog_listing_availability) | **GET** /v1/buyer/catalog/listings/{slug}/availability | Is it still buyable, and at what price. |
| [**get_buyer_scan_session**](BuyerCatalogApi.md#get_buyer_scan_session) | **GET** /v1/buyer/scan/sessions/{id} | One trip and everything it found. |
| [**list_buyer_catalog_search**](BuyerCatalogApi.md#list_buyer_catalog_search) | **GET** /v1/buyer/catalog/search | Search the Crossly catalogue. |
| [**list_buyer_scan_sessions**](BuyerCatalogApi.md#list_buyer_scan_sessions) | **GET** /v1/buyer/scan/sessions | Your scanning trips, newest first. |


## create_buyer_identify

> <CreateBuyerIdentifyResponse> create_buyer_identify

Identify a held object and return a HUD-ready answer.

The gesture endpoint for Live Shop. Runs a cost ladder: a decoded BARCODE resolves in ~50ms for nothing; failing that, self-hosted CLIP matches the catalogue; failing that, a vision model names it (the only rung that costs anything, capped per buyer per day). `hud` is pre-formatted for a 600×600 lens — one headline, one subline, up to three fact chips and exactly ONE action, because a pinch cannot choose between buttons. A vision label is WORDS, never an identity: it names the thing so the buyer can search, and never drives a price comparison.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Identify a held object and return a HUD-ready answer.
  result = api_instance.create_buyer_identify
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_identify: #{e}"
end
```

#### Using the create_buyer_identify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerIdentifyResponse>, Integer, Hash)> create_buyer_identify_with_http_info

```ruby
begin
  # Identify a held object and return a HUD-ready answer.
  data, status_code, headers = api_instance.create_buyer_identify_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerIdentifyResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_identify_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerIdentifyResponse**](CreateBuyerIdentifyResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_lockon

> <CreateBuyerLockonResponse> create_buyer_lockon

Lock on to an object the buyer is holding.

Open this when on-device tracking acquires an object, then post observations to it as the buyer turns the thing over. The answer improves as evidence arrives — the style code inside a shoe settles what the front of it could not.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Lock on to an object the buyer is holding.
  result = api_instance.create_buyer_lockon
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon: #{e}"
end
```

#### Using the create_buyer_lockon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerLockonResponse>, Integer, Hash)> create_buyer_lockon_with_http_info

```ruby
begin
  # Lock on to an object the buyer is holding.
  data, status_code, headers = api_instance.create_buyer_lockon_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerLockonResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerLockonResponse**](CreateBuyerLockonResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_lockon_confirm

> <CreateBuyerLockonConfirmResponse> create_buyer_lockon_confirm(id)

The buyer picked one of the candidates.

Promotes a text match to a CONFIRMED identity — the strongest evidence in the system, because a person holding the object said yes. Validated against the candidates we actually offered, so it cannot be claimed about an arbitrary product.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The buyer picked one of the candidates.
  result = api_instance.create_buyer_lockon_confirm(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon_confirm: #{e}"
end
```

#### Using the create_buyer_lockon_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerLockonConfirmResponse>, Integer, Hash)> create_buyer_lockon_confirm_with_http_info(id)

```ruby
begin
  # The buyer picked one of the candidates.
  data, status_code, headers = api_instance.create_buyer_lockon_confirm_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerLockonConfirmResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateBuyerLockonConfirmResponse**](CreateBuyerLockonConfirmResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_lockon_observe

> <CreateBuyerLockonObserveResponse> create_buyer_lockon_observe(id)

Add what this frame revealed, and get the current best answer.

Send only what you LEARNED: a decoded barcode, newly-read OCR text, or a frame when neither settled it. Do not post every frame — tracking and decoding happen on-device for free, and this endpoint is for evidence, not video. Evidence is RANKED (confirmed > barcode > ocr > visual), so a late weak reading can never overwrite a strong early one. When text evidence finds several products, `candidates` comes back for the buyer to pick from — a vision label is words, and only a human confirmation turns it into an identity we will price against.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Add what this frame revealed, and get the current best answer.
  result = api_instance.create_buyer_lockon_observe(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon_observe: #{e}"
end
```

#### Using the create_buyer_lockon_observe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerLockonObserveResponse>, Integer, Hash)> create_buyer_lockon_observe_with_http_info(id)

```ruby
begin
  # Add what this frame revealed, and get the current best answer.
  data, status_code, headers = api_instance.create_buyer_lockon_observe_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerLockonObserveResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_lockon_observe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateBuyerLockonObserveResponse**](CreateBuyerLockonObserveResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_scan

> <CreateBuyerScanResponse> create_buyer_scan

Identify a physical item and find the cheapest place to buy it.

Send a barcode identifier OR a photo. A BARCODE establishes identity, so the response carries a full price verdict across Crossly and other retailers. A PHOTO establishes resemblance only: you get visual matches from the Crossly catalogue, and a price verdict ONLY if the matched listing carries a real identifier. When it does not, `comparable` is false and there is no verdict — a price comparison built on a visual guess is a claim about a different product. Most second-hand items have no identifier by nature, so this is expected rather than a failure.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Identify a physical item and find the cheapest place to buy it.
  result = api_instance.create_buyer_scan
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan: #{e}"
end
```

#### Using the create_buyer_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerScanResponse>, Integer, Hash)> create_buyer_scan_with_http_info

```ruby
begin
  # Identify a physical item and find the cheapest place to buy it.
  data, status_code, headers = api_instance.create_buyer_scan_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerScanResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerScanResponse**](CreateBuyerScanResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_scan_session

> <CreateBuyerScanSessionResponse> create_buyer_scan_session

Open a Live Shop session.

Call this when the glasses connect, then pass the returned id as `sessionId` on each scan. Opening a session CLOSES any other live one — a person is in one shop at a time, and two live sessions split a trip across both.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Open a Live Shop session.
  result = api_instance.create_buyer_scan_session
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan_session: #{e}"
end
```

#### Using the create_buyer_scan_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerScanSessionResponse>, Integer, Hash)> create_buyer_scan_session_with_http_info

```ruby
begin
  # Open a Live Shop session.
  data, status_code, headers = api_instance.create_buyer_scan_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerScanSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerScanSessionResponse**](CreateBuyerScanSessionResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_scan_session_end

> <CreateBuyerScanSessionEndResponse> create_buyer_scan_session_end(id)

Close a Live Shop session.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Close a Live Shop session.
  result = api_instance.create_buyer_scan_session_end(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan_session_end: #{e}"
end
```

#### Using the create_buyer_scan_session_end_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerScanSessionEndResponse>, Integer, Hash)> create_buyer_scan_session_end_with_http_info(id)

```ruby
begin
  # Close a Live Shop session.
  data, status_code, headers = api_instance.create_buyer_scan_session_end_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerScanSessionEndResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->create_buyer_scan_session_end_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateBuyerScanSessionEndResponse**](CreateBuyerScanSessionEndResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_anywhere

> <GetBuyerAnywhereResponse> get_buyer_anywhere

Cheapest source for an item — Crossly first, then other retailers.

Answers with a VERDICT, not a list: crossly_best, offsite_cheaper, offsite_only or no_match. Offsite offers come from licensed affiliate product feeds, are ranked CHEAPEST-FIRST — commission only ever breaks a sub-$1 tie — and only appear when they beat the price you passed in. `shippingUnknown: true` means a compared price omitted postage, so present the result as \"before postage\" rather than as a delivered total. Crossly wins ties within $1; beyond that the honest answer wins.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Cheapest source for an item — Crossly first, then other retailers.
  result = api_instance.get_buyer_anywhere
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_anywhere: #{e}"
end
```

#### Using the get_buyer_anywhere_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerAnywhereResponse>, Integer, Hash)> get_buyer_anywhere_with_http_info

```ruby
begin
  # Cheapest source for an item — Crossly first, then other retailers.
  data, status_code, headers = api_instance.get_buyer_anywhere_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerAnywhereResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_anywhere_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBuyerAnywhereResponse**](GetBuyerAnywhereResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_facet

> <GetBuyerCatalogFacetResponse> get_buyer_catalog_facet

Brands, categories and conditions that currently have stock.

The vocabulary the search filters accept. Counts are live, so a filter built from this will never return an empty page for a value that has since sold out.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Brands, categories and conditions that currently have stock.
  result = api_instance.get_buyer_catalog_facet
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_facet: #{e}"
end
```

#### Using the get_buyer_catalog_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogFacetResponse>, Integer, Hash)> get_buyer_catalog_facet_with_http_info

```ruby
begin
  # Brands, categories and conditions that currently have stock.
  data, status_code, headers = api_instance.get_buyer_catalog_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogFacetResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBuyerCatalogFacetResponse**](GetBuyerCatalogFacetResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_listing

> <GetBuyerCatalogListingResponse> get_buyer_catalog_listing(slug)

One listing, in full.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
slug = 'slug_example' # String | 

begin
  # One listing, in full.
  result = api_instance.get_buyer_catalog_listing(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_listing: #{e}"
end
```

#### Using the get_buyer_catalog_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogListingResponse>, Integer, Hash)> get_buyer_catalog_listing_with_http_info(slug)

```ruby
begin
  # One listing, in full.
  data, status_code, headers = api_instance.get_buyer_catalog_listing_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogListingResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

[**GetBuyerCatalogListingResponse**](GetBuyerCatalogListingResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_listing_availability

> <GetBuyerCatalogListingAvailabilityResponse> get_buyer_catalog_listing_availability(slug)

Is it still buyable, and at what price.

The cheapest endpoint here, and the one to poll if you are going to poll — a single indexed row, no joins beyond stock, and an ETag so an unchanged answer is a 304. If you want to be TOLD instead of asking, create a monitor.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
slug = 'slug_example' # String | 

begin
  # Is it still buyable, and at what price.
  result = api_instance.get_buyer_catalog_listing_availability(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_listing_availability: #{e}"
end
```

#### Using the get_buyer_catalog_listing_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogListingAvailabilityResponse>, Integer, Hash)> get_buyer_catalog_listing_availability_with_http_info(slug)

```ruby
begin
  # Is it still buyable, and at what price.
  data, status_code, headers = api_instance.get_buyer_catalog_listing_availability_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogListingAvailabilityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_catalog_listing_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

[**GetBuyerCatalogListingAvailabilityResponse**](GetBuyerCatalogListingAvailabilityResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_scan_session

> <GetBuyerScanSessionResponse> get_buyer_scan_session(id)

One trip and everything it found.

Verdicts are returned EXACTLY as they were given at the time, not re-priced. A history screen that silently refreshes old prices shows a saving that was never actually on offer.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One trip and everything it found.
  result = api_instance.get_buyer_scan_session(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_scan_session: #{e}"
end
```

#### Using the get_buyer_scan_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerScanSessionResponse>, Integer, Hash)> get_buyer_scan_session_with_http_info(id)

```ruby
begin
  # One trip and everything it found.
  data, status_code, headers = api_instance.get_buyer_scan_session_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerScanSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->get_buyer_scan_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetBuyerScanSessionResponse**](GetBuyerScanSessionResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_catalog_search

> <V1List> list_buyer_catalog_search

Search the Crossly catalogue.

Keyset-paginated. Pass the `nextCursor` you were given back as `cursor`; page 500 costs the same as page 1. Cursors are opaque — do not parse them. Responses carry an ETag: send it back as If-None-Match and an unchanged page answers 304, which is free. `sort=popular` is deliberately unavailable, because a cursor into a continuously-reordering list silently skips rows.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Search the Crossly catalogue.
  result = api_instance.list_buyer_catalog_search
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->list_buyer_catalog_search: #{e}"
end
```

#### Using the list_buyer_catalog_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_catalog_search_with_http_info

```ruby
begin
  # Search the Crossly catalogue.
  data, status_code, headers = api_instance.list_buyer_catalog_search_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->list_buyer_catalog_search_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_scan_sessions

> <V1List> list_buyer_scan_sessions

Your scanning trips, newest first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerCatalogApi.new

begin
  # Your scanning trips, newest first.
  result = api_instance.list_buyer_scan_sessions
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->list_buyer_scan_sessions: #{e}"
end
```

#### Using the list_buyer_scan_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_scan_sessions_with_http_info

```ruby
begin
  # Your scanning trips, newest first.
  data, status_code, headers = api_instance.list_buyer_scan_sessions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerCatalogApi->list_buyer_scan_sessions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

