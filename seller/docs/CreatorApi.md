# Crossly::CreatorApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_creator_experience_key**](CreatorApi.md#create_creator_experience_key) | **POST** /v1/creator/experience-keys | Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE. |
| [**create_creator_experience_key_rotate**](CreatorApi.md#create_creator_experience_key_rotate) | **POST** /v1/creator/experience-keys/{id}/rotate | Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 &#x3D; revoke now, max 168). |
| [**delete_creator_experience_key**](CreatorApi.md#delete_creator_experience_key) | **DELETE** /v1/creator/experience-keys/{id} | Revoke an experience key now. Never needs a plan: a credential must always be revocable. |
| [**get_creator_entitlement**](CreatorApi.md#get_creator_entitlement) | **GET** /v1/creator/entitlements | What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike. |
| [**list_creator_experience_keys**](CreatorApi.md#list_creator_experience_keys) | **GET** /v1/creator/experience-keys | Your experience API keys, newest first (never the secret). ?includeRevoked&#x3D;true for the history; ?experienceId&#x3D; for the keys that reach one game (a game&#39;s own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor&#x3D;. |


## create_creator_experience_key

> <CreateCreatorExperienceKeyResponse> create_creator_experience_key

Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorApi.new

begin
  # Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.
  result = api_instance.create_creator_experience_key
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->create_creator_experience_key: #{e}"
end
```

#### Using the create_creator_experience_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorExperienceKeyResponse>, Integer, Hash)> create_creator_experience_key_with_http_info

```ruby
begin
  # Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.
  data, status_code, headers = api_instance.create_creator_experience_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorExperienceKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->create_creator_experience_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCreatorExperienceKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_experience_key_rotate

> <CreateCreatorExperienceKeyRotateResponse> create_creator_experience_key_rotate(id)

Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 = revoke now, max 168).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorApi.new
id = 'id_example' # String | 

begin
  # Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 = revoke now, max 168).
  result = api_instance.create_creator_experience_key_rotate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->create_creator_experience_key_rotate: #{e}"
end
```

#### Using the create_creator_experience_key_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorExperienceKeyRotateResponse>, Integer, Hash)> create_creator_experience_key_rotate_with_http_info(id)

```ruby
begin
  # Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 = revoke now, max 168).
  data, status_code, headers = api_instance.create_creator_experience_key_rotate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorExperienceKeyRotateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->create_creator_experience_key_rotate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCreatorExperienceKeyRotateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_creator_experience_key

> <DeleteCreatorExperienceKeyResponse> delete_creator_experience_key(id)

Revoke an experience key now. Never needs a plan: a credential must always be revocable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorApi.new
id = 'id_example' # String | 

begin
  # Revoke an experience key now. Never needs a plan: a credential must always be revocable.
  result = api_instance.delete_creator_experience_key(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->delete_creator_experience_key: #{e}"
end
```

#### Using the delete_creator_experience_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCreatorExperienceKeyResponse>, Integer, Hash)> delete_creator_experience_key_with_http_info(id)

```ruby
begin
  # Revoke an experience key now. Never needs a plan: a credential must always be revocable.
  data, status_code, headers = api_instance.delete_creator_experience_key_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCreatorExperienceKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->delete_creator_experience_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteCreatorExperienceKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_entitlement

> <GetCreatorEntitlementResponse> get_creator_entitlement

What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorApi.new

begin
  # What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.
  result = api_instance.get_creator_entitlement
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->get_creator_entitlement: #{e}"
end
```

#### Using the get_creator_entitlement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorEntitlementResponse>, Integer, Hash)> get_creator_entitlement_with_http_info

```ruby
begin
  # What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.
  data, status_code, headers = api_instance.get_creator_entitlement_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorEntitlementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->get_creator_entitlement_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorEntitlementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_experience_keys

> <ListCreatorExperienceKeysResponse> list_creator_experience_keys

Your experience API keys, newest first (never the secret). ?includeRevoked=true for the history; ?experienceId= for the keys that reach one game (a game's own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorApi.new

begin
  # Your experience API keys, newest first (never the secret). ?includeRevoked=true for the history; ?experienceId= for the keys that reach one game (a game's own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor=.
  result = api_instance.list_creator_experience_keys
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->list_creator_experience_keys: #{e}"
end
```

#### Using the list_creator_experience_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorExperienceKeysResponse>, Integer, Hash)> list_creator_experience_keys_with_http_info

```ruby
begin
  # Your experience API keys, newest first (never the secret). ?includeRevoked=true for the history; ?experienceId= for the keys that reach one game (a game's own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor=.
  data, status_code, headers = api_instance.list_creator_experience_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorExperienceKeysResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorApi->list_creator_experience_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorExperienceKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

