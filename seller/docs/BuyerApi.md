# Crossly::BuyerApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_spatial_auction_room_bid**](BuyerApi.md#create_spatial_auction_room_bid) | **POST** /v1/spatial/auction/rooms/{sceneId}/bid | Bid on the lot currently up in a room. |


## create_spatial_auction_room_bid

> <CreateSpatialAuctionRoomBidResponse> create_spatial_auction_room_bid(scene_id)

Bid on the lot currently up in a room.

Bids on whatever the auctioneer has up RIGHT NOW. Pass `lotId` to say which lot you believe that is: it is checked against the rostrum rather than used in its place, and a mismatch answers 409 with the lot that is actually up, so a stale catalogue cannot buy you something you never looked at. `amountCents` is CENTS and must be at least the room state's `minimumNextBidCents` — do not compute that yourself, because the opening bid on a lot is floored at the START price rather than start + step. Below it you get 400 `bid_too_low` carrying `details.minimumNextBidCents`, which is the figure the transaction itself used; raise to that and retry. THIS AUCTION HOUSE SELLS DIGITAL GOODS ONLY. A physical lot is refused 403 `forbidden` with `details.reason: \"physical_lot\"`, checked against the listing on every single bid rather than once when the room was set up. Bids by one person on one lot are throttled to a few per second — 429 `bidding_too_fast` carries `retryInSeconds`. A hammered or skipped lot answers 409 `lot_closed`. A room you may not enter answers 404, the same as one that does not exist. Success is the bid RECORDED, not the lot won: the reply names the topic the price moves on, and somebody may outbid you on the next frame.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BuyerApi.new
scene_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Bid on the lot currently up in a room.
  result = api_instance.create_spatial_auction_room_bid(scene_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BuyerApi->create_spatial_auction_room_bid: #{e}"
end
```

#### Using the create_spatial_auction_room_bid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialAuctionRoomBidResponse>, Integer, Hash)> create_spatial_auction_room_bid_with_http_info(scene_id)

```ruby
begin
  # Bid on the lot currently up in a room.
  data, status_code, headers = api_instance.create_spatial_auction_room_bid_with_http_info(scene_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialAuctionRoomBidResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BuyerApi->create_spatial_auction_room_bid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scene_id** | **String** |  |  |

### Return type

**CreateSpatialAuctionRoomBidResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

