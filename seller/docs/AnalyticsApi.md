# Crossly::AnalyticsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_analytic_bookkeeping**](AnalyticsApi.md#get_analytic_bookkeeping) | **GET** /v1/analytics/bookkeeping | Monthly P&amp;L + per-platform breakdown for a calendar year. |
| [**get_analytic_by_platform**](AnalyticsApi.md#get_analytic_by_platform) | **GET** /v1/analytics/by-platform | Sales + revenue grouped by platform for the last N days. |
| [**get_analytic_dashboard**](AnalyticsApi.md#get_analytic_dashboard) | **GET** /v1/analytics/dashboard | Composite dashboard: KPIs + breakdowns + recent activity. |
| [**get_analytic_item**](AnalyticsApi.md#get_analytic_item) | **GET** /v1/analytics/items | Per-item P&amp;L for sold inventory. |
| [**get_analytic_summary**](AnalyticsApi.md#get_analytic_summary) | **GET** /v1/analytics/summary | Headline KPIs for the last N days. |
| [**get_analytic_timesery**](AnalyticsApi.md#get_analytic_timesery) | **GET** /v1/analytics/timeseries | Daily sales + revenue series for the last N days. |
| [**get_analytic_today**](AnalyticsApi.md#get_analytic_today) | **GET** /v1/analytics/today | Today&#39;s checklist + 14-day activity streak. |
| [**list_insight_by_platform**](AnalyticsApi.md#list_insight_by_platform) | **GET** /v1/insights/by-platform | Platform velocity + margin insight (90-day window). |


## get_analytic_bookkeeping

> <GetAnalyticBookkeepingResponse> get_analytic_bookkeeping

Monthly P&L + per-platform breakdown for a calendar year.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Monthly P&L + per-platform breakdown for a calendar year.
  result = api_instance.get_analytic_bookkeeping
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_bookkeeping: #{e}"
end
```

#### Using the get_analytic_bookkeeping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticBookkeepingResponse>, Integer, Hash)> get_analytic_bookkeeping_with_http_info

```ruby
begin
  # Monthly P&L + per-platform breakdown for a calendar year.
  data, status_code, headers = api_instance.get_analytic_bookkeeping_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticBookkeepingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_bookkeeping_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticBookkeepingResponse**](GetAnalyticBookkeepingResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_by_platform

> <GetAnalyticByPlatformResponse> get_analytic_by_platform

Sales + revenue grouped by platform for the last N days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Sales + revenue grouped by platform for the last N days.
  result = api_instance.get_analytic_by_platform
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_by_platform: #{e}"
end
```

#### Using the get_analytic_by_platform_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticByPlatformResponse>, Integer, Hash)> get_analytic_by_platform_with_http_info

```ruby
begin
  # Sales + revenue grouped by platform for the last N days.
  data, status_code, headers = api_instance.get_analytic_by_platform_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticByPlatformResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_by_platform_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticByPlatformResponse**](GetAnalyticByPlatformResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_dashboard

> <GetAnalyticDashboardResponse> get_analytic_dashboard

Composite dashboard: KPIs + breakdowns + recent activity.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Composite dashboard: KPIs + breakdowns + recent activity.
  result = api_instance.get_analytic_dashboard
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_dashboard: #{e}"
end
```

#### Using the get_analytic_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticDashboardResponse>, Integer, Hash)> get_analytic_dashboard_with_http_info

```ruby
begin
  # Composite dashboard: KPIs + breakdowns + recent activity.
  data, status_code, headers = api_instance.get_analytic_dashboard_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticDashboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_dashboard_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticDashboardResponse**](GetAnalyticDashboardResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_item

> <GetAnalyticItemResponse> get_analytic_item

Per-item P&L for sold inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Per-item P&L for sold inventory.
  result = api_instance.get_analytic_item
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_item: #{e}"
end
```

#### Using the get_analytic_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticItemResponse>, Integer, Hash)> get_analytic_item_with_http_info

```ruby
begin
  # Per-item P&L for sold inventory.
  data, status_code, headers = api_instance.get_analytic_item_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_item_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticItemResponse**](GetAnalyticItemResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_summary

> <GetAnalyticSummaryResponse> get_analytic_summary(opts)

Headline KPIs for the last N days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new
opts = {
  days: 56 # Integer | 
}

begin
  # Headline KPIs for the last N days.
  result = api_instance.get_analytic_summary(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_summary: #{e}"
end
```

#### Using the get_analytic_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticSummaryResponse>, Integer, Hash)> get_analytic_summary_with_http_info(opts)

```ruby
begin
  # Headline KPIs for the last N days.
  data, status_code, headers = api_instance.get_analytic_summary_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticSummaryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** |  | [optional][default to 30] |

### Return type

[**GetAnalyticSummaryResponse**](GetAnalyticSummaryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_timesery

> <GetAnalyticTimeseryResponse> get_analytic_timesery

Daily sales + revenue series for the last N days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Daily sales + revenue series for the last N days.
  result = api_instance.get_analytic_timesery
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_timesery: #{e}"
end
```

#### Using the get_analytic_timesery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticTimeseryResponse>, Integer, Hash)> get_analytic_timesery_with_http_info

```ruby
begin
  # Daily sales + revenue series for the last N days.
  data, status_code, headers = api_instance.get_analytic_timesery_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticTimeseryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_timesery_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticTimeseryResponse**](GetAnalyticTimeseryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_today

> <GetAnalyticTodayResponse> get_analytic_today

Today's checklist + 14-day activity streak.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Today's checklist + 14-day activity streak.
  result = api_instance.get_analytic_today
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_today: #{e}"
end
```

#### Using the get_analytic_today_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticTodayResponse>, Integer, Hash)> get_analytic_today_with_http_info

```ruby
begin
  # Today's checklist + 14-day activity streak.
  data, status_code, headers = api_instance.get_analytic_today_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticTodayResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_today_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAnalyticTodayResponse**](GetAnalyticTodayResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_insight_by_platform

> <V1List> list_insight_by_platform

Platform velocity + margin insight (90-day window).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AnalyticsApi.new

begin
  # Platform velocity + margin insight (90-day window).
  result = api_instance.list_insight_by_platform
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->list_insight_by_platform: #{e}"
end
```

#### Using the list_insight_by_platform_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_insight_by_platform_with_http_info

```ruby
begin
  # Platform velocity + margin insight (90-day window).
  data, status_code, headers = api_instance.list_insight_by_platform_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->list_insight_by_platform_with_http_info: #{e}"
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

