# Crossly::RestockPromptsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_restock_prompt_dismiss**](RestockPromptsApi.md#create_restock_prompt_dismiss) | **POST** /v1/restock-prompts/{id}/dismiss | Dismiss a pending restock prompt. |
| [**create_restock_prompt_republish**](RestockPromptsApi.md#create_restock_prompt_republish) | **POST** /v1/restock-prompts/{id}/republish | Republish a restock prompt to platforms. |
| [**get_restock_prompt_setting**](RestockPromptsApi.md#get_restock_prompt_setting) | **GET** /v1/restock-prompts/settings | Whether restocked items are republished automatically. |
| [**list_restock_prompts**](RestockPromptsApi.md#list_restock_prompts) | **GET** /v1/restock-prompts | List pending restock prompts. |
| [**update_restock_prompt_setting**](RestockPromptsApi.md#update_restock_prompt_setting) | **PUT** /v1/restock-prompts/settings | Turn automatic republish of restocked items on or off. |


## create_restock_prompt_dismiss

> <OkResponse> create_restock_prompt_dismiss(id)

Dismiss a pending restock prompt.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::RestockPromptsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Dismiss a pending restock prompt.
  result = api_instance.create_restock_prompt_dismiss(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->create_restock_prompt_dismiss: #{e}"
end
```

#### Using the create_restock_prompt_dismiss_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_restock_prompt_dismiss_with_http_info(id)

```ruby
begin
  # Dismiss a pending restock prompt.
  data, status_code, headers = api_instance.create_restock_prompt_dismiss_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->create_restock_prompt_dismiss_with_http_info: #{e}"
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


## create_restock_prompt_republish

> <CreateRestockPromptRepublishResponse> create_restock_prompt_republish(id)

Republish a restock prompt to platforms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::RestockPromptsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Republish a restock prompt to platforms.
  result = api_instance.create_restock_prompt_republish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->create_restock_prompt_republish: #{e}"
end
```

#### Using the create_restock_prompt_republish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRestockPromptRepublishResponse>, Integer, Hash)> create_restock_prompt_republish_with_http_info(id)

```ruby
begin
  # Republish a restock prompt to platforms.
  data, status_code, headers = api_instance.create_restock_prompt_republish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRestockPromptRepublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->create_restock_prompt_republish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateRestockPromptRepublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_restock_prompt_setting

> <GetRestockPromptSettingResponse> get_restock_prompt_setting

Whether restocked items are republished automatically.

autoRepublish (default true): when an item that sold out comes back in stock, Crossly republishes it to the marketplaces it came off without asking. False: a restock prompt is raised instead. A listing the seller ended by hand is never republished automatically.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::RestockPromptsApi.new

begin
  # Whether restocked items are republished automatically.
  result = api_instance.get_restock_prompt_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->get_restock_prompt_setting: #{e}"
end
```

#### Using the get_restock_prompt_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRestockPromptSettingResponse>, Integer, Hash)> get_restock_prompt_setting_with_http_info

```ruby
begin
  # Whether restocked items are republished automatically.
  data, status_code, headers = api_instance.get_restock_prompt_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRestockPromptSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->get_restock_prompt_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetRestockPromptSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_restock_prompts

> <ListRestockPromptsResponse> list_restock_prompts

List pending restock prompts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::RestockPromptsApi.new

begin
  # List pending restock prompts.
  result = api_instance.list_restock_prompts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->list_restock_prompts: #{e}"
end
```

#### Using the list_restock_prompts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRestockPromptsResponse>, Integer, Hash)> list_restock_prompts_with_http_info

```ruby
begin
  # List pending restock prompts.
  data, status_code, headers = api_instance.list_restock_prompts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRestockPromptsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->list_restock_prompts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListRestockPromptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_restock_prompt_setting

> <GetRestockPromptSettingResponse> update_restock_prompt_setting(get_restock_prompt_setting_response)

Turn automatic republish of restocked items on or off.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::RestockPromptsApi.new
get_restock_prompt_setting_response = Crossly::GetRestockPromptSettingResponse.new({auto_republish: false}) # GetRestockPromptSettingResponse | 

begin
  # Turn automatic republish of restocked items on or off.
  result = api_instance.update_restock_prompt_setting(get_restock_prompt_setting_response)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->update_restock_prompt_setting: #{e}"
end
```

#### Using the update_restock_prompt_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRestockPromptSettingResponse>, Integer, Hash)> update_restock_prompt_setting_with_http_info(get_restock_prompt_setting_response)

```ruby
begin
  # Turn automatic republish of restocked items on or off.
  data, status_code, headers = api_instance.update_restock_prompt_setting_with_http_info(get_restock_prompt_setting_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRestockPromptSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->update_restock_prompt_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_restock_prompt_setting_response** | **GetRestockPromptSettingResponse** |  |  |

### Return type

**GetRestockPromptSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

