# Crossly::ListingsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ai_detection_dispute**](ListingsApi.md#create_ai_detection_dispute) | **POST** /v1/ai-detections/{id}/dispute | Dispute an AI-image detection on your photo (sends it to Crossly review). |
| [**create_event**](ListingsApi.md#create_event) | **POST** /v1/events | Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours. |
| [**create_event_publish**](ListingsApi.md#create_event_publish) | **POST** /v1/events/{id}/publish | Publish an event: its page goes live, and with notifyFollowers your followers are told once. |
| [**create_listing**](ListingsApi.md#create_listing) | **POST** /v1/listings | Create a listing and fan out crosspost jobs across platforms. |
| [**create_listing_bulk**](ListingsApi.md#create_listing_bulk) | **POST** /v1/listings/bulk | Create up to 50 listings in one call, with a result per item. |
| [**create_listing_bulk_check_status**](ListingsApi.md#create_listing_bulk_check_status) | **POST** /v1/listings/bulk-check-status | Check listing status on platforms |
| [**create_listing_bulk_crosspost**](ListingsApi.md#create_listing_bulk_crosspost) | **POST** /v1/listings/bulk-crosspost | Bulk crosspost (no delist phase) |
| [**create_listing_bulk_delete**](ListingsApi.md#create_listing_bulk_delete) | **POST** /v1/listings/bulk-delete | Bulk archive + delist |
| [**create_listing_bulk_delist**](ListingsApi.md#create_listing_bulk_delist) | **POST** /v1/listings/bulk-delist | Bulk delist from platforms |
| [**create_listing_bulk_delist_preview**](ListingsApi.md#create_listing_bulk_delist_preview) | **POST** /v1/listings/bulk-delist-preview | Preview which marketplaces a delist would touch |
| [**create_listing_bulk_hard_delete**](ListingsApi.md#create_listing_bulk_hard_delete) | **POST** /v1/listings/bulk-hard-delete | Permanently delete listings (live ones need allowLive) |
| [**create_listing_bulk_relist**](ListingsApi.md#create_listing_bulk_relist) | **POST** /v1/listings/bulk-relist | Bulk relist across platforms |
| [**create_listing_bulk_update**](ListingsApi.md#create_listing_bulk_update) | **POST** /v1/listings/bulk-update | Bulk update listing fields |
| [**create_listing_by_id**](ListingsApi.md#create_listing_by_id) | **POST** /v1/listings/by-ids | Fetch hydrated listings by ID |
| [**create_listing_check_duplicate**](ListingsApi.md#create_listing_check_duplicate) | **POST** /v1/listings/check-duplicates | Check whether the seller already owns something matching this title/photo, and what to do about it. |
| [**create_listing_combine**](ListingsApi.md#create_listing_combine) | **POST** /v1/listings/combine | Combine duplicate listings into one: sums their stock, delists and archives the rest. |
| [**create_listing_discrepancy_resolve**](ListingsApi.md#create_listing_discrepancy_resolve) | **POST** /v1/listings/{id}/discrepancies/{discrepancyId}/resolve | Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss. |
| [**create_listing_import_by_url**](ListingsApi.md#create_listing_import_by_url) | **POST** /v1/listings/{id}/import-by-url | Attach a real platform listing to this listing by pasting its live URL. |
| [**create_listing_magic_fill**](ListingsApi.md#create_listing_magic_fill) | **POST** /v1/listings/{id}/magic-fill | Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution. |
| [**create_listing_merge**](ListingsApi.md#create_listing_merge) | **POST** /v1/listings/merge | Merge the same item listed on different marketplaces into one listing; all stay live. |
| [**create_listing_tag_bulk**](ListingsApi.md#create_listing_tag_bulk) | **POST** /v1/listings/tags/bulk | Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). &#x60;dryRun&#x60; reports what would change. |
| [**create_listing_tag_rename**](ListingsApi.md#create_listing_tag_rename) | **POST** /v1/listings/tags/rename | Rename a tag on every listing; merges into &#x60;to&#x60; when it already exists. |
| [**create_live_stream**](ListingsApi.md#create_live_stream) | **POST** /v1/live-streams | Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order). |
| [**create_live_stream_connection**](ListingsApi.md#create_live_stream_connection) | **POST** /v1/live-streams/{id}/connection | The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured&#x3D;false (with a reason) when the deployment has no streaming provider. |
| [**create_live_stream_connection_rotate**](ListingsApi.md#create_live_stream_connection_rotate) | **POST** /v1/live-streams/{id}/connection/rotate | Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live. |
| [**create_live_stream_end**](ListingsApi.md#create_live_stream_end) | **POST** /v1/live-streams/{id}/end | End the show. Idempotent. |
| [**create_live_stream_pin_launch**](ListingsApi.md#create_live_stream_pin_launch) | **POST** /v1/live-streams/{id}/pin-launch | Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns &#x60;{ ok }&#x60;. |
| [**create_live_stream_start**](ListingsApi.md#create_live_stream_start) | **POST** /v1/live-streams/{id}/start | Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended. |
| [**create_passport**](ListingsApi.md#create_passport) | **POST** /v1/passports | Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts). |
| [**create_passport_draft**](ListingsApi.md#create_passport_draft) | **POST** /v1/passports/drafts | Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped. |
| [**create_passport_draft_activate**](ListingsApi.md#create_passport_draft_activate) | **POST** /v1/passports/drafts/{id}/activate | Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link. |
| [**create_passport_draft_capture_link**](ListingsApi.md#create_passport_draft_capture_link) | **POST** /v1/passports/drafts/{id}/capture-link | A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old. |
| [**create_passport_print**](ListingsApi.md#create_passport_print) | **POST** /v1/passports/print | Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card. |
| [**create_passport_revoke**](ListingsApi.md#create_passport_revoke) | **POST** /v1/passports/{id}/revoke | Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history. |
| [**create_passport_tag**](ListingsApi.md#create_passport_tag) | **POST** /v1/passports/{id}/tag | Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item. |
| [**create_rental_bulk_rentable**](ListingsApi.md#create_rental_bulk_rentable) | **POST** /v1/rentals/bulk-rentable | Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price). |
| [**create_shop_limit_request**](ListingsApi.md#create_shop_limit_request) | **POST** /v1/shop-limits/requests | Ask for a higher Crossly Shop selling limit. |
| [**create_story**](ListingsApi.md#create_story) | **POST** /v1/stories | Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48. |
| [**create_variation_group**](ListingsApi.md#create_variation_group) | **POST** /v1/variation-groups | Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\&quot;buy any 3\&quot;). |
| [**create_variation_group_generate**](ListingsApi.md#create_variation_group_generate) | **POST** /v1/variation-groups/generate | Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group. |
| [**create_variation_group_generate_matrix**](ListingsApi.md#create_variation_group_generate_matrix) | **POST** /v1/variation-groups/generate-matrix | Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU. |
| [**create_variation_group_publish**](ListingsApi.md#create_variation_group_publish) | **POST** /v1/variation-groups/{id}/publish | Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome. |
| [**create_video_studio_finalize**](ListingsApi.md#create_video_studio_finalize) | **POST** /v1/video-studio/finalize | Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing&#39;s video. |
| [**create_video_studio_upload_url**](ListingsApi.md#create_video_studio_upload_url) | **POST** /v1/video-studio/upload-url | Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload. |
| [**delete_event**](ListingsApi.md#delete_event) | **DELETE** /v1/events/{id} | Delete a draft, or cancel a published event (its page then says it was called off). |
| [**delete_listing**](ListingsApi.md#delete_listing) | **DELETE** /v1/listings/{id} | Delist a listing (optionally narrowed to specific platforms via ?platforms&#x3D;). |
| [**delete_listing_tag**](ListingsApi.md#delete_listing_tag) | **DELETE** /v1/listings/tags/{tag} | Remove a tag (any case) from every listing. |
| [**delete_live_stream_pin_launch**](ListingsApi.md#delete_live_stream_pin_launch) | **DELETE** /v1/live-streams/{id}/pin-launch | Unpin the launch from your live show. Returns &#x60;{ ok }&#x60;. |
| [**delete_rental_offer**](ListingsApi.md#delete_rental_offer) | **DELETE** /v1/rentals/offers/{platformListingId} | Stop offering a listing for rent (existing bookings stand). |
| [**delete_story**](ListingsApi.md#delete_story) | **DELETE** /v1/stories/{id} | Take one story slide down before it expires. |
| [**delete_variation_group**](ListingsApi.md#delete_variation_group) | **DELETE** /v1/variation-groups/{id} | Dissolve a group. Its options stay as ordinary listings. |
| [**get_event**](ListingsApi.md#get_event) | **GET** /v1/events/{id} | One of your events. |
| [**get_event_analytic**](ListingsApi.md#get_event_analytic) | **GET** /v1/events/{id}/analytics | Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents). |
| [**get_listing**](ListingsApi.md#get_listing) | **GET** /v1/listings/{id} | Get one listing with its platform rows. |
| [**get_listing_facet**](ListingsApi.md#get_listing_facet) | **GET** /v1/listings/facets | Distinct brands + categories across listings + inventory. |
| [**get_listing_sku_exist**](ListingsApi.md#get_listing_sku_exist) | **GET** /v1/listings/sku-exists | Check whether a SKU is already used by one of this user&#39;s items. |
| [**get_live_stream_recap**](ListingsApi.md#get_live_stream_recap) | **GET** /v1/live-streams/{id}/recap | The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL. |
| [**get_passport**](ListingsApi.md#get_passport) | **GET** /v1/passports/{id} | One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading. |
| [**get_passport_draft**](ListingsApi.md#get_passport_draft) | **GET** /v1/passports/drafts/{id} | A passport draft and its passports (photos, serial, tag and label state of each). |
| [**get_passport_print**](ListingsApi.md#get_passport_print) | **GET** /v1/passports/print/{jobId} | Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate. |
| [**get_pricing_setting**](ListingsApi.md#get_pricing_setting) | **GET** /v1/pricing/settings | Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default. |
| [**get_pricing_sold_comp**](ListingsApi.md#get_pricing_sold_comp) | **GET** /v1/pricing/sold-comps | What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds. |
| [**get_rental_setting**](ListingsApi.md#get_rental_setting) | **GET** /v1/rentals/settings | The store’s rental defaults (every item inherits them) and its payout timing. |
| [**get_shop_limit**](ListingsApi.md#get_shop_limit) | **GET** /v1/shop-limits | Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step. |
| [**list_event_attendees**](ListingsApi.md#list_event_attendees) | **GET** /v1/events/{id}/attendees | Who RSVPd: display name, avatar, going or interested, and when. No contact details. |
| [**list_events**](ListingsApi.md#list_events) | **GET** /v1/events | Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts. |
| [**list_listing_ai_detections**](ListingsApi.md#list_listing_ai_detections) | **GET** /v1/listings/{id}/ai-detections | Crossly&#39;s AI-image detections for a listing&#39;s photos. |
| [**list_listing_discrepancies**](ListingsApi.md#list_listing_discrepancies) | **GET** /v1/listings/{id}/discrepancies | List detected marketplace-drift discrepancies for a listing. |
| [**list_listing_ids**](ListingsApi.md#list_listing_ids) | **GET** /v1/listings/ids | Filter listings → return matching id list (no pagination). |
| [**list_listing_tag_suggest**](ListingsApi.md#list_listing_tag_suggest) | **GET** /v1/listings/tags/suggest | Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); &#x60;known&#x60; &#x3D; you already use the tag. |
| [**list_listing_tags**](ListingsApi.md#list_listing_tags) | **GET** /v1/listings/tags | Your listing tags with how many listings carry each, most used first (case-insensitive; &#x60;q&#x60; filters). |
| [**list_listings**](ListingsApi.md#list_listings) | **GET** /v1/listings | List active platform listings. |
| [**list_live_streams**](ListingsApi.md#list_live_streams) | **GET** /v1/live-streams | Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers. |
| [**list_passport_events**](ListingsApi.md#list_passport_events) | **GET** /v1/passports/{id}/events | A passport’s event history, newest first (never a buyer or a price). |
| [**list_passport_print_targets**](ListingsApi.md#list_passport_print_targets) | **GET** /v1/passports/print-targets | Your printer agents (online, printers, default) and the passport label templates each can print. |
| [**list_passports**](ListingsApi.md#list_passports) | **GET** /v1/passports | Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries. |
| [**list_rental_offers**](ListingsApi.md#list_rental_offers) | **GET** /v1/rentals/offers | What you offer for rent. |
| [**list_stories**](ListingsApi.md#list_stories) | **GET** /v1/stories | Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing. |
| [**update_event**](ListingsApi.md#update_event) | **PATCH** /v1/events/{id} | Edit an event. Omitted fields are unchanged; null clears. |
| [**update_hotspot**](ListingsApi.md#update_hotspot) | **PUT** /v1/hotspots | Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12. |
| [**update_listing**](ListingsApi.md#update_listing) | **PATCH** /v1/listings/{id} | Edit a listing and fan out update jobs to existing platform listings. |
| [**update_listing_custom**](ListingsApi.md#update_listing_custom) | **PUT** /v1/listings/{id}/customs | Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears. |
| [**update_listing_platform_listing**](ListingsApi.md#update_listing_platform_listing) | **PATCH** /v1/listings/{id}/platform-listings/{plId} | Set one marketplace copy&#39;s price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy&#39;s own currency. |
| [**update_live_stream**](ListingsApi.md#update_live_stream) | **PATCH** /v1/live-streams/{id} | Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder). |
| [**update_live_stream_lineup**](ListingsApi.md#update_live_stream_lineup) | **PUT** /v1/live-streams/{id}/lineup | Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment. |
| [**update_passport**](ListingsApi.md#update_passport) | **PATCH** /v1/passports/{id} | Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with). |
| [**update_passport_draft**](ListingsApi.md#update_passport_draft) | **PATCH** /v1/passports/drafts/{id} | Move a draft to a step, pick its label template, add items or remove draft passports. |
| [**update_pricing_setting**](ListingsApi.md#update_pricing_setting) | **PUT** /v1/pricing/settings | Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings. |
| [**update_rental_offer**](ListingsApi.md#update_rental_offer) | **PUT** /v1/rentals/offers/{platformListingId} | Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address. |
| [**update_rental_setting**](ListingsApi.md#update_rental_setting) | **PUT** /v1/rentals/settings | Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back). |
| [**update_variation_group**](ListingsApi.md#update_variation_group) | **PATCH** /v1/variation-groups/{id} | Retitle a group, rename its axis, or change a group&#39;s purchase rule (written into every member&#39;s description). |


## create_ai_detection_dispute

> <CreateAiDetectionDisputeResponse> create_ai_detection_dispute(id)

Dispute an AI-image detection on your photo (sends it to Crossly review).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Dispute an AI-image detection on your photo (sends it to Crossly review).
  result = api_instance.create_ai_detection_dispute(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_ai_detection_dispute: #{e}"
end
```

#### Using the create_ai_detection_dispute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAiDetectionDisputeResponse>, Integer, Hash)> create_ai_detection_dispute_with_http_info(id)

```ruby
begin
  # Dispute an AI-image detection on your photo (sends it to Crossly review).
  data, status_code, headers = api_instance.create_ai_detection_dispute_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAiDetectionDisputeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_ai_detection_dispute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateAiDetectionDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_event

> <EventResponse> create_event

Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.
  result = api_instance.create_event
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> create_event_with_http_info

```ruby
begin
  # Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.
  data, status_code, headers = api_instance.create_event_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_event_publish

> <EventResponse> create_event_publish(id)

Publish an event: its page goes live, and with notifyFollowers your followers are told once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Publish an event: its page goes live, and with notifyFollowers your followers are told once.
  result = api_instance.create_event_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_event_publish: #{e}"
end
```

#### Using the create_event_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> create_event_publish_with_http_info(id)

```ruby
begin
  # Publish an event: its page goes live, and with notifyFollowers your followers are told once.
  data, status_code, headers = api_instance.create_event_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_event_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing

> <CreateListingResponse> create_listing

Create a listing and fan out crosspost jobs across platforms.

Listing fields go in `data`. Channel apps can also send `categoryId` (GET /v1/categories/search), `itemSpecifics` (validated against GET /v1/categories/:id/aspects; `warnings` lists soft problems), `condition`, `brand`, per-marketplace `overrides` and `policies` (preset ids from GET /v1/policies), folded in the way the web form does: an override replaces the master value on that marketplace, anything derived only fills blanks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Create a listing and fan out crosspost jobs across platforms.
  result = api_instance.create_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing: #{e}"
end
```

#### Using the create_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingResponse>, Integer, Hash)> create_listing_with_http_info

```ruby
begin
  # Create a listing and fan out crosspost jobs across platforms.
  data, status_code, headers = api_instance.create_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk

> <CreateListingBulkResponse> create_listing_bulk

Create up to 50 listings in one call, with a result per item.

Each item is a POST /v1/listings body plus a required `clientReferenceId` (your id for it). Items run in order and independently: `data[i].status` is `created`, `existing` (that reference was already used — the listing is returned, nothing is created) or `error` with the code the single route would give. `error` means no listing exists for the item. A listing that was saved but could not be sent to a platform (e.g. no weight) is `created`, with that platform in `skipped` (reason, code, details). `meta` counts each. Retrying a batch only creates what is missing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Create up to 50 listings in one call, with a result per item.
  result = api_instance.create_listing_bulk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk: #{e}"
end
```

#### Using the create_listing_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkResponse>, Integer, Hash)> create_listing_bulk_with_http_info

```ruby
begin
  # Create up to 50 listings in one call, with a result per item.
  data, status_code, headers = api_instance.create_listing_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_check_status

> <CreateListingBulkDeleteResponse> create_listing_bulk_check_status

Check listing status on platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Check listing status on platforms
  result = api_instance.create_listing_bulk_check_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_check_status: #{e}"
end
```

#### Using the create_listing_bulk_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_check_status_with_http_info

```ruby
begin
  # Check listing status on platforms
  data, status_code, headers = api_instance.create_listing_bulk_check_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_check_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_crosspost

> <CreateListingBulkDeleteResponse> create_listing_bulk_crosspost

Bulk crosspost (no delist phase)

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk crosspost (no delist phase)
  result = api_instance.create_listing_bulk_crosspost
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_crosspost: #{e}"
end
```

#### Using the create_listing_bulk_crosspost_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_crosspost_with_http_info

```ruby
begin
  # Bulk crosspost (no delist phase)
  data, status_code, headers = api_instance.create_listing_bulk_crosspost_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_crosspost_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delete

> <CreateListingBulkDeleteResponse> create_listing_bulk_delete

Bulk archive + delist

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk archive + delist
  result = api_instance.create_listing_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delete: #{e}"
end
```

#### Using the create_listing_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_delete_with_http_info

```ruby
begin
  # Bulk archive + delist
  data, status_code, headers = api_instance.create_listing_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delist

> <CreateListingBulkDeleteResponse> create_listing_bulk_delist

Bulk delist from platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk delist from platforms
  result = api_instance.create_listing_bulk_delist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist: #{e}"
end
```

#### Using the create_listing_bulk_delist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_delist_with_http_info

```ruby
begin
  # Bulk delist from platforms
  data, status_code, headers = api_instance.create_listing_bulk_delist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_delist_preview

> <CreateListingBulkDelistPreviewResponse> create_listing_bulk_delist_preview

Preview which marketplaces a delist would touch

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Preview which marketplaces a delist would touch
  result = api_instance.create_listing_bulk_delist_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_preview: #{e}"
end
```

#### Using the create_listing_bulk_delist_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDelistPreviewResponse>, Integer, Hash)> create_listing_bulk_delist_preview_with_http_info

```ruby
begin
  # Preview which marketplaces a delist would touch
  data, status_code, headers = api_instance.create_listing_bulk_delist_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDelistPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_delist_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDelistPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_hard_delete

> <CreateListingBulkHardDeleteResponse> create_listing_bulk_hard_delete

Permanently delete listings (live ones need allowLive)

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Permanently delete listings (live ones need allowLive)
  result = api_instance.create_listing_bulk_hard_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_hard_delete: #{e}"
end
```

#### Using the create_listing_bulk_hard_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkHardDeleteResponse>, Integer, Hash)> create_listing_bulk_hard_delete_with_http_info

```ruby
begin
  # Permanently delete listings (live ones need allowLive)
  data, status_code, headers = api_instance.create_listing_bulk_hard_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkHardDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_hard_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkHardDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_relist

> <CreateListingBulkDeleteResponse> create_listing_bulk_relist

Bulk relist across platforms

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk relist across platforms
  result = api_instance.create_listing_bulk_relist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_relist: #{e}"
end
```

#### Using the create_listing_bulk_relist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkDeleteResponse>, Integer, Hash)> create_listing_bulk_relist_with_http_info

```ruby
begin
  # Bulk relist across platforms
  data, status_code, headers = api_instance.create_listing_bulk_relist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_relist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_bulk_update

> <CreateListingBulkUpdateResponse> create_listing_bulk_update

Bulk update listing fields

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Bulk update listing fields
  result = api_instance.create_listing_bulk_update
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_update: #{e}"
end
```

#### Using the create_listing_bulk_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingBulkUpdateResponse>, Integer, Hash)> create_listing_bulk_update_with_http_info

```ruby
begin
  # Bulk update listing fields
  data, status_code, headers = api_instance.create_listing_bulk_update_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingBulkUpdateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_bulk_update_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingBulkUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_by_id

> <CreateListingByIdResponse> create_listing_by_id

Fetch hydrated listings by ID

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Fetch hydrated listings by ID
  result = api_instance.create_listing_by_id
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_by_id: #{e}"
end
```

#### Using the create_listing_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingByIdResponse>, Integer, Hash)> create_listing_by_id_with_http_info

```ruby
begin
  # Fetch hydrated listings by ID
  data, status_code, headers = api_instance.create_listing_by_id_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_by_id_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_check_duplicate

> <CreateListingCheckDuplicateResponse> create_listing_check_duplicate

Check whether the seller already owns something matching this title/photo, and what to do about it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Check whether the seller already owns something matching this title/photo, and what to do about it.
  result = api_instance.create_listing_check_duplicate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_check_duplicate: #{e}"
end
```

#### Using the create_listing_check_duplicate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingCheckDuplicateResponse>, Integer, Hash)> create_listing_check_duplicate_with_http_info

```ruby
begin
  # Check whether the seller already owns something matching this title/photo, and what to do about it.
  data, status_code, headers = api_instance.create_listing_check_duplicate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingCheckDuplicateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_check_duplicate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingCheckDuplicateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_combine

> <CreateListingCombineResponse> create_listing_combine

Combine duplicate listings into one: sums their stock, delists and archives the rest.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Combine duplicate listings into one: sums their stock, delists and archives the rest.
  result = api_instance.create_listing_combine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_combine: #{e}"
end
```

#### Using the create_listing_combine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingCombineResponse>, Integer, Hash)> create_listing_combine_with_http_info

```ruby
begin
  # Combine duplicate listings into one: sums their stock, delists and archives the rest.
  data, status_code, headers = api_instance.create_listing_combine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingCombineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_combine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingCombineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_discrepancy_resolve

> <CreateListingDiscrepancyResolveResponse> create_listing_discrepancy_resolve(id, discrepancy_id)

Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
discrepancy_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
  result = api_instance.create_listing_discrepancy_resolve(id, discrepancy_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_discrepancy_resolve: #{e}"
end
```

#### Using the create_listing_discrepancy_resolve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingDiscrepancyResolveResponse>, Integer, Hash)> create_listing_discrepancy_resolve_with_http_info(id, discrepancy_id)

```ruby
begin
  # Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
  data, status_code, headers = api_instance.create_listing_discrepancy_resolve_with_http_info(id, discrepancy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingDiscrepancyResolveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_discrepancy_resolve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **discrepancy_id** | **String** |  |  |

### Return type

**CreateListingDiscrepancyResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_import_by_url

> <CreateListingImportByUrlResponse> create_listing_import_by_url(id)

Attach a real platform listing to this listing by pasting its live URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Attach a real platform listing to this listing by pasting its live URL.
  result = api_instance.create_listing_import_by_url(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_import_by_url: #{e}"
end
```

#### Using the create_listing_import_by_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingImportByUrlResponse>, Integer, Hash)> create_listing_import_by_url_with_http_info(id)

```ruby
begin
  # Attach a real platform listing to this listing by pasting its live URL.
  data, status_code, headers = api_instance.create_listing_import_by_url_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingImportByUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_import_by_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingImportByUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_magic_fill

> <CreateListingMagicFillResponse> create_listing_magic_fill(id)

Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
  result = api_instance.create_listing_magic_fill(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_magic_fill: #{e}"
end
```

#### Using the create_listing_magic_fill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingMagicFillResponse>, Integer, Hash)> create_listing_magic_fill_with_http_info(id)

```ruby
begin
  # Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
  data, status_code, headers = api_instance.create_listing_magic_fill_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingMagicFillResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_magic_fill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingMagicFillResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_merge

> <CreateListingMergeResponse> create_listing_merge

Merge the same item listed on different marketplaces into one listing; all stay live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Merge the same item listed on different marketplaces into one listing; all stay live.
  result = api_instance.create_listing_merge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_merge: #{e}"
end
```

#### Using the create_listing_merge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingMergeResponse>, Integer, Hash)> create_listing_merge_with_http_info

```ruby
begin
  # Merge the same item listed on different marketplaces into one listing; all stay live.
  data, status_code, headers = api_instance.create_listing_merge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingMergeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_merge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingMergeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_tag_bulk

> <CreateListingTagBulkResponse> create_listing_tag_bulk

Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). `dryRun` reports what would change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). `dryRun` reports what would change.
  result = api_instance.create_listing_tag_bulk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_tag_bulk: #{e}"
end
```

#### Using the create_listing_tag_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingTagBulkResponse>, Integer, Hash)> create_listing_tag_bulk_with_http_info

```ruby
begin
  # Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). `dryRun` reports what would change.
  data, status_code, headers = api_instance.create_listing_tag_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingTagBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_tag_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingTagBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_tag_rename

> <CreateListingTagRenameResponse> create_listing_tag_rename

Rename a tag on every listing; merges into `to` when it already exists.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Rename a tag on every listing; merges into `to` when it already exists.
  result = api_instance.create_listing_tag_rename
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_tag_rename: #{e}"
end
```

#### Using the create_listing_tag_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingTagRenameResponse>, Integer, Hash)> create_listing_tag_rename_with_http_info

```ruby
begin
  # Rename a tag on every listing; merges into `to` when it already exists.
  data, status_code, headers = api_instance.create_listing_tag_rename_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingTagRenameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_listing_tag_rename_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingTagRenameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream

> <LiveStreamResponse> create_live_stream

Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).
  result = api_instance.create_live_stream
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream: #{e}"
end
```

#### Using the create_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> create_live_stream_with_http_info

```ruby
begin
  # Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).
  data, status_code, headers = api_instance.create_live_stream_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream_connection

> <CreateLiveStreamConnectionResponse> create_live_stream_connection(id)

The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured=false (with a reason) when the deployment has no streaming provider.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured=false (with a reason) when the deployment has no streaming provider.
  result = api_instance.create_live_stream_connection(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_connection: #{e}"
end
```

#### Using the create_live_stream_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLiveStreamConnectionResponse>, Integer, Hash)> create_live_stream_connection_with_http_info(id)

```ruby
begin
  # The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured=false (with a reason) when the deployment has no streaming provider.
  data, status_code, headers = api_instance.create_live_stream_connection_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLiveStreamConnectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLiveStreamConnectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream_connection_rotate

> <CreateLiveStreamConnectionResponse> create_live_stream_connection_rotate(id)

Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.
  result = api_instance.create_live_stream_connection_rotate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_connection_rotate: #{e}"
end
```

#### Using the create_live_stream_connection_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLiveStreamConnectionResponse>, Integer, Hash)> create_live_stream_connection_rotate_with_http_info(id)

```ruby
begin
  # Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.
  data, status_code, headers = api_instance.create_live_stream_connection_rotate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLiveStreamConnectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_connection_rotate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLiveStreamConnectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream_end

> <LiveStreamResponse> create_live_stream_end(id)

End the show. Idempotent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # End the show. Idempotent.
  result = api_instance.create_live_stream_end(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_end: #{e}"
end
```

#### Using the create_live_stream_end_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> create_live_stream_end_with_http_info(id)

```ruby
begin
  # End the show. Idempotent.
  data, status_code, headers = api_instance.create_live_stream_end_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_end_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_live_stream_pin_launch

> <OkResponse> create_live_stream_pin_launch(id)

Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.
  result = api_instance.create_live_stream_pin_launch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_pin_launch: #{e}"
end
```

#### Using the create_live_stream_pin_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_live_stream_pin_launch_with_http_info(id)

```ruby
begin
  # Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.
  data, status_code, headers = api_instance.create_live_stream_pin_launch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_pin_launch_with_http_info: #{e}"
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


## create_live_stream_start

> <LiveStreamResponse> create_live_stream_start(id)

Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.
  result = api_instance.create_live_stream_start(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_start: #{e}"
end
```

#### Using the create_live_stream_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> create_live_stream_start_with_http_info(id)

```ruby
begin
  # Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.
  data, status_code, headers = api_instance.create_live_stream_start_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_live_stream_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport

> <PassportResponse> create_passport

Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).
  result = api_instance.create_passport
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport: #{e}"
end
```

#### Using the create_passport_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_with_http_info

```ruby
begin
  # Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).
  data, status_code, headers = api_instance.create_passport_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_draft

> <PassportDraftResponse> create_passport_draft

Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.
  result = api_instance.create_passport_draft
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft: #{e}"
end
```

#### Using the create_passport_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportDraftResponse>, Integer, Hash)> create_passport_draft_with_http_info

```ruby
begin
  # Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.
  data, status_code, headers = api_instance.create_passport_draft_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_draft_activate

> <PassportDraftResponse> create_passport_draft_activate(id)

Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.
  result = api_instance.create_passport_draft_activate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft_activate: #{e}"
end
```

#### Using the create_passport_draft_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportDraftResponse>, Integer, Hash)> create_passport_draft_activate_with_http_info(id)

```ruby
begin
  # Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.
  data, status_code, headers = api_instance.create_passport_draft_activate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_draft_capture_link

> <CreatePassportDraftCaptureLinkResponse> create_passport_draft_capture_link(id)

A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.
  result = api_instance.create_passport_draft_capture_link(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft_capture_link: #{e}"
end
```

#### Using the create_passport_draft_capture_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePassportDraftCaptureLinkResponse>, Integer, Hash)> create_passport_draft_capture_link_with_http_info(id)

```ruby
begin
  # A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.
  data, status_code, headers = api_instance.create_passport_draft_capture_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePassportDraftCaptureLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_draft_capture_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatePassportDraftCaptureLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_print

> <CreatePassportPrintResponse> create_passport_print

Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.
  result = api_instance.create_passport_print
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_print: #{e}"
end
```

#### Using the create_passport_print_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePassportPrintResponse>, Integer, Hash)> create_passport_print_with_http_info

```ruby
begin
  # Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.
  data, status_code, headers = api_instance.create_passport_print_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePassportPrintResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_print_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreatePassportPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_revoke

> <PassportResponse> create_passport_revoke(id)

Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
  result = api_instance.create_passport_revoke(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_revoke: #{e}"
end
```

#### Using the create_passport_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_revoke_with_http_info(id)

```ruby
begin
  # Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
  data, status_code, headers = api_instance.create_passport_revoke_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_passport_tag

> <PassportResponse> create_passport_tag(id)

Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
  result = api_instance.create_passport_tag(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_tag: #{e}"
end
```

#### Using the create_passport_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportResponse>, Integer, Hash)> create_passport_tag_with_http_info(id)

```ruby
begin
  # Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
  data, status_code, headers = api_instance.create_passport_tag_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_passport_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rental_bulk_rentable

> <CreateRentalBulkRentableResponse> create_rental_bulk_rentable

Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).
  result = api_instance.create_rental_bulk_rentable
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_rental_bulk_rentable: #{e}"
end
```

#### Using the create_rental_bulk_rentable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRentalBulkRentableResponse>, Integer, Hash)> create_rental_bulk_rentable_with_http_info

```ruby
begin
  # Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).
  data, status_code, headers = api_instance.create_rental_bulk_rentable_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRentalBulkRentableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_rental_bulk_rentable_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateRentalBulkRentableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_shop_limit_request

> <CreateShopLimitRequestResponse> create_shop_limit_request(create_shop_limit_request_request)

Ask for a higher Crossly Shop selling limit.

One pending request at a time (409 otherwise). Approved on the spot when your last 90 days are clean (no auto-cancelled orders, disputes lost or chargebacks lost) and every number asked is at most twice your current limit; otherwise Crossly staff review it. `valueCents` is US cents.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
create_shop_limit_request_request = Crossly::CreateShopLimitRequestRequest.new({reason: 'reason_example'}) # CreateShopLimitRequestRequest | 

begin
  # Ask for a higher Crossly Shop selling limit.
  result = api_instance.create_shop_limit_request(create_shop_limit_request_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_shop_limit_request: #{e}"
end
```

#### Using the create_shop_limit_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateShopLimitRequestResponse>, Integer, Hash)> create_shop_limit_request_with_http_info(create_shop_limit_request_request)

```ruby
begin
  # Ask for a higher Crossly Shop selling limit.
  data, status_code, headers = api_instance.create_shop_limit_request_with_http_info(create_shop_limit_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateShopLimitRequestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_shop_limit_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_shop_limit_request_request** | **CreateShopLimitRequestRequest** |  |  |

### Return type

**CreateShopLimitRequestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_story

> <CreateStoryResponse> create_story

Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.
  result = api_instance.create_story
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_story: #{e}"
end
```

#### Using the create_story_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStoryResponse>, Integer, Hash)> create_story_with_http_info

```ruby
begin
  # Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.
  data, status_code, headers = api_instance.create_story_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_story_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group

> <CreateVariationGroupResponse> create_variation_group

Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").
  result = api_instance.create_variation_group
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group: #{e}"
end
```

#### Using the create_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupResponse>, Integer, Hash)> create_variation_group_with_http_info

```ruby
begin
  # Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").
  data, status_code, headers = api_instance.create_variation_group_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group_generate

> <CreateVariationGroupGenerateResponse> create_variation_group_generate

Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
  result = api_instance.create_variation_group_generate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate: #{e}"
end
```

#### Using the create_variation_group_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupGenerateResponse>, Integer, Hash)> create_variation_group_generate_with_http_info

```ruby
begin
  # Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
  data, status_code, headers = api_instance.create_variation_group_generate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupGenerateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVariationGroupGenerateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group_generate_matrix

> <CreateVariationGroupGenerateMatrixResponse> create_variation_group_generate_matrix

Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.
  result = api_instance.create_variation_group_generate_matrix
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate_matrix: #{e}"
end
```

#### Using the create_variation_group_generate_matrix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupGenerateMatrixResponse>, Integer, Hash)> create_variation_group_generate_matrix_with_http_info

```ruby
begin
  # Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.
  data, status_code, headers = api_instance.create_variation_group_generate_matrix_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupGenerateMatrixResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_generate_matrix_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVariationGroupGenerateMatrixResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_variation_group_publish

> <CreateVariationGroupPublishResponse> create_variation_group_publish(id)

Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
  result = api_instance.create_variation_group_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_publish: #{e}"
end
```

#### Using the create_variation_group_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupPublishResponse>, Integer, Hash)> create_variation_group_publish_with_http_info(id)

```ruby
begin
  # Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
  data, status_code, headers = api_instance.create_variation_group_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_variation_group_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateVariationGroupPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_video_studio_finalize

> <CreateVideoStudioFinalizeResponse> create_video_studio_finalize

Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing's video.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing's video.
  result = api_instance.create_video_studio_finalize
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_video_studio_finalize: #{e}"
end
```

#### Using the create_video_studio_finalize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoStudioFinalizeResponse>, Integer, Hash)> create_video_studio_finalize_with_http_info

```ruby
begin
  # Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing's video.
  data, status_code, headers = api_instance.create_video_studio_finalize_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoStudioFinalizeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_video_studio_finalize_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVideoStudioFinalizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_video_studio_upload_url

> <CreateVideoStudioUploadUrlResponse> create_video_studio_upload_url

Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.
  result = api_instance.create_video_studio_upload_url
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_video_studio_upload_url: #{e}"
end
```

#### Using the create_video_studio_upload_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoStudioUploadUrlResponse>, Integer, Hash)> create_video_studio_upload_url_with_http_info

```ruby
begin
  # Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.
  data, status_code, headers = api_instance.create_video_studio_upload_url_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoStudioUploadUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->create_video_studio_upload_url_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVideoStudioUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_event

> <DeleteEventResponse> delete_event(id)

Delete a draft, or cancel a published event (its page then says it was called off).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Delete a draft, or cancel a published event (its page then says it was called off).
  result = api_instance.delete_event(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_event: #{e}"
end
```

#### Using the delete_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEventResponse>, Integer, Hash)> delete_event_with_http_info(id)

```ruby
begin
  # Delete a draft, or cancel a published event (its page then says it was called off).
  data, status_code, headers = api_instance.delete_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_listing

> <DeleteListingResponse> delete_listing(id, opts)

Delist a listing (optionally narrowed to specific platforms via ?platforms=).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  platforms: 'platforms_example', # String | Comma-separated platform slugs to limit the delist fan-out.
  platform_listing_ids: 'platform_listing_ids_example' # String | Comma-separated platform listing ids — end only those copies (e.g. one eBay site's copy).
}

begin
  # Delist a listing (optionally narrowed to specific platforms via ?platforms=).
  result = api_instance.delete_listing(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing: #{e}"
end
```

#### Using the delete_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteListingResponse>, Integer, Hash)> delete_listing_with_http_info(id, opts)

```ruby
begin
  # Delist a listing (optionally narrowed to specific platforms via ?platforms=).
  data, status_code, headers = api_instance.delete_listing_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platforms** | **String** | Comma-separated platform slugs to limit the delist fan-out. | [optional] |
| **platform_listing_ids** | **String** | Comma-separated platform listing ids — end only those copies (e.g. one eBay site&#39;s copy). | [optional] |

### Return type

**DeleteListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_listing_tag

> <UpdatedResponse> delete_listing_tag(tag)

Remove a tag (any case) from every listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
tag = 'tag_example' # String | 

begin
  # Remove a tag (any case) from every listing.
  result = api_instance.delete_listing_tag(tag)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing_tag: #{e}"
end
```

#### Using the delete_listing_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatedResponse>, Integer, Hash)> delete_listing_tag_with_http_info(tag)

```ruby
begin
  # Remove a tag (any case) from every listing.
  data, status_code, headers = api_instance.delete_listing_tag_with_http_info(tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_listing_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** |  |  |

### Return type

**UpdatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_live_stream_pin_launch

> <OkResponse> delete_live_stream_pin_launch(id)

Unpin the launch from your live show. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Unpin the launch from your live show. Returns `{ ok }`.
  result = api_instance.delete_live_stream_pin_launch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_live_stream_pin_launch: #{e}"
end
```

#### Using the delete_live_stream_pin_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_live_stream_pin_launch_with_http_info(id)

```ruby
begin
  # Unpin the launch from your live show. Returns `{ ok }`.
  data, status_code, headers = api_instance.delete_live_stream_pin_launch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_live_stream_pin_launch_with_http_info: #{e}"
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


## delete_rental_offer

> <UpdateGroupBuyResponse> delete_rental_offer(platform_listing_id)

Stop offering a listing for rent (existing bookings stand).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Stop offering a listing for rent (existing bookings stand).
  result = api_instance.delete_rental_offer(platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_rental_offer: #{e}"
end
```

#### Using the delete_rental_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_rental_offer_with_http_info(platform_listing_id)

```ruby
begin
  # Stop offering a listing for rent (existing bookings stand).
  data, status_code, headers = api_instance.delete_rental_offer_with_http_info(platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_rental_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_story

> <DeleteStoryResponse> delete_story(id)

Take one story slide down before it expires.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Take one story slide down before it expires.
  result = api_instance.delete_story(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_story: #{e}"
end
```

#### Using the delete_story_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStoryResponse>, Integer, Hash)> delete_story_with_http_info(id)

```ruby
begin
  # Take one story slide down before it expires.
  data, status_code, headers = api_instance.delete_story_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_story_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_variation_group

> <UpdateGroupBuyResponse> delete_variation_group(id)

Dissolve a group. Its options stay as ordinary listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Dissolve a group. Its options stay as ordinary listings.
  result = api_instance.delete_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_variation_group: #{e}"
end
```

#### Using the delete_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_variation_group_with_http_info(id)

```ruby
begin
  # Dissolve a group. Its options stay as ordinary listings.
  data, status_code, headers = api_instance.delete_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->delete_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> <EventResponse> get_event(id)

One of your events.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # One of your events.
  result = api_instance.get_event(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(id)

```ruby
begin
  # One of your events.
  data, status_code, headers = api_instance.get_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event_analytic

> <GetEventAnalyticResponse> get_event_analytic(id)

Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).
  result = api_instance.get_event_analytic(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_event_analytic: #{e}"
end
```

#### Using the get_event_analytic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventAnalyticResponse>, Integer, Hash)> get_event_analytic_with_http_info(id)

```ruby
begin
  # Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).
  data, status_code, headers = api_instance.get_event_analytic_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventAnalyticResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_event_analytic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetEventAnalyticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing

> <GetListingResponse> get_listing(id)

Get one listing with its platform rows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one listing with its platform rows.
  result = api_instance.get_listing(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing: #{e}"
end
```

#### Using the get_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingResponse>, Integer, Hash)> get_listing_with_http_info(id)

```ruby
begin
  # Get one listing with its platform rows.
  data, status_code, headers = api_instance.get_listing_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_facet

> <GetListingFacetResponse> get_listing_facet

Distinct brands + categories across listings + inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Distinct brands + categories across listings + inventory.
  result = api_instance.get_listing_facet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_facet: #{e}"
end
```

#### Using the get_listing_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingFacetResponse>, Integer, Hash)> get_listing_facet_with_http_info

```ruby
begin
  # Distinct brands + categories across listings + inventory.
  data, status_code, headers = api_instance.get_listing_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingFacetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetListingFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_sku_exist

> <GetListingSkuExistResponse> get_listing_sku_exist(sku)

Check whether a SKU is already used by one of this user's items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
sku = 'sku_example' # String | 

begin
  # Check whether a SKU is already used by one of this user's items.
  result = api_instance.get_listing_sku_exist(sku)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_sku_exist: #{e}"
end
```

#### Using the get_listing_sku_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingSkuExistResponse>, Integer, Hash)> get_listing_sku_exist_with_http_info(sku)

```ruby
begin
  # Check whether a SKU is already used by one of this user's items.
  data, status_code, headers = api_instance.get_listing_sku_exist_with_http_info(sku)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingSkuExistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_listing_sku_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  |  |

### Return type

**GetListingSkuExistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_live_stream_recap

> <GetLiveStreamRecapResponse> get_live_stream_recap(id)

The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.
  result = api_instance.get_live_stream_recap(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_live_stream_recap: #{e}"
end
```

#### Using the get_live_stream_recap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLiveStreamRecapResponse>, Integer, Hash)> get_live_stream_recap_with_http_info(id)

```ruby
begin
  # The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.
  data, status_code, headers = api_instance.get_live_stream_recap_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLiveStreamRecapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_live_stream_recap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetLiveStreamRecapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_passport

> <GetPassportResponse> get_passport(id)

One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.
  result = api_instance.get_passport(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport: #{e}"
end
```

#### Using the get_passport_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPassportResponse>, Integer, Hash)> get_passport_with_http_info(id)

```ruby
begin
  # One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.
  data, status_code, headers = api_instance.get_passport_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetPassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_passport_draft

> <PassportDraftResponse> get_passport_draft(id)

A passport draft and its passports (photos, serial, tag and label state of each).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # A passport draft and its passports (photos, serial, tag and label state of each).
  result = api_instance.get_passport_draft(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport_draft: #{e}"
end
```

#### Using the get_passport_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportDraftResponse>, Integer, Hash)> get_passport_draft_with_http_info(id)

```ruby
begin
  # A passport draft and its passports (photos, serial, tag and label state of each).
  data, status_code, headers = api_instance.get_passport_draft_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_passport_print

> <GetPassportPrintResponse> get_passport_print(job_id)

Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
job_id = 'job_id_example' # String | 

begin
  # Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.
  result = api_instance.get_passport_print(job_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport_print: #{e}"
end
```

#### Using the get_passport_print_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPassportPrintResponse>, Integer, Hash)> get_passport_print_with_http_info(job_id)

```ruby
begin
  # Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.
  data, status_code, headers = api_instance.get_passport_print_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPassportPrintResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_passport_print_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

**GetPassportPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pricing_setting

> <GetPricingSettingResponse> get_pricing_setting

Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
  result = api_instance.get_pricing_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_setting: #{e}"
end
```

#### Using the get_pricing_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSettingResponse>, Integer, Hash)> get_pricing_setting_with_http_info

```ruby
begin
  # Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
  data, status_code, headers = api_instance.get_pricing_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pricing_sold_comp

> <GetPricingSoldCompResponse> get_pricing_sold_comp

What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
  result = api_instance.get_pricing_sold_comp
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_sold_comp: #{e}"
end
```

#### Using the get_pricing_sold_comp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSoldCompResponse>, Integer, Hash)> get_pricing_sold_comp_with_http_info

```ruby
begin
  # What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
  data, status_code, headers = api_instance.get_pricing_sold_comp_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSoldCompResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_pricing_sold_comp_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSoldCompResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_setting

> <GetRentalSettingResponse> get_rental_setting

The store’s rental defaults (every item inherits them) and its payout timing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # The store’s rental defaults (every item inherits them) and its payout timing.
  result = api_instance.get_rental_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_rental_setting: #{e}"
end
```

#### Using the get_rental_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRentalSettingResponse>, Integer, Hash)> get_rental_setting_with_http_info

```ruby
begin
  # The store’s rental defaults (every item inherits them) and its payout timing.
  data, status_code, headers = api_instance.get_rental_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRentalSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_rental_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetRentalSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_limit

> <GetShopLimitResponse> get_shop_limit

Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.

Per seller account, shared by all your stores. Counts live + scheduled Crossly Shop listings once each; value is the US-dollar shop price x quantity (an auction at max(start, reserve, buy-now)). Drafts, sold/ended listings and Trade Block posts are not counted, and selling frees space at once. `unlimited` is true for sandbox sellers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.
  result = api_instance.get_shop_limit
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_shop_limit: #{e}"
end
```

#### Using the get_shop_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShopLimitResponse>, Integer, Hash)> get_shop_limit_with_http_info

```ruby
begin
  # Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.
  data, status_code, headers = api_instance.get_shop_limit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShopLimitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->get_shop_limit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetShopLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_attendees

> <ListEventAttendeesResponse> list_event_attendees(id)

Who RSVPd: display name, avatar, going or interested, and when. No contact details.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Who RSVPd: display name, avatar, going or interested, and when. No contact details.
  result = api_instance.list_event_attendees(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_event_attendees: #{e}"
end
```

#### Using the list_event_attendees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventAttendeesResponse>, Integer, Hash)> list_event_attendees_with_http_info(id)

```ruby
begin
  # Who RSVPd: display name, avatar, going or interested, and when. No contact details.
  data, status_code, headers = api_instance.list_event_attendees_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventAttendeesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_event_attendees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListEventAttendeesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <ListEventsResponse> list_events

Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.
  result = api_instance.list_events
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventsResponse>, Integer, Hash)> list_events_with_http_info

```ruby
begin
  # Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.
  data, status_code, headers = api_instance.list_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ai_detections

> <ListListingAiDetectionsResponse> list_listing_ai_detections(id)

Crossly's AI-image detections for a listing's photos.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Crossly's AI-image detections for a listing's photos.
  result = api_instance.list_listing_ai_detections(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ai_detections: #{e}"
end
```

#### Using the list_listing_ai_detections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingAiDetectionsResponse>, Integer, Hash)> list_listing_ai_detections_with_http_info(id)

```ruby
begin
  # Crossly's AI-image detections for a listing's photos.
  data, status_code, headers = api_instance.list_listing_ai_detections_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingAiDetectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ai_detections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingAiDetectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_discrepancies

> <ListListingDiscrepanciesResponse> list_listing_discrepancies(id)

List detected marketplace-drift discrepancies for a listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # List detected marketplace-drift discrepancies for a listing.
  result = api_instance.list_listing_discrepancies(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_discrepancies: #{e}"
end
```

#### Using the list_listing_discrepancies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingDiscrepanciesResponse>, Integer, Hash)> list_listing_discrepancies_with_http_info(id)

```ruby
begin
  # List detected marketplace-drift discrepancies for a listing.
  data, status_code, headers = api_instance.list_listing_discrepancies_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingDiscrepanciesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_discrepancies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingDiscrepanciesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_ids

> <ListListingIdsResponse> list_listing_ids

Filter listings → return matching id list (no pagination).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Filter listings → return matching id list (no pagination).
  result = api_instance.list_listing_ids
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ids: #{e}"
end
```

#### Using the list_listing_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingIdsResponse>, Integer, Hash)> list_listing_ids_with_http_info

```ruby
begin
  # Filter listings → return matching id list (no pagination).
  data, status_code, headers = api_instance.list_listing_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingIdsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_ids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListListingIdsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_tag_suggest

> <ListListingTagSuggestResponse> list_listing_tag_suggest(listing_id)

Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); `known` = you already use the tag.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
listing_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); `known` = you already use the tag.
  result = api_instance.list_listing_tag_suggest(listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_tag_suggest: #{e}"
end
```

#### Using the list_listing_tag_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingTagSuggestResponse>, Integer, Hash)> list_listing_tag_suggest_with_http_info(listing_id)

```ruby
begin
  # Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); `known` = you already use the tag.
  data, status_code, headers = api_instance.list_listing_tag_suggest_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingTagSuggestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_tag_suggest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **String** |  |  |

### Return type

**ListListingTagSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_tags

> <ListListingTagsResponse> list_listing_tags(opts)

Your listing tags with how many listings carry each, most used first (case-insensitive; `q` filters).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
opts = {
  q: 'q_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Your listing tags with how many listings carry each, most used first (case-insensitive; `q` filters).
  result = api_instance.list_listing_tags(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_tags: #{e}"
end
```

#### Using the list_listing_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingTagsResponse>, Integer, Hash)> list_listing_tags_with_http_info(opts)

```ruby
begin
  # Your listing tags with how many listings carry each, most used first (case-insensitive; `q` filters).
  data, status_code, headers = api_instance.list_listing_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingTagsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listing_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListListingTagsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listings

> <ListListingsResponse> list_listings(opts)

List active platform listings.

Each row carries `pricing`: `avgAsking` (average price across its active marketplace rows, per-platform overrides and price rules applied) and `avgSale` (average price per unit sold, refunds netted), each `{ amount, currency, count }` or null. Never averaged across currencies.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  platform: 'platform_example', # String | 
  status: 'status_example', # String | 
  sku: 'sku_example', # String | Exact SKU match: look up the row a supplier product maps to.
  updated_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only rows created or changed at or after this time (ISO 8601), oldest change first. Poll with the updatedAt of the last row you saw.
  kind: 'physical', # String | Physical goods or Web3 assets (NFT listings). Omit for both.
  tag: TODO, # AnyOfstringarray | Only listings carrying ANY of these tags (case-insensitive): repeat `tag` or comma-separate.
  still_live: true # Boolean | Only listings still active on at least one marketplace. With status=sold: sold items still buyable somewhere (a delist failed, is pending or never ran).
}

begin
  # List active platform listings.
  result = api_instance.list_listings(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listings: #{e}"
end
```

#### Using the list_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingsResponse>, Integer, Hash)> list_listings_with_http_info(opts)

```ruby
begin
  # List active platform listings.
  data, status_code, headers = api_instance.list_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **platform** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **sku** | **String** | Exact SKU match: look up the row a supplier product maps to. | [optional] |
| **updated_since** | **Time** | Only rows created or changed at or after this time (ISO 8601), oldest change first. Poll with the updatedAt of the last row you saw. | [optional] |
| **kind** | **String** | Physical goods or Web3 assets (NFT listings). Omit for both. | [optional] |
| **tag** | [**AnyOfstringarray**](.md) | Only listings carrying ANY of these tags (case-insensitive): repeat &#x60;tag&#x60; or comma-separate. | [optional] |
| **still_live** | **Boolean** | Only listings still active on at least one marketplace. With status&#x3D;sold: sold items still buyable somewhere (a delist failed, is pending or never ran). | [optional] |

### Return type

**ListListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_live_streams

> <ListLiveStreamsResponse> list_live_streams

Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.
  result = api_instance.list_live_streams
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_live_streams: #{e}"
end
```

#### Using the list_live_streams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLiveStreamsResponse>, Integer, Hash)> list_live_streams_with_http_info

```ruby
begin
  # Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.
  data, status_code, headers = api_instance.list_live_streams_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLiveStreamsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_live_streams_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLiveStreamsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_passport_events

> <ListPassportEventsResponse> list_passport_events(id)

A passport’s event history, newest first (never a buyer or a price).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # A passport’s event history, newest first (never a buyer or a price).
  result = api_instance.list_passport_events(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passport_events: #{e}"
end
```

#### Using the list_passport_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPassportEventsResponse>, Integer, Hash)> list_passport_events_with_http_info(id)

```ruby
begin
  # A passport’s event history, newest first (never a buyer or a price).
  data, status_code, headers = api_instance.list_passport_events_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPassportEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passport_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListPassportEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_passport_print_targets

> <ListPassportPrintTargetsResponse> list_passport_print_targets

Your printer agents (online, printers, default) and the passport label templates each can print.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Your printer agents (online, printers, default) and the passport label templates each can print.
  result = api_instance.list_passport_print_targets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passport_print_targets: #{e}"
end
```

#### Using the list_passport_print_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPassportPrintTargetsResponse>, Integer, Hash)> list_passport_print_targets_with_http_info

```ruby
begin
  # Your printer agents (online, printers, default) and the passport label templates each can print.
  data, status_code, headers = api_instance.list_passport_print_targets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPassportPrintTargetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passport_print_targets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPassportPrintTargetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_passports

> <ListPassportsResponse> list_passports

Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
  result = api_instance.list_passports
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passports: #{e}"
end
```

#### Using the list_passports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPassportsResponse>, Integer, Hash)> list_passports_with_http_info

```ruby
begin
  # Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
  data, status_code, headers = api_instance.list_passports_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPassportsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_passports_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPassportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rental_offers

> <ListRentalOffersResponse> list_rental_offers

What you offer for rent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # What you offer for rent.
  result = api_instance.list_rental_offers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_rental_offers: #{e}"
end
```

#### Using the list_rental_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRentalOffersResponse>, Integer, Hash)> list_rental_offers_with_http_info

```ruby
begin
  # What you offer for rent.
  data, status_code, headers = api_instance.list_rental_offers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRentalOffersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_rental_offers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListRentalOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stories

> <ListStoriesResponse> list_stories

Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.
  result = api_instance.list_stories
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_stories: #{e}"
end
```

#### Using the list_stories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStoriesResponse>, Integer, Hash)> list_stories_with_http_info

```ruby
begin
  # Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.
  data, status_code, headers = api_instance.list_stories_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStoriesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->list_stories_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListStoriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event

> <EventResponse> update_event(id)

Edit an event. Omitted fields are unchanged; null clears.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Edit an event. Omitted fields are unchanged; null clears.
  result = api_instance.update_event(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_event: #{e}"
end
```

#### Using the update_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> update_event_with_http_info(id)

```ruby
begin
  # Edit an event. Omitted fields are unchanged; null clears.
  data, status_code, headers = api_instance.update_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_hotspot

> <UpdateHotspotResponse> update_hotspot

Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
  result = api_instance.update_hotspot
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_hotspot: #{e}"
end
```

#### Using the update_hotspot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateHotspotResponse>, Integer, Hash)> update_hotspot_with_http_info

```ruby
begin
  # Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
  data, status_code, headers = api_instance.update_hotspot_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateHotspotResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_hotspot_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateHotspotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing

> <UpdateListingResponse> update_listing(id)

Edit a listing and fan out update jobs to existing platform listings.

The fields to change go in `changes` (a sparse object, e.g. `{ \"changes\": { \"price\": 24.99 } }`). `data` is accepted as an alias of `changes` (the name create and bulk create use); sending both is a 400. Omit `platforms` to push the edit everywhere the listing is live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit a listing and fan out update jobs to existing platform listings.
  result = api_instance.update_listing(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing: #{e}"
end
```

#### Using the update_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingResponse>, Integer, Hash)> update_listing_with_http_info(id)

```ruby
begin
  # Edit a listing and fan out update jobs to existing platform listings.
  data, status_code, headers = api_instance.update_listing_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_custom

> <UpdateListingCustomResponse> update_listing_custom(id)

Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
  result = api_instance.update_listing_custom(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_custom: #{e}"
end
```

#### Using the update_listing_custom_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingCustomResponse>, Integer, Hash)> update_listing_custom_with_http_info(id)

```ruby
begin
  # Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
  data, status_code, headers = api_instance.update_listing_custom_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingCustomResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_custom_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateListingCustomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_platform_listing

> <UpdateListingPlatformListingResponse> update_listing_platform_listing(id, pl_id)

Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
pl_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.
  result = api_instance.update_listing_platform_listing(id, pl_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_platform_listing: #{e}"
end
```

#### Using the update_listing_platform_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateListingPlatformListingResponse>, Integer, Hash)> update_listing_platform_listing_with_http_info(id, pl_id)

```ruby
begin
  # Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.
  data, status_code, headers = api_instance.update_listing_platform_listing_with_http_info(id, pl_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateListingPlatformListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_listing_platform_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **pl_id** | **String** |  |  |

### Return type

**UpdateListingPlatformListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_live_stream

> <LiveStreamResponse> update_live_stream(id)

Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).
  result = api_instance.update_live_stream(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream: #{e}"
end
```

#### Using the update_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> update_live_stream_with_http_info(id)

```ruby
begin
  # Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).
  data, status_code, headers = api_instance.update_live_stream_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_live_stream_lineup

> <UpdateLiveStreamLineupResponse> update_live_stream_lineup(id)

Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
  result = api_instance.update_live_stream_lineup(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream_lineup: #{e}"
end
```

#### Using the update_live_stream_lineup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLiveStreamLineupResponse>, Integer, Hash)> update_live_stream_lineup_with_http_info(id)

```ruby
begin
  # Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
  data, status_code, headers = api_instance.update_live_stream_lineup_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLiveStreamLineupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_live_stream_lineup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateLiveStreamLineupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_passport

> <UpdatePassportResponse> update_passport(id)

Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).
  result = api_instance.update_passport(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_passport: #{e}"
end
```

#### Using the update_passport_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePassportResponse>, Integer, Hash)> update_passport_with_http_info(id)

```ruby
begin
  # Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).
  data, status_code, headers = api_instance.update_passport_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePassportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_passport_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdatePassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_passport_draft

> <PassportDraftResponse> update_passport_draft(id)

Move a draft to a step, pick its label template, add items or remove draft passports.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Move a draft to a step, pick its label template, add items or remove draft passports.
  result = api_instance.update_passport_draft(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_passport_draft: #{e}"
end
```

#### Using the update_passport_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PassportDraftResponse>, Integer, Hash)> update_passport_draft_with_http_info(id)

```ruby
begin
  # Move a draft to a step, pick its label template, add items or remove draft passports.
  data, status_code, headers = api_instance.update_passport_draft_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PassportDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_passport_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pricing_setting

> <GetPricingSettingResponse> update_pricing_setting

Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.
  result = api_instance.update_pricing_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_pricing_setting: #{e}"
end
```

#### Using the update_pricing_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPricingSettingResponse>, Integer, Hash)> update_pricing_setting_with_http_info

```ruby
begin
  # Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.
  data, status_code, headers = api_instance.update_pricing_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPricingSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_pricing_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_offer

> <UpdateRentalOfferResponse> update_rental_offer(platform_listing_id)

Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.
  result = api_instance.update_rental_offer(platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_offer: #{e}"
end
```

#### Using the update_rental_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateRentalOfferResponse>, Integer, Hash)> update_rental_offer_with_http_info(platform_listing_id)

```ruby
begin
  # Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.
  data, status_code, headers = api_instance.update_rental_offer_with_http_info(platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateRentalOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateRentalOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_setting

> <GetRentalSettingResponse> update_rental_setting

Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new

begin
  # Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).
  result = api_instance.update_rental_setting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_setting: #{e}"
end
```

#### Using the update_rental_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRentalSettingResponse>, Integer, Hash)> update_rental_setting_with_http_info

```ruby
begin
  # Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).
  data, status_code, headers = api_instance.update_rental_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRentalSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_rental_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetRentalSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_variation_group

> <CreateVariationGroupResponse> update_variation_group(id)

Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ListingsApi.new
id = 'id_example' # String | 

begin
  # Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).
  result = api_instance.update_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_variation_group: #{e}"
end
```

#### Using the update_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVariationGroupResponse>, Integer, Hash)> update_variation_group_with_http_info(id)

```ruby
begin
  # Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).
  data, status_code, headers = api_instance.update_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ListingsApi->update_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

