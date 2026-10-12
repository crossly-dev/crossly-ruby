# Crossly::ListingsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ai_detection_dispute**](ListingsApi.md#create_ai_detection_dispute) | **POST** /v1/ai-detections/{id}/dispute | Dispute an AI-image detection on your photo (sends it to Crossly review). |
| [**create_listing**](ListingsApi.md#create_listing) | **POST** /v1/listings | Create a listing and fan out crosspost jobs across platforms. |
| [**create_listing_bulk_check_status**](ListingsApi.md#create_listing_bulk_check_status) | **POST** /v1/listings/bulk-check-status | Check listing status on platforms |
| [**create_listing_bulk_crosspost**](ListingsApi.md#create_listing_bulk_crosspost) | **POST** /v1/listings/bulk-crosspost | Bulk crosspost (no delist phase) |
| [**create_listing_bulk_delete**](ListingsApi.md#create_listing_bulk_delete) | **POST** /v1/listings/bulk-delete | Bulk archive + delist |
| [**create_listing_bulk_delist**](ListingsApi.md#create_listing_bulk_delist) | **POST** /v1/listings/bulk-delist | Bulk delist from platforms |
| [**create_listing_bulk_delist_preview**](ListingsApi.md#create_listing_bulk_delist_preview) | **POST** /v1/listings/bulk-delist-preview | Preview which marketplaces a delist would touch |
| [**create_listing_bulk_hard_delete**](ListingsApi.md#create_listing_bulk_hard_delete) | **POST** /v1/listings/bulk-hard-delete | Permanently delete listings (live ones need allowLive) |
| [**create_listing_bulk_relist**](ListingsApi.md#create_listing_bulk_relist) | **POST** /v1/listings/bulk-relist | Bulk relist across platforms |
| [**create_listing_bulk_update**](ListingsApi.md#create_listing_bulk_update) | **POST** /v1/listings/bulk-update | Bulk update listing fields |
| [**create_listing_by_id**](ListingsApi.md#create_listing_by_id) | **POST** /v1/listings/by-ids | Fetch hydrated listings by ID |
| [**create_listing_check_duplicate**](ListingsApi.md#create_listing_check_duplicate) | **POST** /v1/listings/check-duplicates | Check whether the seller already owns something matching this title/photo, and what to do about it. |
| [**create_listing_combine**](ListingsApi.md#create_listing_combine) | **POST** /v1/listings/combine | Combine duplicate listings into one: sums their stock, delists and archives the rest. |
| [**create_listing_discrepancy_resolve**](ListingsApi.md#create_listing_discrepancy_resolve) | **POST** /v1/listings/{id}/discrepancies/{discrepancyId}/resolve | Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss. |
| [**create_listing_import_by_url**](ListingsApi.md#create_listing_import_by_url) | **POST** /v1/listings/{id}/import-by-url | Attach a real platform listing to this listing by pasting its live URL. |
| [**create_listing_magic_fill**](ListingsApi.md#create_listing_magic_fill) | **POST** /v1/listings/{id}/magic-fill | Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution. |
| [**create_listing_merge**](ListingsApi.md#create_listing_merge) | **POST** /v1/listings/merge | Merge the same item listed on different marketplaces into one listing; all stay live. |
| [**create_live_stream_pin_launch**](ListingsApi.md#create_live_stream_pin_launch) | **POST** /v1/live-streams/{id}/pin-launch | Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns &#x60;{ ok }&#x60;. |
| [**create_passport**](ListingsApi.md#create_passport) | **POST** /v1/passports | Register a product passport for a Crossly listing you sell, optionally bound to an NFC tag UID (hex). Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s paid sales. |
| [**create_passport_revoke**](ListingsApi.md#create_passport_revoke) | **POST** /v1/passports/{id}/revoke | Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history. |
| [**create_passport_tag**](ListingsApi.md#create_passport_tag) | **POST** /v1/passports/{id}/tag | Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item. |
| [**create_variation_group**](ListingsApi.md#create_variation_group) | **POST** /v1/variation-groups | Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\&quot;buy any 3\&quot;). |
| [**create_variation_group_generate**](ListingsApi.md#create_variation_group_generate) | **POST** /v1/variation-groups/generate | Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group. |
| [**create_variation_group_publish**](ListingsApi.md#create_variation_group_publish) | **POST** /v1/variation-groups/{id}/publish | Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome. |
| [**delete_listing**](ListingsApi.md#delete_listing) | **DELETE** /v1/listings/{id} | Delist a listing (optionally narrowed to specific platforms via ?platforms&#x3D;). |
| [**delete_live_stream_pin_launch**](ListingsApi.md#delete_live_stream_pin_launch) | **DELETE** /v1/live-streams/{id}/pin-launch | Unpin the launch from your live show. Returns &#x60;{ ok }&#x60;. |
| [**delete_rental_offer**](ListingsApi.md#delete_rental_offer) | **DELETE** /v1/rentals/offers/{platformListingId} | Stop offering a listing for rent (existing bookings stand). |
| [**delete_variation_group**](ListingsApi.md#delete_variation_group) | **DELETE** /v1/variation-groups/{id} | Dissolve a group. Its options stay as ordinary listings. |
| [**get_listing**](ListingsApi.md#get_listing) | **GET** /v1/listings/{id} | Get one listing with its platform rows. |
| [**get_listing_facet**](ListingsApi.md#get_listing_facet) | **GET** /v1/listings/facets | Distinct brands + categories across listings + inventory. |
| [**get_listing_sku_exist**](ListingsApi.md#get_listing_sku_exist) | **GET** /v1/listings/sku-exists | Check whether a SKU is already used by one of this user&#39;s items. |
| [**get_pricing_setting**](ListingsApi.md#get_pricing_setting) | **GET** /v1/pricing/settings | Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default. |
| [**get_pricing_sold_comp**](ListingsApi.md#get_pricing_sold_comp) | **GET** /v1/pricing/sold-comps | What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds. |
| [**list_listing_ai_detections**](ListingsApi.md#list_listing_ai_detections) | **GET** /v1/listings/{id}/ai-detections | Crossly&#39;s AI-image detections for a listing&#39;s photos. |
| [**list_listing_discrepancies**](ListingsApi.md#list_listing_discrepancies) | **GET** /v1/listings/{id}/discrepancies | List detected marketplace-drift discrepancies for a listing. |
| [**list_listing_ids**](ListingsApi.md#list_listing_ids) | **GET** /v1/listings/ids | Filter listings → return matching id list (no pagination). |
| [**list_listings**](ListingsApi.md#list_listings) | **GET** /v1/listings | List active platform listings. |
| [**list_passports**](ListingsApi.md#list_passports) | **GET** /v1/passports | Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries. |
| [**list_rental_offers**](ListingsApi.md#list_rental_offers) | **GET** /v1/rentals/offers | What you offer for rent. |
| [**update_hotspot**](ListingsApi.md#update_hotspot) | **PUT** /v1/hotspots | Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12. |
| [**update_listing**](ListingsApi.md#update_listing) | **PATCH** /v1/listings/{id} | Edit a listing and fan out update jobs to existing platform listings. |
| [**update_listing_custom**](ListingsApi.md#update_listing_custom) | **PUT** /v1/listings/{id}/customs | Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears. |
| [**update_listing_platform_listing**](ListingsApi.md#update_listing_platform_listing) | **PATCH** /v1/listings/{id}/platform-listings/{plId} | Set one marketplace copy&#39;s price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy&#39;s own currency. |
| [**update_live_stream_lineup**](ListingsApi.md#update_live_stream_lineup) | **PUT** /v1/live-streams/{id}/lineup | Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment. |
| [**update_pricing_setting**](ListingsApi.md#update_pricing_setting) | **PUT** /v1/pricing/settings | Turn own-price match and/or layaway on or off. |
| [**update_rental_offer**](ListingsApi.md#update_rental_offer) | **PUT** /v1/rentals/offers/{platformListingId} | Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, and rent-only (off sale while offered). Needs a ship-from address. |
| [**update_variation_group**](ListingsApi.md#update_variation_group) | **PATCH** /v1/variation-groups/{id} | Retitle a group, rename its axis, or change a group&#39;s purchase rule (written into every member&#39;s description). |


## create_ai_detection_dispute

> <CreateAiDetectionDisputeResponse> create_ai_detection_dispute(id)

Dispute an AI-image detection on your photo (sends it to Crossly review).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Dispute an AI-image detection on your photo (sends it to Crossly review).
  result = api_instance.create_ai_detection_dispute(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_ai_detection_dispute: #{e}"
end
```

#### Using the create_ai_detection_dispute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiDetectionDisputeResponse>, Integer, Hash)> create_ai_detection_dispute_with_http_info(id)

```ruby
begin
  # Dispute an AI-image detection on your photo (sends it to Crossly review).
  data, status_code, headers = api_instance.create_ai_detection_dispute_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiDetectionDisputeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_ai_detection_dispute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateAiDetectionDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing

> <CreateListingResponse> create_listing

Create a listing and fan out crosspost jobs across platforms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Create a listing and fan out crosspost jobs across platforms.
  result = api_instance.create_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing: #{e}"
end
```

#### Using the create_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingResponse>, Integer, Hash)> create_listing_with_http_info

```ruby
begin
  # Create a listing and fan out crosspost jobs across platforms.
  data, status_code, headers = api_instance.create_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_check_status

> <CreateListingBulkDeleteResponse> create_listing_bulk_check_status

Check listing status on platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Check listing status on platforms
  result = api_instance.create_listing_bulk_check_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_check_status: #{e}"
end
```

#### Using the create_listing_bulk_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_check_status_with_http_info

```ruby
begin
  # Check listing status on platforms
  data, status_code, headers = api_instance.create_listing_bulk_check_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_check_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_crosspost

> <CreateListingBulkDeleteResponse> create_listing_bulk_crosspost

Bulk crosspost (no delist phase)

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk crosspost (no delist phase)
  result = api_instance.create_listing_bulk_crosspost
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_crosspost: #{e}"
end
```

#### Using the create_listing_bulk_crosspost_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_crosspost_with_http_info

```ruby
begin
  # Bulk crosspost (no delist phase)
  data, status_code, headers = api_instance.create_listing_bulk_crosspost_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_crosspost_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delete

> <CreateListingBulkDeleteResponse> create_listing_bulk_delete

Bulk archive + delist

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk archive + delist
  result = api_instance.create_listing_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delete: #{e}"
end
```

#### Using the create_listing_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_delete_with_http_info

```ruby
begin
  # Bulk archive + delist
  data, status_code, headers = api_instance.create_listing_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delist

> <CreateListingBulkDeleteResponse> create_listing_bulk_delist

Bulk delist from platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk delist from platforms
  result = api_instance.create_listing_bulk_delist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist: #{e}"
end
```

#### Using the create_listing_bulk_delist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_delist_with_http_info

```ruby
begin
  # Bulk delist from platforms
  data, status_code, headers = api_instance.create_listing_bulk_delist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delist_preview

> <CreateListingBulkDelistPreviewResponse> create_listing_bulk_delist_preview

Preview which marketplaces a delist would touch

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Preview which marketplaces a delist would touch
  result = api_instance.create_listing_bulk_delist_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_preview: #{e}"
end
```

#### Using the create_listing_bulk_delist_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDelistPreviewResponse>, Integer, Hash)> create_listing_bulk_delist_preview_with_http_info

```ruby
begin
  # Preview which marketplaces a delist would touch
  data, status_code, headers = api_instance.create_listing_bulk_delist_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDelistPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDelistPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_hard_delete

> <CreateListingBulkHardDeleteResponse> create_listing_bulk_hard_delete

Permanently delete listings (live ones need allowLive)

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Permanently delete listings (live ones need allowLive)
  result = api_instance.create_listing_bulk_hard_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_hard_delete: #{e}"
end
```

#### Using the create_listing_bulk_hard_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkHardDeleteResponse>, Integer, Hash)> create_listing_bulk_hard_delete_with_http_info

```ruby
begin
  # Permanently delete listings (live ones need allowLive)
  data, status_code, headers = api_instance.create_listing_bulk_hard_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkHardDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_hard_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkHardDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_relist

> <CreateListingBulkDeleteResponse> create_listing_bulk_relist

Bulk relist across platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk relist across platforms
  result = api_instance.create_listing_bulk_relist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_relist: #{e}"
end
```

#### Using the create_listing_bulk_relist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_relist_with_http_info

```ruby
begin
  # Bulk relist across platforms
  data, status_code, headers = api_instance.create_listing_bulk_relist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_relist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_update

> <CreateListingBulkUpdateResponse> create_listing_bulk_update

Bulk update listing fields

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk update listing fields
  result = api_instance.create_listing_bulk_update
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_update: #{e}"
end
```

#### Using the create_listing_bulk_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkUpdateResponse>, Integer, Hash)> create_listing_bulk_update_with_http_info

```ruby
begin
  # Bulk update listing fields
  data, status_code, headers = api_instance.create_listing_bulk_update_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkUpdateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_update_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_by_id

> <CreateListingByIdResponse> create_listing_by_id

Fetch hydrated listings by ID

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Fetch hydrated listings by ID
  result = api_instance.create_listing_by_id
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_by_id: #{e}"
end
```

#### Using the create_listing_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingByIdResponse>, Integer, Hash)> create_listing_by_id_with_http_info

```ruby
begin
  # Fetch hydrated listings by ID
  data, status_code, headers = api_instance.create_listing_by_id_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_by_id_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_check_duplicate

> <CreateListingCheckDuplicateResponse> create_listing_check_duplicate

Check whether the seller already owns something matching this title/photo, and what to do about it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Check whether the seller already owns something matching this title/photo, and what to do about it.
  result = api_instance.create_listing_check_duplicate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_check_duplicate: #{e}"
end
```

#### Using the create_listing_check_duplicate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingCheckDuplicateResponse>, Integer, Hash)> create_listing_check_duplicate_with_http_info

```ruby
begin
  # Check whether the seller already owns something matching this title/photo, and what to do about it.
  data, status_code, headers = api_instance.create_listing_check_duplicate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingCheckDuplicateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_check_duplicate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingCheckDuplicateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_combine

> <CreateListingCombineResponse> create_listing_combine

Combine duplicate listings into one: sums their stock, delists and archives the rest.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Combine duplicate listings into one: sums their stock, delists and archives the rest.
  result = api_instance.create_listing_combine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_combine: #{e}"
end
```

#### Using the create_listing_combine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingCombineResponse>, Integer, Hash)> create_listing_combine_with_http_info

```ruby
begin
  # Combine duplicate listings into one: sums their stock, delists and archives the rest.
  data, status_code, headers = api_instance.create_listing_combine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingCombineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_combine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingCombineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_discrepancy_resolve

> <CreateListingDiscrepancyResolveResponse> create_listing_discrepancy_resolve(id, discrepancy_id)

Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
discrepancy_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
  result = api_instance.create_listing_discrepancy_resolve(id, discrepancy_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_discrepancy_resolve: #{e}"
end
```

#### Using the create_listing_discrepancy_resolve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingDiscrepancyResolveResponse>, Integer, Hash)> create_listing_discrepancy_resolve_with_http_info(id, discrepancy_id)

```ruby
begin
  # Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
  data, status_code, headers = api_instance.create_listing_discrepancy_resolve_with_http_info(id, discrepancy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingDiscrepancyResolveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_discrepancy_resolve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **discrepancy_id** | **String** |  |  |

### Return type

**CreateListingDiscrepancyResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_import_by_url

> <CreateListingImportByUrlResponse> create_listing_import_by_url(id)

Attach a real platform listing to this listing by pasting its live URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Attach a real platform listing to this listing by pasting its live URL.
  result = api_instance.create_listing_import_by_url(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_import_by_url: #{e}"
end
```

#### Using the create_listing_import_by_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingImportByUrlResponse>, Integer, Hash)> create_listing_import_by_url_with_http_info(id)

```ruby
begin
  # Attach a real platform listing to this listing by pasting its live URL.
  data, status_code, headers = api_instance.create_listing_import_by_url_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingImportByUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_import_by_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingImportByUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_magic_fill

> <CreateListingMagicFillResponse> create_listing_magic_fill(id)

Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
  result = api_instance.create_listing_magic_fill(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_magic_fill: #{e}"
end
```

#### Using the create_listing_magic_fill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingMagicFillResponse>, Integer, Hash)> create_listing_magic_fill_with_http_info(id)

```ruby
begin
  # Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
  data, status_code, headers = api_instance.create_listing_magic_fill_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingMagicFillResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_magic_fill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingMagicFillResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_merge

> <CreateListingMergeResponse> create_listing_merge

Merge the same item listed on different marketplaces into one listing; all stay live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Merge the same item listed on different marketplaces into one listing; all stay live.
  result = api_instance.create_listing_merge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_merge: #{e}"
end
```

#### Using the create_listing_merge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingMergeResponse>, Integer, Hash)> create_listing_merge_with_http_info

```ruby
begin
  # Merge the same item listed on different marketplaces into one listing; all stay live.
  data, status_code, headers = api_instance.create_listing_merge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingMergeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_merge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingMergeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream_pin_launch

> <OkResponse> create_live_stream_pin_launch(id)

Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.
  result = api_instance.create_live_stream_pin_launch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_pin_launch: #{e}"
end
```

#### Using the create_live_stream_pin_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_live_stream_pin_launch_with_http_info(id)

```ruby
begin
  # Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.
  data, status_code, headers = api_instance.create_live_stream_pin_launch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_pin_launch_with_http_info: #{e}"
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


## create_passport

> <PassportResponse> create_passport

Register a product passport for a Crossly listing you sell, optionally bound to an NFC tag UID (hex). Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s paid sales.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Register a product passport for a Crossly listing you sell, optionally bound to an NFC tag UID (hex). Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s paid sales.
  result = api_instance.create_passport
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport: #{e}"
end
```

#### Using the create_passport_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_with_http_info

```ruby
begin
  # Register a product passport for a Crossly listing you sell, optionally bound to an NFC tag UID (hex). Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s paid sales.
  data, status_code, headers = api_instance.create_passport_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_revoke

> <PassportResponse> create_passport_revoke(id)

Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
  result = api_instance.create_passport_revoke(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_revoke: #{e}"
end
```

#### Using the create_passport_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_revoke_with_http_info(id)

```ruby
begin
  # Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
  data, status_code, headers = api_instance.create_passport_revoke_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_tag

> <PassportResponse> create_passport_tag(id)

Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
  result = api_instance.create_passport_tag(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_tag: #{e}"
end
```

#### Using the create_passport_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_tag_with_http_info(id)

```ruby
begin
  # Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
  data, status_code, headers = api_instance.create_passport_tag_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group

> <CreateVariationGroupResponse> create_variation_group

Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").
  result = api_instance.create_variation_group
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group: #{e}"
end
```

#### Using the create_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupResponse>, Integer, Hash)> create_variation_group_with_http_info

```ruby
begin
  # Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").
  data, status_code, headers = api_instance.create_variation_group_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group_generate

> <CreateVariationGroupGenerateResponse> create_variation_group_generate

Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
  result = api_instance.create_variation_group_generate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate: #{e}"
end
```

#### Using the create_variation_group_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupGenerateResponse>, Integer, Hash)> create_variation_group_generate_with_http_info

```ruby
begin
  # Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
  data, status_code, headers = api_instance.create_variation_group_generate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupGenerateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVariationGroupGenerateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group_publish

> <CreateVariationGroupPublishResponse> create_variation_group_publish(id)

Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
  result = api_instance.create_variation_group_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_publish: #{e}"
end
```

#### Using the create_variation_group_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupPublishResponse>, Integer, Hash)> create_variation_group_publish_with_http_info(id)

```ruby
begin
  # Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
  data, status_code, headers = api_instance.create_variation_group_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateVariationGroupPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_listing

> <DeleteListingResponse> delete_listing(id, opts)

Delist a listing (optionally narrowed to specific platforms via ?platforms=).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  platforms: 'platforms_example', # String | Comma-separated platform slugs to limit the delist fan-out.
  platform_listing_ids: 'platform_listing_ids_example' # String | Comma-separated platform listing ids — end only those copies (e.g. one eBay site's copy).
}

begin
  # Delist a listing (optionally narrowed to specific platforms via ?platforms=).
  result = api_instance.delete_listing(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing: #{e}"
end
```

#### Using the delete_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteListingResponse>, Integer, Hash)> delete_listing_with_http_info(id, opts)

```ruby
begin
  # Delist a listing (optionally narrowed to specific platforms via ?platforms=).
  data, status_code, headers = api_instance.delete_listing_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platforms** | **String** | Comma-separated platform slugs to limit the delist fan-out. | [optional] |
| **platform_listing_ids** | **String** | Comma-separated platform listing ids — end only those copies (e.g. one eBay site&#39;s copy). | [optional] |

### Return type

**DeleteListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_live_stream_pin_launch

> <OkResponse> delete_live_stream_pin_launch(id)

Unpin the launch from your live show. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Unpin the launch from your live show. Returns `{ ok }`.
  result = api_instance.delete_live_stream_pin_launch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_live_stream_pin_launch: #{e}"
end
```

#### Using the delete_live_stream_pin_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_live_stream_pin_launch_with_http_info(id)

```ruby
begin
  # Unpin the launch from your live show. Returns `{ ok }`.
  data, status_code, headers = api_instance.delete_live_stream_pin_launch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_live_stream_pin_launch_with_http_info: #{e}"
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


## delete_rental_offer

> <CreateBreakCancelResponse> delete_rental_offer(platform_listing_id)

Stop offering a listing for rent (existing bookings stand).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Stop offering a listing for rent (existing bookings stand).
  result = api_instance.delete_rental_offer(platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_rental_offer: #{e}"
end
```

#### Using the delete_rental_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> delete_rental_offer_with_http_info(platform_listing_id)

```ruby
begin
  # Stop offering a listing for rent (existing bookings stand).
  data, status_code, headers = api_instance.delete_rental_offer_with_http_info(platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_rental_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_variation_group

> <CreateBreakCancelResponse> delete_variation_group(id)

Dissolve a group. Its options stay as ordinary listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Dissolve a group. Its options stay as ordinary listings.
  result = api_instance.delete_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_variation_group: #{e}"
end
```

#### Using the delete_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> delete_variation_group_with_http_info(id)

```ruby
begin
  # Dissolve a group. Its options stay as ordinary listings.
  data, status_code, headers = api_instance.delete_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_variation_group_with_http_info: #{e}"
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


## get_listing

> <GetListingResponse> get_listing(id)

Get one listing with its platform rows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one listing with its platform rows.
  result = api_instance.get_listing(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing: #{e}"
end
```

#### Using the get_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingResponse>, Integer, Hash)> get_listing_with_http_info(id)

```ruby
begin
  # Get one listing with its platform rows.
  data, status_code, headers = api_instance.get_listing_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_facet

> <GetListingFacetResponse> get_listing_facet

Distinct brands + categories across listings + inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Distinct brands + categories across listings + inventory.
  result = api_instance.get_listing_facet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_facet: #{e}"
end
```

#### Using the get_listing_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingFacetResponse>, Integer, Hash)> get_listing_facet_with_http_info

```ruby
begin
  # Distinct brands + categories across listings + inventory.
  data, status_code, headers = api_instance.get_listing_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingFacetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetListingFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_sku_exist

> <GetListingSkuExistResponse> get_listing_sku_exist(sku)

Check whether a SKU is already used by one of this user's items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
sku = 'sku_example' # String | 

begin
  # Check whether a SKU is already used by one of this user's items.
  result = api_instance.get_listing_sku_exist(sku)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_sku_exist: #{e}"
end
```

#### Using the get_listing_sku_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingSkuExistResponse>, Integer, Hash)> get_listing_sku_exist_with_http_info(sku)

```ruby
begin
  # Check whether a SKU is already used by one of this user's items.
  data, status_code, headers = api_instance.get_listing_sku_exist_with_http_info(sku)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingSkuExistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_sku_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  |  |

### Return type

**GetListingSkuExistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pricing_setting

> <GetPricingSettingResponse> get_pricing_setting

Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
  result = api_instance.get_pricing_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_setting: #{e}"
end
```

#### Using the get_pricing_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSettingResponse>, Integer, Hash)> get_pricing_setting_with_http_info

```ruby
begin
  # Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
  data, status_code, headers = api_instance.get_pricing_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pricing_sold_comp

> <GetPricingSoldCompResponse> get_pricing_sold_comp

What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
  result = api_instance.get_pricing_sold_comp
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_sold_comp: #{e}"
end
```

#### Using the get_pricing_sold_comp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSoldCompResponse>, Integer, Hash)> get_pricing_sold_comp_with_http_info

```ruby
begin
  # What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
  data, status_code, headers = api_instance.get_pricing_sold_comp_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSoldCompResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_sold_comp_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSoldCompResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ai_detections

> <ListListingAiDetectionsResponse> list_listing_ai_detections(id)

Crossly's AI-image detections for a listing's photos.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Crossly's AI-image detections for a listing's photos.
  result = api_instance.list_listing_ai_detections(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ai_detections: #{e}"
end
```

#### Using the list_listing_ai_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingAiDetectionsResponse>, Integer, Hash)> list_listing_ai_detections_with_http_info(id)

```ruby
begin
  # Crossly's AI-image detections for a listing's photos.
  data, status_code, headers = api_instance.list_listing_ai_detections_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingAiDetectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ai_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingAiDetectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_discrepancies

> <ListListingDiscrepanciesResponse> list_listing_discrepancies(id)

List detected marketplace-drift discrepancies for a listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # List detected marketplace-drift discrepancies for a listing.
  result = api_instance.list_listing_discrepancies(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_discrepancies: #{e}"
end
```

#### Using the list_listing_discrepancies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingDiscrepanciesResponse>, Integer, Hash)> list_listing_discrepancies_with_http_info(id)

```ruby
begin
  # List detected marketplace-drift discrepancies for a listing.
  data, status_code, headers = api_instance.list_listing_discrepancies_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingDiscrepanciesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_discrepancies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingDiscrepanciesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ids

> <ListListingIdsResponse> list_listing_ids

Filter listings → return matching id list (no pagination).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Filter listings → return matching id list (no pagination).
  result = api_instance.list_listing_ids
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ids: #{e}"
end
```

#### Using the list_listing_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingIdsResponse>, Integer, Hash)> list_listing_ids_with_http_info

```ruby
begin
  # Filter listings → return matching id list (no pagination).
  data, status_code, headers = api_instance.list_listing_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingIdsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListListingIdsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listings

> <ListListingsResponse> list_listings(opts)

List active platform listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  platform: 'platform_example', # String | 
  status: 'status_example', # String | 
  kind: 'physical' # String | Physical goods or Web3 assets (NFT listings). Omit for both.
}

begin
  # List active platform listings.
  result = api_instance.list_listings(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listings: #{e}"
end
```

#### Using the list_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingsResponse>, Integer, Hash)> list_listings_with_http_info(opts)

```ruby
begin
  # List active platform listings.
  data, status_code, headers = api_instance.list_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **platform** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **kind** | **String** | Physical goods or Web3 assets (NFT listings). Omit for both. | [optional] |

### Return type

**ListListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_passports

> <ListPassportsResponse> list_passports

Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
  result = api_instance.list_passports
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passports: #{e}"
end
```

#### Using the list_passports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPassportsResponse>, Integer, Hash)> list_passports_with_http_info

```ruby
begin
  # Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
  data, status_code, headers = api_instance.list_passports_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPassportsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passports_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPassportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rental_offers

> <ListRentalOffersResponse> list_rental_offers

What you offer for rent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # What you offer for rent.
  result = api_instance.list_rental_offers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_rental_offers: #{e}"
end
```

#### Using the list_rental_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRentalOffersResponse>, Integer, Hash)> list_rental_offers_with_http_info

```ruby
begin
  # What you offer for rent.
  data, status_code, headers = api_instance.list_rental_offers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRentalOffersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_rental_offers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListRentalOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_hotspot

> <UpdateHotspotResponse> update_hotspot

Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
  result = api_instance.update_hotspot
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_hotspot: #{e}"
end
```

#### Using the update_hotspot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateHotspotResponse>, Integer, Hash)> update_hotspot_with_http_info

```ruby
begin
  # Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
  data, status_code, headers = api_instance.update_hotspot_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateHotspotResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_hotspot_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateHotspotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing

> <UpdateListingResponse> update_listing(id)

Edit a listing and fan out update jobs to existing platform listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit a listing and fan out update jobs to existing platform listings.
  result = api_instance.update_listing(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing: #{e}"
end
```

#### Using the update_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingResponse>, Integer, Hash)> update_listing_with_http_info(id)

```ruby
begin
  # Edit a listing and fan out update jobs to existing platform listings.
  data, status_code, headers = api_instance.update_listing_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_custom

> <UpdateListingCustomResponse> update_listing_custom(id)

Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
  result = api_instance.update_listing_custom(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_custom: #{e}"
end
```

#### Using the update_listing_custom_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingCustomResponse>, Integer, Hash)> update_listing_custom_with_http_info(id)

```ruby
begin
  # Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
  data, status_code, headers = api_instance.update_listing_custom_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingCustomResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_custom_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateListingCustomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_platform_listing

> <UpdateListingPlatformListingResponse> update_listing_platform_listing(id, pl_id)

Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pl_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.
  result = api_instance.update_listing_platform_listing(id, pl_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_platform_listing: #{e}"
end
```

#### Using the update_listing_platform_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingPlatformListingResponse>, Integer, Hash)> update_listing_platform_listing_with_http_info(id, pl_id)

```ruby
begin
  # Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.
  data, status_code, headers = api_instance.update_listing_platform_listing_with_http_info(id, pl_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingPlatformListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_platform_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **pl_id** | **String** |  |  |

### Return type

**UpdateListingPlatformListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_live_stream_lineup

> <UpdateLiveStreamLineupResponse> update_live_stream_lineup(id)

Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
  result = api_instance.update_live_stream_lineup(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream_lineup: #{e}"
end
```

#### Using the update_live_stream_lineup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLiveStreamLineupResponse>, Integer, Hash)> update_live_stream_lineup_with_http_info(id)

```ruby
begin
  # Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
  data, status_code, headers = api_instance.update_live_stream_lineup_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLiveStreamLineupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream_lineup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateLiveStreamLineupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pricing_setting

> <GetPricingSettingResponse> update_pricing_setting

Turn own-price match and/or layaway on or off.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Turn own-price match and/or layaway on or off.
  result = api_instance.update_pricing_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_pricing_setting: #{e}"
end
```

#### Using the update_pricing_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSettingResponse>, Integer, Hash)> update_pricing_setting_with_http_info

```ruby
begin
  # Turn own-price match and/or layaway on or off.
  data, status_code, headers = api_instance.update_pricing_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_pricing_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_offer

> <UpdateRentalOfferResponse> update_rental_offer(platform_listing_id)

Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, and rent-only (off sale while offered). Needs a ship-from address.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, and rent-only (off sale while offered). Needs a ship-from address.
  result = api_instance.update_rental_offer(platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_offer: #{e}"
end
```

#### Using the update_rental_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateRentalOfferResponse>, Integer, Hash)> update_rental_offer_with_http_info(platform_listing_id)

```ruby
begin
  # Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, and rent-only (off sale while offered). Needs a ship-from address.
  data, status_code, headers = api_instance.update_rental_offer_with_http_info(platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateRentalOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateRentalOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_variation_group

> <CreateVariationGroupResponse> update_variation_group(id)

Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).
  result = api_instance.update_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_variation_group: #{e}"
end
```

#### Using the update_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupResponse>, Integer, Hash)> update_variation_group_with_http_info(id)

```ruby
begin
  # Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).
  data, status_code, headers = api_instance.update_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

