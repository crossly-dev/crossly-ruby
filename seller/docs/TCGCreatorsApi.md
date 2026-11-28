# Crossly::TCGCreatorsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tcg_creator_game**](TCGCreatorsApi.md#create_tcg_creator_game) | **POST** /v1/tcg/creator/games | Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person. |
| [**create_tcg_creator_game_check**](TCGCreatorsApi.md#create_tcg_creator_game_check) | **POST** /v1/tcg/creator/games/check | Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }. |
| [**create_tcg_creator_game_pack_open**](TCGCreatorsApi.md#create_tcg_creator_game_pack_open) | **POST** /v1/tcg/creator/games/{id}/packs/{packId}/open | Open a booster you hold: the game&#39;s rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed). |
| [**create_tcg_creator_game_starter**](TCGCreatorsApi.md#create_tcg_creator_game_starter) | **POST** /v1/tcg/creator/games/{id}/starter | Claim a creator game&#39;s free starter deck by its key (once per account; account-bound, never tradeable). |
| [**create_tcg_creator_game_version_withdraw**](TCGCreatorsApi.md#create_tcg_creator_game_version_withdraw) | **POST** /v1/tcg/creator/games/{id}/versions/{v}/withdraw | Withdraw one of your versions that is still waiting for review. |
| [**get_tcg_creator_game**](TCGCreatorsApi.md#get_tcg_creator_game) | **GET** /v1/tcg/creator/games/{id} | One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices. |
| [**get_tcg_creator_game_collection**](TCGCreatorsApi.md#get_tcg_creator_game_collection) | **GET** /v1/tcg/creator/games/{id}/collection | Your playable copies of a creator game: card id -&gt; copies (free starter plus every COSM copy you hold). |
| [**get_tcg_creator_game_popularity**](TCGCreatorsApi.md#get_tcg_creator_game_popularity) | **GET** /v1/tcg/creator/games/{id}/popularity | The set&#39;s progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs. |
| [**get_tcg_creator_game_shelf**](TCGCreatorsApi.md#get_tcg_creator_game_shelf) | **GET** /v1/tcg/creator/games/{id}/shelf | The game&#39;s COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued. |
| [**list_tcg_creator_game_packs**](TCGCreatorsApi.md#list_tcg_creator_game_packs) | **GET** /v1/tcg/creator/games/{id}/packs | Your unopened boosters of a creator game. |
| [**list_tcg_creator_games**](TCGCreatorsApi.md#list_tcg_creator_games) | **GET** /v1/tcg/creator/games | Live creator card games: name, set, description, typical match length, frame colours, thumbnail. |
| [**list_tcg_creator_mine**](TCGCreatorsApi.md#list_tcg_creator_mine) | **GET** /v1/tcg/creator/mine | Your creator card games and every version with its review state and note. |


## create_tcg_creator_game

> <CreateTcgCreatorGameResponse> create_tcg_creator_game(create_tcg_creator_game_request)

Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
create_tcg_creator_game_request = Crossly::CreateTcgCreatorGameRequest.new({files: [Crossly::PathBase64.new({path: 'path_example', base64: 'base64_example'})]}) # CreateTcgCreatorGameRequest | 

begin
  # Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.
  result = api_instance.create_tcg_creator_game(create_tcg_creator_game_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game: #{e}"
end
```

#### Using the create_tcg_creator_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgCreatorGameResponse>, Integer, Hash)> create_tcg_creator_game_with_http_info(create_tcg_creator_game_request)

```ruby
begin
  # Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.
  data, status_code, headers = api_instance.create_tcg_creator_game_with_http_info(create_tcg_creator_game_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgCreatorGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tcg_creator_game_request** | **CreateTcgCreatorGameRequest** |  |  |

### Return type

**CreateTcgCreatorGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_creator_game_check

> <CreateTcgCreatorGameCheckResponse> create_tcg_creator_game_check(create_tcg_creator_game_request)

Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
create_tcg_creator_game_request = Crossly::CreateTcgCreatorGameRequest.new({files: [Crossly::PathBase64.new({path: 'path_example', base64: 'base64_example'})]}) # CreateTcgCreatorGameRequest | 

begin
  # Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.
  result = api_instance.create_tcg_creator_game_check(create_tcg_creator_game_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_check: #{e}"
end
```

#### Using the create_tcg_creator_game_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgCreatorGameCheckResponse>, Integer, Hash)> create_tcg_creator_game_check_with_http_info(create_tcg_creator_game_request)

```ruby
begin
  # Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.
  data, status_code, headers = api_instance.create_tcg_creator_game_check_with_http_info(create_tcg_creator_game_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgCreatorGameCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tcg_creator_game_request** | **CreateTcgCreatorGameRequest** |  |  |

### Return type

**CreateTcgCreatorGameCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_creator_game_pack_open

> <CreateTcgCreatorGamePackOpenResponse> create_tcg_creator_game_pack_open(id, pack_id)

Open a booster you hold: the game's rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 
pack_id = 'pack_id_example' # String | 

begin
  # Open a booster you hold: the game's rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).
  result = api_instance.create_tcg_creator_game_pack_open(id, pack_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_pack_open: #{e}"
end
```

#### Using the create_tcg_creator_game_pack_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgCreatorGamePackOpenResponse>, Integer, Hash)> create_tcg_creator_game_pack_open_with_http_info(id, pack_id)

```ruby
begin
  # Open a booster you hold: the game's rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).
  data, status_code, headers = api_instance.create_tcg_creator_game_pack_open_with_http_info(id, pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgCreatorGamePackOpenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_pack_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **pack_id** | **String** |  |  |

### Return type

**CreateTcgCreatorGamePackOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_tcg_creator_game_starter

> <CreateTcgStarterResponse> create_tcg_creator_game_starter(id, opts)

Claim a creator game's free starter deck by its key (once per account; account-bound, never tradeable).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 
opts = {
  create_tcg_creator_game_starter_request: Crossly::CreateTcgCreatorGameStarterRequest.new({key: 'key_example'}) # CreateTcgCreatorGameStarterRequest | 
}

begin
  # Claim a creator game's free starter deck by its key (once per account; account-bound, never tradeable).
  result = api_instance.create_tcg_creator_game_starter(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_starter: #{e}"
end
```

#### Using the create_tcg_creator_game_starter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgStarterResponse>, Integer, Hash)> create_tcg_creator_game_starter_with_http_info(id, opts)

```ruby
begin
  # Claim a creator game's free starter deck by its key (once per account; account-bound, never tradeable).
  data, status_code, headers = api_instance.create_tcg_creator_game_starter_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgStarterResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_starter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_tcg_creator_game_starter_request** | **CreateTcgCreatorGameStarterRequest** |  | [optional] |

### Return type

**CreateTcgStarterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_creator_game_version_withdraw

> create_tcg_creator_game_version_withdraw(id, v)

Withdraw one of your versions that is still waiting for review.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 
v = 'v_example' # String | 

begin
  # Withdraw one of your versions that is still waiting for review.
  api_instance.create_tcg_creator_game_version_withdraw(id, v)
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_version_withdraw: #{e}"
end
```

#### Using the create_tcg_creator_game_version_withdraw_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_tcg_creator_game_version_withdraw_with_http_info(id, v)

```ruby
begin
  # Withdraw one of your versions that is still waiting for review.
  data, status_code, headers = api_instance.create_tcg_creator_game_version_withdraw_with_http_info(id, v)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->create_tcg_creator_game_version_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **v** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game

> <GetTcgCreatorGameResponse> get_tcg_creator_game(id)

One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 

begin
  # One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.
  result = api_instance.get_tcg_creator_game(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game: #{e}"
end
```

#### Using the get_tcg_creator_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgCreatorGameResponse>, Integer, Hash)> get_tcg_creator_game_with_http_info(id)

```ruby
begin
  # One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.
  data, status_code, headers = api_instance.get_tcg_creator_game_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgCreatorGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTcgCreatorGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game_collection

> <GetTcgCreatorGameCollectionResponse> get_tcg_creator_game_collection(id)

Your playable copies of a creator game: card id -> copies (free starter plus every COSM copy you hold).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 

begin
  # Your playable copies of a creator game: card id -> copies (free starter plus every COSM copy you hold).
  result = api_instance.get_tcg_creator_game_collection(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_collection: #{e}"
end
```

#### Using the get_tcg_creator_game_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgCreatorGameCollectionResponse>, Integer, Hash)> get_tcg_creator_game_collection_with_http_info(id)

```ruby
begin
  # Your playable copies of a creator game: card id -> copies (free starter plus every COSM copy you hold).
  data, status_code, headers = api_instance.get_tcg_creator_game_collection_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgCreatorGameCollectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTcgCreatorGameCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game_popularity

> <GetTcgCreatorGamePopularityResponse> get_tcg_creator_game_popularity(id)

The set's progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 

begin
  # The set's progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.
  result = api_instance.get_tcg_creator_game_popularity(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_popularity: #{e}"
end
```

#### Using the get_tcg_creator_game_popularity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgCreatorGamePopularityResponse>, Integer, Hash)> get_tcg_creator_game_popularity_with_http_info(id)

```ruby
begin
  # The set's progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.
  data, status_code, headers = api_instance.get_tcg_creator_game_popularity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgCreatorGamePopularityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_popularity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTcgCreatorGamePopularityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game_shelf

> <GetTcgCreatorGameShelfResponse> get_tcg_creator_game_shelf(id)

The game's COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 

begin
  # The game's COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.
  result = api_instance.get_tcg_creator_game_shelf(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_shelf: #{e}"
end
```

#### Using the get_tcg_creator_game_shelf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgCreatorGameShelfResponse>, Integer, Hash)> get_tcg_creator_game_shelf_with_http_info(id)

```ruby
begin
  # The game's COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.
  data, status_code, headers = api_instance.get_tcg_creator_game_shelf_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgCreatorGameShelfResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->get_tcg_creator_game_shelf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTcgCreatorGameShelfResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_creator_game_packs

> <ListTcgCreatorGamePacksResponse> list_tcg_creator_game_packs(id)

Your unopened boosters of a creator game.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new
id = 'id_example' # String | 

begin
  # Your unopened boosters of a creator game.
  result = api_instance.list_tcg_creator_game_packs(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_game_packs: #{e}"
end
```

#### Using the list_tcg_creator_game_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgCreatorGamePacksResponse>, Integer, Hash)> list_tcg_creator_game_packs_with_http_info(id)

```ruby
begin
  # Your unopened boosters of a creator game.
  data, status_code, headers = api_instance.list_tcg_creator_game_packs_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgCreatorGamePacksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_game_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListTcgCreatorGamePacksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_creator_games

> <ListTcgCreatorGamesResponse> list_tcg_creator_games

Live creator card games: name, set, description, typical match length, frame colours, thumbnail.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new

begin
  # Live creator card games: name, set, description, typical match length, frame colours, thumbnail.
  result = api_instance.list_tcg_creator_games
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_games: #{e}"
end
```

#### Using the list_tcg_creator_games_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgCreatorGamesResponse>, Integer, Hash)> list_tcg_creator_games_with_http_info

```ruby
begin
  # Live creator card games: name, set, description, typical match length, frame colours, thumbnail.
  data, status_code, headers = api_instance.list_tcg_creator_games_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgCreatorGamesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_games_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListTcgCreatorGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_creator_mine

> <ListTcgCreatorMineResponse> list_tcg_creator_mine

Your creator card games and every version with its review state and note.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGCreatorsApi.new

begin
  # Your creator card games and every version with its review state and note.
  result = api_instance.list_tcg_creator_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_mine: #{e}"
end
```

#### Using the list_tcg_creator_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgCreatorMineResponse>, Integer, Hash)> list_tcg_creator_mine_with_http_info

```ruby
begin
  # Your creator card games and every version with its review state and note.
  data, status_code, headers = api_instance.list_tcg_creator_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgCreatorMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGCreatorsApi->list_tcg_creator_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListTcgCreatorMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

