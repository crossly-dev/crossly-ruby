# Crossly::MagicApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_magic_auto_decision_undo**](MagicApi.md#create_magic_auto_decision_undo) | **POST** /v1/magic/auto/decisions/{decisionId}/undo | Undo an automated Magic List decision, deleting its unpublished draft. |
| [**create_magic_auto_item**](MagicApi.md#create_magic_auto_item) | **POST** /v1/magic/auto/items | Scan one item and match it automatically (drafts only, never publishes). |
| [**create_magic_auto_run**](MagicApi.md#create_magic_auto_run) | **POST** /v1/magic/auto/runs/{runId} | Score a Magic List run automatically; a confident match in auto mode becomes a draft. |
| [**create_magic_auto_run_swipe**](MagicApi.md#create_magic_auto_run_swipe) | **POST** /v1/magic/auto/runs/{runId}/swipes | Record a seller swipe session (kept and rejected match keys) for a Magic List run. |
| [**create_magic_scan**](MagicApi.md#create_magic_scan) | **POST** /v1/magic/scan | Run a Magic List image scan. Optional matchMode (off | auto | review_all) sets this scan&#39;s automated matching; omitted &#x3D; your remembered default. |
| [**create_magic_scan_synthesize**](MagicApi.md#create_magic_scan_synthesize) | **POST** /v1/magic/scan/{runId}/synthesize | Synthesize a draft from confirmed matches. |
| [**get_magic_auto_setting**](MagicApi.md#get_magic_auto_setting) | **GET** /v1/magic/auto/settings | The seller’s Magic List automated-matching mode. |
| [**get_magic_draft**](MagicApi.md#get_magic_draft) | **GET** /v1/magic/drafts/{draftId} | Get a synthesized Magic List draft. |
| [**list_magic_auto_run_decisions**](MagicApi.md#list_magic_auto_run_decisions) | **GET** /v1/magic/auto/runs/{runId}/decisions | Every match decision round (automated and seller) for a Magic List run. |
| [**list_magic_recent**](MagicApi.md#list_magic_recent) | **GET** /v1/magic/recent | Recent Magic List scans for this seller. |
| [**update_magic_auto_setting**](MagicApi.md#update_magic_auto_setting) | **PUT** /v1/magic/auto/settings | Set the Magic List automated-matching mode (off | auto | review_all). |


## create_magic_auto_decision_undo

> <CreateMagicAutoDecisionUndoResponse> create_magic_auto_decision_undo(decision_id)

Undo an automated Magic List decision, deleting its unpublished draft.

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
decision_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Undo an automated Magic List decision, deleting its unpublished draft.
  result = api_instance.create_magic_auto_decision_undo(decision_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_decision_undo: #{e}"
end
```

#### Using the create_magic_auto_decision_undo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicAutoDecisionUndoResponse>, Integer, Hash)> create_magic_auto_decision_undo_with_http_info(decision_id)

```ruby
begin
  # Undo an automated Magic List decision, deleting its unpublished draft.
  data, status_code, headers = api_instance.create_magic_auto_decision_undo_with_http_info(decision_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicAutoDecisionUndoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_decision_undo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decision_id** | **String** |  |  |

### Return type

**CreateMagicAutoDecisionUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_magic_auto_item

> <CreateMagicAutoItemResponse> create_magic_auto_item(create_magic_auto_item_request)

Scan one item and match it automatically (drafts only, never publishes).

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
create_magic_auto_item_request = Crossly::CreateMagicAutoItemRequest.new({image_urls: ['image_urls_example']}) # CreateMagicAutoItemRequest | 

begin
  # Scan one item and match it automatically (drafts only, never publishes).
  result = api_instance.create_magic_auto_item(create_magic_auto_item_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_item: #{e}"
end
```

#### Using the create_magic_auto_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicAutoItemResponse>, Integer, Hash)> create_magic_auto_item_with_http_info(create_magic_auto_item_request)

```ruby
begin
  # Scan one item and match it automatically (drafts only, never publishes).
  data, status_code, headers = api_instance.create_magic_auto_item_with_http_info(create_magic_auto_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicAutoItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_magic_auto_item_request** | **CreateMagicAutoItemRequest** |  |  |

### Return type

**CreateMagicAutoItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_magic_auto_run

> <CreateMagicAutoRunResponse> create_magic_auto_run(run_id, opts)

Score a Magic List run automatically; a confident match in auto mode becomes a draft.

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
opts = {
  create_magic_auto_run_request: Crossly::CreateMagicAutoRunRequest.new # CreateMagicAutoRunRequest | 
}

begin
  # Score a Magic List run automatically; a confident match in auto mode becomes a draft.
  result = api_instance.create_magic_auto_run(run_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_run: #{e}"
end
```

#### Using the create_magic_auto_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicAutoRunResponse>, Integer, Hash)> create_magic_auto_run_with_http_info(run_id, opts)

```ruby
begin
  # Score a Magic List run automatically; a confident match in auto mode becomes a draft.
  data, status_code, headers = api_instance.create_magic_auto_run_with_http_info(run_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicAutoRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **create_magic_auto_run_request** | **CreateMagicAutoRunRequest** |  | [optional] |

### Return type

**CreateMagicAutoRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_magic_auto_run_swipe

> <CreateMagicAutoRunSwipeResponse> create_magic_auto_run_swipe(run_id, opts)

Record a seller swipe session (kept and rejected match keys) for a Magic List run.

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
opts = {
  create_magic_auto_run_swipe_request: Crossly::CreateMagicAutoRunSwipeRequest.new # CreateMagicAutoRunSwipeRequest | 
}

begin
  # Record a seller swipe session (kept and rejected match keys) for a Magic List run.
  result = api_instance.create_magic_auto_run_swipe(run_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_run_swipe: #{e}"
end
```

#### Using the create_magic_auto_run_swipe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicAutoRunSwipeResponse>, Integer, Hash)> create_magic_auto_run_swipe_with_http_info(run_id, opts)

```ruby
begin
  # Record a seller swipe session (kept and rejected match keys) for a Magic List run.
  data, status_code, headers = api_instance.create_magic_auto_run_swipe_with_http_info(run_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicAutoRunSwipeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_auto_run_swipe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **create_magic_auto_run_swipe_request** | **CreateMagicAutoRunSwipeRequest** |  | [optional] |

### Return type

**CreateMagicAutoRunSwipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_magic_scan

> <CreateMagicScanResponse> create_magic_scan(create_magic_scan_request)

Run a Magic List image scan. Optional matchMode (off | auto | review_all) sets this scan's automated matching; omitted = your remembered default.

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
create_magic_scan_request = Crossly::CreateMagicScanRequest.new # CreateMagicScanRequest | 

begin
  # Run a Magic List image scan. Optional matchMode (off | auto | review_all) sets this scan's automated matching; omitted = your remembered default.
  result = api_instance.create_magic_scan(create_magic_scan_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan: #{e}"
end
```

#### Using the create_magic_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicScanResponse>, Integer, Hash)> create_magic_scan_with_http_info(create_magic_scan_request)

```ruby
begin
  # Run a Magic List image scan. Optional matchMode (off | auto | review_all) sets this scan's automated matching; omitted = your remembered default.
  data, status_code, headers = api_instance.create_magic_scan_with_http_info(create_magic_scan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMagicScanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_magic_scan_request** | **CreateMagicScanRequest** |  |  |

### Return type

**CreateMagicScanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_magic_scan_synthesize

> <CreateMagicScanSynthesizeResponse> create_magic_scan_synthesize(run_id, create_magic_scan_synthesize_request)

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
create_magic_scan_synthesize_request = Crossly::CreateMagicScanSynthesizeRequest.new # CreateMagicScanSynthesizeRequest | 

begin
  # Synthesize a draft from confirmed matches.
  result = api_instance.create_magic_scan_synthesize(run_id, create_magic_scan_synthesize_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->create_magic_scan_synthesize: #{e}"
end
```

#### Using the create_magic_scan_synthesize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMagicScanSynthesizeResponse>, Integer, Hash)> create_magic_scan_synthesize_with_http_info(run_id, create_magic_scan_synthesize_request)

```ruby
begin
  # Synthesize a draft from confirmed matches.
  data, status_code, headers = api_instance.create_magic_scan_synthesize_with_http_info(run_id, create_magic_scan_synthesize_request)
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
| **create_magic_scan_synthesize_request** | **CreateMagicScanSynthesizeRequest** |  |  |

### Return type

**CreateMagicScanSynthesizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_magic_auto_setting

> <GetMagicAutoSettingResponse> get_magic_auto_setting

The seller’s Magic List automated-matching mode.

mode: off (every match is swiped by hand), auto (confident matches become DRAFTS on their own, never published, always undoable) or review_all (Crossly pre-marks its picks; the seller confirms). Default review_all.

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
  # The seller’s Magic List automated-matching mode.
  result = api_instance.get_magic_auto_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->get_magic_auto_setting: #{e}"
end
```

#### Using the get_magic_auto_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMagicAutoSettingResponse>, Integer, Hash)> get_magic_auto_setting_with_http_info

```ruby
begin
  # The seller’s Magic List automated-matching mode.
  data, status_code, headers = api_instance.get_magic_auto_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMagicAutoSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->get_magic_auto_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMagicAutoSettingResponse**

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

**GetMagicDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_magic_auto_run_decisions

> <ListMagicAutoRunDecisionsResponse> list_magic_auto_run_decisions(run_id)

Every match decision round (automated and seller) for a Magic List run.

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
  # Every match decision round (automated and seller) for a Magic List run.
  result = api_instance.list_magic_auto_run_decisions(run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->list_magic_auto_run_decisions: #{e}"
end
```

#### Using the list_magic_auto_run_decisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMagicAutoRunDecisionsResponse>, Integer, Hash)> list_magic_auto_run_decisions_with_http_info(run_id)

```ruby
begin
  # Every match decision round (automated and seller) for a Magic List run.
  data, status_code, headers = api_instance.list_magic_auto_run_decisions_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMagicAutoRunDecisionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->list_magic_auto_run_decisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

**ListMagicAutoRunDecisionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_magic_recent

> <ListMagicRecentResponse> list_magic_recent

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

> <Array(<ListMagicRecentResponse>, Integer, Hash)> list_magic_recent_with_http_info

```ruby
begin
  # Recent Magic List scans for this seller.
  data, status_code, headers = api_instance.list_magic_recent_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMagicRecentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->list_magic_recent_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListMagicRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_magic_auto_setting

> <GetMagicAutoSettingResponse> update_magic_auto_setting(update_magic_auto_setting_request)

Set the Magic List automated-matching mode (off | auto | review_all).

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
update_magic_auto_setting_request = Crossly::UpdateMagicAutoSettingRequest.new({mode: 'off'}) # UpdateMagicAutoSettingRequest | 

begin
  # Set the Magic List automated-matching mode (off | auto | review_all).
  result = api_instance.update_magic_auto_setting(update_magic_auto_setting_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->update_magic_auto_setting: #{e}"
end
```

#### Using the update_magic_auto_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMagicAutoSettingResponse>, Integer, Hash)> update_magic_auto_setting_with_http_info(update_magic_auto_setting_request)

```ruby
begin
  # Set the Magic List automated-matching mode (off | auto | review_all).
  data, status_code, headers = api_instance.update_magic_auto_setting_with_http_info(update_magic_auto_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMagicAutoSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling MagicApi->update_magic_auto_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_magic_auto_setting_request** | **UpdateMagicAutoSettingRequest** |  |  |

### Return type

**GetMagicAutoSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

