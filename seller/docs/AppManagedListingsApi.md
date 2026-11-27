# Crossly::AppManagedListingsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_listing_command_ack**](AppManagedListingsApi.md#create_listing_command_ack) | **POST** /v1/listing-commands/{id}/ack | Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h. |
| [**create_listing_command_complete**](AppManagedListingsApi.md#create_listing_command_complete) | **POST** /v1/listing-commands/{id}/complete | Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId. |
| [**create_listing_command_fail**](AppManagedListingsApi.md#create_listing_command_fail) | **POST** /v1/listing-commands/{id}/fail | Report a command failed, with a reason the seller will see. |
| [**create_listing_event**](AppManagedListingsApi.md#create_listing_event) | **POST** /v1/listings/{id}/events | Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages. |
| [**create_listing_event2**](AppManagedListingsApi.md#create_listing_event2) | **POST** /v1/listings/events | Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest. |
| [**create_listing_link**](AppManagedListingsApi.md#create_listing_link) | **POST** /v1/listings/link | Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent. |
| [**create_listing_link_bulk**](AppManagedListingsApi.md#create_listing_link_bulk) | **POST** /v1/listings/link/bulk | Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe. |
| [**create_listing_platform_reclone**](AppManagedListingsApi.md#create_listing_platform_reclone) | **POST** /v1/listings/{id}/platforms/{platform}/reclone | End this marketplace item and relist it under Crossly. Requires consent: true. |
| [**create_listing_platform_reclone_cancel**](AppManagedListingsApi.md#create_listing_platform_reclone_cancel) | **POST** /v1/listings/{id}/platforms/{platform}/reclone/cancel | Cancel a relist still waiting for you to end the old item. |
| [**create_listing_platform_reclone_seller_ended**](AppManagedListingsApi.md#create_listing_platform_reclone_seller_ended) | **POST** /v1/listings/{id}/platforms/{platform}/reclone/seller-ended | You ended the old item on the marketplace yourself (Done). |
| [**create_listing_platform_take_over**](AppManagedListingsApi.md#create_listing_platform_take_over) | **POST** /v1/listings/{id}/platforms/{platform}/take-over | Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection). |
| [**create_listing_unlink**](AppManagedListingsApi.md#create_listing_unlink) | **POST** /v1/listings/{id}/unlink | Stop the app managing this listing. It stays live everywhere; the app&#39;s Crossly Shop fee ends for future sales. |
| [**create_order_event**](AppManagedListingsApi.md#create_order_event) | **POST** /v1/orders/events | Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest. |
| [**create_order_take_over**](AppManagedListingsApi.md#create_order_take_over) | **POST** /v1/orders/{id}/take-over | Take over the app-managed item behind an order; its actions then go through your own connection. |
| [**get_listing_management**](AppManagedListingsApi.md#get_listing_management) | **GET** /v1/listings/{id}/management | Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces. |
| [**get_listing_platform_reclone**](AppManagedListingsApi.md#get_listing_platform_reclone) | **GET** /v1/listings/{id}/platforms/{platform}/reclone | The latest relist-under-Crossly run for this listing on a platform (null when none). |
| [**list_listing_commands**](AppManagedListingsApi.md#list_listing_commands) | **GET** /v1/listing-commands | Your app&#39;s listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first. |


## create_listing_command_ack

> <ListListingCommandsItem> create_listing_command_ack(id)

Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.
  result = api_instance.create_listing_command_ack(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_ack: #{e}"
end
```

#### Using the create_listing_command_ack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingCommandsItem>, Integer, Hash)> create_listing_command_ack_with_http_info(id)

```ruby
begin
  # Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.
  data, status_code, headers = api_instance.create_listing_command_ack_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingCommandsItem>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_ack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_command_complete

> <ListListingCommandsItem> create_listing_command_complete(id)

Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.
  result = api_instance.create_listing_command_complete(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_complete: #{e}"
end
```

#### Using the create_listing_command_complete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingCommandsItem>, Integer, Hash)> create_listing_command_complete_with_http_info(id)

```ruby
begin
  # Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.
  data, status_code, headers = api_instance.create_listing_command_complete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingCommandsItem>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_command_fail

> <ListListingCommandsItem> create_listing_command_fail(id)

Report a command failed, with a reason the seller will see.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Report a command failed, with a reason the seller will see.
  result = api_instance.create_listing_command_fail(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_fail: #{e}"
end
```

#### Using the create_listing_command_fail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingCommandsItem>, Integer, Hash)> create_listing_command_fail_with_http_info(id)

```ruby
begin
  # Report a command failed, with a reason the seller will see.
  data, status_code, headers = api_instance.create_listing_command_fail_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingCommandsItem>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_command_fail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_event

> <CreateListingEventResponse> create_listing_event(id)

Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.

Idempotent on `eventId`. State events apply only when `sequence` is higher than the last applied one (else `stale`, ignored). `item.sold` runs Crossly's sale cascade (other channels delist) and is never dropped as stale.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.
  result = api_instance.create_listing_event(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_event: #{e}"
end
```

#### Using the create_listing_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingEventResponse>, Integer, Hash)> create_listing_event_with_http_info(id)

```ruby
begin
  # Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.
  data, status_code, headers = api_instance.create_listing_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_event2

> <CreateListingEvent2Response> create_listing_event2

Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new

begin
  # Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.
  result = api_instance.create_listing_event2
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_event2: #{e}"
end
```

#### Using the create_listing_event2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingEvent2Response>, Integer, Hash)> create_listing_event2_with_http_info

```ruby
begin
  # Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.
  data, status_code, headers = api_instance.create_listing_event2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingEvent2Response>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_event2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingEvent2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_link

> <CreateListingLinkResponse> create_listing_link

Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.

Direct when Crossly holds the seller's own connection (verified by item id: exists, active, theirs); relayed otherwise, on your attestation plus `snapshot`. The listing shows \"Managed by <your app>\". Your revenue share is charged only on sales made on Crossly Shop; sales on eBay or any other marketplace never carry an app fee.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new

begin
  # Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.
  result = api_instance.create_listing_link
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_link: #{e}"
end
```

#### Using the create_listing_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingLinkResponse>, Integer, Hash)> create_listing_link_with_http_info

```ruby
begin
  # Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.
  data, status_code, headers = api_instance.create_listing_link_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_link_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_link_bulk

> <CreateListingLinkBulkResponse> create_listing_link_bulk

Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new

begin
  # Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.
  result = api_instance.create_listing_link_bulk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_link_bulk: #{e}"
end
```

#### Using the create_listing_link_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingLinkBulkResponse>, Integer, Hash)> create_listing_link_bulk_with_http_info

```ruby
begin
  # Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.
  data, status_code, headers = api_instance.create_listing_link_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingLinkBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_link_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateListingLinkBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_platform_reclone

> <CreateListingPlatformRecloneResponse> create_listing_platform_reclone(id, platform)

End this marketplace item and relist it under Crossly. Requires consent: true.

Loses the item's watchers, sold count, sales history, Promoted Listings and open offers; the item number changes. Refused while an order awaits fulfilment or an auction has bids. The new listing is published only after the old one is confirmed ended.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
platform = 'platform_example' # String | 

begin
  # End this marketplace item and relist it under Crossly. Requires consent: true.
  result = api_instance.create_listing_platform_reclone(id, platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone: #{e}"
end
```

#### Using the create_listing_platform_reclone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingPlatformRecloneResponse>, Integer, Hash)> create_listing_platform_reclone_with_http_info(id, platform)

```ruby
begin
  # End this marketplace item and relist it under Crossly. Requires consent: true.
  data, status_code, headers = api_instance.create_listing_platform_reclone_with_http_info(id, platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingPlatformRecloneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_platform_reclone_cancel

> <CreateListingPlatformRecloneResponse> create_listing_platform_reclone_cancel(id, platform)

Cancel a relist still waiting for you to end the old item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
platform = 'platform_example' # String | 

begin
  # Cancel a relist still waiting for you to end the old item.
  result = api_instance.create_listing_platform_reclone_cancel(id, platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone_cancel: #{e}"
end
```

#### Using the create_listing_platform_reclone_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingPlatformRecloneResponse>, Integer, Hash)> create_listing_platform_reclone_cancel_with_http_info(id, platform)

```ruby
begin
  # Cancel a relist still waiting for you to end the old item.
  data, status_code, headers = api_instance.create_listing_platform_reclone_cancel_with_http_info(id, platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingPlatformRecloneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_platform_reclone_seller_ended

> <CreateListingPlatformRecloneResponse> create_listing_platform_reclone_seller_ended(id, platform)

You ended the old item on the marketplace yourself (Done).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
platform = 'platform_example' # String | 

begin
  # You ended the old item on the marketplace yourself (Done).
  result = api_instance.create_listing_platform_reclone_seller_ended(id, platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone_seller_ended: #{e}"
end
```

#### Using the create_listing_platform_reclone_seller_ended_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingPlatformRecloneResponse>, Integer, Hash)> create_listing_platform_reclone_seller_ended_with_http_info(id, platform)

```ruby
begin
  # You ended the old item on the marketplace yourself (Done).
  data, status_code, headers = api_instance.create_listing_platform_reclone_seller_ended_with_http_info(id, platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingPlatformRecloneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_reclone_seller_ended_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_platform_take_over

> <CreateListingPlatformTakeOverResponse> create_listing_platform_take_over(id, platform)

Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).

Verifies the item is on your connected account first. mode 'direct' (default) keeps the app as manager; 'full' also unlinks it (listing.unlinked reason 'taken_over'; its Crossly Shop fee stops). An app command already acknowledged answers 409 app_command_in_flight until you send confirm: true.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
platform = 'platform_example' # String | 

begin
  # Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).
  result = api_instance.create_listing_platform_take_over(id, platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_take_over: #{e}"
end
```

#### Using the create_listing_platform_take_over_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingPlatformTakeOverResponse>, Integer, Hash)> create_listing_platform_take_over_with_http_info(id, platform)

```ruby
begin
  # Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).
  data, status_code, headers = api_instance.create_listing_platform_take_over_with_http_info(id, platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingPlatformTakeOverResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_platform_take_over_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |

### Return type

**CreateListingPlatformTakeOverResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_listing_unlink

> <CreateListingUnlinkResponse> create_listing_unlink(id)

Stop the app managing this listing. It stays live everywhere; the app's Crossly Shop fee ends for future sales.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Stop the app managing this listing. It stays live everywhere; the app's Crossly Shop fee ends for future sales.
  result = api_instance.create_listing_unlink(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_unlink: #{e}"
end
```

#### Using the create_listing_unlink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListingUnlinkResponse>, Integer, Hash)> create_listing_unlink_with_http_info(id)

```ruby
begin
  # Stop the app managing this listing. It stays live everywhere; the app's Crossly Shop fee ends for future sales.
  data, status_code, headers = api_instance.create_listing_unlink_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListingUnlinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_listing_unlink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateListingUnlinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_event

> <CreateOrderEventResponse> create_order_event

Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new

begin
  # Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.
  result = api_instance.create_order_event
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_order_event: #{e}"
end
```

#### Using the create_order_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderEventResponse>, Integer, Hash)> create_order_event_with_http_info

```ruby
begin
  # Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.
  data, status_code, headers = api_instance.create_order_event_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_order_event_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateOrderEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order_take_over

> <CreateOrderTakeOverResponse> create_order_take_over(id)

Take over the app-managed item behind an order; its actions then go through your own connection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Take over the app-managed item behind an order; its actions then go through your own connection.
  result = api_instance.create_order_take_over(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_order_take_over: #{e}"
end
```

#### Using the create_order_take_over_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderTakeOverResponse>, Integer, Hash)> create_order_take_over_with_http_info(id)

```ruby
begin
  # Take over the app-managed item behind an order; its actions then go through your own connection.
  data, status_code, headers = api_instance.create_order_take_over_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderTakeOverResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->create_order_take_over_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderTakeOverResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_management

> <GetListingManagementResponse> get_listing_management(id)

Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.
  result = api_instance.get_listing_management(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->get_listing_management: #{e}"
end
```

#### Using the get_listing_management_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingManagementResponse>, Integer, Hash)> get_listing_management_with_http_info(id)

```ruby
begin
  # Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.
  data, status_code, headers = api_instance.get_listing_management_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingManagementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->get_listing_management_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetListingManagementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_platform_reclone

> <GetListingPlatformRecloneResponse> get_listing_platform_reclone(id, platform)

The latest relist-under-Crossly run for this listing on a platform (null when none).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
platform = 'platform_example' # String | 

begin
  # The latest relist-under-Crossly run for this listing on a platform (null when none).
  result = api_instance.get_listing_platform_reclone(id, platform)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->get_listing_platform_reclone: #{e}"
end
```

#### Using the get_listing_platform_reclone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingPlatformRecloneResponse>, Integer, Hash)> get_listing_platform_reclone_with_http_info(id, platform)

```ruby
begin
  # The latest relist-under-Crossly run for this listing on a platform (null when none).
  data, status_code, headers = api_instance.get_listing_platform_reclone_with_http_info(id, platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingPlatformRecloneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->get_listing_platform_reclone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |

### Return type

**GetListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_listing_commands

> <ListListingCommandsResponse> list_listing_commands(opts)

Your app's listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AppManagedListingsApi.new
opts = {
  state: 'state_example', # String | Comma-separated: pending, acked, completed, failed, expired, cancelled
  type: 'type_example', # String | Comma-separated: delist, update, relist, submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer
  limit: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Your app's listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.
  result = api_instance.list_listing_commands(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->list_listing_commands: #{e}"
end
```

#### Using the list_listing_commands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListListingCommandsResponse>, Integer, Hash)> list_listing_commands_with_http_info(opts)

```ruby
begin
  # Your app's listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.
  data, status_code, headers = api_instance.list_listing_commands_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListListingCommandsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AppManagedListingsApi->list_listing_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | Comma-separated: pending, acked, completed, failed, expired, cancelled | [optional] |
| **type** | **String** | Comma-separated: delist, update, relist, submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer | [optional] |
| **limit** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

**ListListingCommandsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

