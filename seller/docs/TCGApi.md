# Crossly::TCGApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tcg_challenge**](TCGApi.md#create_tcg_challenge) | **POST** /v1/tcg/{game}/challenges | Open a 1v1 challenge with one of your decks; another player joins it. |
| [**create_tcg_deck**](TCGApi.md#create_tcg_deck) | **POST** /v1/tcg/{game}/decks | Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game. |
| [**create_tcg_match_act**](TCGApi.md#create_tcg_match_act) | **POST** /v1/tcg/matches/{id}/act | Make one move: { action } as listed in the match&#39;s legal moves. The engine checks it. |
| [**create_tcg_match_join**](TCGApi.md#create_tcg_match_join) | **POST** /v1/tcg/matches/{id}/join | Join an open 1v1 challenge with one of your decks. |
| [**create_tcg_pack_open**](TCGApi.md#create_tcg_pack_open) | **POST** /v1/tcg/packs/{id}/open | Open one of your earned packs: its eight cards join your collection. |
| [**create_tcg_practice**](TCGApi.md#create_tcg_practice) | **POST** /v1/tcg/{game}/practice | Start a practice match against the house bot with one of your decks. |
| [**create_tcg_queue**](TCGApi.md#create_tcg_queue) | **POST** /v1/tcg/{game}/queue | Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits. |
| [**create_tcg_starter**](TCGApi.md#create_tcg_starter) | **POST** /v1/tcg/{game}/starter | Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable). |
| [**create_tcg_table**](TCGApi.md#create_tcg_table) | **POST** /v1/tcg/{game}/table | Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back. |
| [**create_tcg_tournament**](TCGApi.md#create_tcg_tournament) | **POST** /v1/tcg/{game}/tournaments | Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time. |
| [**create_tcg_tournament_drop**](TCGApi.md#create_tcg_tournament_drop) | **POST** /v1/tcg/tournaments/{id}/drop | Leave a tournament before it starts, or drop from it (your results stand). |
| [**create_tcg_tournament_register**](TCGApi.md#create_tcg_tournament_register) | **POST** /v1/tcg/tournaments/{id}/register | Enter a tournament with an owned, legal deck before it starts. |
| [**create_tcg_tournament_start**](TCGApi.md#create_tcg_tournament_start) | **POST** /v1/tcg/tournaments/{id}/start | As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt. |
| [**delete_tcg_deck**](TCGApi.md#delete_tcg_deck) | **DELETE** /v1/tcg/decks/{id} | Delete one of your decks. |
| [**delete_tcg_queue**](TCGApi.md#delete_tcg_queue) | **DELETE** /v1/tcg/{game}/queue | Leave the ranked queue. |
| [**get_tcg_creator_game_print**](TCGApi.md#get_tcg_creator_game_print) | **GET** /v1/tcg/creator/games/{id}/print | Print file links for your own creator card game (owner only): the set&#39;s print file, home sheets and a proof, for its newest version. |
| [**get_tcg_creator_game_print_by_kind**](TCGApi.md#get_tcg_creator_game_print_by_kind) | **GET** /v1/tcg/creator/games/{id}/print/{kind} | A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version&#x3D;, ?paper&#x3D;letter|a4, ?card&#x3D; for a proof. Binary (application/pdf). |
| [**get_tcg_ladder**](TCGApi.md#get_tcg_ladder) | **GET** /v1/tcg/{game}/ladder | The season&#39;s ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be). |
| [**get_tcg_ladder_me**](TCGApi.md#get_tcg_ladder_me) | **GET** /v1/tcg/{game}/ladder/me | Your ranked rating, tier, place and record this season, and whether you are queued. |
| [**get_tcg_match**](TCGApi.md#get_tcg_match) | **GET** /v1/tcg/{game}/matches | Your recent matches, and open challenges you could join. |
| [**get_tcg_match_by_id**](TCGApi.md#get_tcg_match_by_id) | **GET** /v1/tcg/matches/{id} | Your view of a match (no hidden information) and, on your turn, every legal move. |
| [**get_tcg_me**](TCGApi.md#get_tcg_me) | **GET** /v1/tcg/{game}/me | Your starter faction, collection (card id -&gt; copies), decks and earned packs. |
| [**get_tcg_print**](TCGApi.md#get_tcg_print) | **GET** /v1/tcg/{game}/print | Print files for one of Crossly&#39;s own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set&#39;s print file (63 x 88 mm, 3 mm bleed). |
| [**get_tcg_tournament**](TCGApi.md#get_tcg_tournament) | **GET** /v1/tcg/tournaments/{id} | A tournament&#39;s standings (points, opponents&#39; and game win %), this round&#39;s pairings and your seat. |
| [**list_tcg_cards**](TCGApi.md#list_tcg_cards) | **GET** /v1/tcg/{game}/cards | The game&#39;s card pool: every card with its rules text, stats, rarity and collector number. |
| [**list_tcg_games**](TCGApi.md#list_tcg_games) | **GET** /v1/tcg/games | Crossly&#39;s own card games: id, name, seats and card count. |
| [**list_tcg_tournaments**](TCGApi.md#list_tcg_tournaments) | **GET** /v1/tcg/{game}/tournaments | A game&#39;s recent and upcoming Swiss tournaments (free to enter; prizes are earned packs). |


## create_tcg_challenge

> <TcgResponse> create_tcg_challenge(game, opts)

Open a 1v1 challenge with one of your decks; another player joins it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  deck_id_request: Crossly::DeckIdRequest.new({deck_id: 'deck_id_example'}) # DeckIdRequest | 
}

begin
  # Open a 1v1 challenge with one of your decks; another player joins it.
  result = api_instance.create_tcg_challenge(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_challenge: #{e}"
end
```

#### Using the create_tcg_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> create_tcg_challenge_with_http_info(game, opts)

```ruby
begin
  # Open a 1v1 challenge with one of your decks; another player joins it.
  data, status_code, headers = api_instance.create_tcg_challenge_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **deck_id_request** | **DeckIdRequest** |  | [optional] |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_deck

> <CreateTcgDeckResponse> create_tcg_deck(game, opts)

Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  create_tcg_deck_request: Crossly::CreateTcgDeckRequest.new({name: 'name_example', boss: 'boss_example', cards: ['cards_example']}) # CreateTcgDeckRequest | 
}

begin
  # Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.
  result = api_instance.create_tcg_deck(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_deck: #{e}"
end
```

#### Using the create_tcg_deck_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgDeckResponse>, Integer, Hash)> create_tcg_deck_with_http_info(game, opts)

```ruby
begin
  # Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.
  data, status_code, headers = api_instance.create_tcg_deck_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgDeckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_deck_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **create_tcg_deck_request** | **CreateTcgDeckRequest** |  | [optional] |

### Return type

**CreateTcgDeckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_match_act

> <TcgResponse> create_tcg_match_act(id, opts)

Make one move: { action } as listed in the match's legal moves. The engine checks it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 
opts = {
  create_tcg_match_act_request: Crossly::CreateTcgMatchActRequest.new({action: Crossly::CreateTcgMatchActRequestAction.new({t: 't_example'})}) # CreateTcgMatchActRequest | 
}

begin
  # Make one move: { action } as listed in the match's legal moves. The engine checks it.
  result = api_instance.create_tcg_match_act(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_match_act: #{e}"
end
```

#### Using the create_tcg_match_act_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> create_tcg_match_act_with_http_info(id, opts)

```ruby
begin
  # Make one move: { action } as listed in the match's legal moves. The engine checks it.
  data, status_code, headers = api_instance.create_tcg_match_act_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_match_act_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_tcg_match_act_request** | **CreateTcgMatchActRequest** |  | [optional] |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_match_join

> <TcgResponse> create_tcg_match_join(id, opts)

Join an open 1v1 challenge with one of your decks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 
opts = {
  deck_id_request: Crossly::DeckIdRequest.new({deck_id: 'deck_id_example'}) # DeckIdRequest | 
}

begin
  # Join an open 1v1 challenge with one of your decks.
  result = api_instance.create_tcg_match_join(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_match_join: #{e}"
end
```

#### Using the create_tcg_match_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> create_tcg_match_join_with_http_info(id, opts)

```ruby
begin
  # Join an open 1v1 challenge with one of your decks.
  data, status_code, headers = api_instance.create_tcg_match_join_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_match_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **deck_id_request** | **DeckIdRequest** |  | [optional] |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_pack_open

> <CreateTcgPackOpenResponse> create_tcg_pack_open(id)

Open one of your earned packs: its eight cards join your collection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # Open one of your earned packs: its eight cards join your collection.
  result = api_instance.create_tcg_pack_open(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_pack_open: #{e}"
end
```

#### Using the create_tcg_pack_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgPackOpenResponse>, Integer, Hash)> create_tcg_pack_open_with_http_info(id)

```ruby
begin
  # Open one of your earned packs: its eight cards join your collection.
  data, status_code, headers = api_instance.create_tcg_pack_open_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgPackOpenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_pack_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateTcgPackOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_tcg_practice

> <TcgResponse> create_tcg_practice(game, opts)

Start a practice match against the house bot with one of your decks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  deck_id_request: Crossly::DeckIdRequest.new({deck_id: 'deck_id_example'}) # DeckIdRequest | 
}

begin
  # Start a practice match against the house bot with one of your decks.
  result = api_instance.create_tcg_practice(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_practice: #{e}"
end
```

#### Using the create_tcg_practice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> create_tcg_practice_with_http_info(game, opts)

```ruby
begin
  # Start a practice match against the house bot with one of your decks.
  data, status_code, headers = api_instance.create_tcg_practice_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_practice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **deck_id_request** | **DeckIdRequest** |  | [optional] |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_queue

> <CreateTcgQueueResponse> create_tcg_queue(game, opts)

Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  deck_id_request: Crossly::DeckIdRequest.new({deck_id: 'deck_id_example'}) # DeckIdRequest | 
}

begin
  # Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.
  result = api_instance.create_tcg_queue(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_queue: #{e}"
end
```

#### Using the create_tcg_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgQueueResponse>, Integer, Hash)> create_tcg_queue_with_http_info(game, opts)

```ruby
begin
  # Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.
  data, status_code, headers = api_instance.create_tcg_queue_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgQueueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **deck_id_request** | **DeckIdRequest** |  | [optional] |

### Return type

**CreateTcgQueueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_starter

> <CreateTcgStarterResponse> create_tcg_starter(game, opts)

Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  create_tcg_starter_request: Crossly::CreateTcgStarterRequest.new({faction: 'faction_example'}) # CreateTcgStarterRequest | 
}

begin
  # Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).
  result = api_instance.create_tcg_starter(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_starter: #{e}"
end
```

#### Using the create_tcg_starter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgStarterResponse>, Integer, Hash)> create_tcg_starter_with_http_info(game, opts)

```ruby
begin
  # Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).
  data, status_code, headers = api_instance.create_tcg_starter_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgStarterResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_starter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **create_tcg_starter_request** | **CreateTcgStarterRequest** |  | [optional] |

### Return type

**CreateTcgStarterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_table

> <TcgResponse> create_tcg_table(game, opts)

Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  create_tcg_table_request: Crossly::CreateTcgTableRequest.new # CreateTcgTableRequest | 
}

begin
  # Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.
  result = api_instance.create_tcg_table(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_table: #{e}"
end
```

#### Using the create_tcg_table_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> create_tcg_table_with_http_info(game, opts)

```ruby
begin
  # Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.
  data, status_code, headers = api_instance.create_tcg_table_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_table_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **create_tcg_table_request** | **CreateTcgTableRequest** |  | [optional] |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_tournament

> <CreateTcgTournamentResponse> create_tcg_tournament(game, opts)

Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 
opts = {
  create_tcg_tournament_request: Crossly::CreateTcgTournamentRequest.new({name: 'name_example'}) # CreateTcgTournamentRequest | 
}

begin
  # Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.
  result = api_instance.create_tcg_tournament(game, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament: #{e}"
end
```

#### Using the create_tcg_tournament_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgTournamentResponse>, Integer, Hash)> create_tcg_tournament_with_http_info(game, opts)

```ruby
begin
  # Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.
  data, status_code, headers = api_instance.create_tcg_tournament_with_http_info(game, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgTournamentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |
| **create_tcg_tournament_request** | **CreateTcgTournamentRequest** |  | [optional] |

### Return type

**CreateTcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_tournament_drop

> <TcgTournamentResponse> create_tcg_tournament_drop(id)

Leave a tournament before it starts, or drop from it (your results stand).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # Leave a tournament before it starts, or drop from it (your results stand).
  result = api_instance.create_tcg_tournament_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_drop: #{e}"
end
```

#### Using the create_tcg_tournament_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgTournamentResponse>, Integer, Hash)> create_tcg_tournament_drop_with_http_info(id)

```ruby
begin
  # Leave a tournament before it starts, or drop from it (your results stand).
  data, status_code, headers = api_instance.create_tcg_tournament_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgTournamentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_tcg_tournament_register

> <TcgTournamentResponse> create_tcg_tournament_register(id, opts)

Enter a tournament with an owned, legal deck before it starts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 
opts = {
  deck_id_request: Crossly::DeckIdRequest.new({deck_id: 'deck_id_example'}) # DeckIdRequest | 
}

begin
  # Enter a tournament with an owned, legal deck before it starts.
  result = api_instance.create_tcg_tournament_register(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_register: #{e}"
end
```

#### Using the create_tcg_tournament_register_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgTournamentResponse>, Integer, Hash)> create_tcg_tournament_register_with_http_info(id, opts)

```ruby
begin
  # Enter a tournament with an owned, legal deck before it starts.
  data, status_code, headers = api_instance.create_tcg_tournament_register_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgTournamentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_register_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **deck_id_request** | **DeckIdRequest** |  | [optional] |

### Return type

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tcg_tournament_start

> <TcgTournamentResponse> create_tcg_tournament_start(id)

As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.
  result = api_instance.create_tcg_tournament_start(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_start: #{e}"
end
```

#### Using the create_tcg_tournament_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgTournamentResponse>, Integer, Hash)> create_tcg_tournament_start_with_http_info(id)

```ruby
begin
  # As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.
  data, status_code, headers = api_instance.create_tcg_tournament_start_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgTournamentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->create_tcg_tournament_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tcg_deck

> delete_tcg_deck(id)

Delete one of your decks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # Delete one of your decks.
  api_instance.delete_tcg_deck(id)
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->delete_tcg_deck: #{e}"
end
```

#### Using the delete_tcg_deck_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tcg_deck_with_http_info(id)

```ruby
begin
  # Delete one of your decks.
  data, status_code, headers = api_instance.delete_tcg_deck_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->delete_tcg_deck_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tcg_queue

> delete_tcg_queue(game)

Leave the ranked queue.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # Leave the ranked queue.
  api_instance.delete_tcg_queue(game)
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->delete_tcg_queue: #{e}"
end
```

#### Using the delete_tcg_queue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tcg_queue_with_http_info(game)

```ruby
begin
  # Leave the ranked queue.
  data, status_code, headers = api_instance.delete_tcg_queue_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->delete_tcg_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game_print

> <GetTcgCreatorGamePrintResponse> get_tcg_creator_game_print(id)

Print file links for your own creator card game (owner only): the set's print file, home sheets and a proof, for its newest version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # Print file links for your own creator card game (owner only): the set's print file, home sheets and a proof, for its newest version.
  result = api_instance.get_tcg_creator_game_print(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_creator_game_print: #{e}"
end
```

#### Using the get_tcg_creator_game_print_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgCreatorGamePrintResponse>, Integer, Hash)> get_tcg_creator_game_print_with_http_info(id)

```ruby
begin
  # Print file links for your own creator card game (owner only): the set's print file, home sheets and a proof, for its newest version.
  data, status_code, headers = api_instance.get_tcg_creator_game_print_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgCreatorGamePrintResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_creator_game_print_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTcgCreatorGamePrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_creator_game_print_by_kind

> File get_tcg_creator_game_print_by_kind(id, kind)

A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version=, ?paper=letter|a4, ?card= for a proof. Binary (application/pdf).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 
kind = 'kind_example' # String | 

begin
  # A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version=, ?paper=letter|a4, ?card= for a proof. Binary (application/pdf).
  result = api_instance.get_tcg_creator_game_print_by_kind(id, kind)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_creator_game_print_by_kind: #{e}"
end
```

#### Using the get_tcg_creator_game_print_by_kind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_tcg_creator_game_print_by_kind_with_http_info(id, kind)

```ruby
begin
  # A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version=, ?paper=letter|a4, ?card= for a proof. Binary (application/pdf).
  data, status_code, headers = api_instance.get_tcg_creator_game_print_by_kind_with_http_info(id, kind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_creator_game_print_by_kind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_tcg_ladder

> <GetTcgLadderResponse> get_tcg_ladder(game)

The season's ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # The season's ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).
  result = api_instance.get_tcg_ladder(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_ladder: #{e}"
end
```

#### Using the get_tcg_ladder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgLadderResponse>, Integer, Hash)> get_tcg_ladder_with_http_info(game)

```ruby
begin
  # The season's ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).
  data, status_code, headers = api_instance.get_tcg_ladder_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgLadderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_ladder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetTcgLadderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_ladder_me

> <GetTcgLadderMeResponse> get_tcg_ladder_me(game)

Your ranked rating, tier, place and record this season, and whether you are queued.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # Your ranked rating, tier, place and record this season, and whether you are queued.
  result = api_instance.get_tcg_ladder_me(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_ladder_me: #{e}"
end
```

#### Using the get_tcg_ladder_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgLadderMeResponse>, Integer, Hash)> get_tcg_ladder_me_with_http_info(game)

```ruby
begin
  # Your ranked rating, tier, place and record this season, and whether you are queued.
  data, status_code, headers = api_instance.get_tcg_ladder_me_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgLadderMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_ladder_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetTcgLadderMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_match

> <GetTcgMatchResponse> get_tcg_match(game)

Your recent matches, and open challenges you could join.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # Your recent matches, and open challenges you could join.
  result = api_instance.get_tcg_match(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_match: #{e}"
end
```

#### Using the get_tcg_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgMatchResponse>, Integer, Hash)> get_tcg_match_with_http_info(game)

```ruby
begin
  # Your recent matches, and open challenges you could join.
  data, status_code, headers = api_instance.get_tcg_match_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgMatchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetTcgMatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_match_by_id

> <TcgResponse> get_tcg_match_by_id(id)

Your view of a match (no hidden information) and, on your turn, every legal move.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # Your view of a match (no hidden information) and, on your turn, every legal move.
  result = api_instance.get_tcg_match_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_match_by_id: #{e}"
end
```

#### Using the get_tcg_match_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgResponse>, Integer, Hash)> get_tcg_match_by_id_with_http_info(id)

```ruby
begin
  # Your view of a match (no hidden information) and, on your turn, every legal move.
  data, status_code, headers = api_instance.get_tcg_match_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_match_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_me

> <GetTcgMeResponse> get_tcg_me(game)

Your starter faction, collection (card id -> copies), decks and earned packs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # Your starter faction, collection (card id -> copies), decks and earned packs.
  result = api_instance.get_tcg_me(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_me: #{e}"
end
```

#### Using the get_tcg_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgMeResponse>, Integer, Hash)> get_tcg_me_with_http_info(game)

```ruby
begin
  # Your starter faction, collection (card id -> copies), decks and earned packs.
  data, status_code, headers = api_instance.get_tcg_me_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetTcgMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_print

> <GetTcgPrintResponse> get_tcg_print(game)

Print files for one of Crossly's own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set's print file (63 x 88 mm, 3 mm bleed).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # Print files for one of Crossly's own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set's print file (63 x 88 mm, 3 mm bleed).
  result = api_instance.get_tcg_print(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_print: #{e}"
end
```

#### Using the get_tcg_print_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTcgPrintResponse>, Integer, Hash)> get_tcg_print_with_http_info(game)

```ruby
begin
  # Print files for one of Crossly's own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set's print file (63 x 88 mm, 3 mm bleed).
  data, status_code, headers = api_instance.get_tcg_print_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTcgPrintResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_print_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetTcgPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tcg_tournament

> <TcgTournamentResponse> get_tcg_tournament(id)

A tournament's standings (points, opponents' and game win %), this round's pairings and your seat.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
id = 'id_example' # String | 

begin
  # A tournament's standings (points, opponents' and game win %), this round's pairings and your seat.
  result = api_instance.get_tcg_tournament(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_tournament: #{e}"
end
```

#### Using the get_tcg_tournament_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TcgTournamentResponse>, Integer, Hash)> get_tcg_tournament_with_http_info(id)

```ruby
begin
  # A tournament's standings (points, opponents' and game win %), this round's pairings and your seat.
  data, status_code, headers = api_instance.get_tcg_tournament_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TcgTournamentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->get_tcg_tournament_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_cards

> <ListTcgCardsResponse> list_tcg_cards(game)

The game's card pool: every card with its rules text, stats, rarity and collector number.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # The game's card pool: every card with its rules text, stats, rarity and collector number.
  result = api_instance.list_tcg_cards(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_cards: #{e}"
end
```

#### Using the list_tcg_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgCardsResponse>, Integer, Hash)> list_tcg_cards_with_http_info(game)

```ruby
begin
  # The game's card pool: every card with its rules text, stats, rarity and collector number.
  data, status_code, headers = api_instance.list_tcg_cards_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgCardsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**ListTcgCardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_games

> <ListTcgGamesResponse> list_tcg_games

Crossly's own card games: id, name, seats and card count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new

begin
  # Crossly's own card games: id, name, seats and card count.
  result = api_instance.list_tcg_games
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_games: #{e}"
end
```

#### Using the list_tcg_games_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgGamesResponse>, Integer, Hash)> list_tcg_games_with_http_info

```ruby
begin
  # Crossly's own card games: id, name, seats and card count.
  data, status_code, headers = api_instance.list_tcg_games_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgGamesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_games_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListTcgGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_tournaments

> <ListTcgTournamentsResponse> list_tcg_tournaments(game)

A game's recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TCGApi.new
game = 'game_example' # String | 

begin
  # A game's recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).
  result = api_instance.list_tcg_tournaments(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_tournaments: #{e}"
end
```

#### Using the list_tcg_tournaments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgTournamentsResponse>, Integer, Hash)> list_tcg_tournaments_with_http_info(game)

```ruby
begin
  # A game's recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).
  data, status_code, headers = api_instance.list_tcg_tournaments_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgTournamentsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TCGApi->list_tcg_tournaments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**ListTcgTournamentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

