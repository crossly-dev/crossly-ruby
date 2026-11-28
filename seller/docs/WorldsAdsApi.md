# Crossly::WorldsAdsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_world_experience_ad**](WorldsAdsApi.md#get_world_experience_ad) | **GET** /v1/worlds/experiences/{experienceId}/ads | The ads for a game&#39;s in-world ad surfaces (parts tagged CrosslyAdSurface), for the token&#39;s owner: Sponsored Listings labelled \&quot;Ad\&quot;, served only to signed-in adults where the game&#39;s creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }. |
| [**get_world_experience_ad_report**](WorldsAdsApi.md#get_world_experience_ad_report) | **GET** /v1/worlds/experiences/{experienceId}/ads/report | In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day. |
| [**get_world_experience_ad_setting**](WorldsAdsApi.md#get_world_experience_ad_setting) | **GET** /v1/worlds/experiences/{experienceId}/ad-settings | Whether this game shows in-game ads (opt-in, default off) and the creator&#39;s share of Crossly&#39;s ad revenue in force. |
| [**update_world_experience_ad_setting**](WorldsAdsApi.md#update_world_experience_ad_setting) | **PUT** /v1/worlds/experiences/{experienceId}/ad-settings | Turn in-game ads on or off for this game. Ads fill the game&#39;s ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one. |


## get_world_experience_ad

> <GetWorldExperienceAdResponse> get_world_experience_ad(experience_id, opts)

The ads for a game's in-world ad surfaces (parts tagged CrosslyAdSurface), for the token's owner: Sponsored Listings labelled \"Ad\", served only to signed-in adults where the game's creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsAdsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  slots: 8.14 # Float | 
}

begin
  # The ads for a game's in-world ad surfaces (parts tagged CrosslyAdSurface), for the token's owner: Sponsored Listings labelled \"Ad\", served only to signed-in adults where the game's creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.
  result = api_instance.get_world_experience_ad(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad: #{e}"
end
```

#### Using the get_world_experience_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAdResponse>, Integer, Hash)> get_world_experience_ad_with_http_info(experience_id, opts)

```ruby
begin
  # The ads for a game's in-world ad surfaces (parts tagged CrosslyAdSurface), for the token's owner: Sponsored Listings labelled \"Ad\", served only to signed-in adults where the game's creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.
  data, status_code, headers = api_instance.get_world_experience_ad_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **slots** | **Float** |  | [optional] |

### Return type

**GetWorldExperienceAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_ad_report

> <GetWorldExperienceAdReportResponse> get_world_experience_ad_report(experience_id, opts)

In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsAdsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  days: 8.14 # Float | 
}

begin
  # In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.
  result = api_instance.get_world_experience_ad_report(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad_report: #{e}"
end
```

#### Using the get_world_experience_ad_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAdReportResponse>, Integer, Hash)> get_world_experience_ad_report_with_http_info(experience_id, opts)

```ruby
begin
  # In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.
  data, status_code, headers = api_instance.get_world_experience_ad_report_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAdReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **days** | **Float** |  | [optional] |

### Return type

**GetWorldExperienceAdReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_ad_setting

> <GetWorldExperienceAdSettingResponse> get_world_experience_ad_setting(experience_id)

Whether this game shows in-game ads (opt-in, default off) and the creator's share of Crossly's ad revenue in force.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsAdsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Whether this game shows in-game ads (opt-in, default off) and the creator's share of Crossly's ad revenue in force.
  result = api_instance.get_world_experience_ad_setting(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad_setting: #{e}"
end
```

#### Using the get_world_experience_ad_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAdSettingResponse>, Integer, Hash)> get_world_experience_ad_setting_with_http_info(experience_id)

```ruby
begin
  # Whether this game shows in-game ads (opt-in, default off) and the creator's share of Crossly's ad revenue in force.
  data, status_code, headers = api_instance.get_world_experience_ad_setting_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAdSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->get_world_experience_ad_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceAdSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_ad_setting

> <GetWorldExperienceAdSettingResponse> update_world_experience_ad_setting(experience_id, opts)

Turn in-game ads on or off for this game. Ads fill the game's ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsAdsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  enabled_request: Crossly::EnabledRequest.new({enabled: false}) # EnabledRequest | 
}

begin
  # Turn in-game ads on or off for this game. Ads fill the game's ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.
  result = api_instance.update_world_experience_ad_setting(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->update_world_experience_ad_setting: #{e}"
end
```

#### Using the update_world_experience_ad_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAdSettingResponse>, Integer, Hash)> update_world_experience_ad_setting_with_http_info(experience_id, opts)

```ruby
begin
  # Turn in-game ads on or off for this game. Ads fill the game's ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.
  data, status_code, headers = api_instance.update_world_experience_ad_setting_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAdSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsAdsApi->update_world_experience_ad_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **enabled_request** | **EnabledRequest** |  | [optional] |

### Return type

**GetWorldExperienceAdSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

