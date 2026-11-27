# Crossly::FieldRulesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_field_rule**](FieldRulesApi.md#create_field_rule) | **POST** /v1/field-rules | Create a per-channel field rule. |
| [**create_field_rule_preview**](FieldRulesApi.md#create_field_rule_preview) | **POST** /v1/field-rules/preview | Preview field-rule output for a listing on one channel. |
| [**create_field_rule_reorder**](FieldRulesApi.md#create_field_rule_reorder) | **POST** /v1/field-rules/reorder | Set the run order of several field rules. |
| [**delete_field_rule**](FieldRulesApi.md#delete_field_rule) | **DELETE** /v1/field-rules/{id} | Delete a field rule. |
| [**get_field_rule**](FieldRulesApi.md#get_field_rule) | **GET** /v1/field-rules/{id} | Get one field rule. |
| [**list_field_rules**](FieldRulesApi.md#list_field_rules) | **GET** /v1/field-rules | List the seller&#39;s per-channel field rules. |
| [**update_field_rule**](FieldRulesApi.md#update_field_rule) | **PATCH** /v1/field-rules/{id} | Update a field rule. |


## create_field_rule

> <ListFieldRulesItem> create_field_rule

Create a per-channel field rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new

begin
  # Create a per-channel field rule.
  result = api_instance.create_field_rule
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule: #{e}"
end
```

#### Using the create_field_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFieldRulesItem>, Integer, Hash)> create_field_rule_with_http_info

```ruby
begin
  # Create a per-channel field rule.
  data, status_code, headers = api_instance.create_field_rule_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFieldRulesItem>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_field_rule_preview

> <CreateFieldRulePreviewResponse> create_field_rule_preview

Preview field-rule output for a listing on one channel.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new

begin
  # Preview field-rule output for a listing on one channel.
  result = api_instance.create_field_rule_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule_preview: #{e}"
end
```

#### Using the create_field_rule_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFieldRulePreviewResponse>, Integer, Hash)> create_field_rule_preview_with_http_info

```ruby
begin
  # Preview field-rule output for a listing on one channel.
  data, status_code, headers = api_instance.create_field_rule_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFieldRulePreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFieldRulePreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_field_rule_reorder

> <OkResponse> create_field_rule_reorder

Set the run order of several field rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new

begin
  # Set the run order of several field rules.
  result = api_instance.create_field_rule_reorder
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule_reorder: #{e}"
end
```

#### Using the create_field_rule_reorder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_field_rule_reorder_with_http_info

```ruby
begin
  # Set the run order of several field rules.
  data, status_code, headers = api_instance.create_field_rule_reorder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->create_field_rule_reorder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_field_rule

> <OkResponse> delete_field_rule(id)

Delete a field rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a field rule.
  result = api_instance.delete_field_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->delete_field_rule: #{e}"
end
```

#### Using the delete_field_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_field_rule_with_http_info(id)

```ruby
begin
  # Delete a field rule.
  data, status_code, headers = api_instance.delete_field_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->delete_field_rule_with_http_info: #{e}"
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


## get_field_rule

> <ListFieldRulesItem> get_field_rule(id)

Get one field rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one field rule.
  result = api_instance.get_field_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->get_field_rule: #{e}"
end
```

#### Using the get_field_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFieldRulesItem>, Integer, Hash)> get_field_rule_with_http_info(id)

```ruby
begin
  # Get one field rule.
  data, status_code, headers = api_instance.get_field_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFieldRulesItem>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->get_field_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_field_rules

> <ListFieldRulesResponse> list_field_rules(opts)

List the seller's per-channel field rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new
opts = {
  platform: 'platform_example' # String | 
}

begin
  # List the seller's per-channel field rules.
  result = api_instance.list_field_rules(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->list_field_rules: #{e}"
end
```

#### Using the list_field_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFieldRulesResponse>, Integer, Hash)> list_field_rules_with_http_info(opts)

```ruby
begin
  # List the seller's per-channel field rules.
  data, status_code, headers = api_instance.list_field_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFieldRulesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->list_field_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |

### Return type

**ListFieldRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_field_rule

> <ListFieldRulesItem> update_field_rule(id)

Update a field rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FieldRulesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update a field rule.
  result = api_instance.update_field_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->update_field_rule: #{e}"
end
```

#### Using the update_field_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFieldRulesItem>, Integer, Hash)> update_field_rule_with_http_info(id)

```ruby
begin
  # Update a field rule.
  data, status_code, headers = api_instance.update_field_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFieldRulesItem>
rescue Crossly::ApiError => e
  puts "Error when calling FieldRulesApi->update_field_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

