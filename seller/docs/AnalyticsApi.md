# Crossly::AnalyticsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_analytic_experiment**](AnalyticsApi.md#create_analytic_experiment) | **POST** /v1/analytics/experiments | Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price). |
| [**create_analytic_experiment_declare**](AnalyticsApi.md#create_analytic_experiment_declare) | **POST** /v1/analytics/experiments/{id}/declare | Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment. |
| [**create_analytic_experiment_stop**](AnalyticsApi.md#create_analytic_experiment_stop) | **POST** /v1/analytics/experiments/{id}/stop | Stop an experiment: no more data is counted after now. |
| [**delete_analytic_experiment**](AnalyticsApi.md#delete_analytic_experiment) | **DELETE** /v1/analytics/experiments/{id} | Delete an experiment. The listings are untouched. |
| [**get_analytic_bookkeeping**](AnalyticsApi.md#get_analytic_bookkeeping) | **GET** /v1/analytics/bookkeeping | Monthly P&amp;L + per-platform breakdown for a calendar year. |
| [**get_analytic_by_platform**](AnalyticsApi.md#get_analytic_by_platform) | **GET** /v1/analytics/by-platform | Sales, net sales, fees and net profit by platform for the last N days. |
| [**get_analytic_compare**](AnalyticsApi.md#get_analytic_compare) | **GET** /v1/analytics/compare | Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day. |
| [**get_analytic_dashboard**](AnalyticsApi.md#get_analytic_dashboard) | **GET** /v1/analytics/dashboard | Composite dashboard: KPIs + breakdowns + recent activity. |
| [**get_analytic_experiment**](AnalyticsApi.md#get_analytic_experiment) | **GET** /v1/analytics/experiments | Your listing A/B experiments, newest first, with status, days running and the current verdict. |
| [**get_analytic_experiment_by_id**](AnalyticsApi.md#get_analytic_experiment_by_id) | **GET** /v1/analytics/experiments/{id} | One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next. |
| [**get_analytic_inventory**](AnalyticsApi.md#get_analytic_inventory) | **GET** /v1/analytics/inventory | Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health. |
| [**get_analytic_item**](AnalyticsApi.md#get_analytic_item) | **GET** /v1/analytics/items | Per-item P&amp;L for sold inventory. |
| [**get_analytic_item_by_listing_id**](AnalyticsApi.md#get_analytic_item_by_listing_id) | **GET** /v1/analytics/items/{listingId} | One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions. |
| [**get_analytic_marketplace**](AnalyticsApi.md#get_analytic_marketplace) | **GET** /v1/analytics/marketplaces | Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs&#x3D;2-3 platforms, a head-to-head over listings live on all of them. |
| [**get_analytic_marketplace_by_platform**](AnalyticsApi.md#get_analytic_marketplace_by_platform) | **GET** /v1/analytics/marketplaces/{platform} | One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats. |
| [**get_analytic_overview**](AnalyticsApi.md#get_analytic_overview) | **GET** /v1/analytics/overview | KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights. |
| [**get_analytic_performance**](AnalyticsApi.md#get_analytic_performance) | **GET** /v1/analytics/performance | Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable. |
| [**get_analytic_program**](AnalyticsApi.md#get_analytic_program) | **GET** /v1/analytics/programs/{program} | One program&#39;s report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents. |
| [**get_analytic_segment**](AnalyticsApi.md#get_analytic_segment) | **GET** /v1/analytics/segments | Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample. |
| [**get_analytic_segment_by_key**](AnalyticsApi.md#get_analytic_segment_by_key) | **GET** /v1/analytics/segments/{dim}/{key} | One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it. |
| [**get_analytic_summary**](AnalyticsApi.md#get_analytic_summary) | **GET** /v1/analytics/summary | Headline KPIs for the last N days (the same numbers as the analytics overview). |
| [**get_analytic_timesery**](AnalyticsApi.md#get_analytic_timesery) | **GET** /v1/analytics/timeseries | Sales and net sales over the last N days, zero-filled, one row per calendar day. |
| [**get_analytic_today**](AnalyticsApi.md#get_analytic_today) | **GET** /v1/analytics/today | Today&#39;s checklist + 14-day activity streak. |
| [**list_insight_by_platform**](AnalyticsApi.md#list_insight_by_platform) | **GET** /v1/insights/by-platform | Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees. |
| [**update_analytic_experiment**](AnalyticsApi.md#update_analytic_experiment) | **PATCH** /v1/analytics/experiments/{id} | Rename an experiment or change its hypothesis, notes or planned end. |


## create_analytic_experiment

> <AnalyticExperimentResponse> create_analytic_experiment

Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).

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
  # Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).
  result = api_instance.create_analytic_experiment
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment: #{e}"
end
```

#### Using the create_analytic_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticExperimentResponse>, Integer, Hash)> create_analytic_experiment_with_http_info

```ruby
begin
  # Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).
  data, status_code, headers = api_instance.create_analytic_experiment_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_analytic_experiment_declare

> <AnalyticExperimentResponse> create_analytic_experiment_declare(id)

Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.

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
id = 'id_example' # String | The experiment id (a uuid; any other id is a 404).

begin
  # Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.
  result = api_instance.create_analytic_experiment_declare(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment_declare: #{e}"
end
```

#### Using the create_analytic_experiment_declare_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticExperimentResponse>, Integer, Hash)> create_analytic_experiment_declare_with_http_info(id)

```ruby
begin
  # Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.
  data, status_code, headers = api_instance.create_analytic_experiment_declare_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment_declare_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment id (a uuid; any other id is a 404). |  |

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_analytic_experiment_stop

> <AnalyticExperimentResponse> create_analytic_experiment_stop(id)

Stop an experiment: no more data is counted after now.

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
id = 'id_example' # String | The experiment id (a uuid; any other id is a 404).

begin
  # Stop an experiment: no more data is counted after now.
  result = api_instance.create_analytic_experiment_stop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment_stop: #{e}"
end
```

#### Using the create_analytic_experiment_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticExperimentResponse>, Integer, Hash)> create_analytic_experiment_stop_with_http_info(id)

```ruby
begin
  # Stop an experiment: no more data is counted after now.
  data, status_code, headers = api_instance.create_analytic_experiment_stop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytic_experiment_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment id (a uuid; any other id is a 404). |  |

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_analytic_experiment

> <DeleteStoryResponse> delete_analytic_experiment(id)

Delete an experiment. The listings are untouched.

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
id = 'id_example' # String | The experiment id (a uuid; any other id is a 404).

begin
  # Delete an experiment. The listings are untouched.
  result = api_instance.delete_analytic_experiment(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->delete_analytic_experiment: #{e}"
end
```

#### Using the delete_analytic_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStoryResponse>, Integer, Hash)> delete_analytic_experiment_with_http_info(id)

```ruby
begin
  # Delete an experiment. The listings are untouched.
  data, status_code, headers = api_instance.delete_analytic_experiment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->delete_analytic_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment id (a uuid; any other id is a 404). |  |

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

**GetAnalyticBookkeepingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_by_platform

> <GetAnalyticByPlatformResponse> get_analytic_by_platform(opts)

Sales, net sales, fees and net profit by platform for the last N days.

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
  days: 56, # Integer | Calendar days back, today included. Larger values are clamped to 365.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC.
}

begin
  # Sales, net sales, fees and net profit by platform for the last N days.
  result = api_instance.get_analytic_by_platform(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_by_platform: #{e}"
end
```

#### Using the get_analytic_by_platform_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticByPlatformResponse>, Integer, Hash)> get_analytic_by_platform_with_http_info(opts)

```ruby
begin
  # Sales, net sales, fees and net profit by platform for the last N days.
  data, status_code, headers = api_instance.get_analytic_by_platform_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticByPlatformResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_by_platform_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Calendar days back, today included. Larger values are clamped to 365. | [optional][default to 30] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] |

### Return type

**GetAnalyticByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_compare

> <GetAnalyticCompareResponse> get_analytic_compare(ids, opts)

Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.

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
ids = 'ids_example' # String | Comma-separated listing ids, 2 to 4. The first is arm A.
opts = {
  align: 'age', # String | age = x is days since first listed (default); calendar = x is the date.
  platform: 'platform_example', # String | Restrict engagement to one channel (platform id).
  tz: 'tz_example' # String | IANA time zone. Default UTC.
}

begin
  # Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.
  result = api_instance.get_analytic_compare(ids, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_compare: #{e}"
end
```

#### Using the get_analytic_compare_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticCompareResponse>, Integer, Hash)> get_analytic_compare_with_http_info(ids, opts)

```ruby
begin
  # Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.
  data, status_code, headers = api_instance.get_analytic_compare_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticCompareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_compare_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Comma-separated listing ids, 2 to 4. The first is arm A. |  |
| **align** | **String** | age &#x3D; x is days since first listed (default); calendar &#x3D; x is the date. | [optional] |
| **platform** | **String** | Restrict engagement to one channel (platform id). | [optional] |
| **tz** | **String** | IANA time zone. Default UTC. | [optional] |

### Return type

**GetAnalyticCompareResponse**

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

**GetAnalyticDashboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_experiment

> <GetAnalyticExperimentResponse> get_analytic_experiment(opts)

Your listing A/B experiments, newest first, with status, days running and the current verdict.

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
  status: 'all', # String | Default all.
  page: 56, # Integer | 1-indexed page. Default 1.
  size: 56 # Integer | Rows per page. Default 20.
}

begin
  # Your listing A/B experiments, newest first, with status, days running and the current verdict.
  result = api_instance.get_analytic_experiment(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_experiment: #{e}"
end
```

#### Using the get_analytic_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticExperimentResponse>, Integer, Hash)> get_analytic_experiment_with_http_info(opts)

```ruby
begin
  # Your listing A/B experiments, newest first, with status, days running and the current verdict.
  data, status_code, headers = api_instance.get_analytic_experiment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Default all. | [optional] |
| **page** | **Integer** | 1-indexed page. Default 1. | [optional] |
| **size** | **Integer** | Rows per page. Default 20. | [optional] |

### Return type

**GetAnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_experiment_by_id

> <GetAnalyticExperimentByIdResponse> get_analytic_experiment_by_id(id)

One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.

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
id = 'id_example' # String | The experiment id (a uuid).

begin
  # One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.
  result = api_instance.get_analytic_experiment_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_experiment_by_id: #{e}"
end
```

#### Using the get_analytic_experiment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticExperimentByIdResponse>, Integer, Hash)> get_analytic_experiment_by_id_with_http_info(id)

```ruby
begin
  # One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.
  data, status_code, headers = api_instance.get_analytic_experiment_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticExperimentByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_experiment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment id (a uuid). |  |

### Return type

**GetAnalyticExperimentByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_inventory

> <GetAnalyticInventoryResponse> get_analytic_inventory(opts)

Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.

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
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example', # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
  maturity: 30 # Integer | Days an item has to sell within to count as sold in the cohort. Default 30.
}

begin
  # Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.
  result = api_instance.get_analytic_inventory(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_inventory: #{e}"
end
```

#### Using the get_analytic_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticInventoryResponse>, Integer, Hash)> get_analytic_inventory_with_http_info(opts)

```ruby
begin
  # Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.
  data, status_code, headers = api_instance.get_analytic_inventory_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |
| **maturity** | **Integer** | Days an item has to sell within to count as sold in the cohort. Default 30. | [optional] |

### Return type

**GetAnalyticInventoryResponse**

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

**GetAnalyticItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_item_by_listing_id

> <GetAnalyticItemByListingIdResponse> get_analytic_item_by_listing_id(listing_id, opts)

One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.

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
listing_id = 'listing_id_example' # String | A listings.id you own (or an inventory item id with by=inventory).
opts = {
  by: 'listing', # String | inventory = the id is an inventory item id; the answer is { redirectListingId }. Default listing.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC.
}

begin
  # One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.
  result = api_instance.get_analytic_item_by_listing_id(listing_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_item_by_listing_id: #{e}"
end
```

#### Using the get_analytic_item_by_listing_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticItemByListingIdResponse>, Integer, Hash)> get_analytic_item_by_listing_id_with_http_info(listing_id, opts)

```ruby
begin
  # One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.
  data, status_code, headers = api_instance.get_analytic_item_by_listing_id_with_http_info(listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticItemByListingIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_item_by_listing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **String** | A listings.id you own (or an inventory item id with by&#x3D;inventory). |  |
| **by** | **String** | inventory &#x3D; the id is an inventory item id; the answer is { redirectListingId }. Default listing. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] |

### Return type

**GetAnalyticItemByListingIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_marketplace

> <GetAnalyticMarketplaceResponse> get_analytic_marketplace(opts)

Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs=2-3 platforms, a head-to-head over listings live on all of them.

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
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example', # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
  vs: 'vs_example', # String | Comma-separated 2-3 platform ids for the head-to-head.
  sort: 'netSales', # String | Default netSales.
  dir: 'asc' # String | Default desc.
}

begin
  # Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs=2-3 platforms, a head-to-head over listings live on all of them.
  result = api_instance.get_analytic_marketplace(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_marketplace: #{e}"
end
```

#### Using the get_analytic_marketplace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticMarketplaceResponse>, Integer, Hash)> get_analytic_marketplace_with_http_info(opts)

```ruby
begin
  # Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs=2-3 platforms, a head-to-head over listings live on all of them.
  data, status_code, headers = api_instance.get_analytic_marketplace_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticMarketplaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_marketplace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |
| **vs** | **String** | Comma-separated 2-3 platform ids for the head-to-head. | [optional] |
| **sort** | **String** | Default netSales. | [optional] |
| **dir** | **String** | Default desc. | [optional] |

### Return type

**GetAnalyticMarketplaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_marketplace_by_platform

> <GetAnalyticMarketplaceByPlatformResponse> get_analytic_marketplace_by_platform(platform, opts)

One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.

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
platform = 'platform_example' # String | A platform id, e.g. ebay, poshmark.
opts = {
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
}

begin
  # One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.
  result = api_instance.get_analytic_marketplace_by_platform(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_marketplace_by_platform: #{e}"
end
```

#### Using the get_analytic_marketplace_by_platform_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticMarketplaceByPlatformResponse>, Integer, Hash)> get_analytic_marketplace_by_platform_with_http_info(platform, opts)

```ruby
begin
  # One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.
  data, status_code, headers = api_instance.get_analytic_marketplace_by_platform_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticMarketplaceByPlatformResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_marketplace_by_platform_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | A platform id, e.g. ebay, poshmark. |  |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |

### Return type

**GetAnalyticMarketplaceByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_overview

> <GetAnalyticOverviewResponse> get_analytic_overview(opts)

KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.

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
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example', # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
  stores: 'stores_example' # String | Comma-separated store ids.
}

begin
  # KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.
  result = api_instance.get_analytic_overview(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_overview: #{e}"
end
```

#### Using the get_analytic_overview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticOverviewResponse>, Integer, Hash)> get_analytic_overview_with_http_info(opts)

```ruby
begin
  # KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.
  data, status_code, headers = api_instance.get_analytic_overview_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticOverviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_overview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |
| **stores** | **String** | Comma-separated store ids. | [optional] |

### Return type

**GetAnalyticOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_performance

> <GetAnalyticPerformanceResponse> get_analytic_performance(opts)

Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.

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
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example', # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
  status: 'all', # String | unsold = listed at least minDays with no completed sale.
  q: 'q_example', # String | Title, SKU or brand contains.
  sort: 'lastActivity', # String | Default lastActivity.
  dir: 'asc', # String | Default desc.
  page: 56, # Integer | 1-indexed page. Default 1.
  size: 25, # Integer | Rows per page. Default 50.
  min_days: 56 # Integer | Minimum days listed (for status=unsold). Default 0.
}

begin
  # Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.
  result = api_instance.get_analytic_performance(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_performance: #{e}"
end
```

#### Using the get_analytic_performance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticPerformanceResponse>, Integer, Hash)> get_analytic_performance_with_http_info(opts)

```ruby
begin
  # Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.
  data, status_code, headers = api_instance.get_analytic_performance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticPerformanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_performance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |
| **status** | **String** | unsold &#x3D; listed at least minDays with no completed sale. | [optional] |
| **q** | **String** | Title, SKU or brand contains. | [optional] |
| **sort** | **String** | Default lastActivity. | [optional] |
| **dir** | **String** | Default desc. | [optional] |
| **page** | **Integer** | 1-indexed page. Default 1. | [optional] |
| **size** | **Integer** | Rows per page. Default 50. | [optional] |
| **min_days** | **Integer** | Minimum days listed (for status&#x3D;unsold). Default 0. | [optional] |

### Return type

**GetAnalyticPerformanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_program

> <GetAnalyticProgramResponse> get_analytic_program(program, opts)

One program's report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.

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
program = 'wholesale' # String | 
opts = {
  from: Date.parse('2013-10-20'), # Date | First UTC day (YYYY-MM-DD), inclusive.
  to: Date.parse('2013-10-20'), # Date | Last UTC day (YYYY-MM-DD), inclusive. Default today.
  by: 'by_example' # String | Breakdown dimension, when the program offers one (worlds: showroom, property, event).
}

begin
  # One program's report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.
  result = api_instance.get_analytic_program(program, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_program: #{e}"
end
```

#### Using the get_analytic_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticProgramResponse>, Integer, Hash)> get_analytic_program_with_http_info(program, opts)

```ruby
begin
  # One program's report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.
  data, status_code, headers = api_instance.get_analytic_program_with_http_info(program, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticProgramResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_program_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program** | **String** |  |  |
| **from** | **Date** | First UTC day (YYYY-MM-DD), inclusive. | [optional] |
| **to** | **Date** | Last UTC day (YYYY-MM-DD), inclusive. Default today. | [optional] |
| **by** | **String** | Breakdown dimension, when the program offers one (worlds: showroom, property, event). | [optional] |

### Return type

**GetAnalyticProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_segment

> <GetAnalyticSegmentResponse> get_analytic_segment(opts)

Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.

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
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example', # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
  dim: 'category', # String | category = main category; subcategory = main > sub; brand; condition; size; source = where you acquired it; department; priceBand = ask in <$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand = days live at sale or now (<7, 7-30, 30-90, 90+).
  sort: 'label', # String | Default netSales.
  dir: 'asc', # String | Default desc.
  min_n: 56, # Integer | Minimum sample for a row to count as a winner or loser. Default 3.
  q: 'q_example' # String | Segment label contains.
}

begin
  # Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.
  result = api_instance.get_analytic_segment(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_segment: #{e}"
end
```

#### Using the get_analytic_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticSegmentResponse>, Integer, Hash)> get_analytic_segment_with_http_info(opts)

```ruby
begin
  # Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.
  data, status_code, headers = api_instance.get_analytic_segment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticSegmentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |
| **dim** | **String** | category &#x3D; main category; subcategory &#x3D; main &gt; sub; brand; condition; size; source &#x3D; where you acquired it; department; priceBand &#x3D; ask in &lt;$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand &#x3D; days live at sale or now (&lt;7, 7-30, 30-90, 90+). | [optional] |
| **sort** | **String** | Default netSales. | [optional] |
| **dir** | **String** | Default desc. | [optional] |
| **min_n** | **Integer** | Minimum sample for a row to count as a winner or loser. Default 3. | [optional] |
| **q** | **String** | Segment label contains. | [optional] |

### Return type

**GetAnalyticSegmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_segment_by_key

> <GetAnalyticSegmentByKeyResponse> get_analytic_segment_by_key(dim, key, opts)

One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.

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
dim = 'dim_example' # String | One of category, subcategory, brand, condition, size, source, department, priceBand, ageBand. category = main category; subcategory = main > sub; brand; condition; size; source = where you acquired it; department; priceBand = ask in <$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand = days live at sale or now (<7, 7-30, 30-90, 90+).
key = 'key_example' # String | The segment key from a segments row (URL-encoded). A key with no data in scope is a 404.
opts = {
  range: '7d', # String | Reporting window. Default 30d. custom needs from and to.
  from: 'from_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  to: 'to_example', # String | YYYY-MM-DD, inclusive, in tz. Only with range=custom.
  compare: 'prev', # String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo).
  cmp_from: 'cmp_from_example', # String | YYYY-MM-DD. Only with compare=custom.
  cmp_to: 'cmp_to_example', # String | YYYY-MM-DD. Only with compare=custom.
  labels: 'labels_example', # String | Comma-separated inventory labels (any of them).
  platforms: 'platforms_example', # String | Comma-separated platform ids.
  category: 'category_example', # String | Canonical main-category key.
  brand: 'brand_example', # String | Brand name.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400.
}

begin
  # One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.
  result = api_instance.get_analytic_segment_by_key(dim, key, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_segment_by_key: #{e}"
end
```

#### Using the get_analytic_segment_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticSegmentByKeyResponse>, Integer, Hash)> get_analytic_segment_by_key_with_http_info(dim, key, opts)

```ruby
begin
  # One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.
  data, status_code, headers = api_instance.get_analytic_segment_by_key_with_http_info(dim, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticSegmentByKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_segment_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dim** | **String** | One of category, subcategory, brand, condition, size, source, department, priceBand, ageBand. category &#x3D; main category; subcategory &#x3D; main &gt; sub; brand; condition; size; source &#x3D; where you acquired it; department; priceBand &#x3D; ask in &lt;$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand &#x3D; days live at sale or now (&lt;7, 7-30, 30-90, 90+). |  |
| **key** | **String** | The segment key from a segments row (URL-encoded). A key with no data in scope is a 404. |  |
| **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] |
| **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] |
| **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] |
| **cmp_from** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **cmp_to** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] |
| **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] |
| **platforms** | **String** | Comma-separated platform ids. | [optional] |
| **category** | **String** | Canonical main-category key. | [optional] |
| **brand** | **String** | Brand name. | [optional] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] |

### Return type

**GetAnalyticSegmentByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_summary

> <GetAnalyticSummaryResponse> get_analytic_summary(opts)

Headline KPIs for the last N days (the same numbers as the analytics overview).

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
  days: 56, # Integer | Calendar days back, today included. Larger values are clamped to 365.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC.
}

begin
  # Headline KPIs for the last N days (the same numbers as the analytics overview).
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
  # Headline KPIs for the last N days (the same numbers as the analytics overview).
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
| **days** | **Integer** | Calendar days back, today included. Larger values are clamped to 365. | [optional][default to 30] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] |

### Return type

**GetAnalyticSummaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytic_timesery

> <GetAnalyticTimeseryResponse> get_analytic_timesery(opts)

Sales and net sales over the last N days, zero-filled, one row per calendar day.

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
  days: 56, # Integer | Calendar days back, today included. Larger values are clamped to 365.
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC.
}

begin
  # Sales and net sales over the last N days, zero-filled, one row per calendar day.
  result = api_instance.get_analytic_timesery(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_timesery: #{e}"
end
```

#### Using the get_analytic_timesery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticTimeseryResponse>, Integer, Hash)> get_analytic_timesery_with_http_info(opts)

```ruby
begin
  # Sales and net sales over the last N days, zero-filled, one row per calendar day.
  data, status_code, headers = api_instance.get_analytic_timesery_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticTimeseryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytic_timesery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Calendar days back, today included. Larger values are clamped to 365. | [optional][default to 30] |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] |

### Return type

**GetAnalyticTimeseryResponse**

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

**GetAnalyticTodayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_insight_by_platform

> <ListInsightByPlatformResponse> list_insight_by_platform(opts)

Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.

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
  tz: 'tz_example' # String | IANA time zone for day boundaries. Default UTC.
}

begin
  # Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.
  result = api_instance.list_insight_by_platform(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->list_insight_by_platform: #{e}"
end
```

#### Using the list_insight_by_platform_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInsightByPlatformResponse>, Integer, Hash)> list_insight_by_platform_with_http_info(opts)

```ruby
begin
  # Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.
  data, status_code, headers = api_instance.list_insight_by_platform_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInsightByPlatformResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->list_insight_by_platform_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] |

### Return type

**ListInsightByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_analytic_experiment

> <AnalyticExperimentResponse> update_analytic_experiment(id)

Rename an experiment or change its hypothesis, notes or planned end.

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
id = 'id_example' # String | The experiment id (a uuid; any other id is a 404).

begin
  # Rename an experiment or change its hypothesis, notes or planned end.
  result = api_instance.update_analytic_experiment(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->update_analytic_experiment: #{e}"
end
```

#### Using the update_analytic_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticExperimentResponse>, Integer, Hash)> update_analytic_experiment_with_http_info(id)

```ruby
begin
  # Rename an experiment or change its hypothesis, notes or planned end.
  data, status_code, headers = api_instance.update_analytic_experiment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AnalyticsApi->update_analytic_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment id (a uuid; any other id is a 404). |  |

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

