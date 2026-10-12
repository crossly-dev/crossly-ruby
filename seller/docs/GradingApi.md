# Crossly::GradingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grading_direct**](GradingApi.md#create_grading_direct) | **POST** /v1/grading/direct | Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back. |
| [**create_grading_run_reserve**](GradingApi.md#create_grading_run_reserve) | **POST** /v1/grading/runs/{id}/reserve | Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required. |
| [**create_grading_submission_cancel**](GradingApi.md#create_grading_submission_cancel) | **POST** /v1/grading/submissions/{id}/cancel | Pull a reserved card out of its run. Only while it is reserved; nothing was charged. |
| [**create_grading_submission_result**](GradingApi.md#create_grading_submission_result) | **POST** /v1/grading/submissions/{id}/result | Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees. |
| [**create_grading_submission_shipped**](GradingApi.md#create_grading_submission_shipped) | **POST** /v1/grading/submissions/{id}/shipped | Say you mailed a charged card to the hub, with optional tracking. |
| [**create_grading_verify_cert**](GradingApi.md#create_grading_verify_cert) | **POST** /v1/grading/verify-cert | Look a cert number up with its grader. found&#x3D;false when the grader has no record. |
| [**get_grading_worth**](GradingApi.md#get_grading_worth) | **GET** /v1/grading/worth/{inventoryItemId} | Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade. |
| [**list_grading_rate_card**](GradingApi.md#list_grading_rate_card) | **GET** /v1/grading/rate-card | Every grader and tier Crossly can send to, with the per-card price in cents (null &#x3D; paused at the grader). |
| [**list_grading_runs**](GradingApi.md#list_grading_runs) | **GET** /v1/grading/runs | Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off. |
| [**list_grading_submissions**](GradingApi.md#list_grading_submissions) | **GET** /v1/grading/submissions | Your cards out for grading (runs and Direct), newest first. active&#x3D;1 keeps only the ones still in flight. |


## create_grading_direct

> <IdResponse> create_grading_direct

Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.
  result = api_instance.create_grading_direct
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_direct: #{e}"
end
```

#### Using the create_grading_direct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdResponse>, Integer, Hash)> create_grading_direct_with_http_info

```ruby
begin
  # Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.
  data, status_code, headers = api_instance.create_grading_direct_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_direct_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_run_reserve

> <IdResponse> create_grading_run_reserve(id)

Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
  result = api_instance.create_grading_run_reserve(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_run_reserve: #{e}"
end
```

#### Using the create_grading_run_reserve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdResponse>, Integer, Hash)> create_grading_run_reserve_with_http_info(id)

```ruby
begin
  # Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
  data, status_code, headers = api_instance.create_grading_run_reserve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_run_reserve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_submission_cancel

> <OkResponse> create_grading_submission_cancel(id)

Pull a reserved card out of its run. Only while it is reserved; nothing was charged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
  result = api_instance.create_grading_submission_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_cancel: #{e}"
end
```

#### Using the create_grading_submission_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_grading_submission_cancel_with_http_info(id)

```ruby
begin
  # Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
  data, status_code, headers = api_instance.create_grading_submission_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_cancel_with_http_info: #{e}"
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


## create_grading_submission_result

> <CreateGradingSubmissionResultResponse> create_grading_submission_result(id)

Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.
  result = api_instance.create_grading_submission_result(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_result: #{e}"
end
```

#### Using the create_grading_submission_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGradingSubmissionResultResponse>, Integer, Hash)> create_grading_submission_result_with_http_info(id)

```ruby
begin
  # Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.
  data, status_code, headers = api_instance.create_grading_submission_result_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGradingSubmissionResultResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateGradingSubmissionResultResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_submission_shipped

> <OkResponse> create_grading_submission_shipped(id)

Say you mailed a charged card to the hub, with optional tracking.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Say you mailed a charged card to the hub, with optional tracking.
  result = api_instance.create_grading_submission_shipped(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_shipped: #{e}"
end
```

#### Using the create_grading_submission_shipped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_grading_submission_shipped_with_http_info(id)

```ruby
begin
  # Say you mailed a charged card to the hub, with optional tracking.
  data, status_code, headers = api_instance.create_grading_submission_shipped_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_shipped_with_http_info: #{e}"
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


## create_grading_verify_cert

> <CreateGradingVerifyCertResponse> create_grading_verify_cert

Look a cert number up with its grader. found=false when the grader has no record.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Look a cert number up with its grader. found=false when the grader has no record.
  result = api_instance.create_grading_verify_cert
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_verify_cert: #{e}"
end
```

#### Using the create_grading_verify_cert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGradingVerifyCertResponse>, Integer, Hash)> create_grading_verify_cert_with_http_info

```ruby
begin
  # Look a cert number up with its grader. found=false when the grader has no record.
  data, status_code, headers = api_instance.create_grading_verify_cert_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGradingVerifyCertResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_verify_cert_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateGradingVerifyCertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_grading_worth

> <GetGradingWorthResponse> get_grading_worth(inventory_item_id)

Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
inventory_item_id = 'inventory_item_id_example' # String | 

begin
  # Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
  result = api_instance.get_grading_worth(inventory_item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_worth: #{e}"
end
```

#### Using the get_grading_worth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGradingWorthResponse>, Integer, Hash)> get_grading_worth_with_http_info(inventory_item_id)

```ruby
begin
  # Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
  data, status_code, headers = api_instance.get_grading_worth_with_http_info(inventory_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGradingWorthResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_worth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory_item_id** | **String** |  |  |

### Return type

**GetGradingWorthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_rate_card

> <ListGradingRateCardResponse> list_grading_rate_card

Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).
  result = api_instance.list_grading_rate_card
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_rate_card: #{e}"
end
```

#### Using the list_grading_rate_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingRateCardResponse>, Integer, Hash)> list_grading_rate_card_with_http_info

```ruby
begin
  # Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).
  data, status_code, headers = api_instance.list_grading_rate_card_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingRateCardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_rate_card_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListGradingRateCardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_runs

> <ListGradingRunsResponse> list_grading_runs

Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
  result = api_instance.list_grading_runs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_runs: #{e}"
end
```

#### Using the list_grading_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingRunsResponse>, Integer, Hash)> list_grading_runs_with_http_info

```ruby
begin
  # Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
  data, status_code, headers = api_instance.list_grading_runs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingRunsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_runs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListGradingRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_submissions

> <ListGradingSubmissionsResponse> list_grading_submissions(opts)

Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
opts = {
  active: '0' # String | Only cards that have not finished.
}

begin
  # Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.
  result = api_instance.list_grading_submissions(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_submissions: #{e}"
end
```

#### Using the list_grading_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingSubmissionsResponse>, Integer, Hash)> list_grading_submissions_with_http_info(opts)

```ruby
begin
  # Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.
  data, status_code, headers = api_instance.list_grading_submissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingSubmissionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **String** | Only cards that have not finished. | [optional] |

### Return type

**ListGradingSubmissionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

