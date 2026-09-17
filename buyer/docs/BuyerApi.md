# CrosslyBuyer::BuyerApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_activity**](BuyerApi.md#create_buyer_activity) | **POST** /v1/buyer/activity | Report an item your user is looking at, and get our answer. |
| [**create_buyer_cart_item**](BuyerApi.md#create_buyer_cart_item) | **POST** /v1/buyer/cart/items | Add a listing to your cart. |
| [**create_buyer_cart_quote**](BuyerApi.md#create_buyer_cart_quote) | **POST** /v1/buyer/cart/quote | Price the cart, delivered — item, shipping, tax, total. |
| [**create_buyer_offer**](BuyerApi.md#create_buyer_offer) | **POST** /v1/buyer/offers | Offer a price on a listing. |
| [**create_buyer_wishlist**](BuyerApi.md#create_buyer_wishlist) | **POST** /v1/buyer/wishlists | Create a wishlist. |
| [**create_buyer_wishlist_item**](BuyerApi.md#create_buyer_wishlist_item) | **POST** /v1/buyer/wishlists/{id}/items | Add a listing to a wishlist. |
| [**delete_buyer_cart_item**](BuyerApi.md#delete_buyer_cart_item) | **DELETE** /v1/buyer/cart/items/{id} | Remove a line from your cart. |
| [**get_buyer_preference**](BuyerApi.md#get_buyer_preference) | **GET** /v1/buyer/preferences | The shopping profile derived from that activity. |
| [**get_buyer_profile**](BuyerApi.md#get_buyer_profile) | **GET** /v1/buyer/profile | Your Crossly shopping profile — name, email, saved address, Bucks balance. |
| [**list_buyer_activity**](BuyerApi.md#list_buyer_activity) | **GET** /v1/buyer/activity | What this buyer has compared lately. |
| [**list_buyer_cart**](BuyerApi.md#list_buyer_cart) | **GET** /v1/buyer/cart | What is in your Crossly cart. |
| [**list_buyer_cashback**](BuyerApi.md#list_buyer_cashback) | **GET** /v1/buyer/cashback | Your Scout cashback — pending, confirmed, paid. |
| [**list_buyer_orders**](BuyerApi.md#list_buyer_orders) | **GET** /v1/buyer/orders | What you have bought on Crossly, newest first. |
| [**list_buyer_wishlist_items**](BuyerApi.md#list_buyer_wishlist_items) | **GET** /v1/buyer/wishlists/{id}/items | What is on one wishlist. |
| [**list_buyer_wishlists**](BuyerApi.md#list_buyer_wishlists) | **GET** /v1/buyer/wishlists | Your wishlists. |


## create_buyer_activity

> <CreateBuyerActivityResponse> create_buyer_activity(inline_object4)

Report an item your user is looking at, and get our answer.

Records the look and returns whether Crossly has the item and at what price. Send an identifier and a store DOMAIN — a full URL is refused. Nothing about the page itself is stored.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
inline_object4 = CrosslyBuyer::InlineObject4.new({namespace: 'gtin', value: 'value_example'}) # InlineObject4 | 

begin
  # Report an item your user is looking at, and get our answer.
  result = api_instance.create_buyer_activity(inline_object4)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_activity: #{e}"
end
```

#### Using the create_buyer_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerActivityResponse>, Integer, Hash)> create_buyer_activity_with_http_info(inline_object4)

```ruby
begin
  # Report an item your user is looking at, and get our answer.
  data, status_code, headers = api_instance.create_buyer_activity_with_http_info(inline_object4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerActivityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object4** | [**InlineObject4**](InlineObject4.md) |  |  |

### Return type

[**CreateBuyerActivityResponse**](CreateBuyerActivityResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_cart_item

> <CreateBuyerCartItemResponse> create_buyer_cart_item(inline_object2)

Add a listing to your cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
inline_object2 = CrosslyBuyer::InlineObject2.new({listing_slug: 'listing_slug_example'}) # InlineObject2 | 

begin
  # Add a listing to your cart.
  result = api_instance.create_buyer_cart_item(inline_object2)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item: #{e}"
end
```

#### Using the create_buyer_cart_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCartItemResponse>, Integer, Hash)> create_buyer_cart_item_with_http_info(inline_object2)

```ruby
begin
  # Add a listing to your cart.
  data, status_code, headers = api_instance.create_buyer_cart_item_with_http_info(inline_object2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCartItemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object2** | [**InlineObject2**](InlineObject2.md) |  |  |

### Return type

[**CreateBuyerCartItemResponse**](CreateBuyerCartItemResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_cart_quote

> <CreateBuyerCartQuoteResponse> create_buyer_cart_quote

Price the cart, delivered — item, shipping, tax, total.

Runs the real checkout cascade and returns the totals instead of charging. Nothing is purchased. `taxComplete: false` means there is no saved delivery address, so the total is a floor rather than a final figure.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Price the cart, delivered — item, shipping, tax, total.
  result = api_instance.create_buyer_cart_quote
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_quote: #{e}"
end
```

#### Using the create_buyer_cart_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCartQuoteResponse>, Integer, Hash)> create_buyer_cart_quote_with_http_info

```ruby
begin
  # Price the cart, delivered — item, shipping, tax, total.
  data, status_code, headers = api_instance.create_buyer_cart_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCartQuoteResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateBuyerCartQuoteResponse**](CreateBuyerCartQuoteResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_offer

> <CreateBuyerOfferResponse> create_buyer_offer(inline_object3)

Offer a price on a listing.

Sends an offer to the seller. Spends nothing — a seller accepting still leaves you to complete checkout. Offers at or above the asking price are refused; buy it instead.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
inline_object3 = CrosslyBuyer::InlineObject3.new({listing_slug: 'listing_slug_example', amount_cents: 37}) # InlineObject3 | 

begin
  # Offer a price on a listing.
  result = api_instance.create_buyer_offer(inline_object3)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer: #{e}"
end
```

#### Using the create_buyer_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOfferResponse>, Integer, Hash)> create_buyer_offer_with_http_info(inline_object3)

```ruby
begin
  # Offer a price on a listing.
  data, status_code, headers = api_instance.create_buyer_offer_with_http_info(inline_object3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOfferResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object3** | [**InlineObject3**](InlineObject3.md) |  |  |

### Return type

[**CreateBuyerOfferResponse**](CreateBuyerOfferResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_wishlist

> <CreateBuyerWishlistResponse> create_buyer_wishlist(inline_object)

Create a wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
inline_object = CrosslyBuyer::InlineObject.new({name: 'name_example'}) # InlineObject | 

begin
  # Create a wishlist.
  result = api_instance.create_buyer_wishlist(inline_object)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist: #{e}"
end
```

#### Using the create_buyer_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistResponse>, Integer, Hash)> create_buyer_wishlist_with_http_info(inline_object)

```ruby
begin
  # Create a wishlist.
  data, status_code, headers = api_instance.create_buyer_wishlist_with_http_info(inline_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object** | [**InlineObject**](InlineObject.md) |  |  |

### Return type

[**CreateBuyerWishlistResponse**](CreateBuyerWishlistResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_wishlist_item

> <CreateBuyerWishlistItemResponse> create_buyer_wishlist_item(id, inline_object1)

Add a listing to a wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
inline_object1 = CrosslyBuyer::InlineObject1.new({listing_slug: 'listing_slug_example'}) # InlineObject1 | 

begin
  # Add a listing to a wishlist.
  result = api_instance.create_buyer_wishlist_item(id, inline_object1)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_item: #{e}"
end
```

#### Using the create_buyer_wishlist_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistItemResponse>, Integer, Hash)> create_buyer_wishlist_item_with_http_info(id, inline_object1)

```ruby
begin
  # Add a listing to a wishlist.
  data, status_code, headers = api_instance.create_buyer_wishlist_item_with_http_info(id, inline_object1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistItemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **inline_object1** | [**InlineObject1**](InlineObject1.md) |  |  |

### Return type

[**CreateBuyerWishlistItemResponse**](CreateBuyerWishlistItemResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_buyer_cart_item

> delete_buyer_cart_item(id)

Remove a line from your cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove a line from your cart.
  api_instance.delete_buyer_cart_item(id)
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_item: #{e}"
end
```

#### Using the delete_buyer_cart_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_buyer_cart_item_with_http_info(id)

```ruby
begin
  # Remove a line from your cart.
  data, status_code, headers = api_instance.delete_buyer_cart_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_preference

> <GetBuyerPreferenceResponse> get_buyer_preference

The shopping profile derived from that activity.

Derived, never declared — there is no preferences form anywhere. `matchRate` is the share of this person's searches Crossly could answer; a low number is an inventory problem, not a personalisation one, which is why it is here.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The shopping profile derived from that activity.
  result = api_instance.get_buyer_preference
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_preference: #{e}"
end
```

#### Using the get_buyer_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPreferenceResponse>, Integer, Hash)> get_buyer_preference_with_http_info

```ruby
begin
  # The shopping profile derived from that activity.
  data, status_code, headers = api_instance.get_buyer_preference_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPreferenceResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_preference_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBuyerPreferenceResponse**](GetBuyerPreferenceResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_profile

> <GetBuyerProfileResponse> get_buyer_profile

Your Crossly shopping profile — name, email, saved address, Bucks balance.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your Crossly shopping profile — name, email, saved address, Bucks balance.
  result = api_instance.get_buyer_profile
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_profile: #{e}"
end
```

#### Using the get_buyer_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerProfileResponse>, Integer, Hash)> get_buyer_profile_with_http_info

```ruby
begin
  # Your Crossly shopping profile — name, email, saved address, Bucks balance.
  data, status_code, headers = api_instance.get_buyer_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerProfileResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBuyerProfileResponse**](GetBuyerProfileResponse.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_activity

> <V1List> list_buyer_activity

What this buyer has compared lately.

Newest first, and only as far back as the retention window — the link between a person and a comparison is dropped after 180 days, so this thins out rather than growing forever.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What this buyer has compared lately.
  result = api_instance.list_buyer_activity
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_activity: #{e}"
end
```

#### Using the list_buyer_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_activity_with_http_info

```ruby
begin
  # What this buyer has compared lately.
  data, status_code, headers = api_instance.list_buyer_activity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_activity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cart

> <V1List> list_buyer_cart

What is in your Crossly cart.

Line items with the price captured when each was added. This is NOT a quote — shipping, tax and any discounts are computed at checkout against a delivery address, and the sum of these lines is not what you will be charged.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What is in your Crossly cart.
  result = api_instance.list_buyer_cart
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart: #{e}"
end
```

#### Using the list_buyer_cart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_cart_with_http_info

```ruby
begin
  # What is in your Crossly cart.
  data, status_code, headers = api_instance.list_buyer_cart_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cashback

> <V1List> list_buyer_cashback(opts)

Your Scout cashback — pending, confirmed, paid.

Newest first. `pending` means an order was reported and the retailer's return window has not closed; nothing is paid until it does. `expired` means a click was never reported as converting, which is the ordinary outcome for most clicks.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  status: 'pending', # String | 
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Your Scout cashback — pending, confirmed, paid.
  result = api_instance.list_buyer_cashback(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cashback: #{e}"
end
```

#### Using the list_buyer_cashback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_cashback_with_http_info(opts)

```ruby
begin
  # Your Scout cashback — pending, confirmed, paid.
  data, status_code, headers = api_instance.list_buyer_cashback_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cashback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_orders

> <V1List> list_buyer_orders(opts)

What you have bought on Crossly, newest first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # What you have bought on Crossly, newest first.
  result = api_instance.list_buyer_orders(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_orders: #{e}"
end
```

#### Using the list_buyer_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_orders_with_http_info(opts)

```ruby
begin
  # What you have bought on Crossly, newest first.
  data, status_code, headers = api_instance.list_buyer_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_wishlist_items

> <V1List> list_buyer_wishlist_items(id)

What is on one wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # What is on one wishlist.
  result = api_instance.list_buyer_wishlist_items(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_items: #{e}"
end
```

#### Using the list_buyer_wishlist_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_wishlist_items_with_http_info(id)

```ruby
begin
  # What is on one wishlist.
  data, status_code, headers = api_instance.list_buyer_wishlist_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_wishlists

> <V1List> list_buyer_wishlists

Your wishlists.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your wishlists.
  result = api_instance.list_buyer_wishlists
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlists: #{e}"
end
```

#### Using the list_buyer_wishlists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_buyer_wishlists_with_http_info

```ruby
begin
  # Your wishlists.
  data, status_code, headers = api_instance.list_buyer_wishlists_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlists_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

