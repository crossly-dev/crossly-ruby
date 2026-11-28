# Crossly::AdsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ad_offsite_campaign**](AdsApi.md#create_ad_offsite_campaign) | **POST** /v1/ads/offsite/campaigns | Launch an offsite campaign for an item. |
| [**create_ad_offsite_resume**](AdsApi.md#create_ad_offsite_resume) | **POST** /v1/ads/offsite/resume | Clear an auto-pause and resume offsite spend. |
| [**create_listing_ad_bulk_add**](AdsApi.md#create_listing_ad_bulk_add) | **POST** /v1/listing-ads/bulk-add | Add listings to a campaign by master listing id: each listing&#39;s live row on &#x60;platform&#x60; joins campaignId (a Crossly campaign uuid, or the marketplace&#39;s campaign id). A listing not live there is its own failed result. |
| [**create_listing_ad_campaign**](AdsApi.md#create_listing_ad_campaign) | **POST** /v1/listing-ads/{platform}/campaigns | Create a campaign on the marketplace: program (promoted_listing_rate &#x3D; eBay General, a % of the sale; cpc_campaign &#x3D; eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported. |
| [**create_listing_ad_campaign_listing**](AdsApi.md#create_listing_ad_campaign_listing) | **POST** /v1/listing-ads/{platform}/campaigns/{campaignId}/listings | Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing. |
| [**create_listing_ad_campaign_listing_remove**](AdsApi.md#create_listing_ad_campaign_listing_remove) | **POST** /v1/listing-ads/{platform}/campaigns/{campaignId}/listings/remove | Stop promoting listings in a marketplace campaign. One result per listing. |
| [**create_sponsored_ad_billing_topup_link**](AdsApi.md#create_sponsored_ad_billing_topup_link) | **POST** /v1/sponsored-ads/billing/topup-link | A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry. |
| [**create_sponsored_ad_boost_remove**](AdsApi.md#create_sponsored_ad_boost_remove) | **POST** /v1/sponsored-ads/boosts/remove | Stop boosting listings in bulk. |
| [**create_sponsored_ad_campaign**](AdsApi.md#create_sponsored_ad_campaign) | **POST** /v1/sponsored-ads/campaigns | Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \&quot;auto\&quot;), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \&quot;wholesale_catalog\&quot; + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget. |
| [**create_sponsored_ad_campaign_duplicate**](AdsApi.md#create_sponsored_ad_campaign_duplicate) | **POST** /v1/sponsored-ads/campaigns/{id}/duplicate | Copy a campaign (settings, listings, keywords) as a new draft. |
| [**create_sponsored_ad_campaign_status**](AdsApi.md#create_sponsored_ad_campaign_status) | **POST** /v1/sponsored-ads/campaigns/{id}/status | Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up. |
| [**get_ad_offsite**](AdsApi.md#get_ad_offsite) | **GET** /v1/ads/offsite | Your offsite-ads opt-in and its terms. |
| [**get_ad_offsite_eligibility**](AdsApi.md#get_ad_offsite_eligibility) | **GET** /v1/ads/offsite/eligibility | Whether an item can run offsite, and why not. |
| [**get_ad_offsite_report**](AdsApi.md#get_ad_offsite_report) | **GET** /v1/ads/offsite/report | What your offsite budget bought — including the misses. |
| [**get_listing_ad_listing**](AdsApi.md#get_listing_ad_listing) | **GET** /v1/listing-ads/listings/{listingId} | Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync. |
| [**get_sponsored_ad_billing**](AdsApi.md#get_sponsored_ad_billing) | **GET** /v1/sponsored-ads/billing | What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh&#x3D;true re-reads the balance. |
| [**get_sponsored_ad_billing_statement**](AdsApi.md#get_sponsored_ad_billing_statement) | **GET** /v1/sponsored-ads/billing/statements/{month} | One month&#39;s ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees. |
| [**get_sponsored_ad_billing_statement_pdf**](AdsApi.md#get_sponsored_ad_billing_statement_pdf) | **GET** /v1/sponsored-ads/billing/statements/{month}/pdf | One month&#39;s ads statement as a PDF. |
| [**get_sponsored_ad_billing_topup_receipt**](AdsApi.md#get_sponsored_ad_billing_topup_receipt) | **GET** /v1/sponsored-ads/billing/topups/{id}/receipt | One ad balance top-up&#39;s receipt as a PDF (each top-up in the billing history carries its id and receipt number). |
| [**get_sponsored_ad_campaign**](AdsApi.md#get_sponsored_ad_campaign) | **GET** /v1/sponsored-ads/campaigns/{id} | One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has &#x60;catalogs&#x60;: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS. |
| [**get_sponsored_ad_fund**](AdsApi.md#get_sponsored_ad_fund) | **GET** /v1/sponsored-ads/funds | What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh&#x3D;true re-reads CBX. |
| [**get_sponsored_ad_report**](AdsApi.md#get_sponsored_ad_report) | **GET** /v1/sponsored-ads/report | Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and &#x60;catalogs&#x60;, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day. |
| [**get_sponsored_ad_setting**](AdsApi.md#get_sponsored_ad_setting) | **GET** /v1/sponsored-ads/settings | Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup. |
| [**list_listing_ad_campaigns**](AdsApi.md#list_listing_ad_campaigns) | **GET** /v1/listing-ads/{platform}/campaigns | Your ad campaigns on one marketplace (cached up to 15 minutes; refresh&#x3D;true asks the marketplace now). |
| [**list_listing_ad_platforms**](AdsApi.md#list_listing_ad_platforms) | **GET** /v1/listing-ads/platforms | The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there. |
| [**list_sponsored_ad_billing_history**](AdsApi.md#list_sponsored_ad_billing_history) | **GET** /v1/sponsored-ads/billing/history | Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100. |
| [**list_sponsored_ad_billing_statements**](AdsApi.md#list_sponsored_ad_billing_statements) | **GET** /v1/sponsored-ads/billing/statements | Months (YYYY-MM) with any ad billing activity, newest first. |
| [**list_sponsored_ad_boosts**](AdsApi.md#list_sponsored_ad_boosts) | **GET** /v1/sponsored-ads/boosts | Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly. |
| [**list_sponsored_ad_campaigns**](AdsApi.md#list_sponsored_ad_campaigns) | **GET** /v1/sponsored-ads/campaigns | Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days). |
| [**list_sponsored_ad_listings**](AdsApi.md#list_sponsored_ad_listings) | **GET** /v1/sponsored-ads/listings | Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid. |
| [**update_ad_offsite**](AdsApi.md#update_ad_offsite) | **PUT** /v1/ads/offsite | Turn offsite ads on or off. Yours alone to set. |
| [**update_listing_ad_campaign**](AdsApi.md#update_listing_ad_campaign) | **PATCH** /v1/listing-ads/{platform}/campaigns/{campaignId} | Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended. |
| [**update_listing_ad_listing_rate**](AdsApi.md#update_listing_ad_listing_rate) | **PUT** /v1/listing-ads/{platform}/listings/{platformListingId}/rate | Change one promoted listing&#39;s ad rate (percent of the sale) in the campaign it is in. |
| [**update_sponsored_ad_billing_auto_topup**](AdsApi.md#update_sponsored_ad_billing_auto_topup) | **PUT** /v1/sponsored-ads/billing/auto-topup | Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it). |
| [**update_sponsored_ad_boost**](AdsApi.md#update_sponsored_ad_boost) | **PUT** /v1/sponsored-ads/boosts | Boost listings in bulk (platformListingIds, upliftBps 100–2000 &#x3D; 1–20%), or change their rate. Your own live Crossly listings only. |
| [**update_sponsored_ad_campaign**](AdsApi.md#update_sponsored_ad_campaign) | **PATCH** /v1/sponsored-ads/campaigns/{id} | Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it. |
| [**update_sponsored_ad_setting**](AdsApi.md#update_sponsored_ad_setting) | **PATCH** /v1/sponsored-ads/settings | Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null &#x3D; no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only). |


## create_ad_offsite_campaign

> <CreateAdOffsiteCampaignResponse> create_ad_offsite_campaign(create_ad_offsite_campaign_request)

Launch an offsite campaign for an item.

Creative is built from the structured fields you pass — title, condition as you recorded it, price, image. We generate no prose and invent no claims about condition or authenticity: an ad saying \"mint\" or \"authenticated\" when your listing says neither is a misrepresentation we authored and YOU would take the dispute for. Refuses with 403 when no ad network is wired, rather than returning a campaign that does not exist — a campaign row marked live with nothing behind it would read as spending your money when it is not.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
create_ad_offsite_campaign_request = Crossly::CreateAdOffsiteCampaignRequest.new({network: 'google', category: 'category_example', title: 'title_example', price_cents: 3.56, landing_url: 'landing_url_example', daily_budget_cents: 3.56}) # CreateAdOffsiteCampaignRequest | 

begin
  # Launch an offsite campaign for an item.
  result = api_instance.create_ad_offsite_campaign(create_ad_offsite_campaign_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_ad_offsite_campaign: #{e}"
end
```

#### Using the create_ad_offsite_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdOffsiteCampaignResponse>, Integer, Hash)> create_ad_offsite_campaign_with_http_info(create_ad_offsite_campaign_request)

```ruby
begin
  # Launch an offsite campaign for an item.
  data, status_code, headers = api_instance.create_ad_offsite_campaign_with_http_info(create_ad_offsite_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdOffsiteCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_ad_offsite_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_offsite_campaign_request** | **CreateAdOffsiteCampaignRequest** |  |  |

### Return type

**CreateAdOffsiteCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_offsite_resume

> <CreateAdOffsiteResumeResponse> create_ad_offsite_resume

Clear an auto-pause and resume offsite spend.

Returns 409 when you are not actually paused. The pause reason is worth reading first — resuming without changing anything will usually just trip the floor again over the next window.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Clear an auto-pause and resume offsite spend.
  result = api_instance.create_ad_offsite_resume
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_ad_offsite_resume: #{e}"
end
```

#### Using the create_ad_offsite_resume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdOffsiteResumeResponse>, Integer, Hash)> create_ad_offsite_resume_with_http_info

```ruby
begin
  # Clear an auto-pause and resume offsite spend.
  data, status_code, headers = api_instance.create_ad_offsite_resume_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdOffsiteResumeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_ad_offsite_resume_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateAdOffsiteResumeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_ad_bulk_add

> <CreateListingAdBulkAddResponse> create_listing_ad_bulk_add(create_listing_ad_bulk_add_request)

Add listings to a campaign by master listing id: each listing's live row on `platform` joins campaignId (a Crossly campaign uuid, or the marketplace's campaign id). A listing not live there is its own failed result.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
create_listing_ad_bulk_add_request = Crossly::CreateListingAdBulkAddRequest.new({platform: 'platform_example', campaign_id: 'campaign_id_example', listing_ids: ['listing_ids_example']}) # CreateListingAdBulkAddRequest | 

begin
  # Add listings to a campaign by master listing id: each listing's live row on `platform` joins campaignId (a Crossly campaign uuid, or the marketplace's campaign id). A listing not live there is its own failed result.
  result = api_instance.create_listing_ad_bulk_add(create_listing_ad_bulk_add_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_bulk_add: #{e}"
end
```

#### Using the create_listing_ad_bulk_add_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAdBulkAddResponse>, Integer, Hash)> create_listing_ad_bulk_add_with_http_info(create_listing_ad_bulk_add_request)

```ruby
begin
  # Add listings to a campaign by master listing id: each listing's live row on `platform` joins campaignId (a Crossly campaign uuid, or the marketplace's campaign id). A listing not live there is its own failed result.
  data, status_code, headers = api_instance.create_listing_ad_bulk_add_with_http_info(create_listing_ad_bulk_add_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAdBulkAddResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_bulk_add_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_listing_ad_bulk_add_request** | **CreateListingAdBulkAddRequest** |  |  |

### Return type

**CreateListingAdBulkAddResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_listing_ad_campaign

> <CreateListingAdCampaignResponse> create_listing_ad_campaign(platform, create_listing_ad_campaign_request)

Create a campaign on the marketplace: program (promoted_listing_rate = eBay General, a % of the sale; cpc_campaign = eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
create_listing_ad_campaign_request = Crossly::CreateListingAdCampaignRequest.new({program: 'promoted_listing_rate', name: 'name_example'}) # CreateListingAdCampaignRequest | 

begin
  # Create a campaign on the marketplace: program (promoted_listing_rate = eBay General, a % of the sale; cpc_campaign = eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.
  result = api_instance.create_listing_ad_campaign(platform, create_listing_ad_campaign_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign: #{e}"
end
```

#### Using the create_listing_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAdCampaignResponse>, Integer, Hash)> create_listing_ad_campaign_with_http_info(platform, create_listing_ad_campaign_request)

```ruby
begin
  # Create a campaign on the marketplace: program (promoted_listing_rate = eBay General, a % of the sale; cpc_campaign = eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.
  data, status_code, headers = api_instance.create_listing_ad_campaign_with_http_info(platform, create_listing_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **create_listing_ad_campaign_request** | **CreateListingAdCampaignRequest** |  |  |

### Return type

**CreateListingAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_listing_ad_campaign_listing

> <CreateListingAdCampaignListingResponse> create_listing_ad_campaign_listing(platform, campaign_id, create_listing_ad_campaign_listing_request)

Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
campaign_id = 'campaign_id_example' # String | 
create_listing_ad_campaign_listing_request = Crossly::CreateListingAdCampaignListingRequest.new({platform_listing_ids: ['platform_listing_ids_example']}) # CreateListingAdCampaignListingRequest | 

begin
  # Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.
  result = api_instance.create_listing_ad_campaign_listing(platform, campaign_id, create_listing_ad_campaign_listing_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign_listing: #{e}"
end
```

#### Using the create_listing_ad_campaign_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAdCampaignListingResponse>, Integer, Hash)> create_listing_ad_campaign_listing_with_http_info(platform, campaign_id, create_listing_ad_campaign_listing_request)

```ruby
begin
  # Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.
  data, status_code, headers = api_instance.create_listing_ad_campaign_listing_with_http_info(platform, campaign_id, create_listing_ad_campaign_listing_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAdCampaignListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **create_listing_ad_campaign_listing_request** | **CreateListingAdCampaignListingRequest** |  |  |

### Return type

**CreateListingAdCampaignListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_listing_ad_campaign_listing_remove

> <CreateListingAdCampaignListingResponse> create_listing_ad_campaign_listing_remove(platform, campaign_id, update_live_stream_lineup_request)

Stop promoting listings in a marketplace campaign. One result per listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
campaign_id = 'campaign_id_example' # String | 
update_live_stream_lineup_request = Crossly::UpdateLiveStreamLineupRequest.new({platform_listing_ids: ['platform_listing_ids_example']}) # UpdateLiveStreamLineupRequest | 

begin
  # Stop promoting listings in a marketplace campaign. One result per listing.
  result = api_instance.create_listing_ad_campaign_listing_remove(platform, campaign_id, update_live_stream_lineup_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign_listing_remove: #{e}"
end
```

#### Using the create_listing_ad_campaign_listing_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAdCampaignListingResponse>, Integer, Hash)> create_listing_ad_campaign_listing_remove_with_http_info(platform, campaign_id, update_live_stream_lineup_request)

```ruby
begin
  # Stop promoting listings in a marketplace campaign. One result per listing.
  data, status_code, headers = api_instance.create_listing_ad_campaign_listing_remove_with_http_info(platform, campaign_id, update_live_stream_lineup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAdCampaignListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_listing_ad_campaign_listing_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **update_live_stream_lineup_request** | **UpdateLiveStreamLineupRequest** |  |  |

### Return type

**CreateListingAdCampaignListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sponsored_ad_billing_topup_link

> <CreateSponsoredAdBillingTopupLinkResponse> create_sponsored_ad_billing_topup_link(create_sponsored_ad_billing_topup_link_request)

A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
create_sponsored_ad_billing_topup_link_request = Crossly::CreateSponsoredAdBillingTopupLinkRequest.new({amount_cents: 3.56}) # CreateSponsoredAdBillingTopupLinkRequest | 

begin
  # A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.
  result = api_instance.create_sponsored_ad_billing_topup_link(create_sponsored_ad_billing_topup_link_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_billing_topup_link: #{e}"
end
```

#### Using the create_sponsored_ad_billing_topup_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSponsoredAdBillingTopupLinkResponse>, Integer, Hash)> create_sponsored_ad_billing_topup_link_with_http_info(create_sponsored_ad_billing_topup_link_request)

```ruby
begin
  # A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.
  data, status_code, headers = api_instance.create_sponsored_ad_billing_topup_link_with_http_info(create_sponsored_ad_billing_topup_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSponsoredAdBillingTopupLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_billing_topup_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sponsored_ad_billing_topup_link_request** | **CreateSponsoredAdBillingTopupLinkRequest** |  |  |

### Return type

**CreateSponsoredAdBillingTopupLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sponsored_ad_boost_remove

> <CreateSponsoredAdBoostRemoveResponse> create_sponsored_ad_boost_remove(update_live_stream_lineup_request)

Stop boosting listings in bulk.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
update_live_stream_lineup_request = Crossly::UpdateLiveStreamLineupRequest.new({platform_listing_ids: ['platform_listing_ids_example']}) # UpdateLiveStreamLineupRequest | 

begin
  # Stop boosting listings in bulk.
  result = api_instance.create_sponsored_ad_boost_remove(update_live_stream_lineup_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_boost_remove: #{e}"
end
```

#### Using the create_sponsored_ad_boost_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSponsoredAdBoostRemoveResponse>, Integer, Hash)> create_sponsored_ad_boost_remove_with_http_info(update_live_stream_lineup_request)

```ruby
begin
  # Stop boosting listings in bulk.
  data, status_code, headers = api_instance.create_sponsored_ad_boost_remove_with_http_info(update_live_stream_lineup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSponsoredAdBoostRemoveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_boost_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_live_stream_lineup_request** | **UpdateLiveStreamLineupRequest** |  |  |

### Return type

**CreateSponsoredAdBoostRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sponsored_ad_campaign

> <SponsoredAdCampaignResponse> create_sponsored_ad_campaign

Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \"auto\"), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \"wholesale_catalog\" + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \"auto\"), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \"wholesale_catalog\" + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.
  result = api_instance.create_sponsored_ad_campaign
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign: #{e}"
end
```

#### Using the create_sponsored_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdCampaignResponse>, Integer, Hash)> create_sponsored_ad_campaign_with_http_info

```ruby
begin
  # Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \"auto\"), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \"wholesale_catalog\" + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.
  data, status_code, headers = api_instance.create_sponsored_ad_campaign_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_sponsored_ad_campaign_duplicate

> <SponsoredAdCampaignResponse> create_sponsored_ad_campaign_duplicate(id)

Copy a campaign (settings, listings, keywords) as a new draft.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
id = 'id_example' # String | 

begin
  # Copy a campaign (settings, listings, keywords) as a new draft.
  result = api_instance.create_sponsored_ad_campaign_duplicate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign_duplicate: #{e}"
end
```

#### Using the create_sponsored_ad_campaign_duplicate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdCampaignResponse>, Integer, Hash)> create_sponsored_ad_campaign_duplicate_with_http_info(id)

```ruby
begin
  # Copy a campaign (settings, listings, keywords) as a new draft.
  data, status_code, headers = api_instance.create_sponsored_ad_campaign_duplicate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign_duplicate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_sponsored_ad_campaign_status

> <SponsoredAdCampaignResponse> create_sponsored_ad_campaign_status(id)

Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
id = 'id_example' # String | 

begin
  # Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.
  result = api_instance.create_sponsored_ad_campaign_status(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign_status: #{e}"
end
```

#### Using the create_sponsored_ad_campaign_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdCampaignResponse>, Integer, Hash)> create_sponsored_ad_campaign_status_with_http_info(id)

```ruby
begin
  # Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.
  data, status_code, headers = api_instance.create_sponsored_ad_campaign_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->create_sponsored_ad_campaign_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_offsite

> <GetAdOffsiteResponse> get_ad_offsite

Your offsite-ads opt-in and its terms.

Offsite ads spend your CBX advertising budget on external networks — Google, Meta and similar — at our discretion. Your item gets promoted, and the traffic lands on Crossly. OFF unless you turn it on, and there is no path that enables it on your behalf. Media is passed through AT COST with a separate, disclosed management fee, so you can always see how much of your budget reached the auction. `minReturnBps` is a STOP, not a guarantee: below it, offsite spend auto-pauses and the rest of your budget reverts to on-platform placement. Nobody can honestly promise ad performance; what we can promise is that it stops.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Your offsite-ads opt-in and its terms.
  result = api_instance.get_ad_offsite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite: #{e}"
end
```

#### Using the get_ad_offsite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdOffsiteResponse>, Integer, Hash)> get_ad_offsite_with_http_info

```ruby
begin
  # Your offsite-ads opt-in and its terms.
  data, status_code, headers = api_instance.get_ad_offsite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdOffsiteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAdOffsiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_offsite_eligibility

> <GetAdOffsiteEligibilityResponse> get_ad_offsite_eligibility(network, category)

Whether an item can run offsite, and why not.

Reasons: `not_opted_in`, `auto_paused`, `network_not_allowed`, `category_not_allowlisted`, `no_adapter`, `no_budget`. The category check is an ALLOWLIST, so an unclassified category is not eligible. That is not bureaucracy: ad networks suspend the ACCOUNT over a prohibited item, and the account is one shared resource across every merchant using this — so one listing could take offsite ads away from all of them. A blocklist would fail open on the first category nobody thought of.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
network = 'google' # String | 
category = 'category_example' # String | 

begin
  # Whether an item can run offsite, and why not.
  result = api_instance.get_ad_offsite_eligibility(network, category)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite_eligibility: #{e}"
end
```

#### Using the get_ad_offsite_eligibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdOffsiteEligibilityResponse>, Integer, Hash)> get_ad_offsite_eligibility_with_http_info(network, category)

```ruby
begin
  # Whether an item can run offsite, and why not.
  data, status_code, headers = api_instance.get_ad_offsite_eligibility_with_http_info(network, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdOffsiteEligibilityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite_eligibility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** |  |  |
| **category** | **String** |  |  |

### Return type

**GetAdOffsiteEligibilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_offsite_report

> <GetAdOffsiteReportResponse> get_ad_offsite_report

What your offsite budget bought — including the misses.

Spend, impressions and clicks are reported whether or not anything converted. A report showing only conversions is a report nobody can audit, and this is a feature where you handed over discretion over your money. `mediaCostCents` versus `managementFeeCents` answers \"how much of my budget reached the auction\" — the two are recorded separately so the answer survives. `spilloverConversions` is sales your ads produced on OTHER sellers' items. Reported so you can see whether offsite traffic is reaching buyers who want your item — a high spillover rate is the signal to turn it off. `returnBps` is attributed revenue as bps of spend; compare it with your `minReturnBps` floor.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # What your offsite budget bought — including the misses.
  result = api_instance.get_ad_offsite_report
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite_report: #{e}"
end
```

#### Using the get_ad_offsite_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdOffsiteReportResponse>, Integer, Hash)> get_ad_offsite_report_with_http_info

```ruby
begin
  # What your offsite budget bought — including the misses.
  data, status_code, headers = api_instance.get_ad_offsite_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdOffsiteReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_ad_offsite_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAdOffsiteReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_ad_listing

> <GetListingAdListingResponse> get_listing_ad_listing(listing_id)

Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
listing_id = 'listing_id_example' # String | 

begin
  # Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.
  result = api_instance.get_listing_ad_listing(listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_listing_ad_listing: #{e}"
end
```

#### Using the get_listing_ad_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingAdListingResponse>, Integer, Hash)> get_listing_ad_listing_with_http_info(listing_id)

```ruby
begin
  # Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.
  data, status_code, headers = api_instance.get_listing_ad_listing_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingAdListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_listing_ad_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **String** |  |  |

### Return type

**GetListingAdListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_billing

> <GetSponsoredAdBillingResponse> get_sponsored_ad_billing(opts)

What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh=true re-reads the balance.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  refresh: 'true' # String | 
}

begin
  # What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh=true re-reads the balance.
  result = api_instance.get_sponsored_ad_billing(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing: #{e}"
end
```

#### Using the get_sponsored_ad_billing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSponsoredAdBillingResponse>, Integer, Hash)> get_sponsored_ad_billing_with_http_info(opts)

```ruby
begin
  # What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh=true re-reads the balance.
  data, status_code, headers = api_instance.get_sponsored_ad_billing_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSponsoredAdBillingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **String** |  | [optional] |

### Return type

**GetSponsoredAdBillingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_billing_statement

> <GetSponsoredAdBillingStatementResponse> get_sponsored_ad_billing_statement(month)

One month's ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
month = 'month_example' # String | 

begin
  # One month's ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.
  result = api_instance.get_sponsored_ad_billing_statement(month)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_statement: #{e}"
end
```

#### Using the get_sponsored_ad_billing_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSponsoredAdBillingStatementResponse>, Integer, Hash)> get_sponsored_ad_billing_statement_with_http_info(month)

```ruby
begin
  # One month's ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.
  data, status_code, headers = api_instance.get_sponsored_ad_billing_statement_with_http_info(month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSponsoredAdBillingStatementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** |  |  |

### Return type

**GetSponsoredAdBillingStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_billing_statement_pdf

> File get_sponsored_ad_billing_statement_pdf(month)

One month's ads statement as a PDF.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
month = 'month_example' # String | 

begin
  # One month's ads statement as a PDF.
  result = api_instance.get_sponsored_ad_billing_statement_pdf(month)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_statement_pdf: #{e}"
end
```

#### Using the get_sponsored_ad_billing_statement_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_sponsored_ad_billing_statement_pdf_with_http_info(month)

```ruby
begin
  # One month's ads statement as a PDF.
  data, status_code, headers = api_instance.get_sponsored_ad_billing_statement_pdf_with_http_info(month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_statement_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** |  |  |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_sponsored_ad_billing_topup_receipt

> File get_sponsored_ad_billing_topup_receipt(id)

One ad balance top-up's receipt as a PDF (each top-up in the billing history carries its id and receipt number).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
id = 'id_example' # String | 

begin
  # One ad balance top-up's receipt as a PDF (each top-up in the billing history carries its id and receipt number).
  result = api_instance.get_sponsored_ad_billing_topup_receipt(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_topup_receipt: #{e}"
end
```

#### Using the get_sponsored_ad_billing_topup_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_sponsored_ad_billing_topup_receipt_with_http_info(id)

```ruby
begin
  # One ad balance top-up's receipt as a PDF (each top-up in the billing history carries its id and receipt number).
  data, status_code, headers = api_instance.get_sponsored_ad_billing_topup_receipt_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_billing_topup_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_sponsored_ad_campaign

> <SponsoredAdCampaignResponse> get_sponsored_ad_campaign(id, opts)

One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has `catalogs`: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
id = 'id_example' # String | 
opts = {
  from: 'from_example', # String | 
  to: 'to_example' # String | 
}

begin
  # One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has `catalogs`: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.
  result = api_instance.get_sponsored_ad_campaign(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_campaign: #{e}"
end
```

#### Using the get_sponsored_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdCampaignResponse>, Integer, Hash)> get_sponsored_ad_campaign_with_http_info(id, opts)

```ruby
begin
  # One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has `catalogs`: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.
  data, status_code, headers = api_instance.get_sponsored_ad_campaign_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

### Return type

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_fund

> <GetSponsoredAdFundResponse> get_sponsored_ad_fund(opts)

What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh=true re-reads CBX.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  refresh: 'true' # String | 
}

begin
  # What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh=true re-reads CBX.
  result = api_instance.get_sponsored_ad_fund(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_fund: #{e}"
end
```

#### Using the get_sponsored_ad_fund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSponsoredAdFundResponse>, Integer, Hash)> get_sponsored_ad_fund_with_http_info(opts)

```ruby
begin
  # What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh=true re-reads CBX.
  data, status_code, headers = api_instance.get_sponsored_ad_fund_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSponsoredAdFundResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_fund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **String** |  | [optional] |

### Return type

**GetSponsoredAdFundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_report

> <GetSponsoredAdReportResponse> get_sponsored_ad_report(opts)

Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and `catalogs`, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  from: 'from_example', # String | 
  to: 'to_example' # String | 
}

begin
  # Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and `catalogs`, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.
  result = api_instance.get_sponsored_ad_report(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_report: #{e}"
end
```

#### Using the get_sponsored_ad_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSponsoredAdReportResponse>, Integer, Hash)> get_sponsored_ad_report_with_http_info(opts)

```ruby
begin
  # Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and `catalogs`, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.
  data, status_code, headers = api_instance.get_sponsored_ad_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSponsoredAdReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

### Return type

**GetSponsoredAdReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sponsored_ad_setting

> <SponsoredAdResponse> get_sponsored_ad_setting

Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.
  result = api_instance.get_sponsored_ad_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_setting: #{e}"
end
```

#### Using the get_sponsored_ad_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdResponse>, Integer, Hash)> get_sponsored_ad_setting_with_http_info

```ruby
begin
  # Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.
  data, status_code, headers = api_instance.get_sponsored_ad_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->get_sponsored_ad_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ad_campaigns

> <ListListingAdCampaignsResponse> list_listing_ad_campaigns(platform, opts)

Your ad campaigns on one marketplace (cached up to 15 minutes; refresh=true asks the marketplace now).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
opts = {
  refresh: '0' # String | 
}

begin
  # Your ad campaigns on one marketplace (cached up to 15 minutes; refresh=true asks the marketplace now).
  result = api_instance.list_listing_ad_campaigns(platform, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_listing_ad_campaigns: #{e}"
end
```

#### Using the list_listing_ad_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingAdCampaignsResponse>, Integer, Hash)> list_listing_ad_campaigns_with_http_info(platform, opts)

```ruby
begin
  # Your ad campaigns on one marketplace (cached up to 15 minutes; refresh=true asks the marketplace now).
  data, status_code, headers = api_instance.list_listing_ad_campaigns_with_http_info(platform, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingAdCampaignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_listing_ad_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **refresh** | **String** |  | [optional] |

### Return type

**ListListingAdCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ad_platforms

> <ListListingAdPlatformsResponse> list_listing_ad_platforms

The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.
  result = api_instance.list_listing_ad_platforms
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_listing_ad_platforms: #{e}"
end
```

#### Using the list_listing_ad_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingAdPlatformsResponse>, Integer, Hash)> list_listing_ad_platforms_with_http_info

```ruby
begin
  # The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.
  data, status_code, headers = api_instance.list_listing_ad_platforms_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingAdPlatformsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_listing_ad_platforms_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListListingAdPlatformsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sponsored_ad_billing_history

> <ListSponsoredAdBillingHistoryResponse> list_sponsored_ad_billing_history(opts)

Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  kind: 'topup', # String | 
  before: 'before_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.
  result = api_instance.list_sponsored_ad_billing_history(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_billing_history: #{e}"
end
```

#### Using the list_sponsored_ad_billing_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSponsoredAdBillingHistoryResponse>, Integer, Hash)> list_sponsored_ad_billing_history_with_http_info(opts)

```ruby
begin
  # Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.
  data, status_code, headers = api_instance.list_sponsored_ad_billing_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSponsoredAdBillingHistoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_billing_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **before** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListSponsoredAdBillingHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sponsored_ad_billing_statements

> <ListSponsoredAdBillingStatementsResponse> list_sponsored_ad_billing_statements

Months (YYYY-MM) with any ad billing activity, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Months (YYYY-MM) with any ad billing activity, newest first.
  result = api_instance.list_sponsored_ad_billing_statements
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_billing_statements: #{e}"
end
```

#### Using the list_sponsored_ad_billing_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSponsoredAdBillingStatementsResponse>, Integer, Hash)> list_sponsored_ad_billing_statements_with_http_info

```ruby
begin
  # Months (YYYY-MM) with any ad billing activity, newest first.
  data, status_code, headers = api_instance.list_sponsored_ad_billing_statements_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSponsoredAdBillingStatementsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_billing_statements_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListSponsoredAdBillingStatementsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sponsored_ad_boosts

> <ListSponsoredAdBoostsResponse> list_sponsored_ad_boosts

Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.
  result = api_instance.list_sponsored_ad_boosts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_boosts: #{e}"
end
```

#### Using the list_sponsored_ad_boosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSponsoredAdBoostsResponse>, Integer, Hash)> list_sponsored_ad_boosts_with_http_info

```ruby
begin
  # Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.
  data, status_code, headers = api_instance.list_sponsored_ad_boosts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSponsoredAdBoostsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_boosts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListSponsoredAdBoostsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sponsored_ad_campaigns

> <ListSponsoredAdCampaignsResponse> list_sponsored_ad_campaigns(opts)

Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  from: 'from_example', # String | 
  to: 'to_example' # String | 
}

begin
  # Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).
  result = api_instance.list_sponsored_ad_campaigns(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_campaigns: #{e}"
end
```

#### Using the list_sponsored_ad_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSponsoredAdCampaignsResponse>, Integer, Hash)> list_sponsored_ad_campaigns_with_http_info(opts)

```ruby
begin
  # Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).
  data, status_code, headers = api_instance.list_sponsored_ad_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSponsoredAdCampaignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

### Return type

**ListSponsoredAdCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sponsored_ad_listings

> <ListSponsoredAdListingsResponse> list_sponsored_ad_listings(opts)

Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
opts = {
  from: 'from_example', # String | 
  to: 'to_example' # String | 
}

begin
  # Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.
  result = api_instance.list_sponsored_ad_listings(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_listings: #{e}"
end
```

#### Using the list_sponsored_ad_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSponsoredAdListingsResponse>, Integer, Hash)> list_sponsored_ad_listings_with_http_info(opts)

```ruby
begin
  # Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.
  data, status_code, headers = api_instance.list_sponsored_ad_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSponsoredAdListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->list_sponsored_ad_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |

### Return type

**ListSponsoredAdListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_offsite

> <UpdateAdOffsiteResponse> update_ad_offsite(update_ad_offsite_request)

Turn offsite ads on or off. Yours alone to set.

The toggle. Nothing else in the system sets `enabled` — no onboarding default, no bulk enable, no admin override. `maxOffsiteShareBps` caps how much of your budget may leave the platform, so opting in does not mean discovering the whole thing went to Google. `minReturnBps` sets the floor below which offsite spend auto-pauses: 20000 means we must return $2 of attributed revenue per $1 spent over the window. Toggling either way clears any existing auto-pause, so turning it back on later does not inherit a pause from months ago. When one of your ads brings a buyer who purchases somebody ELSE's item, that is reported to you as spillover so you can judge whether offsite traffic is reaching buyers who want YOUR item, and switch it off if not. It is not credited back — you bought clicks, which is how every ad market works.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
update_ad_offsite_request = Crossly::UpdateAdOffsiteRequest.new({enabled: false}) # UpdateAdOffsiteRequest | 

begin
  # Turn offsite ads on or off. Yours alone to set.
  result = api_instance.update_ad_offsite(update_ad_offsite_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_ad_offsite: #{e}"
end
```

#### Using the update_ad_offsite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdOffsiteResponse>, Integer, Hash)> update_ad_offsite_with_http_info(update_ad_offsite_request)

```ruby
begin
  # Turn offsite ads on or off. Yours alone to set.
  data, status_code, headers = api_instance.update_ad_offsite_with_http_info(update_ad_offsite_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdOffsiteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_ad_offsite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ad_offsite_request** | **UpdateAdOffsiteRequest** |  |  |

### Return type

**UpdateAdOffsiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_listing_ad_campaign

> <CreateListingAdCampaignResponse> update_listing_ad_campaign(platform, campaign_id, update_listing_ad_campaign_request)

Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
campaign_id = 'campaign_id_example' # String | 
update_listing_ad_campaign_request = Crossly::UpdateListingAdCampaignRequest.new # UpdateListingAdCampaignRequest | 

begin
  # Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.
  result = api_instance.update_listing_ad_campaign(platform, campaign_id, update_listing_ad_campaign_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_listing_ad_campaign: #{e}"
end
```

#### Using the update_listing_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingAdCampaignResponse>, Integer, Hash)> update_listing_ad_campaign_with_http_info(platform, campaign_id, update_listing_ad_campaign_request)

```ruby
begin
  # Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.
  data, status_code, headers = api_instance.update_listing_ad_campaign_with_http_info(platform, campaign_id, update_listing_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_listing_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **update_listing_ad_campaign_request** | **UpdateListingAdCampaignRequest** |  |  |

### Return type

**CreateListingAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_listing_ad_listing_rate

> <UpdateListingAdListingRateResponse> update_listing_ad_listing_rate(platform, platform_listing_id, update_listing_ad_listing_rate_request)

Change one promoted listing's ad rate (percent of the sale) in the campaign it is in.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
platform = 'platform_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 
update_listing_ad_listing_rate_request = Crossly::UpdateListingAdListingRateRequest.new({rate_pct: 3.56}) # UpdateListingAdListingRateRequest | 

begin
  # Change one promoted listing's ad rate (percent of the sale) in the campaign it is in.
  result = api_instance.update_listing_ad_listing_rate(platform, platform_listing_id, update_listing_ad_listing_rate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_listing_ad_listing_rate: #{e}"
end
```

#### Using the update_listing_ad_listing_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingAdListingRateResponse>, Integer, Hash)> update_listing_ad_listing_rate_with_http_info(platform, platform_listing_id, update_listing_ad_listing_rate_request)

```ruby
begin
  # Change one promoted listing's ad rate (percent of the sale) in the campaign it is in.
  data, status_code, headers = api_instance.update_listing_ad_listing_rate_with_http_info(platform, platform_listing_id, update_listing_ad_listing_rate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingAdListingRateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_listing_ad_listing_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |
| **update_listing_ad_listing_rate_request** | **UpdateListingAdListingRateRequest** |  |  |

### Return type

**UpdateListingAdListingRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sponsored_ad_billing_auto_topup

> <SponsoredAdResponse> update_sponsored_ad_billing_auto_topup(update_sponsored_ad_billing_auto_topup_request)

Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
update_sponsored_ad_billing_auto_topup_request = Crossly::UpdateSponsoredAdBillingAutoTopupRequest.new({enabled: false}) # UpdateSponsoredAdBillingAutoTopupRequest | 

begin
  # Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).
  result = api_instance.update_sponsored_ad_billing_auto_topup(update_sponsored_ad_billing_auto_topup_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_billing_auto_topup: #{e}"
end
```

#### Using the update_sponsored_ad_billing_auto_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdResponse>, Integer, Hash)> update_sponsored_ad_billing_auto_topup_with_http_info(update_sponsored_ad_billing_auto_topup_request)

```ruby
begin
  # Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).
  data, status_code, headers = api_instance.update_sponsored_ad_billing_auto_topup_with_http_info(update_sponsored_ad_billing_auto_topup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_billing_auto_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_sponsored_ad_billing_auto_topup_request** | **UpdateSponsoredAdBillingAutoTopupRequest** |  |  |

### Return type

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sponsored_ad_boost

> <UpdateSponsoredAdBoostResponse> update_sponsored_ad_boost(update_sponsored_ad_boost_request)

Boost listings in bulk (platformListingIds, upliftBps 100–2000 = 1–20%), or change their rate. Your own live Crossly listings only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
update_sponsored_ad_boost_request = Crossly::UpdateSponsoredAdBoostRequest.new({platform_listing_ids: ['platform_listing_ids_example'], uplift_bps: 3.56}) # UpdateSponsoredAdBoostRequest | 

begin
  # Boost listings in bulk (platformListingIds, upliftBps 100–2000 = 1–20%), or change their rate. Your own live Crossly listings only.
  result = api_instance.update_sponsored_ad_boost(update_sponsored_ad_boost_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_boost: #{e}"
end
```

#### Using the update_sponsored_ad_boost_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSponsoredAdBoostResponse>, Integer, Hash)> update_sponsored_ad_boost_with_http_info(update_sponsored_ad_boost_request)

```ruby
begin
  # Boost listings in bulk (platformListingIds, upliftBps 100–2000 = 1–20%), or change their rate. Your own live Crossly listings only.
  data, status_code, headers = api_instance.update_sponsored_ad_boost_with_http_info(update_sponsored_ad_boost_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSponsoredAdBoostResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_boost_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_sponsored_ad_boost_request** | **UpdateSponsoredAdBoostRequest** |  |  |

### Return type

**UpdateSponsoredAdBoostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sponsored_ad_campaign

> <SponsoredAdCampaignResponse> update_sponsored_ad_campaign(id)

Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new
id = 'id_example' # String | 

begin
  # Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.
  result = api_instance.update_sponsored_ad_campaign(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_campaign: #{e}"
end
```

#### Using the update_sponsored_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdCampaignResponse>, Integer, Hash)> update_sponsored_ad_campaign_with_http_info(id)

```ruby
begin
  # Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.
  data, status_code, headers = api_instance.update_sponsored_ad_campaign_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sponsored_ad_setting

> <SponsoredAdResponse> update_sponsored_ad_setting

Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null = no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AdsApi.new

begin
  # Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null = no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).
  result = api_instance.update_sponsored_ad_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_setting: #{e}"
end
```

#### Using the update_sponsored_ad_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SponsoredAdResponse>, Integer, Hash)> update_sponsored_ad_setting_with_http_info

```ruby
begin
  # Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null = no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).
  data, status_code, headers = api_instance.update_sponsored_ad_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SponsoredAdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AdsApi->update_sponsored_ad_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

