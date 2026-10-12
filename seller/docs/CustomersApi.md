# Crossly::CustomersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_bulk_delete**](CustomersApi.md#create_customer_bulk_delete) | **POST** /v1/customers/bulk-delete | Bulk blocklist customer handles. |
| [**create_customer_bulk_export**](CustomersApi.md#create_customer_bulk_export) | **POST** /v1/customers/bulk-export | Bulk export aggregated customers as CSV. |
| [**create_customer_refresh_profile**](CustomersApi.md#create_customer_refresh_profile) | **POST** /v1/customers/{handle}/refresh-profile | Queue a fresh read of a customer&#39;s buyer profiles on every platform they ordered on. |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v1/customers/{handle} | Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders. |
| [**get_loyalty_club**](CustomersApi.md#get_loyalty_club) | **GET** /v1/loyalty/club | Your loyalty club: tiers and how many members are in each. |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /v1/customers | List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating. |
| [**list_loyalty_members**](CustomersApi.md#list_loyalty_members) | **GET** /v1/loyalty/members | Your loyalty club’s members, by spend with you. |
| [**update_loyalty_club**](CustomersApi.md#update_loyalty_club) | **PUT** /v1/loyalty/club | Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks. |


## create_customer_bulk_delete

> <CreateCustomerBulkDeleteResponse> create_customer_bulk_delete

Bulk blocklist customer handles.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Bulk blocklist customer handles.
  result = api_instance.create_customer_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete: #{e}"
end
```

#### Using the create_customer_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerBulkDeleteResponse>, Integer, Hash)> create_customer_bulk_delete_with_http_info

```ruby
begin
  # Bulk blocklist customer handles.
  data, status_code, headers = api_instance.create_customer_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCustomerBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_customer_bulk_export

> String create_customer_bulk_export

Bulk export aggregated customers as CSV.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Bulk export aggregated customers as CSV.
  result = api_instance.create_customer_bulk_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export: #{e}"
end
```

#### Using the create_customer_bulk_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_customer_bulk_export_with_http_info

```ruby
begin
  # Bulk export aggregated customers as CSV.
  data, status_code, headers = api_instance.create_customer_bulk_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_customer_refresh_profile

> <CreateCustomerRefreshProfileResponse> create_customer_refresh_profile(handle)

Queue a fresh read of a customer's buyer profiles on every platform they ordered on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Queue a fresh read of a customer's buyer profiles on every platform they ordered on.
  result = api_instance.create_customer_refresh_profile(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_refresh_profile: #{e}"
end
```

#### Using the create_customer_refresh_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerRefreshProfileResponse>, Integer, Hash)> create_customer_refresh_profile_with_http_info(handle)

```ruby
begin
  # Queue a fresh read of a customer's buyer profiles on every platform they ordered on.
  data, status_code, headers = api_instance.create_customer_refresh_profile_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerRefreshProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_refresh_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**CreateCustomerRefreshProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer

> <GetCustomerResponse> get_customer(handle)

Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
  result = api_instance.get_customer(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerResponse>, Integer, Hash)> get_customer_with_http_info(handle)

```ruby
begin
  # Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
  data, status_code, headers = api_instance.get_customer_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetCustomerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_club

> <GetLoyaltyClubResponse> get_loyalty_club

Your loyalty club: tiers and how many members are in each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty club: tiers and how many members are in each.
  result = api_instance.get_loyalty_club
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_club: #{e}"
end
```

#### Using the get_loyalty_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyClubResponse>, Integer, Hash)> get_loyalty_club_with_http_info

```ruby
begin
  # Your loyalty club: tiers and how many members are in each.
  data, status_code, headers = api_instance.get_loyalty_club_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyClubResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_club_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <ListCustomersResponse> list_customers

List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
  result = api_instance.list_customers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomersResponse>, Integer, Hash)> list_customers_with_http_info

```ruby
begin
  # List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
  data, status_code, headers = api_instance.list_customers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCustomersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_members

> <ListLoyaltyMembersResponse> list_loyalty_members

Your loyalty club’s members, by spend with you.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty club’s members, by spend with you.
  result = api_instance.list_loyalty_members
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_members: #{e}"
end
```

#### Using the list_loyalty_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyMembersResponse>, Integer, Hash)> list_loyalty_members_with_http_info

```ruby
begin
  # Your loyalty club’s members, by spend with you.
  data, status_code, headers = api_instance.list_loyalty_members_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyMembersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_members_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLoyaltyMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_loyalty_club

> <GetLoyaltyClubResponse> update_loyalty_club

Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  result = api_instance.update_loyalty_club
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club: #{e}"
end
```

#### Using the update_loyalty_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyClubResponse>, Integer, Hash)> update_loyalty_club_with_http_info

```ruby
begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  data, status_code, headers = api_instance.update_loyalty_club_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyClubResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

