# Crossly::TradeBlockApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_trade_block_evolution_claim**](TradeBlockApi.md#create_trade_block_evolution_claim) | **POST** /v1/trade-block/evolutions/{id}/claim | Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks. |
| [**create_trade_block_evolution_recipe**](TradeBlockApi.md#create_trade_block_evolution_recipe) | **POST** /v1/trade-block/evolution-recipes | Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves. |
| [**create_trade_block_offer_respond**](TradeBlockApi.md#create_trade_block_offer_respond) | **POST** /v1/trade-block/offers/{id}/respond | Accept, decline, counter, or withdraw a Trade Block offer. |
| [**create_trade_block_post_close**](TradeBlockApi.md#create_trade_block_post_close) | **POST** /v1/trade-block/posts/{id}/close | Close one of your posts so it stops taking offers. |
| [**create_trade_block_post_offer**](TradeBlockApi.md#create_trade_block_post_offer) | **POST** /v1/trade-block/posts/{id}/offers | Respond to a post with a concrete swap: items on each side (0..N), optional cash. |
| [**create_trade_block_set_recipe**](TradeBlockApi.md#create_trade_block_set_recipe) | **POST** /v1/trade-block/set-recipes | Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves. |
| [**get_trade_block_evolution**](TradeBlockApi.md#get_trade_block_evolution) | **GET** /v1/trade-block/evolutions | List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM. |
| [**get_trade_block_post**](TradeBlockApi.md#get_trade_block_post) | **GET** /v1/trade-block/posts | Browse open Trade Block posts (wants + offers) on the Crossly Market. |
| [**get_trade_block_post_by_id**](TradeBlockApi.md#get_trade_block_post_by_id) | **GET** /v1/trade-block/posts/{id} | Get one Trade Block post with its items and open-offer count. |
| [**get_trade_block_trade**](TradeBlockApi.md#get_trade_block_trade) | **GET** /v1/trade-block/trades | List the trades you are a party to, newest first. |


## create_trade_block_evolution_claim

> <CreateTradeBlockEvolutionClaimResponse> create_trade_block_evolution_claim(id)

Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
id = 'id_example' # String | 

begin
  # Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.
  result = api_instance.create_trade_block_evolution_claim(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_evolution_claim: #{e}"
end
```

#### Using the create_trade_block_evolution_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradeBlockEvolutionClaimResponse>, Integer, Hash)> create_trade_block_evolution_claim_with_http_info(id)

```ruby
begin
  # Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.
  data, status_code, headers = api_instance.create_trade_block_evolution_claim_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradeBlockEvolutionClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_evolution_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateTradeBlockEvolutionClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_trade_block_evolution_recipe

> <CreateTradeBlockEvolutionRecipeResponse> create_trade_block_evolution_recipe

Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new

begin
  # Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.
  result = api_instance.create_trade_block_evolution_recipe
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_evolution_recipe: #{e}"
end
```

#### Using the create_trade_block_evolution_recipe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradeBlockEvolutionRecipeResponse>, Integer, Hash)> create_trade_block_evolution_recipe_with_http_info

```ruby
begin
  # Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.
  data, status_code, headers = api_instance.create_trade_block_evolution_recipe_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradeBlockEvolutionRecipeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_evolution_recipe_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateTradeBlockEvolutionRecipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_trade_block_offer_respond

> <CreateTradeBlockOfferRespondResponse> create_trade_block_offer_respond(id)

Accept, decline, counter, or withdraw a Trade Block offer.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
id = 'id_example' # String | 

begin
  # Accept, decline, counter, or withdraw a Trade Block offer.
  result = api_instance.create_trade_block_offer_respond(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_offer_respond: #{e}"
end
```

#### Using the create_trade_block_offer_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradeBlockOfferRespondResponse>, Integer, Hash)> create_trade_block_offer_respond_with_http_info(id)

```ruby
begin
  # Accept, decline, counter, or withdraw a Trade Block offer.
  data, status_code, headers = api_instance.create_trade_block_offer_respond_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradeBlockOfferRespondResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_offer_respond_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateTradeBlockOfferRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_trade_block_post_close

> <OkResponse> create_trade_block_post_close(id)

Close one of your posts so it stops taking offers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
id = 'id_example' # String | 

begin
  # Close one of your posts so it stops taking offers.
  result = api_instance.create_trade_block_post_close(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_post_close: #{e}"
end
```

#### Using the create_trade_block_post_close_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_trade_block_post_close_with_http_info(id)

```ruby
begin
  # Close one of your posts so it stops taking offers.
  data, status_code, headers = api_instance.create_trade_block_post_close_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_post_close_with_http_info: #{e}"
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


## create_trade_block_post_offer

> <IdResponse> create_trade_block_post_offer(id)

Respond to a post with a concrete swap: items on each side (0..N), optional cash.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
id = 'id_example' # String | 

begin
  # Respond to a post with a concrete swap: items on each side (0..N), optional cash.
  result = api_instance.create_trade_block_post_offer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_post_offer: #{e}"
end
```

#### Using the create_trade_block_post_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdResponse>, Integer, Hash)> create_trade_block_post_offer_with_http_info(id)

```ruby
begin
  # Respond to a post with a concrete swap: items on each side (0..N), optional cash.
  data, status_code, headers = api_instance.create_trade_block_post_offer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_post_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_trade_block_set_recipe

> <CreateTradeBlockSetRecipeResponse> create_trade_block_set_recipe

Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new

begin
  # Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.
  result = api_instance.create_trade_block_set_recipe
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_set_recipe: #{e}"
end
```

#### Using the create_trade_block_set_recipe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradeBlockSetRecipeResponse>, Integer, Hash)> create_trade_block_set_recipe_with_http_info

```ruby
begin
  # Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.
  data, status_code, headers = api_instance.create_trade_block_set_recipe_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradeBlockSetRecipeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->create_trade_block_set_recipe_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateTradeBlockSetRecipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trade_block_evolution

> <GetTradeBlockEvolutionResponse> get_trade_block_evolution

List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new

begin
  # List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.
  result = api_instance.get_trade_block_evolution
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_evolution: #{e}"
end
```

#### Using the get_trade_block_evolution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTradeBlockEvolutionResponse>, Integer, Hash)> get_trade_block_evolution_with_http_info

```ruby
begin
  # List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.
  data, status_code, headers = api_instance.get_trade_block_evolution_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTradeBlockEvolutionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_evolution_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetTradeBlockEvolutionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trade_block_post

> <GetTradeBlockPostResponse> get_trade_block_post(opts)

Browse open Trade Block posts (wants + offers) on the Crossly Market.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
opts = {
  kind: 'want', # String | Filter to wants or offers.
  category_slug: 'category_slug_example', # String | Filter to a market category.
  brand: 'brand_example', # String | Filter to posts with a product of this brand (case-insensitive).
  model: 'model_example', # String | Filter to posts with a product of this catalogue model (case-insensitive).
  q: 'q_example', # String | Search title + want text.
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Browse open Trade Block posts (wants + offers) on the Crossly Market.
  result = api_instance.get_trade_block_post(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_post: #{e}"
end
```

#### Using the get_trade_block_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTradeBlockPostResponse>, Integer, Hash)> get_trade_block_post_with_http_info(opts)

```ruby
begin
  # Browse open Trade Block posts (wants + offers) on the Crossly Market.
  data, status_code, headers = api_instance.get_trade_block_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTradeBlockPostResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Filter to wants or offers. | [optional] |
| **category_slug** | **String** | Filter to a market category. | [optional] |
| **brand** | **String** | Filter to posts with a product of this brand (case-insensitive). | [optional] |
| **model** | **String** | Filter to posts with a product of this catalogue model (case-insensitive). | [optional] |
| **q** | **String** | Search title + want text. | [optional] |
| **limit** | **Integer** |  | [optional][default to 40] |
| **offset** | **Integer** |  | [optional][default to 0] |

### Return type

**GetTradeBlockPostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trade_block_post_by_id

> <GetTradeBlockPostByIdResponse> get_trade_block_post_by_id(id)

Get one Trade Block post with its items and open-offer count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new
id = 'id_example' # String | 

begin
  # Get one Trade Block post with its items and open-offer count.
  result = api_instance.get_trade_block_post_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_post_by_id: #{e}"
end
```

#### Using the get_trade_block_post_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTradeBlockPostByIdResponse>, Integer, Hash)> get_trade_block_post_by_id_with_http_info(id)

```ruby
begin
  # Get one Trade Block post with its items and open-offer count.
  data, status_code, headers = api_instance.get_trade_block_post_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTradeBlockPostByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_post_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTradeBlockPostByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trade_block_trade

> <GetTradeBlockTradeResponse> get_trade_block_trade

List the trades you are a party to, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TradeBlockApi.new

begin
  # List the trades you are a party to, newest first.
  result = api_instance.get_trade_block_trade
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_trade: #{e}"
end
```

#### Using the get_trade_block_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTradeBlockTradeResponse>, Integer, Hash)> get_trade_block_trade_with_http_info

```ruby
begin
  # List the trades you are a party to, newest first.
  data, status_code, headers = api_instance.get_trade_block_trade_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTradeBlockTradeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TradeBlockApi->get_trade_block_trade_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetTradeBlockTradeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

