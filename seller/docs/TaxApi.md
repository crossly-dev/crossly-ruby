# Crossly::TaxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mileage**](TaxApi.md#create_mileage) | **POST** /v1/mileage | Create a mileage entry. |
| [**delete_mileage**](TaxApi.md#delete_mileage) | **DELETE** /v1/mileage/{id} | Delete a mileage entry. |
| [**get_mileage_summary**](TaxApi.md#get_mileage_summary) | **GET** /v1/mileage/summary | Annual mileage totals + IRS deduction. |
| [**get_tax_schedule_c**](TaxApi.md#get_tax_schedule_c) | **GET** /v1/tax/schedule-c | Schedule C JSON for a tax year. |
| [**list_mileage**](TaxApi.md#list_mileage) | **GET** /v1/mileage | List mileage entries. |
| [**update_mileage**](TaxApi.md#update_mileage) | **PATCH** /v1/mileage/{id} | Update a mileage entry. |


## create_mileage

> <CreateMileageResponse> create_mileage

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

begin
  # Create a mileage entry.
  result = api_instance.create_mileage
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->create_mileage: #{e}"
end
```

#### Using the create_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMileageResponse>, Integer, Hash)> create_mileage_with_http_info

```ruby
begin
  # Create a mileage entry.
  data, status_code, headers = api_instance.create_mileage_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->create_mileage_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateMileageResponse**](CreateMileageResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mileage

> <DeleteMileageResponse> delete_mileage(id)

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

> <Array(<DeleteMileageResponse>, Integer, Hash)> delete_mileage_with_http_info(id)

```ruby
begin
  # Delete a mileage entry.
  data, status_code, headers = api_instance.delete_mileage_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->delete_mileage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteMileageResponse**](DeleteMileageResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mileage_summary

> <GetMileageSummaryResponse> get_mileage_summary

Annual mileage totals + IRS deduction.

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
  # Annual mileage totals + IRS deduction.
  result = api_instance.get_mileage_summary
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_mileage_summary: #{e}"
end
```

#### Using the get_mileage_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMileageSummaryResponse>, Integer, Hash)> get_mileage_summary_with_http_info

```ruby
begin
  # Annual mileage totals + IRS deduction.
  data, status_code, headers = api_instance.get_mileage_summary_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMileageSummaryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_mileage_summary_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetMileageSummaryResponse**](GetMileageSummaryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tax_schedule_c

> <GetTaxScheduleCResponse> get_tax_schedule_c

Schedule C JSON for a tax year.

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
  # Schedule C JSON for a tax year.
  result = api_instance.get_tax_schedule_c
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_schedule_c: #{e}"
end
```

#### Using the get_tax_schedule_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxScheduleCResponse>, Integer, Hash)> get_tax_schedule_c_with_http_info

```ruby
begin
  # Schedule C JSON for a tax year.
  data, status_code, headers = api_instance.get_tax_schedule_c_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxScheduleCResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->get_tax_schedule_c_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTaxScheduleCResponse**](GetTaxScheduleCResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mileage

> <V1List> list_mileage

List mileage entries.

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
  # List mileage entries.
  result = api_instance.list_mileage
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_mileage: #{e}"
end
```

#### Using the list_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_mileage_with_http_info

```ruby
begin
  # List mileage entries.
  data, status_code, headers = api_instance.list_mileage_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->list_mileage_with_http_info: #{e}"
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


## update_mileage

> <UpdateMileageResponse> update_mileage(id)

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

begin
  # Update a mileage entry.
  result = api_instance.update_mileage(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->update_mileage: #{e}"
end
```

#### Using the update_mileage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateMileageResponse>, Integer, Hash)> update_mileage_with_http_info(id)

```ruby
begin
  # Update a mileage entry.
  data, status_code, headers = api_instance.update_mileage_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateMileageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TaxApi->update_mileage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateMileageResponse**](UpdateMileageResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

