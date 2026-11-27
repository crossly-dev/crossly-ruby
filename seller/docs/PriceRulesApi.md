# Crossly::PriceRulesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_price_rule_preview**](PriceRulesApi.md#create_price_rule_preview) | **POST** /v1/price-rules/preview | Compute the price each marketplace would list a listing (or a price) at. |
| [**delete_price_rule**](PriceRulesApi.md#delete_price_rule) | **DELETE** /v1/price-rules/{id} | Delete a price rule. |
| [**list_price_rules**](PriceRulesApi.md#list_price_rules) | **GET** /v1/price-rules | List the seller&#39;s per-channel price rules. |
| [**update_price_rule**](PriceRulesApi.md#update_price_rule) | **PUT** /v1/price-rules | Create or replace the price rule for a platform (and optional account / category). |
| [**update_price_rule_by_id**](PriceRulesApi.md#update_price_rule_by_id) | **PATCH** /v1/price-rules/{id} | Update a price rule. |


## create_price_rule_preview

> <CreatePriceRulePreviewResponse> create_price_rule_preview

Compute the price each marketplace would list a listing (or a price) at.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PriceRulesApi.new

begin
  # Compute the price each marketplace would list a listing (or a price) at.
  result = api_instance.create_price_rule_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->create_price_rule_preview: #{e}"
end
```

#### Using the create_price_rule_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePriceRulePreviewResponse>, Integer, Hash)> create_price_rule_preview_with_http_info

```ruby
begin
  # Compute the price each marketplace would list a listing (or a price) at.
  data, status_code, headers = api_instance.create_price_rule_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePriceRulePreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->create_price_rule_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreatePriceRulePreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_price_rule

> <OkResponse> delete_price_rule(id)

Delete a price rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PriceRulesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a price rule.
  result = api_instance.delete_price_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rule: #{e}"
end
```

#### Using the delete_price_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_price_rule_with_http_info(id)

```ruby
begin
  # Delete a price rule.
  data, status_code, headers = api_instance.delete_price_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rule_with_http_info: #{e}"
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


## list_price_rules

> <ListPriceRulesResponse> list_price_rules(opts)

List the seller's per-channel price rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PriceRulesApi.new
opts = {
  platform: 'platform_example' # String | 
}

begin
  # List the seller's per-channel price rules.
  result = api_instance.list_price_rules(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->list_price_rules: #{e}"
end
```

#### Using the list_price_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPriceRulesResponse>, Integer, Hash)> list_price_rules_with_http_info(opts)

```ruby
begin
  # List the seller's per-channel price rules.
  data, status_code, headers = api_instance.list_price_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPriceRulesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->list_price_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |

### Return type

**ListPriceRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_price_rule

> <ListPriceRulesItem> update_price_rule

Create or replace the price rule for a platform (and optional account / category).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PriceRulesApi.new

begin
  # Create or replace the price rule for a platform (and optional account / category).
  result = api_instance.update_price_rule
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule: #{e}"
end
```

#### Using the update_price_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPriceRulesItem>, Integer, Hash)> update_price_rule_with_http_info

```ruby
begin
  # Create or replace the price rule for a platform (and optional account / category).
  data, status_code, headers = api_instance.update_price_rule_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPriceRulesItem>
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPriceRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_price_rule_by_id

> <ListPriceRulesItem> update_price_rule_by_id(id)

Update a price rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PriceRulesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update a price rule.
  result = api_instance.update_price_rule_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule_by_id: #{e}"
end
```

#### Using the update_price_rule_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPriceRulesItem>, Integer, Hash)> update_price_rule_by_id_with_http_info(id)

```ruby
begin
  # Update a price rule.
  data, status_code, headers = api_instance.update_price_rule_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPriceRulesItem>
rescue Crossly::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListPriceRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

