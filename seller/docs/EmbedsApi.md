# Crossly::EmbedsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_embed_key**](EmbedsApi.md#create_embed_key) | **POST** /v1/embeds/keys | Mint a publishable key for a site. |
| [**delete_embed_key**](EmbedsApi.md#delete_embed_key) | **DELETE** /v1/embeds/keys/{id} | Revoke a publishable key. |
| [**list_embed_keys**](EmbedsApi.md#list_embed_keys) | **GET** /v1/embeds/keys | Your publishable keys. |


## create_embed_key

> <CreateEmbedKeyResponse> create_embed_key(inline_object3)

Mint a publishable key for a site.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::EmbedsApi.new
inline_object3 = Crossly::InlineObject3.new({name: 'name_example'}) # InlineObject3 | 

begin
  # Mint a publishable key for a site.
  result = api_instance.create_embed_key(inline_object3)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->create_embed_key: #{e}"
end
```

#### Using the create_embed_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmbedKeyResponse>, Integer, Hash)> create_embed_key_with_http_info(inline_object3)

```ruby
begin
  # Mint a publishable key for a site.
  data, status_code, headers = api_instance.create_embed_key_with_http_info(inline_object3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmbedKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->create_embed_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object3** | [**InlineObject3**](InlineObject3.md) |  |  |

### Return type

[**CreateEmbedKeyResponse**](CreateEmbedKeyResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_embed_key

> delete_embed_key(id)

Revoke a publishable key.

Takes effect immediately. Any site still using it will show an empty catalog, so replace the key in the page before revoking the old one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::EmbedsApi.new
id = 'id_example' # String | 

begin
  # Revoke a publishable key.
  api_instance.delete_embed_key(id)
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->delete_embed_key: #{e}"
end
```

#### Using the delete_embed_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_embed_key_with_http_info(id)

```ruby
begin
  # Revoke a publishable key.
  data, status_code, headers = api_instance.delete_embed_key_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->delete_embed_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_embed_keys

> <V1List> list_embed_keys

Your publishable keys.

Publishable keys are safe to put in a public web page — they can read your own active listings and start a checkout, and nothing else. The key is shown in full because it is not a secret.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::EmbedsApi.new

begin
  # Your publishable keys.
  result = api_instance.list_embed_keys
  p result
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->list_embed_keys: #{e}"
end
```

#### Using the list_embed_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_embed_keys_with_http_info

```ruby
begin
  # Your publishable keys.
  data, status_code, headers = api_instance.list_embed_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling EmbedsApi->list_embed_keys_with_http_info: #{e}"
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

