# Crossly::CatalogApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_catalog_lookup**](CatalogApi.md#get_catalog_lookup) | **GET** /v1/catalog/lookup | Live Crossly offers for a product identifier (barcode, style code, LEGO set…). |


## get_catalog_lookup

> <GetCatalogLookupResponse> get_catalog_lookup(namespace, value)

Live Crossly offers for a product identifier (barcode, style code, LEGO set…).

Identifier-first: a GTIN is validated against its GS1 check digit and every length is normalised to 14 digits before lookup, so a UPC-A and its EAN-13 twin resolve to the same product. There is no fuzzy fallback — an identifier we cannot validate returns nothing rather than a guess.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CatalogApi.new
namespace = 'gtin' # String | 
value = 'value_example' # String | 

begin
  # Live Crossly offers for a product identifier (barcode, style code, LEGO set…).
  result = api_instance.get_catalog_lookup(namespace, value)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CatalogApi->get_catalog_lookup: #{e}"
end
```

#### Using the get_catalog_lookup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCatalogLookupResponse>, Integer, Hash)> get_catalog_lookup_with_http_info(namespace, value)

```ruby
begin
  # Live Crossly offers for a product identifier (barcode, style code, LEGO set…).
  data, status_code, headers = api_instance.get_catalog_lookup_with_http_info(namespace, value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCatalogLookupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CatalogApi->get_catalog_lookup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **value** | **String** |  |  |

### Return type

[**GetCatalogLookupResponse**](GetCatalogLookupResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

