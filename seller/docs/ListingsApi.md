# Crossly::ListingsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_listing**](ListingsApi.md#create_listing) | **POST** /v1/listings | Create a listing and fan out crosspost jobs across platforms. |
| [**create_listing_bulk_check_status**](ListingsApi.md#create_listing_bulk_check_status) | **POST** /v1/listings/bulk-check-status | Check listing status on platforms |
| [**create_listing_bulk_crosspost**](ListingsApi.md#create_listing_bulk_crosspost) | **POST** /v1/listings/bulk-crosspost | Bulk crosspost (no delist phase) |
| [**create_listing_bulk_delete**](ListingsApi.md#create_listing_bulk_delete) | **POST** /v1/listings/bulk-delete | Bulk archive + delist |
| [**create_listing_bulk_delist**](ListingsApi.md#create_listing_bulk_delist) | **POST** /v1/listings/bulk-delist | Bulk delist from platforms |
| [**create_listing_bulk_delist_preview**](ListingsApi.md#create_listing_bulk_delist_preview) | **POST** /v1/listings/bulk-delist-preview | Preview which marketplaces a delist would touch |
| [**create_listing_bulk_hard_delete**](ListingsApi.md#create_listing_bulk_hard_delete) | **POST** /v1/listings/bulk-hard-delete | Permanently delete archived listings |
| [**create_listing_bulk_relist**](ListingsApi.md#create_listing_bulk_relist) | **POST** /v1/listings/bulk-relist | Bulk relist across platforms |
| [**create_listing_bulk_update**](ListingsApi.md#create_listing_bulk_update) | **POST** /v1/listings/bulk-update | Bulk update listing fields |
| [**create_listing_by_id**](ListingsApi.md#create_listing_by_id) | **POST** /v1/listings/by-ids | Fetch hydrated listings by ID |
| [**create_listing_check_duplicate**](ListingsApi.md#create_listing_check_duplicate) | **POST** /v1/listings/check-duplicates | Check whether the seller already owns something matching this title/photo, and what to do about it. |
| [**create_listing_combine**](ListingsApi.md#create_listing_combine) | **POST** /v1/listings/combine | Combine duplicate listings into one: sums their stock, delists and archives the rest. |
| [**create_listing_discrepancy_resolve**](ListingsApi.md#create_listing_discrepancy_resolve) | **POST** /v1/listings/{id}/discrepancies/{discrepancyId}/resolve | Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss. |
| [**create_listing_import_by_url**](ListingsApi.md#create_listing_import_by_url) | **POST** /v1/listings/{id}/import-by-url | Attach a real platform listing to this listing by pasting its live URL. |
| [**create_listing_magic_fill**](ListingsApi.md#create_listing_magic_fill) | **POST** /v1/listings/{id}/magic-fill | Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution. |
| [**delete_listing**](ListingsApi.md#delete_listing) | **DELETE** /v1/listings/{id} | Delist a listing (optionally narrowed to specific platforms via ?platforms&#x3D;). |
| [**get_listing**](ListingsApi.md#get_listing) | **GET** /v1/listings/{id} | Get one listing with its platform rows. |
| [**get_listing_facet**](ListingsApi.md#get_listing_facet) | **GET** /v1/listings/facets | Distinct brands + categories across listings + inventory. |
| [**get_listing_sku_exist**](ListingsApi.md#get_listing_sku_exist) | **GET** /v1/listings/sku-exists | Check whether a SKU is already used by one of this user&#39;s items. |
| [**list_listing_discrepancies**](ListingsApi.md#list_listing_discrepancies) | **GET** /v1/listings/{id}/discrepancies | List detected marketplace-drift discrepancies for a listing. |
| [**list_listing_ids**](ListingsApi.md#list_listing_ids) | **GET** /v1/listings/ids | Filter listings → return matching id list (no pagination). |
| [**list_listings**](ListingsApi.md#list_listings) | **GET** /v1/listings | List active platform listings. |
| [**update_listing**](ListingsApi.md#update_listing) | **PATCH** /v1/listings/{id} | Edit a listing and fan out update jobs to existing platform listings. |


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

[**CreateListingResponse**](CreateListingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_check_status

> <CreateListingBulkCheckStatusResponse> create_listing_bulk_check_status

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

> <Array(<CreateListingBulkCheckStatusResponse>, Integer, Hash)> create_listing_bulk_check_status_with_http_info

```ruby
begin
  # Check listing status on platforms
  data, status_code, headers = api_instance.create_listing_bulk_check_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkCheckStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_check_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateListingBulkCheckStatusResponse**](CreateListingBulkCheckStatusResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_crosspost

> <CreateListingBulkCrosspostResponse> create_listing_bulk_crosspost

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

> <Array(<CreateListingBulkCrosspostResponse>, Integer, Hash)> create_listing_bulk_crosspost_with_http_info

```ruby
begin
  # Bulk crosspost (no delist phase)
  data, status_code, headers = api_instance.create_listing_bulk_crosspost_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkCrosspostResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_crosspost_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateListingBulkCrosspostResponse**](CreateListingBulkCrosspostResponse.md)

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

[**CreateListingBulkDeleteResponse**](CreateListingBulkDeleteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delist

> <CreateListingBulkDelistResponse> create_listing_bulk_delist

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

> <Array(<CreateListingBulkDelistResponse>, Integer, Hash)> create_listing_bulk_delist_with_http_info

```ruby
begin
  # Bulk delist from platforms
  data, status_code, headers = api_instance.create_listing_bulk_delist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDelistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateListingBulkDelistResponse**](CreateListingBulkDelistResponse.md)

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

[**CreateListingBulkDelistPreviewResponse**](CreateListingBulkDelistPreviewResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_hard_delete

> <CreateListingBulkHardDeleteResponse> create_listing_bulk_hard_delete

Permanently delete archived listings

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
  # Permanently delete archived listings
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
  # Permanently delete archived listings
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

[**CreateListingBulkHardDeleteResponse**](CreateListingBulkHardDeleteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_relist

> <CreateListingBulkRelistResponse> create_listing_bulk_relist

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

> <Array(<CreateListingBulkRelistResponse>, Integer, Hash)> create_listing_bulk_relist_with_http_info

```ruby
begin
  # Bulk relist across platforms
  data, status_code, headers = api_instance.create_listing_bulk_relist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkRelistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_relist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateListingBulkRelistResponse**](CreateListingBulkRelistResponse.md)

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

[**CreateListingBulkUpdateResponse**](CreateListingBulkUpdateResponse.md)

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

[**CreateListingByIdResponse**](CreateListingByIdResponse.md)

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

[**CreateListingCheckDuplicateResponse**](CreateListingCheckDuplicateResponse.md)

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

[**CreateListingCombineResponse**](CreateListingCombineResponse.md)

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

[**CreateListingDiscrepancyResolveResponse**](CreateListingDiscrepancyResolveResponse.md)

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

[**CreateListingImportByUrlResponse**](CreateListingImportByUrlResponse.md)

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

[**CreateListingMagicFillResponse**](CreateListingMagicFillResponse.md)

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
  platforms: 'platforms_example' # String | Comma-separated platform slugs to limit the delist fan-out.
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

### Return type

[**DeleteListingResponse**](DeleteListingResponse.md)

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

[**GetListingResponse**](GetListingResponse.md)

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

[**GetListingFacetResponse**](GetListingFacetResponse.md)

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

[**GetListingSkuExistResponse**](GetListingSkuExistResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_discrepancies

> <V1List> list_listing_discrepancies(id)

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

> <Array(<V1List>, Integer, Hash)> list_listing_discrepancies_with_http_info(id)

```ruby
begin
  # List detected marketplace-drift discrepancies for a listing.
  data, status_code, headers = api_instance.list_listing_discrepancies_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_discrepancies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ids

> <V1List> list_listing_ids

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

> <Array(<V1List>, Integer, Hash)> list_listing_ids_with_http_info

```ruby
begin
  # Filter listings → return matching id list (no pagination).
  data, status_code, headers = api_instance.list_listing_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listings

> <V1List> list_listings(opts)

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
  status: 'status_example' # String | 
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

> <Array(<V1List>, Integer, Hash)> list_listings_with_http_info(opts)

```ruby
begin
  # List active platform listings.
  data, status_code, headers = api_instance.list_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
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

### Return type

[**V1List**](V1List.md)

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

[**UpdateListingResponse**](UpdateListingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

