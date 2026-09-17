# Crossly::SourcingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sourcing_receipt**](SourcingApi.md#create_sourcing_receipt) | **POST** /v1/sourcing/receipts | Append a parsed receipt to the sourcing ledger. |
| [**get_sourcing_receipt**](SourcingApi.md#get_sourcing_receipt) | **GET** /v1/sourcing/receipts | List parsed sourcing receipts in this user&#39;s ledger. |
| [**list_sourcing_demand**](SourcingApi.md#list_sourcing_demand) | **GET** /v1/sourcing/demand | Items buyers looked for on other sites that Crossly did not have. |
| [**list_sourcing_demand_mine**](SourcingApi.md#list_sourcing_demand_mine) | **GET** /v1/sourcing/demand/mine | Unmet buyer demand for items you hold or have sold before. |


## create_sourcing_receipt

> <CreateSourcingReceiptResponse> create_sourcing_receipt

Append a parsed receipt to the sourcing ledger.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourcingApi.new

begin
  # Append a parsed receipt to the sourcing ledger.
  result = api_instance.create_sourcing_receipt
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->create_sourcing_receipt: #{e}"
end
```

#### Using the create_sourcing_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSourcingReceiptResponse>, Integer, Hash)> create_sourcing_receipt_with_http_info

```ruby
begin
  # Append a parsed receipt to the sourcing ledger.
  data, status_code, headers = api_instance.create_sourcing_receipt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSourcingReceiptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->create_sourcing_receipt_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateSourcingReceiptResponse**](CreateSourcingReceiptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sourcing_receipt

> <GetSourcingReceiptResponse> get_sourcing_receipt

List parsed sourcing receipts in this user's ledger.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourcingApi.new

begin
  # List parsed sourcing receipts in this user's ledger.
  result = api_instance.get_sourcing_receipt
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->get_sourcing_receipt: #{e}"
end
```

#### Using the get_sourcing_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSourcingReceiptResponse>, Integer, Hash)> get_sourcing_receipt_with_http_info

```ruby
begin
  # List parsed sourcing receipts in this user's ledger.
  data, status_code, headers = api_instance.get_sourcing_receipt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSourcingReceiptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->get_sourcing_receipt_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetSourcingReceiptResponse**](GetSourcingReceiptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sourcing_demand

> <V1List> list_sourcing_demand(opts)

Items buyers looked for on other sites that Crossly did not have.

Aggregate demand observed by the Scout extension, ranked by MISSES — the times somebody asked and we had nothing. `medianPageCents` is what the retailers were charging, which is the number to source against. Anonymous in every case; there is no per-buyer view of this.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourcingApi.new
opts = {
  days: 56, # Integer | 
  min_looks: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Items buyers looked for on other sites that Crossly did not have.
  result = api_instance.list_sourcing_demand(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->list_sourcing_demand: #{e}"
end
```

#### Using the list_sourcing_demand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_sourcing_demand_with_http_info(opts)

```ruby
begin
  # Items buyers looked for on other sites that Crossly did not have.
  data, status_code, headers = api_instance.list_sourcing_demand_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->list_sourcing_demand_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** |  | [optional][default to 30] |
| **min_looks** | **Integer** |  | [optional][default to 3] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sourcing_demand_mine

> <V1List> list_sourcing_demand_mine(opts)

Unmet buyer demand for items you hold or have sold before.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SourcingApi.new
opts = {
  days: 56, # Integer | 
  min_lookers: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Unmet buyer demand for items you hold or have sold before.
  result = api_instance.list_sourcing_demand_mine(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->list_sourcing_demand_mine: #{e}"
end
```

#### Using the list_sourcing_demand_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_sourcing_demand_mine_with_http_info(opts)

```ruby
begin
  # Unmet buyer demand for items you hold or have sold before.
  data, status_code, headers = api_instance.list_sourcing_demand_mine_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling SourcingApi->list_sourcing_demand_mine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** |  | [optional][default to 60] |
| **min_lookers** | **Integer** |  | [optional][default to 2] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

