# Crossly::PolicyPresetsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policy_preset**](PolicyPresetsApi.md#create_policy_preset) | **POST** /v1/policy-presets | Create a return / shipping / payment policy preset. |
| [**delete_policy_preset**](PolicyPresetsApi.md#delete_policy_preset) | **DELETE** /v1/policy-presets/{id} | Delete a policy preset. |
| [**list_policy_presets**](PolicyPresetsApi.md#list_policy_presets) | **GET** /v1/policy-presets | List the seller&#39;s return / shipping / payment policy presets. |
| [**update_policy_preset**](PolicyPresetsApi.md#update_policy_preset) | **PATCH** /v1/policy-presets/{id} | Update a policy preset. |


## create_policy_preset

> <ListPolicyPresetsItem> create_policy_preset

Create a return / shipping / payment policy preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new

begin
  # Create a return / shipping / payment policy preset.
  result = api_instance.create_policy_preset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset: #{e}"
end
```

#### Using the create_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetsItem>, Integer, Hash)> create_policy_preset_with_http_info

```ruby
begin
  # Create a return / shipping / payment policy preset.
  data, status_code, headers = api_instance.create_policy_preset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPolicyPresetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_policy_preset

> <OkResponse> delete_policy_preset(id)

Delete a policy preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a policy preset.
  result = api_instance.delete_policy_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->delete_policy_preset: #{e}"
end
```

#### Using the delete_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_policy_preset_with_http_info(id)

```ruby
begin
  # Delete a policy preset.
  data, status_code, headers = api_instance.delete_policy_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->delete_policy_preset_with_http_info: #{e}"
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


## list_policy_presets

> <ListPolicyPresetsResponse> list_policy_presets(opts)

List the seller's return / shipping / payment policy presets.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
opts = {
  kind: 'return' # String | 
}

begin
  # List the seller's return / shipping / payment policy presets.
  result = api_instance.list_policy_presets(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_presets: #{e}"
end
```

#### Using the list_policy_presets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetsResponse>, Integer, Hash)> list_policy_presets_with_http_info(opts)

```ruby
begin
  # List the seller's return / shipping / payment policy presets.
  data, status_code, headers = api_instance.list_policy_presets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_presets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |

### Return type

**ListPolicyPresetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy_preset

> <ListPolicyPresetsItem> update_policy_preset(id)

Update a policy preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update a policy preset.
  result = api_instance.update_policy_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset: #{e}"
end
```

#### Using the update_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetsItem>, Integer, Hash)> update_policy_preset_with_http_info(id)

```ruby
begin
  # Update a policy preset.
  data, status_code, headers = api_instance.update_policy_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListPolicyPresetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

