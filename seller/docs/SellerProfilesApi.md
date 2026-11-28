# Crossly::SellerProfilesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_profile_insight**](SellerProfilesApi.md#get_profile_insight) | **GET** /v1/profile/insights/{timeframe} | Your seller profile&#39;s views, share actions and link previews (Discord, X, iMessage…) per day. |
| [**get_seller_share_target**](SellerProfilesApi.md#get_seller_share_target) | **GET** /v1/sellers/{handle}/share-targets | What a public seller profile can be shared as: its shown stats and earned milestones, each with its share page and card image. |


## get_profile_insight

> <GetProfileInsightResponse> get_profile_insight(timeframe)

Your seller profile's views, share actions and link previews (Discord, X, iMessage…) per day.

Counts only: no viewer, IP or referrer is stored. Bots and your own visits are not views; a link preview is counted by the app that fetched the card. `topRefs` names the profile (\"\"), a stat page (`stat:<key>:<timeframe>`) or a milestone page (`milestone:<key>`).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SellerProfilesApi.new
timeframe = '7d' # String | 

begin
  # Your seller profile's views, share actions and link previews (Discord, X, iMessage…) per day.
  result = api_instance.get_profile_insight(timeframe)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SellerProfilesApi->get_profile_insight: #{e}"
end
```

#### Using the get_profile_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileInsightResponse>, Integer, Hash)> get_profile_insight_with_http_info(timeframe)

```ruby
begin
  # Your seller profile's views, share actions and link previews (Discord, X, iMessage…) per day.
  data, status_code, headers = api_instance.get_profile_insight_with_http_info(timeframe)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileInsightResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SellerProfilesApi->get_profile_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeframe** | **String** |  |  |

### Return type

**GetProfileInsightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_seller_share_target

> <GetSellerShareTargetResponse> get_seller_share_target(handle)

What a public seller profile can be shared as: its shown stats and earned milestones, each with its share page and card image.

Only what the seller shows publicly. `text` is the public display text (\"$100k+\"); a rounded or tier stat never carries its real number. `verified` is true only when the number comes from sales Crossly recorded through connected marketplaces. A private or unknown profile is a 404.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::SellerProfilesApi.new
handle = 'handle_example' # String | 

begin
  # What a public seller profile can be shared as: its shown stats and earned milestones, each with its share page and card image.
  result = api_instance.get_seller_share_target(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling SellerProfilesApi->get_seller_share_target: #{e}"
end
```

#### Using the get_seller_share_target_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSellerShareTargetResponse>, Integer, Hash)> get_seller_share_target_with_http_info(handle)

```ruby
begin
  # What a public seller profile can be shared as: its shown stats and earned milestones, each with its share page and card image.
  data, status_code, headers = api_instance.get_seller_share_target_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSellerShareTargetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling SellerProfilesApi->get_seller_share_target_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetSellerShareTargetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

