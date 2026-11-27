# Crossly::SearchApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_search**](SearchApi.md#get_search) | **GET** /v1/search | Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:&lt;type&gt;, status:, platform:. Groups your token has no read scope for are left out. |


## get_search

> <GetSearchResponse> get_search(opts)

Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:<type>, status:, platform:. Groups your token has no read scope for are left out.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SearchApi.new
opts = {
  q: 'q_example', # String | What to search for (operators allowed).
  types: 'types_example', # String | Comma-separated groups to search: inventory, listings, orders, sales, customers, conversations, offers, shipments, returns.
  limit: 56 # Integer | Hits per group.
}

begin
  # Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:<type>, status:, platform:. Groups your token has no read scope for are left out.
  result = api_instance.get_search(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SearchApi->get_search: #{e}"
end
```

#### Using the get_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSearchResponse>, Integer, Hash)> get_search_with_http_info(opts)

```ruby
begin
  # Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:<type>, status:, platform:. Groups your token has no read scope for are left out.
  data, status_code, headers = api_instance.get_search_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSearchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SearchApi->get_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | What to search for (operators allowed). | [optional] |
| **types** | **String** | Comma-separated groups to search: inventory, listings, orders, sales, customers, conversations, offers, shipments, returns. | [optional] |
| **limit** | **Integer** | Hits per group. | [optional][default to 5] |

### Return type

**GetSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

