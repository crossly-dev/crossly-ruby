# Crossly::AIApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ai_categorize**](AIApi.md#create_ai_categorize) | **POST** /v1/ai/categorize | Taxonomy guess from a single image URL. |
| [**create_ai_categorize_from_image**](AIApi.md#create_ai_categorize_from_image) | **POST** /v1/ai/categorize-from-image | Taxonomy guess from a single base64 image. |
| [**create_ai_enhance_description**](AIApi.md#create_ai_enhance_description) | **POST** /v1/ai/enhance-description | SEO-rewrite a listing description. |
| [**create_ai_enhance_listing**](AIApi.md#create_ai_enhance_listing) | **POST** /v1/ai/enhance-listing | Rewrite title + description + tags in one call. |
| [**create_ai_enhance_title**](AIApi.md#create_ai_enhance_title) | **POST** /v1/ai/enhance-title | SEO-rewrite a listing title. |
| [**create_ai_extract_receipt**](AIApi.md#create_ai_extract_receipt) | **POST** /v1/ai/extract-receipt | Structured data extraction from a receipt photo. |
| [**create_ai_generate_listing**](AIApi.md#create_ai_generate_listing) | **POST** /v1/ai/generate-listing | Generate full listing fields from up to 4 image URLs. |
| [**create_ai_help**](AIApi.md#create_ai_help) | **POST** /v1/ai/help | In-app help Q&amp;A grounded in supplied docs. |
| [**create_ai_magic_listing**](AIApi.md#create_ai_magic_listing) | **POST** /v1/ai/magic-listing | Generate full listing fields from base64 photos. |
| [**create_ai_test_key**](AIApi.md#create_ai_test_key) | **POST** /v1/ai/test-key | Live-ping a candidate BYO-key. |
| [**delete_ai_key**](AIApi.md#delete_ai_key) | **DELETE** /v1/ai/key | Remove the BYO-key for a provider. |
| [**get_ai_provider**](AIApi.md#get_ai_provider) | **GET** /v1/ai/providers | Static catalog of supported AI providers. |
| [**get_ai_status**](AIApi.md#get_ai_status) | **GET** /v1/ai/status | BYO-key state for the calling user. |
| [**update_ai_key**](AIApi.md#update_ai_key) | **PUT** /v1/ai/key | Save an encrypted BYO-key for an AI provider. |


## create_ai_categorize

> <CreateAiCategorizeResponse> create_ai_categorize

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

begin
  # Taxonomy guess from a single image URL.
  result = api_instance.create_ai_categorize
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize: #{e}"
end
```

#### Using the create_ai_categorize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiCategorizeResponse>, Integer, Hash)> create_ai_categorize_with_http_info

```ruby
begin
  # Taxonomy guess from a single image URL.
  data, status_code, headers = api_instance.create_ai_categorize_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiCategorizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiCategorizeResponse**](CreateAiCategorizeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_categorize_from_image

> <CreateAiCategorizeFromImageResponse> create_ai_categorize_from_image

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

begin
  # Taxonomy guess from a single base64 image.
  result = api_instance.create_ai_categorize_from_image
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_from_image: #{e}"
end
```

#### Using the create_ai_categorize_from_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiCategorizeFromImageResponse>, Integer, Hash)> create_ai_categorize_from_image_with_http_info

```ruby
begin
  # Taxonomy guess from a single base64 image.
  data, status_code, headers = api_instance.create_ai_categorize_from_image_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiCategorizeFromImageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_categorize_from_image_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiCategorizeFromImageResponse**](CreateAiCategorizeFromImageResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_enhance_description

> <CreateAiEnhanceDescriptionResponse> create_ai_enhance_description

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

begin
  # SEO-rewrite a listing description.
  result = api_instance.create_ai_enhance_description
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_description: #{e}"
end
```

#### Using the create_ai_enhance_description_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceDescriptionResponse>, Integer, Hash)> create_ai_enhance_description_with_http_info

```ruby
begin
  # SEO-rewrite a listing description.
  data, status_code, headers = api_instance.create_ai_enhance_description_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceDescriptionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_description_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiEnhanceDescriptionResponse**](CreateAiEnhanceDescriptionResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_enhance_listing

> <CreateAiEnhanceListingResponse> create_ai_enhance_listing

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

begin
  # Rewrite title + description + tags in one call.
  result = api_instance.create_ai_enhance_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_listing: #{e}"
end
```

#### Using the create_ai_enhance_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceListingResponse>, Integer, Hash)> create_ai_enhance_listing_with_http_info

```ruby
begin
  # Rewrite title + description + tags in one call.
  data, status_code, headers = api_instance.create_ai_enhance_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiEnhanceListingResponse**](CreateAiEnhanceListingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_enhance_title

> <CreateAiEnhanceTitleResponse> create_ai_enhance_title

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

begin
  # SEO-rewrite a listing title.
  result = api_instance.create_ai_enhance_title
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_title: #{e}"
end
```

#### Using the create_ai_enhance_title_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiEnhanceTitleResponse>, Integer, Hash)> create_ai_enhance_title_with_http_info

```ruby
begin
  # SEO-rewrite a listing title.
  data, status_code, headers = api_instance.create_ai_enhance_title_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiEnhanceTitleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_enhance_title_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiEnhanceTitleResponse**](CreateAiEnhanceTitleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_extract_receipt

> <CreateAiExtractReceiptResponse> create_ai_extract_receipt

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

begin
  # Structured data extraction from a receipt photo.
  result = api_instance.create_ai_extract_receipt
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_extract_receipt: #{e}"
end
```

#### Using the create_ai_extract_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiExtractReceiptResponse>, Integer, Hash)> create_ai_extract_receipt_with_http_info

```ruby
begin
  # Structured data extraction from a receipt photo.
  data, status_code, headers = api_instance.create_ai_extract_receipt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiExtractReceiptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_extract_receipt_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiExtractReceiptResponse**](CreateAiExtractReceiptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_generate_listing

> <CreateAiGenerateListingResponse> create_ai_generate_listing

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

begin
  # Generate full listing fields from up to 4 image URLs.
  result = api_instance.create_ai_generate_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_generate_listing: #{e}"
end
```

#### Using the create_ai_generate_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiGenerateListingResponse>, Integer, Hash)> create_ai_generate_listing_with_http_info

```ruby
begin
  # Generate full listing fields from up to 4 image URLs.
  data, status_code, headers = api_instance.create_ai_generate_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiGenerateListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_generate_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiGenerateListingResponse**](CreateAiGenerateListingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_help

> <CreateAiHelpResponse> create_ai_help

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

begin
  # In-app help Q&A grounded in supplied docs.
  result = api_instance.create_ai_help
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_help: #{e}"
end
```

#### Using the create_ai_help_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiHelpResponse>, Integer, Hash)> create_ai_help_with_http_info

```ruby
begin
  # In-app help Q&A grounded in supplied docs.
  data, status_code, headers = api_instance.create_ai_help_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiHelpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_help_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiHelpResponse**](CreateAiHelpResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_magic_listing

> <CreateAiMagicListingResponse> create_ai_magic_listing

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

begin
  # Generate full listing fields from base64 photos.
  result = api_instance.create_ai_magic_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_magic_listing: #{e}"
end
```

#### Using the create_ai_magic_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiMagicListingResponse>, Integer, Hash)> create_ai_magic_listing_with_http_info

```ruby
begin
  # Generate full listing fields from base64 photos.
  data, status_code, headers = api_instance.create_ai_magic_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiMagicListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_magic_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiMagicListingResponse**](CreateAiMagicListingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ai_test_key

> <CreateAiTestKeyResponse> create_ai_test_key

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

begin
  # Live-ping a candidate BYO-key.
  result = api_instance.create_ai_test_key
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_test_key: #{e}"
end
```

#### Using the create_ai_test_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiTestKeyResponse>, Integer, Hash)> create_ai_test_key_with_http_info

```ruby
begin
  # Live-ping a candidate BYO-key.
  data, status_code, headers = api_instance.create_ai_test_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiTestKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->create_ai_test_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAiTestKeyResponse**](CreateAiTestKeyResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ai_key

> <DeleteAiKeyResponse> delete_ai_key

Remove the BYO-key for a provider.

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
  # Remove the BYO-key for a provider.
  result = api_instance.delete_ai_key
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key: #{e}"
end
```

#### Using the delete_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAiKeyResponse>, Integer, Hash)> delete_ai_key_with_http_info

```ruby
begin
  # Remove the BYO-key for a provider.
  data, status_code, headers = api_instance.delete_ai_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->delete_ai_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeleteAiKeyResponse**](DeleteAiKeyResponse.md)

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

[**GetAiProviderResponse**](GetAiProviderResponse.md)

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

[**GetAiStatusResponse**](GetAiStatusResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ai_key

> <UpdateAiKeyResponse> update_ai_key

Save an encrypted BYO-key for an AI provider.

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
  # Save an encrypted BYO-key for an AI provider.
  result = api_instance.update_ai_key
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key: #{e}"
end
```

#### Using the update_ai_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAiKeyResponse>, Integer, Hash)> update_ai_key_with_http_info

```ruby
begin
  # Save an encrypted BYO-key for an AI provider.
  data, status_code, headers = api_instance.update_ai_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAiKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AIApi->update_ai_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UpdateAiKeyResponse**](UpdateAiKeyResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

