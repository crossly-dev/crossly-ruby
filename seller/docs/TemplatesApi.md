# Crossly::TemplatesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_me_template**](TemplatesApi.md#create_me_template) | **POST** /v1/me/templates | Create a template. |
| [**create_me_template_import**](TemplatesApi.md#create_me_template_import) | **POST** /v1/me/templates/import | Bulk-create templates from an exported payload. |
| [**create_me_template_render**](TemplatesApi.md#create_me_template_render) | **POST** /v1/me/templates/{id}/render | Render a template&#39;s title + description against a context. |
| [**create_me_template_share**](TemplatesApi.md#create_me_template_share) | **POST** /v1/me/templates/{id}/share | Mint or return an existing share token for a template. |
| [**delete_me_template**](TemplatesApi.md#delete_me_template) | **DELETE** /v1/me/templates/{id} | Delete a template. |
| [**delete_me_template_share**](TemplatesApi.md#delete_me_template_share) | **DELETE** /v1/me/templates/{id}/share | Revoke a template share link. |
| [**get_me_template**](TemplatesApi.md#get_me_template) | **GET** /v1/me/templates/{id} | Fetch one template in full. |
| [**get_me_template_suggest**](TemplatesApi.md#get_me_template_suggest) | **GET** /v1/me/templates/suggest | The seller&#39;s default template for a category. |
| [**get_public_template**](TemplatesApi.md#get_public_template) | **GET** /v1/public/templates/{token} | A shared template by its share token (public, no auth). |
| [**list_me_templates**](TemplatesApi.md#list_me_templates) | **GET** /v1/me/templates | List the seller&#39;s templates. |
| [**update_me_template**](TemplatesApi.md#update_me_template) | **PATCH** /v1/me/templates/{id} | Patch a template. |


## create_me_template

> <ListMeTemplatesItem> create_me_template(create_me_template_request)

Create a template.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
create_me_template_request = Crossly::CreateMeTemplateRequest.new # CreateMeTemplateRequest | 

begin
  # Create a template.
  result = api_instance.create_me_template(create_me_template_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template: #{e}"
end
```

#### Using the create_me_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMeTemplatesItem>, Integer, Hash)> create_me_template_with_http_info(create_me_template_request)

```ruby
begin
  # Create a template.
  data, status_code, headers = api_instance.create_me_template_with_http_info(create_me_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMeTemplatesItem>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_me_template_request** | **CreateMeTemplateRequest** |  |  |

### Return type

**ListMeTemplatesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_me_template_import

> <CreateMeTemplateImportResponse> create_me_template_import

Bulk-create templates from an exported payload.

Accepts one template object or an array of them. Entries that fail validation are SKIPPED rather than failing the batch — an import is usually someone else's export, and rejecting fifty good templates over one bad row helps nobody. The response reports how many landed, so a short count is visible rather than silent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new

begin
  # Bulk-create templates from an exported payload.
  result = api_instance.create_me_template_import
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_import: #{e}"
end
```

#### Using the create_me_template_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMeTemplateImportResponse>, Integer, Hash)> create_me_template_import_with_http_info

```ruby
begin
  # Bulk-create templates from an exported payload.
  data, status_code, headers = api_instance.create_me_template_import_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMeTemplateImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_import_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateMeTemplateImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_me_template_render

> <CreateMeTemplateRenderResponse> create_me_template_render(id, opts)

Render a template's title + description against a context.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  create_me_template_render_request: Crossly::CreateMeTemplateRenderRequest.new # CreateMeTemplateRenderRequest | 
}

begin
  # Render a template's title + description against a context.
  result = api_instance.create_me_template_render(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_render: #{e}"
end
```

#### Using the create_me_template_render_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMeTemplateRenderResponse>, Integer, Hash)> create_me_template_render_with_http_info(id, opts)

```ruby
begin
  # Render a template's title + description against a context.
  data, status_code, headers = api_instance.create_me_template_render_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMeTemplateRenderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_render_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_me_template_render_request** | **CreateMeTemplateRenderRequest** |  | [optional] |

### Return type

**CreateMeTemplateRenderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_me_template_share

> <TokenObject> create_me_template_share(id)

Mint or return an existing share token for a template.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Mint or return an existing share token for a template.
  result = api_instance.create_me_template_share(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_share: #{e}"
end
```

#### Using the create_me_template_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenObject>, Integer, Hash)> create_me_template_share_with_http_info(id)

```ruby
begin
  # Mint or return an existing share token for a template.
  data, status_code, headers = api_instance.create_me_template_share_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenObject>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->create_me_template_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**TokenObject**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_me_template

> <OkResponse> delete_me_template(id)

Delete a template.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a template.
  result = api_instance.delete_me_template(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->delete_me_template: #{e}"
end
```

#### Using the delete_me_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_me_template_with_http_info(id)

```ruby
begin
  # Delete a template.
  data, status_code, headers = api_instance.delete_me_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->delete_me_template_with_http_info: #{e}"
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


## delete_me_template_share

> <SuccessResponse> delete_me_template_share(id)

Revoke a template share link.

Clears the share token, so the public link stops resolving. The template itself is untouched. Sharing again mints a NEW token — the old link is dead for good, which is the point of revoking.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Revoke a template share link.
  result = api_instance.delete_me_template_share(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->delete_me_template_share: #{e}"
end
```

#### Using the delete_me_template_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> delete_me_template_share_with_http_info(id)

```ruby
begin
  # Revoke a template share link.
  data, status_code, headers = api_instance.delete_me_template_share_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->delete_me_template_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_me_template

> <ListMeTemplatesItem> get_me_template(id)

Fetch one template in full.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Fetch one template in full.
  result = api_instance.get_me_template(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_me_template: #{e}"
end
```

#### Using the get_me_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMeTemplatesItem>, Integer, Hash)> get_me_template_with_http_info(id)

```ruby
begin
  # Fetch one template in full.
  data, status_code, headers = api_instance.get_me_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMeTemplatesItem>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_me_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListMeTemplatesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_me_template_suggest

> <GetMeTemplateSuggestResponse> get_me_template_suggest

The seller's default template for a category.

Returns { template: null } rather than 404 when the seller has no default for that category — \"no default\" is a normal answer, not an error, and callers hydrate a form from it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new

begin
  # The seller's default template for a category.
  result = api_instance.get_me_template_suggest
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_me_template_suggest: #{e}"
end
```

#### Using the get_me_template_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMeTemplateSuggestResponse>, Integer, Hash)> get_me_template_suggest_with_http_info

```ruby
begin
  # The seller's default template for a category.
  data, status_code, headers = api_instance.get_me_template_suggest_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMeTemplateSuggestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_me_template_suggest_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMeTemplateSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_public_template

> <GetPublicTemplateResponse> get_public_template(token)

A shared template by its share token (public, no auth).

### Examples

```ruby
require 'time'
require 'crossly'

api_instance = Crossly::TemplatesApi.new
token = 'token_example' # String | 

begin
  # A shared template by its share token (public, no auth).
  result = api_instance.get_public_template(token)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_public_template: #{e}"
end
```

#### Using the get_public_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPublicTemplateResponse>, Integer, Hash)> get_public_template_with_http_info(token)

```ruby
begin
  # A shared template by its share token (public, no auth).
  data, status_code, headers = api_instance.get_public_template_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPublicTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->get_public_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**GetPublicTemplateResponse**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_me_templates

> <ListMeTemplatesResponse> list_me_templates(opts)

List the seller's templates.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
opts = {
  scope: 'description', # String | 
  category: 'category_example' # String | 
}

begin
  # List the seller's templates.
  result = api_instance.list_me_templates(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->list_me_templates: #{e}"
end
```

#### Using the list_me_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMeTemplatesResponse>, Integer, Hash)> list_me_templates_with_http_info(opts)

```ruby
begin
  # List the seller's templates.
  data, status_code, headers = api_instance.list_me_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMeTemplatesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->list_me_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |

### Return type

**ListMeTemplatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_me_template

> <ListMeTemplatesItem> update_me_template(id, create_me_template_request)

Patch a template.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TemplatesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_me_template_request = Crossly::CreateMeTemplateRequest.new # CreateMeTemplateRequest | 

begin
  # Patch a template.
  result = api_instance.update_me_template(id, create_me_template_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->update_me_template: #{e}"
end
```

#### Using the update_me_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMeTemplatesItem>, Integer, Hash)> update_me_template_with_http_info(id, create_me_template_request)

```ruby
begin
  # Patch a template.
  data, status_code, headers = api_instance.update_me_template_with_http_info(id, create_me_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMeTemplatesItem>
rescue Crossly::ApiError => e
  puts "Error when calling TemplatesApi->update_me_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_me_template_request** | **CreateMeTemplateRequest** |  |  |

### Return type

**ListMeTemplatesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

