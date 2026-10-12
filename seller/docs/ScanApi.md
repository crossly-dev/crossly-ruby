# Crossly::ScanApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_scan_captures**](ScanApi.md#list_scan_captures) | **GET** /v1/scan/captures | Your capture sessions and what they produced. |
| [**list_scan_models**](ScanApi.md#list_scan_models) | **GET** /v1/scan/models | Which items already have a 3D model. |


## list_scan_captures

> <ListScanCapturesResponse> list_scan_captures(opts)

Your capture sessions and what they produced.

One row per scan, newest first. `status` is capturing | uploaded | processing | ready | failed | rejected; `rejectReason` says why in the same words the seller was shown. A capture that reports `ready` with no mesh is normal — most items are textured onto a known shape rather than having geometry generated, which is cheaper and looks the same. When an item that WOULD have been generated was not, `generationSkipped` says why: out of monthly allowance, too few distinct angles, or you had already had a model built from this object.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ScanApi.new
opts = {
  status: 'status_example', # String | Filter to one status.
  limit: 56 # Integer | 
}

begin
  # Your capture sessions and what they produced.
  result = api_instance.list_scan_captures(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ScanApi->list_scan_captures: #{e}"
end
```

#### Using the list_scan_captures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListScanCapturesResponse>, Integer, Hash)> list_scan_captures_with_http_info(opts)

```ruby
begin
  # Your capture sessions and what they produced.
  data, status_code, headers = api_instance.list_scan_captures_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListScanCapturesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ScanApi->list_scan_captures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter to one status. | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListScanCapturesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_scan_models

> <ListScanModelsResponse> list_scan_models(opts)

Which items already have a 3D model.

Ask by CATALOGUE variant (`variantIds`) or by your own inventory rows (`inventoryItemIds`), comma separated, up to 200 of each. At least one is required. Returns only the ones that have a model. The two are different KINDS of answer. A catalogue model belongs to the product and is shared: a hit means your listing gets it with nothing to capture, because somebody else already paid to generate it. An inventory model belongs to one of your rows, because an object with no catalogue identity — a lamp, a one-off — is not a product anyone else can claim. `longestEdgeMm` is present only when a capture MEASURED the item against something of known size; null means the mesh has correct proportions and no real-world scale.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ScanApi.new
opts = {
  variant_ids: 'variant_ids_example', # String | Comma-separated catalogue variant ids, max 200.
  inventory_item_ids: 'inventory_item_ids_example' # String | Comma-separated inventory item ids, max 200.
}

begin
  # Which items already have a 3D model.
  result = api_instance.list_scan_models(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ScanApi->list_scan_models: #{e}"
end
```

#### Using the list_scan_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListScanModelsResponse>, Integer, Hash)> list_scan_models_with_http_info(opts)

```ruby
begin
  # Which items already have a 3D model.
  data, status_code, headers = api_instance.list_scan_models_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListScanModelsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ScanApi->list_scan_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_ids** | **String** | Comma-separated catalogue variant ids, max 200. | [optional] |
| **inventory_item_ids** | **String** | Comma-separated inventory item ids, max 200. | [optional] |

### Return type

**ListScanModelsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

