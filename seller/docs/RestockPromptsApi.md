# Crossly::RestockPromptsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_restock_prompt_dismiss**](RestockPromptsApi.md#create_restock_prompt_dismiss) | **POST** /v1/restock-prompts/{id}/dismiss | Dismiss a pending restock prompt. |
| [**create_restock_prompt_republish**](RestockPromptsApi.md#create_restock_prompt_republish) | **POST** /v1/restock-prompts/{id}/republish | Republish a restock prompt to platforms. |
| [**list_restock_prompts**](RestockPromptsApi.md#list_restock_prompts) | **GET** /v1/restock-prompts | List pending restock prompts. |


## create_restock_prompt_dismiss

> <CreateRestockPromptDismissResponse> create_restock_prompt_dismiss(id)

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

> <Array(<CreateRestockPromptDismissResponse>, Integer, Hash)> create_restock_prompt_dismiss_with_http_info(id)

```ruby
begin
  # Dismiss a pending restock prompt.
  data, status_code, headers = api_instance.create_restock_prompt_dismiss_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRestockPromptDismissResponse>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->create_restock_prompt_dismiss_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateRestockPromptDismissResponse**](CreateRestockPromptDismissResponse.md)

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

[**CreateRestockPromptRepublishResponse**](CreateRestockPromptRepublishResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_restock_prompts

> <V1List> list_restock_prompts

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

> <Array(<V1List>, Integer, Hash)> list_restock_prompts_with_http_info

```ruby
begin
  # List pending restock prompts.
  data, status_code, headers = api_instance.list_restock_prompts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling RestockPromptsApi->list_restock_prompts_with_http_info: #{e}"
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

