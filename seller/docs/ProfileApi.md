# Crossly::ProfileApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_profile_milestone_celebrate**](ProfileApi.md#create_profile_milestone_celebrate) | **POST** /v1/profile/milestones/{key}/celebrate | Celebrate an earned milestone with a storefront code: percentOff (default 10) off, ending hours (default 48) from now, with a storefront banner (bannerText, default like \&quot;We just hit 1,000 sales\&quot;). One code per milestone: a second call returns the same code (200, existing: true). A milestone you have not earned is a 404. |
| [**create_profile_publish**](ProfileApi.md#create_profile_publish) | **POST** /v1/profile/publish | Publish the draft: crossly.net/seller/&lt;handle&gt;, its share cards and link previews switch to it, and a version is kept (label optional, up to 80 characters). |
| [**create_profile_share_card**](ProfileApi.md#create_profile_share_card) | **POST** /v1/profile/share-cards | Make a share card for your profile, one stat (ref.key + ref.timeframe) or one earned milestone (ref.key). Returns pageUrl (the link to post: Discord, X and iMessage unfurl it with the card), imageUrl (the 1200x630 PNG) and discordText (a ready line ending in the link). A stat you do not show, or a milestone you have not earned, is a 404. settings overrides the card design (template, background, accent…). |
| [**get_profile**](ProfileApi.md#get_profile) | **GET** /v1/profile | Your seller profile: the @handle, the PUBLISHED document (what crossly.net/seller/&lt;handle&gt; shows), the DRAFT the editor is working on, when it was last published and whether the draft has unpublished changes. A profile never edited reads as the default profile built from your account. |
| [**get_seller_profile**](ProfileApi.md#get_seller_profile) | **GET** /v1/sellers/{handle}/profile | Any seller&#39;s public profile: the person, the published document, resolved stats (a rounded or tier stat never carries its exact value), shown marketplaces, stores, milestones and the share card URLs. 404 when the handle does not exist or the profile is private. |
| [**list_profile_milestones**](ProfileApi.md#list_profile_milestones) | **GET** /v1/profile/milestones | Milestones you earned (first sale, $100k verified sales, 1-year streak, 10 countries…) with when, and whether each is verified. Earned only from verified data; each has its own share page and card. |
| [**list_profile_sources**](ProfileApi.md#list_profile_sources) | **GET** /v1/profile/sources | The accounts, stores and marketplace connections your profile may show: your own account, plus every team you belong to whose owner granted you profile:showcase. Toggle them in document.sources. |
| [**list_profile_stats**](ProfileApi.md#list_profile_stats) | **GET** /v1/profile/stats | Profile stats in the OWNER view: exact values and coverage, whatever display mode the public page uses. keys is a comma list (gmv, items_sold, orders, avg_sale_price, best_sale, sell_through_rate, median_days_to_sale, rating, vault_value, …); timeframe is a rolling token (7d 30d 90d 6mo 12mo ytd all) or a custom range cYYYYMMDD-YYYYMMDD in your time zone. Money is USD cents, rates bps, durations days. verified is true only for numbers backed by marketplace-reported or Crossly-checkout sales. |
| [**update_me**](ProfileApi.md#update_me) | **PATCH** /v1/me | Update the authenticated user&#39;s profile (display name, etc). |
| [**update_profile_document**](ProfileApi.md#update_profile_document) | **PUT** /v1/profile/document | Replace your profile DRAFT with a whole ProfileDocument (theme, hero, ordered sections, socials, sources, share card, privacy). Nothing public changes until you publish. Read the current draft from GET /v1/profile, change it, and send it back. A 400 lists every invalid field. |


## create_profile_milestone_celebrate

> <CreateProfileMilestoneCelebrateResponse> create_profile_milestone_celebrate(key, create_profile_milestone_celebrate_request)

Celebrate an earned milestone with a storefront code: percentOff (default 10) off, ending hours (default 48) from now, with a storefront banner (bannerText, default like \"We just hit 1,000 sales\"). One code per milestone: a second call returns the same code (200, existing: true). A milestone you have not earned is a 404.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
key = 'key_example' # String | 
create_profile_milestone_celebrate_request = Crossly::CreateProfileMilestoneCelebrateRequest.new # CreateProfileMilestoneCelebrateRequest | 

begin
  # Celebrate an earned milestone with a storefront code: percentOff (default 10) off, ending hours (default 48) from now, with a storefront banner (bannerText, default like \"We just hit 1,000 sales\"). One code per milestone: a second call returns the same code (200, existing: true). A milestone you have not earned is a 404.
  result = api_instance.create_profile_milestone_celebrate(key, create_profile_milestone_celebrate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_milestone_celebrate: #{e}"
end
```

#### Using the create_profile_milestone_celebrate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProfileMilestoneCelebrateResponse>, Integer, Hash)> create_profile_milestone_celebrate_with_http_info(key, create_profile_milestone_celebrate_request)

```ruby
begin
  # Celebrate an earned milestone with a storefront code: percentOff (default 10) off, ending hours (default 48) from now, with a storefront banner (bannerText, default like \"We just hit 1,000 sales\"). One code per milestone: a second call returns the same code (200, existing: true). A milestone you have not earned is a 404.
  data, status_code, headers = api_instance.create_profile_milestone_celebrate_with_http_info(key, create_profile_milestone_celebrate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProfileMilestoneCelebrateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_milestone_celebrate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **create_profile_milestone_celebrate_request** | **CreateProfileMilestoneCelebrateRequest** |  |  |

### Return type

**CreateProfileMilestoneCelebrateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_profile_publish

> <CreateProfilePublishResponse> create_profile_publish(create_profile_publish_request)

Publish the draft: crossly.net/seller/<handle>, its share cards and link previews switch to it, and a version is kept (label optional, up to 80 characters).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
create_profile_publish_request = Crossly::CreateProfilePublishRequest.new # CreateProfilePublishRequest | 

begin
  # Publish the draft: crossly.net/seller/<handle>, its share cards and link previews switch to it, and a version is kept (label optional, up to 80 characters).
  result = api_instance.create_profile_publish(create_profile_publish_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_publish: #{e}"
end
```

#### Using the create_profile_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProfilePublishResponse>, Integer, Hash)> create_profile_publish_with_http_info(create_profile_publish_request)

```ruby
begin
  # Publish the draft: crossly.net/seller/<handle>, its share cards and link previews switch to it, and a version is kept (label optional, up to 80 characters).
  data, status_code, headers = api_instance.create_profile_publish_with_http_info(create_profile_publish_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProfilePublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_profile_publish_request** | **CreateProfilePublishRequest** |  |  |

### Return type

**CreateProfilePublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_profile_share_card

> <CreateProfileShareCardResponse> create_profile_share_card(create_profile_share_card_request)

Make a share card for your profile, one stat (ref.key + ref.timeframe) or one earned milestone (ref.key). Returns pageUrl (the link to post: Discord, X and iMessage unfurl it with the card), imageUrl (the 1200x630 PNG) and discordText (a ready line ending in the link). A stat you do not show, or a milestone you have not earned, is a 404. settings overrides the card design (template, background, accent…).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
create_profile_share_card_request = Crossly::CreateProfileShareCardRequest.new({kind: 'profile'}) # CreateProfileShareCardRequest | 

begin
  # Make a share card for your profile, one stat (ref.key + ref.timeframe) or one earned milestone (ref.key). Returns pageUrl (the link to post: Discord, X and iMessage unfurl it with the card), imageUrl (the 1200x630 PNG) and discordText (a ready line ending in the link). A stat you do not show, or a milestone you have not earned, is a 404. settings overrides the card design (template, background, accent…).
  result = api_instance.create_profile_share_card(create_profile_share_card_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_share_card: #{e}"
end
```

#### Using the create_profile_share_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProfileShareCardResponse>, Integer, Hash)> create_profile_share_card_with_http_info(create_profile_share_card_request)

```ruby
begin
  # Make a share card for your profile, one stat (ref.key + ref.timeframe) or one earned milestone (ref.key). Returns pageUrl (the link to post: Discord, X and iMessage unfurl it with the card), imageUrl (the 1200x630 PNG) and discordText (a ready line ending in the link). A stat you do not show, or a milestone you have not earned, is a 404. settings overrides the card design (template, background, accent…).
  data, status_code, headers = api_instance.create_profile_share_card_with_http_info(create_profile_share_card_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProfileShareCardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->create_profile_share_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_profile_share_card_request** | **CreateProfileShareCardRequest** |  |  |

### Return type

**CreateProfileShareCardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_profile

> <GetProfileResponse> get_profile

Your seller profile: the @handle, the PUBLISHED document (what crossly.net/seller/<handle> shows), the DRAFT the editor is working on, when it was last published and whether the draft has unpublished changes. A profile never edited reads as the default profile built from your account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new

begin
  # Your seller profile: the @handle, the PUBLISHED document (what crossly.net/seller/<handle> shows), the DRAFT the editor is working on, when it was last published and whether the draft has unpublished changes. A profile never edited reads as the default profile built from your account.
  result = api_instance.get_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileResponse>, Integer, Hash)> get_profile_with_http_info

```ruby
begin
  # Your seller profile: the @handle, the PUBLISHED document (what crossly.net/seller/<handle> shows), the DRAFT the editor is working on, when it was last published and whether the draft has unpublished changes. A profile never edited reads as the default profile built from your account.
  data, status_code, headers = api_instance.get_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_seller_profile

> <GetSellerProfileResponse> get_seller_profile(handle)

Any seller's public profile: the person, the published document, resolved stats (a rounded or tier stat never carries its exact value), shown marketplaces, stores, milestones and the share card URLs. 404 when the handle does not exist or the profile is private.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
handle = 'handle_example' # String | 

begin
  # Any seller's public profile: the person, the published document, resolved stats (a rounded or tier stat never carries its exact value), shown marketplaces, stores, milestones and the share card URLs. 404 when the handle does not exist or the profile is private.
  result = api_instance.get_seller_profile(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->get_seller_profile: #{e}"
end
```

#### Using the get_seller_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSellerProfileResponse>, Integer, Hash)> get_seller_profile_with_http_info(handle)

```ruby
begin
  # Any seller's public profile: the person, the published document, resolved stats (a rounded or tier stat never carries its exact value), shown marketplaces, stores, milestones and the share card URLs. 404 when the handle does not exist or the profile is private.
  data, status_code, headers = api_instance.get_seller_profile_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSellerProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->get_seller_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetSellerProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_milestones

> <ListProfileMilestonesResponse> list_profile_milestones

Milestones you earned (first sale, $100k verified sales, 1-year streak, 10 countries…) with when, and whether each is verified. Earned only from verified data; each has its own share page and card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new

begin
  # Milestones you earned (first sale, $100k verified sales, 1-year streak, 10 countries…) with when, and whether each is verified. Earned only from verified data; each has its own share page and card.
  result = api_instance.list_profile_milestones
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_milestones: #{e}"
end
```

#### Using the list_profile_milestones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProfileMilestonesResponse>, Integer, Hash)> list_profile_milestones_with_http_info

```ruby
begin
  # Milestones you earned (first sale, $100k verified sales, 1-year streak, 10 countries…) with when, and whether each is verified. Earned only from verified data; each has its own share page and card.
  data, status_code, headers = api_instance.list_profile_milestones_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProfileMilestonesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_milestones_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListProfileMilestonesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_sources

> <ListProfileSourcesResponse> list_profile_sources

The accounts, stores and marketplace connections your profile may show: your own account, plus every team you belong to whose owner granted you profile:showcase. Toggle them in document.sources.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new

begin
  # The accounts, stores and marketplace connections your profile may show: your own account, plus every team you belong to whose owner granted you profile:showcase. Toggle them in document.sources.
  result = api_instance.list_profile_sources
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_sources: #{e}"
end
```

#### Using the list_profile_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProfileSourcesResponse>, Integer, Hash)> list_profile_sources_with_http_info

```ruby
begin
  # The accounts, stores and marketplace connections your profile may show: your own account, plus every team you belong to whose owner granted you profile:showcase. Toggle them in document.sources.
  data, status_code, headers = api_instance.list_profile_sources_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProfileSourcesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_sources_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListProfileSourcesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_stats

> <ListProfileStatsResponse> list_profile_stats(keys, opts)

Profile stats in the OWNER view: exact values and coverage, whatever display mode the public page uses. keys is a comma list (gmv, items_sold, orders, avg_sale_price, best_sale, sell_through_rate, median_days_to_sale, rating, vault_value, …); timeframe is a rolling token (7d 30d 90d 6mo 12mo ytd all) or a custom range cYYYYMMDD-YYYYMMDD in your time zone. Money is USD cents, rates bps, durations days. verified is true only for numbers backed by marketplace-reported or Crossly-checkout sales.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
keys = 'keys_example' # String | Comma-separated stat keys, at most 30.
opts = {
  timeframe: 'timeframe_example', # String | 
  display: 'exact', # String | 
  basis: 'verified' # String | 
}

begin
  # Profile stats in the OWNER view: exact values and coverage, whatever display mode the public page uses. keys is a comma list (gmv, items_sold, orders, avg_sale_price, best_sale, sell_through_rate, median_days_to_sale, rating, vault_value, …); timeframe is a rolling token (7d 30d 90d 6mo 12mo ytd all) or a custom range cYYYYMMDD-YYYYMMDD in your time zone. Money is USD cents, rates bps, durations days. verified is true only for numbers backed by marketplace-reported or Crossly-checkout sales.
  result = api_instance.list_profile_stats(keys, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_stats: #{e}"
end
```

#### Using the list_profile_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProfileStatsResponse>, Integer, Hash)> list_profile_stats_with_http_info(keys, opts)

```ruby
begin
  # Profile stats in the OWNER view: exact values and coverage, whatever display mode the public page uses. keys is a comma list (gmv, items_sold, orders, avg_sale_price, best_sale, sell_through_rate, median_days_to_sale, rating, vault_value, …); timeframe is a rolling token (7d 30d 90d 6mo 12mo ytd all) or a custom range cYYYYMMDD-YYYYMMDD in your time zone. Money is USD cents, rates bps, durations days. verified is true only for numbers backed by marketplace-reported or Crossly-checkout sales.
  data, status_code, headers = api_instance.list_profile_stats_with_http_info(keys, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProfileStatsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->list_profile_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | **String** | Comma-separated stat keys, at most 30. |  |
| **timeframe** | **String** |  | [optional][default to &#39;all&#39;] |
| **display** | **String** |  | [optional] |
| **basis** | **String** |  | [optional] |

### Return type

**ListProfileStatsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_me

> <OkResponse> update_me(update_me_request)

Update the authenticated user's profile (display name, etc).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
update_me_request = Crossly::UpdateMeRequest.new # UpdateMeRequest | 

begin
  # Update the authenticated user's profile (display name, etc).
  result = api_instance.update_me(update_me_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_me: #{e}"
end
```

#### Using the update_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> update_me_with_http_info(update_me_request)

```ruby
begin
  # Update the authenticated user's profile (display name, etc).
  data, status_code, headers = api_instance.update_me_with_http_info(update_me_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_me_request** | **UpdateMeRequest** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_profile_document

> <UpdateProfileDocumentResponse> update_profile_document(update_profile_document_request)

Replace your profile DRAFT with a whole ProfileDocument (theme, hero, ordered sections, socials, sources, share card, privacy). Nothing public changes until you publish. Read the current draft from GET /v1/profile, change it, and send it back. A 400 lists every invalid field.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProfileApi.new
update_profile_document_request = Crossly::UpdateProfileDocumentRequest.new({document: { key: 3.56}}) # UpdateProfileDocumentRequest | 

begin
  # Replace your profile DRAFT with a whole ProfileDocument (theme, hero, ordered sections, socials, sources, share card, privacy). Nothing public changes until you publish. Read the current draft from GET /v1/profile, change it, and send it back. A 400 lists every invalid field.
  result = api_instance.update_profile_document(update_profile_document_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_profile_document: #{e}"
end
```

#### Using the update_profile_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProfileDocumentResponse>, Integer, Hash)> update_profile_document_with_http_info(update_profile_document_request)

```ruby
begin
  # Replace your profile DRAFT with a whole ProfileDocument (theme, hero, ordered sections, socials, sources, share card, privacy). Nothing public changes until you publish. Read the current draft from GET /v1/profile, change it, and send it back. A 400 lists every invalid field.
  data, status_code, headers = api_instance.update_profile_document_with_http_info(update_profile_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProfileDocumentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProfileApi->update_profile_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_profile_document_request** | **UpdateProfileDocumentRequest** |  |  |

### Return type

**UpdateProfileDocumentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

