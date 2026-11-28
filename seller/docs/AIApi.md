# Crossly::AIApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ai_categorize**](AIApi.md#create_ai_categorize) | **POST** /v1/ai/categorize | Taxonomy guess from a single image URL. |
| [**create_ai_categorize_from_image**](AIApi.md#create_ai_categorize_from_image) | **POST** /v1/ai/categorize-from-image | Taxonomy guess from a single base64 image. |
| [**create_ai_copy**](AIApi.md#create_ai_copy) | **POST** /v1/ai/copy | Draft store copy (ads, branding, policy wording, lookbook copy) from the facts you give, on your AI key. |
| [**create_ai_enhance_description**](AIApi.md#create_ai_enhance_description) | **POST** /v1/ai/enhance-description | SEO-rewrite a listing description. |
| [**create_ai_enhance_listing**](AIApi.md#create_ai_enhance_listing) | **POST** /v1/ai/enhance-listing | Rewrite title + description + tags in one call. |
| [**create_ai_enhance_title**](AIApi.md#create_ai_enhance_title) | **POST** /v1/ai/enhance-title | SEO-rewrite a listing title. |
| [**create_ai_extract_receipt**](AIApi.md#create_ai_extract_receipt) | **POST** /v1/ai/extract-receipt | Structured data extraction from a receipt photo. |
| [**create_ai_generate_listing**](AIApi.md#create_ai_generate_listing) | **POST** /v1/ai/generate-listing | Generate full listing fields from up to 4 image URLs. |
| [**create_ai_help**](AIApi.md#create_ai_help) | **POST** /v1/ai/help | In-app help Q&amp;A grounded in supplied docs. |
| [**create_ai_key**](AIApi.md#create_ai_key) | **POST** /v1/ai/keys | Connect an AI provider key to the store, with scopes and priority. |
| [**create_ai_key_test**](AIApi.md#create_ai_key_test) | **POST** /v1/ai/keys/test | Test an AI provider key before saving it. |
| [**create_ai_key_test_by_id**](AIApi.md#create_ai_key_test_by_id) | **POST** /v1/ai/keys/{id}/test | Re-test a saved AI key. |
| [**create_ai_magic_listing**](AIApi.md#create_ai_magic_listing) | **POST** /v1/ai/magic-listing | Generate full listing fields from base64 photos. |
| [**create_ai_test_key**](AIApi.md#create_ai_test_key) | **POST** /v1/ai/test-key | Live-ping a candidate BYO-key. |
| [**create_listing_ai_image**](AIApi.md#create_listing_ai_image) | **POST** /v1/listings/ai-image | Generate a listing photo with the caller&#39;s own image-provider key; the result is marked AI-generated. |
| [**create_listing_ai_image_prompt**](AIApi.md#create_listing_ai_image_prompt) | **POST** /v1/listings/ai-image/prompt | Build the AI product-photo prompt for a listing (no image is generated). |
| [**delete_ai_key**](AIApi.md#delete_ai_key) | **DELETE** /v1/ai/key | Remove the store&#39;s BYO-key for a provider. |
| [**delete_ai_key_by_id**](AIApi.md#delete_ai_key_by_id) | **DELETE** /v1/ai/keys/{id} | Disconnect an AI provider key. |
| [**get_ai_key**](AIApi.md#get_ai_key) | **GET** /v1/ai/keys | The store&#39;s AI provider keys with their scopes and priority (never the key). |
| [**get_ai_provider**](AIApi.md#get_ai_provider) | **GET** /v1/ai/providers | Static catalog of supported AI providers. |
| [**get_ai_routing**](AIApi.md#get_ai_routing) | **GET** /v1/ai/routing | Which AI provider serves each feature of the store, in order, and whether it is on. |
| [**get_ai_status**](AIApi.md#get_ai_status) | **GET** /v1/ai/status | BYO-key state for the calling user. |
| [**update_ai_image_config**](AIApi.md#update_ai_image_config) | **PUT** /v1/ai/image-config | Choose the AI image provider/model, independently of the text provider. |
| [**update_ai_key**](AIApi.md#update_ai_key) | **PUT** /v1/ai/key | Save a BYO-key for an AI provider on the store and make it the store&#39;s default. |
| [**update_ai_key_by_id**](AIApi.md#update_ai_key_by_id) | **PATCH** /v1/ai/keys/{id} | Edit an AI key: replace it, rename it, or change its scopes, priority and models. |
| [**update_ai_routing**](AIApi.md#update_ai_routing) | **PUT** /v1/ai/routing/{scope} | Set one AI feature&#39;s provider chain, model or on/off. |


## create_ai_categorize

> <CreateAiCategorizeResponse> create_ai_categorize(create_ai_categorize_request)

Taxonomy guess from a single image URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_categorize_request = Crossly::CreateAiCategorizeRequest.new({image_url: 'image_url_example'}) # CreateAiCategorizeRequest | 

begin
  # Taxonomy guess from a single image URL.
  result = api_instance.create_ai_categorize(create_ai_categorize_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize: #{e}"
end
```

#### Using the create_ai_categorize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiCategorizeResponse>, Integer, Hash)> create_ai_categorize_with_http_info(create_ai_categorize_request)

```ruby
begin
  # Taxonomy guess from a single image URL.
  data, status_code, headers = api_instance.create_ai_categorize_with_http_info(create_ai_categorize_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiCategorizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_categorize_request** | **CreateAiCategorizeRequest** |  |  |

### Return type

**CreateAiCategorizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_categorize_from_image

> <CreateAiCategorizeResponse> create_ai_categorize_from_image(create_ai_extract_receipt_request)

Taxonomy guess from a single base64 image.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_extract_receipt_request = Crossly::CreateAiExtractReceiptRequest.new({image_base64: 'image_base64_example'}) # CreateAiExtractReceiptRequest | 

begin
  # Taxonomy guess from a single base64 image.
  result = api_instance.create_ai_categorize_from_image(create_ai_extract_receipt_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_from_image: #{e}"
end
```

#### Using the create_ai_categorize_from_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiCategorizeResponse>, Integer, Hash)> create_ai_categorize_from_image_with_http_info(create_ai_extract_receipt_request)

```ruby
begin
  # Taxonomy guess from a single base64 image.
  data, status_code, headers = api_instance.create_ai_categorize_from_image_with_http_info(create_ai_extract_receipt_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiCategorizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_from_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_extract_receipt_request** | **CreateAiExtractReceiptRequest** |  |  |

### Return type

**CreateAiCategorizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_copy

> <CreateAiCopyResponse> create_ai_copy(opts)

Draft store copy (ads, branding, policy wording, lookbook copy) from the facts you give, on your AI key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  create_ai_copy_request: Crossly::CreateAiCopyRequest.new({action: 'ads-copy', kind: 'kind_example'}) # CreateAiCopyRequest | 
}

begin
  # Draft store copy (ads, branding, policy wording, lookbook copy) from the facts you give, on your AI key.
  result = api_instance.create_ai_copy(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_copy: #{e}"
end
```

#### Using the create_ai_copy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiCopyResponse>, Integer, Hash)> create_ai_copy_with_http_info(opts)

```ruby
begin
  # Draft store copy (ads, branding, policy wording, lookbook copy) from the facts you give, on your AI key.
  data, status_code, headers = api_instance.create_ai_copy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiCopyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_copy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_copy_request** | **CreateAiCopyRequest** |  | [optional] |

### Return type

**CreateAiCopyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_enhance_description

> <CreateAiEnhanceDescriptionResponse> create_ai_enhance_description(create_ai_enhance_description_request)

SEO-rewrite a listing description.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_enhance_description_request = Crossly::CreateAiEnhanceDescriptionRequest.new({title: 'title_example'}) # CreateAiEnhanceDescriptionRequest | 

begin
  # SEO-rewrite a listing description.
  result = api_instance.create_ai_enhance_description(create_ai_enhance_description_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_description: #{e}"
end
```

#### Using the create_ai_enhance_description_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceDescriptionResponse>, Integer, Hash)> create_ai_enhance_description_with_http_info(create_ai_enhance_description_request)

```ruby
begin
  # SEO-rewrite a listing description.
  data, status_code, headers = api_instance.create_ai_enhance_description_with_http_info(create_ai_enhance_description_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceDescriptionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_description_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_enhance_description_request** | **CreateAiEnhanceDescriptionRequest** |  |  |

### Return type

**CreateAiEnhanceDescriptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_enhance_listing

> <CreateAiEnhanceListingResponse> create_ai_enhance_listing(create_ai_enhance_listing_request)

Rewrite title + description + tags in one call.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_enhance_listing_request = Crossly::CreateAiEnhanceListingRequest.new({title: 'title_example', description: 'description_example'}) # CreateAiEnhanceListingRequest | 

begin
  # Rewrite title + description + tags in one call.
  result = api_instance.create_ai_enhance_listing(create_ai_enhance_listing_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_listing: #{e}"
end
```

#### Using the create_ai_enhance_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceListingResponse>, Integer, Hash)> create_ai_enhance_listing_with_http_info(create_ai_enhance_listing_request)

```ruby
begin
  # Rewrite title + description + tags in one call.
  data, status_code, headers = api_instance.create_ai_enhance_listing_with_http_info(create_ai_enhance_listing_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_enhance_listing_request** | **CreateAiEnhanceListingRequest** |  |  |

### Return type

**CreateAiEnhanceListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_enhance_title

> <CreateAiEnhanceTitleResponse> create_ai_enhance_title(create_ai_enhance_title_request)

SEO-rewrite a listing title.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_enhance_title_request = Crossly::CreateAiEnhanceTitleRequest.new({title: 'title_example'}) # CreateAiEnhanceTitleRequest | 

begin
  # SEO-rewrite a listing title.
  result = api_instance.create_ai_enhance_title(create_ai_enhance_title_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_title: #{e}"
end
```

#### Using the create_ai_enhance_title_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceTitleResponse>, Integer, Hash)> create_ai_enhance_title_with_http_info(create_ai_enhance_title_request)

```ruby
begin
  # SEO-rewrite a listing title.
  data, status_code, headers = api_instance.create_ai_enhance_title_with_http_info(create_ai_enhance_title_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceTitleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_title_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_enhance_title_request** | **CreateAiEnhanceTitleRequest** |  |  |

### Return type

**CreateAiEnhanceTitleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_extract_receipt

> <CreateAiExtractReceiptResponse> create_ai_extract_receipt(create_ai_extract_receipt_request)

Structured data extraction from a receipt photo.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_extract_receipt_request = Crossly::CreateAiExtractReceiptRequest.new({image_base64: 'image_base64_example'}) # CreateAiExtractReceiptRequest | 

begin
  # Structured data extraction from a receipt photo.
  result = api_instance.create_ai_extract_receipt(create_ai_extract_receipt_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_extract_receipt: #{e}"
end
```

#### Using the create_ai_extract_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiExtractReceiptResponse>, Integer, Hash)> create_ai_extract_receipt_with_http_info(create_ai_extract_receipt_request)

```ruby
begin
  # Structured data extraction from a receipt photo.
  data, status_code, headers = api_instance.create_ai_extract_receipt_with_http_info(create_ai_extract_receipt_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiExtractReceiptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_extract_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_extract_receipt_request** | **CreateAiExtractReceiptRequest** |  |  |

### Return type

**CreateAiExtractReceiptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_generate_listing

> <CreateAiMagicListingResponse> create_ai_generate_listing(create_ai_generate_listing_request)

Generate full listing fields from up to 4 image URLs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_generate_listing_request = Crossly::CreateAiGenerateListingRequest.new({image_urls: ['image_urls_example']}) # CreateAiGenerateListingRequest | 

begin
  # Generate full listing fields from up to 4 image URLs.
  result = api_instance.create_ai_generate_listing(create_ai_generate_listing_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_generate_listing: #{e}"
end
```

#### Using the create_ai_generate_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiMagicListingResponse>, Integer, Hash)> create_ai_generate_listing_with_http_info(create_ai_generate_listing_request)

```ruby
begin
  # Generate full listing fields from up to 4 image URLs.
  data, status_code, headers = api_instance.create_ai_generate_listing_with_http_info(create_ai_generate_listing_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiMagicListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_generate_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_generate_listing_request** | **CreateAiGenerateListingRequest** |  |  |

### Return type

**CreateAiMagicListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_help

> <CreateAiHelpResponse> create_ai_help(create_ai_help_request)

In-app help Q&A grounded in supplied docs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_help_request = Crossly::CreateAiHelpRequest.new({question: 'question_example', context: [Crossly::CreateAiHelpRequestContext.new({title: 'title_example', slug: 'slug_example', body: 'body_example'})]}) # CreateAiHelpRequest | 

begin
  # In-app help Q&A grounded in supplied docs.
  result = api_instance.create_ai_help(create_ai_help_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_help: #{e}"
end
```

#### Using the create_ai_help_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiHelpResponse>, Integer, Hash)> create_ai_help_with_http_info(create_ai_help_request)

```ruby
begin
  # In-app help Q&A grounded in supplied docs.
  data, status_code, headers = api_instance.create_ai_help_with_http_info(create_ai_help_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiHelpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_help_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_help_request** | **CreateAiHelpRequest** |  |  |

### Return type

**CreateAiHelpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_key

> <CreateAiKeyResponse> create_ai_key(opts)

Connect an AI provider key to the store, with scopes and priority.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  create_ai_key_request: Crossly::CreateAiKeyRequest.new({provider: 'custom', api_key: 'api_key_example'}) # CreateAiKeyRequest | 
}

begin
  # Connect an AI provider key to the store, with scopes and priority.
  result = api_instance.create_ai_key(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key: #{e}"
end
```

#### Using the create_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiKeyResponse>, Integer, Hash)> create_ai_key_with_http_info(opts)

```ruby
begin
  # Connect an AI provider key to the store, with scopes and priority.
  data, status_code, headers = api_instance.create_ai_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_key_request** | **CreateAiKeyRequest** |  | [optional] |

### Return type

**CreateAiKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_key_test

> <CreateAiKeyTestResponse> create_ai_key_test(opts)

Test an AI provider key before saving it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  create_ai_key_test_request: Crossly::CreateAiKeyTestRequest.new({provider: 'custom', api_key: 'api_key_example'}) # CreateAiKeyTestRequest | 
}

begin
  # Test an AI provider key before saving it.
  result = api_instance.create_ai_key_test(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key_test: #{e}"
end
```

#### Using the create_ai_key_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiKeyTestResponse>, Integer, Hash)> create_ai_key_test_with_http_info(opts)

```ruby
begin
  # Test an AI provider key before saving it.
  data, status_code, headers = api_instance.create_ai_key_test_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiKeyTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_key_test_request** | **CreateAiKeyTestRequest** |  | [optional] |

### Return type

**CreateAiKeyTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_key_test_by_id

> <CreateAiKeyTestResponse> create_ai_key_test_by_id(id)

Re-test a saved AI key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
id = 'id_example' # String | 

begin
  # Re-test a saved AI key.
  result = api_instance.create_ai_key_test_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key_test_by_id: #{e}"
end
```

#### Using the create_ai_key_test_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiKeyTestResponse>, Integer, Hash)> create_ai_key_test_by_id_with_http_info(id)

```ruby
begin
  # Re-test a saved AI key.
  data, status_code, headers = api_instance.create_ai_key_test_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiKeyTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_key_test_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateAiKeyTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_magic_listing

> <CreateAiMagicListingResponse> create_ai_magic_listing(create_ai_magic_listing_request)

Generate full listing fields from base64 photos.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
create_ai_magic_listing_request = Crossly::CreateAiMagicListingRequest.new({images_base64: ['images_base64_example']}) # CreateAiMagicListingRequest | 

begin
  # Generate full listing fields from base64 photos.
  result = api_instance.create_ai_magic_listing(create_ai_magic_listing_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_magic_listing: #{e}"
end
```

#### Using the create_ai_magic_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiMagicListingResponse>, Integer, Hash)> create_ai_magic_listing_with_http_info(create_ai_magic_listing_request)

```ruby
begin
  # Generate full listing fields from base64 photos.
  data, status_code, headers = api_instance.create_ai_magic_listing_with_http_info(create_ai_magic_listing_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiMagicListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_magic_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ai_magic_listing_request** | **CreateAiMagicListingRequest** |  |  |

### Return type

**CreateAiMagicListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ai_test_key

> <CreateAiTestKeyResponse> create_ai_test_key(update_ai_key_request)

Live-ping a candidate BYO-key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
update_ai_key_request = Crossly::UpdateAiKeyRequest.new({api_key: 'api_key_example'}) # UpdateAiKeyRequest | 

begin
  # Live-ping a candidate BYO-key.
  result = api_instance.create_ai_test_key(update_ai_key_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_test_key: #{e}"
end
```

#### Using the create_ai_test_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiTestKeyResponse>, Integer, Hash)> create_ai_test_key_with_http_info(update_ai_key_request)

```ruby
begin
  # Live-ping a candidate BYO-key.
  data, status_code, headers = api_instance.create_ai_test_key_with_http_info(update_ai_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiTestKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_test_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ai_key_request** | **UpdateAiKeyRequest** |  |  |

### Return type

**CreateAiTestKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_listing_ai_image

> <CreateListingAiImageResponse> create_listing_ai_image(opts)

Generate a listing photo with the caller's own image-provider key; the result is marked AI-generated.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  create_listing_ai_image_request: Crossly::CreateListingAiImageRequest.new # CreateListingAiImageRequest | 
}

begin
  # Generate a listing photo with the caller's own image-provider key; the result is marked AI-generated.
  result = api_instance.create_listing_ai_image(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_listing_ai_image: #{e}"
end
```

#### Using the create_listing_ai_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAiImageResponse>, Integer, Hash)> create_listing_ai_image_with_http_info(opts)

```ruby
begin
  # Generate a listing photo with the caller's own image-provider key; the result is marked AI-generated.
  data, status_code, headers = api_instance.create_listing_ai_image_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAiImageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_listing_ai_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_listing_ai_image_request** | **CreateListingAiImageRequest** |  | [optional] |

### Return type

**CreateListingAiImageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_listing_ai_image_prompt

> <CreateListingAiImagePromptResponse> create_listing_ai_image_prompt(opts)

Build the AI product-photo prompt for a listing (no image is generated).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  create_listing_ai_image_prompt_request: Crossly::CreateListingAiImagePromptRequest.new # CreateListingAiImagePromptRequest | 
}

begin
  # Build the AI product-photo prompt for a listing (no image is generated).
  result = api_instance.create_listing_ai_image_prompt(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_listing_ai_image_prompt: #{e}"
end
```

#### Using the create_listing_ai_image_prompt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAiImagePromptResponse>, Integer, Hash)> create_listing_ai_image_prompt_with_http_info(opts)

```ruby
begin
  # Build the AI product-photo prompt for a listing (no image is generated).
  data, status_code, headers = api_instance.create_listing_ai_image_prompt_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAiImagePromptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_listing_ai_image_prompt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_listing_ai_image_prompt_request** | **CreateListingAiImagePromptRequest** |  | [optional] |

### Return type

**CreateListingAiImagePromptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ai_key

> <SuccessResponse> delete_ai_key(opts)

Remove the store's BYO-key for a provider.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  provider: 'custom' # String | 
}

begin
  # Remove the store's BYO-key for a provider.
  result = api_instance.delete_ai_key(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key: #{e}"
end
```

#### Using the delete_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> delete_ai_key_with_http_info(opts)

```ruby
begin
  # Remove the store's BYO-key for a provider.
  data, status_code, headers = api_instance.delete_ai_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** |  | [optional] |

### Return type

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ai_key_by_id

> <SuccessResponse> delete_ai_key_by_id(id)

Disconnect an AI provider key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
id = 'id_example' # String | 

begin
  # Disconnect an AI provider key.
  result = api_instance.delete_ai_key_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key_by_id: #{e}"
end
```

#### Using the delete_ai_key_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> delete_ai_key_by_id_with_http_info(id)

```ruby
begin
  # Disconnect an AI provider key.
  data, status_code, headers = api_instance.delete_ai_key_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key_by_id_with_http_info: #{e}"
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


## get_ai_key

> <GetAiKeyResponse> get_ai_key

The store's AI provider keys with their scopes and priority (never the key).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new

begin
  # The store's AI provider keys with their scopes and priority (never the key).
  result = api_instance.get_ai_key
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_key: #{e}"
end
```

#### Using the get_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiKeyResponse>, Integer, Hash)> get_ai_key_with_http_info

```ruby
begin
  # The store's AI provider keys with their scopes and priority (never the key).
  data, status_code, headers = api_instance.get_ai_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAiKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_provider

> <GetAiProviderResponse> get_ai_provider

Static catalog of supported AI providers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new

begin
  # Static catalog of supported AI providers.
  result = api_instance.get_ai_provider
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_provider: #{e}"
end
```

#### Using the get_ai_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiProviderResponse>, Integer, Hash)> get_ai_provider_with_http_info

```ruby
begin
  # Static catalog of supported AI providers.
  data, status_code, headers = api_instance.get_ai_provider_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiProviderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_provider_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAiProviderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_routing

> <GetAiRoutingResponse> get_ai_routing

Which AI provider serves each feature of the store, in order, and whether it is on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new

begin
  # Which AI provider serves each feature of the store, in order, and whether it is on.
  result = api_instance.get_ai_routing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_routing: #{e}"
end
```

#### Using the get_ai_routing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiRoutingResponse>, Integer, Hash)> get_ai_routing_with_http_info

```ruby
begin
  # Which AI provider serves each feature of the store, in order, and whether it is on.
  data, status_code, headers = api_instance.get_ai_routing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiRoutingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_routing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAiRoutingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_status

> <GetAiStatusResponse> get_ai_status

BYO-key state for the calling user.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new

begin
  # BYO-key state for the calling user.
  result = api_instance.get_ai_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_status: #{e}"
end
```

#### Using the get_ai_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiStatusResponse>, Integer, Hash)> get_ai_status_with_http_info

```ruby
begin
  # BYO-key state for the calling user.
  data, status_code, headers = api_instance.get_ai_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->get_ai_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAiStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ai_image_config

> <UpdateAiImageConfigResponse> update_ai_image_config(opts)

Choose the AI image provider/model, independently of the text provider.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
opts = {
  update_ai_image_config_request: Crossly::UpdateAiImageConfigRequest.new({provider: 'openai'}) # UpdateAiImageConfigRequest | 
}

begin
  # Choose the AI image provider/model, independently of the text provider.
  result = api_instance.update_ai_image_config(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_image_config: #{e}"
end
```

#### Using the update_ai_image_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAiImageConfigResponse>, Integer, Hash)> update_ai_image_config_with_http_info(opts)

```ruby
begin
  # Choose the AI image provider/model, independently of the text provider.
  data, status_code, headers = api_instance.update_ai_image_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAiImageConfigResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_image_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ai_image_config_request** | **UpdateAiImageConfigRequest** |  | [optional] |

### Return type

**UpdateAiImageConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ai_key

> <SuccessResponse> update_ai_key(update_ai_key_request)

Save a BYO-key for an AI provider on the store and make it the store's default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
update_ai_key_request = Crossly::UpdateAiKeyRequest.new({api_key: 'api_key_example'}) # UpdateAiKeyRequest | 

begin
  # Save a BYO-key for an AI provider on the store and make it the store's default.
  result = api_instance.update_ai_key(update_ai_key_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key: #{e}"
end
```

#### Using the update_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> update_ai_key_with_http_info(update_ai_key_request)

```ruby
begin
  # Save a BYO-key for an AI provider on the store and make it the store's default.
  data, status_code, headers = api_instance.update_ai_key_with_http_info(update_ai_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ai_key_request** | **UpdateAiKeyRequest** |  |  |

### Return type

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ai_key_by_id

> <CreateAiKeyResponse> update_ai_key_by_id(id, opts)

Edit an AI key: replace it, rename it, or change its scopes, priority and models.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
id = 'id_example' # String | 
opts = {
  update_ai_key_by_id_request: Crossly::UpdateAiKeyByIdRequest.new # UpdateAiKeyByIdRequest | 
}

begin
  # Edit an AI key: replace it, rename it, or change its scopes, priority and models.
  result = api_instance.update_ai_key_by_id(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key_by_id: #{e}"
end
```

#### Using the update_ai_key_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiKeyResponse>, Integer, Hash)> update_ai_key_by_id_with_http_info(id, opts)

```ruby
begin
  # Edit an AI key: replace it, rename it, or change its scopes, priority and models.
  data, status_code, headers = api_instance.update_ai_key_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_ai_key_by_id_request** | **UpdateAiKeyByIdRequest** |  | [optional] |

### Return type

**CreateAiKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ai_routing

> <UpdateAiRoutingResponse> update_ai_routing(scope, opts)

Set one AI feature's provider chain, model or on/off.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AIApi.new
scope = 'scope_example' # String | 
opts = {
  update_ai_routing_request: Crossly::UpdateAiRoutingRequest.new # UpdateAiRoutingRequest | 
}

begin
  # Set one AI feature's provider chain, model or on/off.
  result = api_instance.update_ai_routing(scope, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_routing: #{e}"
end
```

#### Using the update_ai_routing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAiRoutingResponse>, Integer, Hash)> update_ai_routing_with_http_info(scope, opts)

```ruby
begin
  # Set one AI feature's provider chain, model or on/off.
  data, status_code, headers = api_instance.update_ai_routing_with_http_info(scope, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAiRoutingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_routing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** |  |  |
| **update_ai_routing_request** | **UpdateAiRoutingRequest** |  | [optional] |

### Return type

**UpdateAiRoutingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

