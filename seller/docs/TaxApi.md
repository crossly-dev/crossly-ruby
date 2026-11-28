# Crossly::TaxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mileage**](TaxApi.md#create_mileage) | **POST** /v1/mileage | Create a mileage entry. |
| [**delete_mileage**](TaxApi.md#delete_mileage) | **DELETE** /v1/mileage/{id} | Delete a mileage entry. |
| [**get_mileage_summary**](TaxApi.md#get_mileage_summary) | **GET** /v1/mileage/summary | Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in &#x60;rates&#x60;); &#x60;ratePerMile&#x60; is the January rate. |
| [**get_tax_sales_tax**](TaxApi.md#get_tax_sales_tax) | **GET** /v1/tax/sales-tax | Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction. |
| [**get_tax_schedule_c**](TaxApi.md#get_tax_schedule_c) | **GET** /v1/tax/schedule-c | Schedule C JSON for a tax year (default the current year), from the same P&amp;L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&amp;L by period. |
| [**list_mileage**](TaxApi.md#list_mileage) | **GET** /v1/mileage | List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range. |
| [**list_tax_crossly_collects**](TaxApi.md#list_tax_crossly_collects) | **GET** /v1/tax/crossly-collects | Where Crossly collects sales tax today (its active Stripe Tax registrations). |
| [**list_tax_sales_tax_not_collected**](TaxApi.md#list_tax_sales_tax_not_collected) | **GET** /v1/tax/sales-tax/not-collected | The individual Crossly sales Crossly did not collect sales tax on, newest first. |
| [**update_mileage**](TaxApi.md#update_mileage) | **PATCH** /v1/mileage/{id} | Update a mileage entry. |


## create_mileage

> <CreateMileageResponse> create_mileage(create_mileage_request)

Create a mileage entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
create_mileage_request = Crossly::CreateMileageRequest.new({date: 'date_example', miles: 3.56, purpose: 'purpose_example'}) # CreateMileageRequest | 

begin
  # Create a mileage entry.
  result = api_instance.create_mileage(create_mileage_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->create_mileage: #{e}"
end
```

#### Using the create_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMileageResponse>, Integer, Hash)> create_mileage_with_http_info(create_mileage_request)

```ruby
begin
  # Create a mileage entry.
  data, status_code, headers = api_instance.create_mileage_with_http_info(create_mileage_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->create_mileage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_mileage_request** | **CreateMileageRequest** |  |  |

### Return type

**CreateMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mileage

> <OkResponse> delete_mileage(id)

Delete a mileage entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a mileage entry.
  result = api_instance.delete_mileage(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->delete_mileage: #{e}"
end
```

#### Using the delete_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_mileage_with_http_info(id)

```ruby
begin
  # Delete a mileage entry.
  data, status_code, headers = api_instance.delete_mileage_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->delete_mileage_with_http_info: #{e}"
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


## get_mileage_summary

> <GetMileageSummaryResponse> get_mileage_summary(opts)

Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in `rates`); `ratePerMile` is the January rate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
opts = {
  year: 56 # Integer | Calendar tax year. Default the current year.
}

begin
  # Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in `rates`); `ratePerMile` is the January rate.
  result = api_instance.get_mileage_summary(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_mileage_summary: #{e}"
end
```

#### Using the get_mileage_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMileageSummaryResponse>, Integer, Hash)> get_mileage_summary_with_http_info(opts)

```ruby
begin
  # Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in `rates`); `ratePerMile` is the January rate.
  data, status_code, headers = api_instance.get_mileage_summary_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMileageSummaryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_mileage_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Calendar tax year. Default the current year. | [optional] |

### Return type

**GetMileageSummaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tax_sales_tax

> <GetTaxSalesTaxResponse> get_tax_sales_tax(opts)

Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
opts = {
  from: 'from_example', # String | YYYY-MM-DD, inclusive. Default 1 January this year.
  to: 'to_example' # String | YYYY-MM-DD, inclusive. Default now.
}

begin
  # Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.
  result = api_instance.get_tax_sales_tax(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_sales_tax: #{e}"
end
```

#### Using the get_tax_sales_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxSalesTaxResponse>, Integer, Hash)> get_tax_sales_tax_with_http_info(opts)

```ruby
begin
  # Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.
  data, status_code, headers = api_instance.get_tax_sales_tax_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxSalesTaxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_sales_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | YYYY-MM-DD, inclusive. Default 1 January this year. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive. Default now. | [optional] |

### Return type

**GetTaxSalesTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tax_schedule_c

> <GetTaxScheduleCResponse> get_tax_schedule_c(opts)

Schedule C JSON for a tax year (default the current year), from the same P&L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&L by period.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
opts = {
  year: 8.14 # Float | 
}

begin
  # Schedule C JSON for a tax year (default the current year), from the same P&L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&L by period.
  result = api_instance.get_tax_schedule_c(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_schedule_c: #{e}"
end
```

#### Using the get_tax_schedule_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxScheduleCResponse>, Integer, Hash)> get_tax_schedule_c_with_http_info(opts)

```ruby
begin
  # Schedule C JSON for a tax year (default the current year), from the same P&L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&L by period.
  data, status_code, headers = api_instance.get_tax_schedule_c_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxScheduleCResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_schedule_c_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Float** |  | [optional] |

### Return type

**GetTaxScheduleCResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mileage

> <ListMileageResponse> list_mileage(opts)

List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
opts = {
  year: 56, # Integer | Only trips dated in this calendar year.
  from: 'from_example', # String | YYYY-MM-DD, inclusive. Only trips on or after this date. Combines with year.
  to: 'to_example', # String | YYYY-MM-DD, inclusive. Only trips on or before this date; from <= to.
  page: 56, # Integer | 1-indexed page. Default 1.
  limit: 56 # Integer | Rows per page, default 100, clamped to 500.
}

begin
  # List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.
  result = api_instance.list_mileage(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_mileage: #{e}"
end
```

#### Using the list_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMileageResponse>, Integer, Hash)> list_mileage_with_http_info(opts)

```ruby
begin
  # List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.
  data, status_code, headers = api_instance.list_mileage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_mileage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Only trips dated in this calendar year. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive. Only trips on or after this date. Combines with year. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive. Only trips on or before this date; from &lt;&#x3D; to. | [optional] |
| **page** | **Integer** | 1-indexed page. Default 1. | [optional] |
| **limit** | **Integer** | Rows per page, default 100, clamped to 500. | [optional] |

### Return type

**ListMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tax_crossly_collects

> <ListTaxCrosslyCollectsResponse> list_tax_crossly_collects

Where Crossly collects sales tax today (its active Stripe Tax registrations).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new

begin
  # Where Crossly collects sales tax today (its active Stripe Tax registrations).
  result = api_instance.list_tax_crossly_collects
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_tax_crossly_collects: #{e}"
end
```

#### Using the list_tax_crossly_collects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxCrosslyCollectsResponse>, Integer, Hash)> list_tax_crossly_collects_with_http_info

```ruby
begin
  # Where Crossly collects sales tax today (its active Stripe Tax registrations).
  data, status_code, headers = api_instance.list_tax_crossly_collects_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxCrosslyCollectsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_tax_crossly_collects_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListTaxCrosslyCollectsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tax_sales_tax_not_collected

> <ListTaxSalesTaxNotCollectedResponse> list_tax_sales_tax_not_collected(opts)

The individual Crossly sales Crossly did not collect sales tax on, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
opts = {
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # The individual Crossly sales Crossly did not collect sales tax on, newest first.
  result = api_instance.list_tax_sales_tax_not_collected(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_tax_sales_tax_not_collected: #{e}"
end
```

#### Using the list_tax_sales_tax_not_collected_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxSalesTaxNotCollectedResponse>, Integer, Hash)> list_tax_sales_tax_not_collected_with_http_info(opts)

```ruby
begin
  # The individual Crossly sales Crossly did not collect sales tax on, newest first.
  data, status_code, headers = api_instance.list_tax_sales_tax_not_collected_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxSalesTaxNotCollectedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_tax_sales_tax_not_collected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListTaxSalesTaxNotCollectedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mileage

> <CreateMileageResponse> update_mileage(id, update_mileage_request)

Update a mileage entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TaxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_mileage_request = Crossly::UpdateMileageRequest.new # UpdateMileageRequest | 

begin
  # Update a mileage entry.
  result = api_instance.update_mileage(id, update_mileage_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->update_mileage: #{e}"
end
```

#### Using the update_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMileageResponse>, Integer, Hash)> update_mileage_with_http_info(id, update_mileage_request)

```ruby
begin
  # Update a mileage entry.
  data, status_code, headers = api_instance.update_mileage_with_http_info(id, update_mileage_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->update_mileage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_mileage_request** | **UpdateMileageRequest** |  |  |

### Return type

**CreateMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

