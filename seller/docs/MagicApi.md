# Crossly::MagicApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_magic_scan**](MagicApi.md#create_magic_scan) | **POST** /v1/magic/scan | Run a Magic List image scan. |
| [**create_magic_scan_synthesize**](MagicApi.md#create_magic_scan_synthesize) | **POST** /v1/magic/scan/{runId}/synthesize | Synthesize a draft from confirmed matches. |
| [**get_magic_draft**](MagicApi.md#get_magic_draft) | **GET** /v1/magic/drafts/{draftId} | Get a synthesized Magic List draft. |
| [**list_magic_recent**](MagicApi.md#list_magic_recent) | **GET** /v1/magic/recent | Recent Magic List scans for this seller. |


## create_magic_scan

> <CreateMagicScanResponse> create_magic_scan

Run a Magic List image scan.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MagicApi.new

begin
  # Run a Magic List image scan.
  result = api_instance.create_magic_scan
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan: #{e}"
end
```

#### Using the create_magic_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicScanResponse>, Integer, Hash)> create_magic_scan_with_http_info

```ruby
begin
  # Run a Magic List image scan.
  data, status_code, headers = api_instance.create_magic_scan_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicScanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateMagicScanResponse**](CreateMagicScanResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_magic_scan_synthesize

> <CreateMagicScanSynthesizeResponse> create_magic_scan_synthesize(run_id)

Synthesize a draft from confirmed matches.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MagicApi.new
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Synthesize a draft from confirmed matches.
  result = api_instance.create_magic_scan_synthesize(run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan_synthesize: #{e}"
end
```

#### Using the create_magic_scan_synthesize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicScanSynthesizeResponse>, Integer, Hash)> create_magic_scan_synthesize_with_http_info(run_id)

```ruby
begin
  # Synthesize a draft from confirmed matches.
  data, status_code, headers = api_instance.create_magic_scan_synthesize_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicScanSynthesizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan_synthesize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

[**CreateMagicScanSynthesizeResponse**](CreateMagicScanSynthesizeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_magic_draft

> <GetMagicDraftResponse> get_magic_draft(draft_id)

Get a synthesized Magic List draft.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MagicApi.new
draft_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get a synthesized Magic List draft.
  result = api_instance.get_magic_draft(draft_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->get_magic_draft: #{e}"
end
```

#### Using the get_magic_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMagicDraftResponse>, Integer, Hash)> get_magic_draft_with_http_info(draft_id)

```ruby
begin
  # Get a synthesized Magic List draft.
  data, status_code, headers = api_instance.get_magic_draft_with_http_info(draft_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMagicDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->get_magic_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** |  |  |

### Return type

[**GetMagicDraftResponse**](GetMagicDraftResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_magic_recent

> <V1List> list_magic_recent

Recent Magic List scans for this seller.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::MagicApi.new

begin
  # Recent Magic List scans for this seller.
  result = api_instance.list_magic_recent
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->list_magic_recent: #{e}"
end
```

#### Using the list_magic_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_magic_recent_with_http_info

```ruby
begin
  # Recent Magic List scans for this seller.
  data, status_code, headers = api_instance.list_magic_recent_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->list_magic_recent_with_http_info: #{e}"
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

