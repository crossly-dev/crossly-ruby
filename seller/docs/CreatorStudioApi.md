# Crossly::CreatorStudioApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_creator_card_game**](CreatorStudioApi.md#create_creator_card_game) | **POST** /v1/creator/cards/games | Compose a card game from your card sets: a game id, its own set code, a name and the set ids; optionally the deck size (8-40), copies per card (1-4), the win condition (most points, or first to N) and the cover (a card with art, or a colour). Paid seller plans only. |
| [**create_creator_card_game_check**](CreatorStudioApi.md#create_creator_card_game_check) | **POST** /v1/creator/cards/games/{id}/check | The full check publish runs: issues, tcgStaticConformance and bot-vs-bot games of the composed rules. |
| [**create_creator_card_game_publish**](CreatorStudioApi.md#create_creator_card_game_publish) | **POST** /v1/creator/cards/games/{id}/publish | Publish: the composition must pass its check; its cards, the composed rules, art and cover are packaged and submitted as a new immutable version for review, through the same intake as every card game. |
| [**create_creator_card_set**](CreatorStudioApi.md#create_creator_card_set) | **POST** /v1/creator/cards/sets | Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only. |
| [**create_creator_card_set_art**](CreatorStudioApi.md#create_creator_card_set_art) | **POST** /v1/creator/cards/sets/{id}/art/{slug} | One card&#39;s art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved. |
| [**create_creator_card_set_check**](CreatorStudioApi.md#create_creator_card_set_check) | **POST** /v1/creator/cards/sets/{id}/check | The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set. |
| [**create_creator_card_set_publish**](CreatorStudioApi.md#create_creator_card_set_publish) | **POST** /v1/creator/cards/sets/{id}/publish | Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game. |
| [**create_creator_creation_submit**](CreatorStudioApi.md#create_creator_creation_submit) | **POST** /v1/creator/creations/{format}/{id}/submit | Send one creation to review through its format&#39;s own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit. |
| [**create_creator_import**](CreatorStudioApi.md#create_creator_import) | **POST** /v1/creator/imports | Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing. |
| [**create_creator_import_commit**](CreatorStudioApi.md#create_creator_import_commit) | **POST** /v1/creator/imports/{id}/commit | Create the drafts of a validated template upload (drafts only; nothing is submitted to review). |
| [**create_creator_item_model**](CreatorStudioApi.md#create_creator_item_model) | **POST** /v1/creator/items/models | Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number. |
| [**create_creator_item_model_check**](CreatorStudioApi.md#create_creator_item_model_check) | **POST** /v1/creator/items/models/check | The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions. |
| [**create_creator_item_model_submit**](CreatorStudioApi.md#create_creator_item_model_submit) | **POST** /v1/creator/items/models/{id}/submit | Send an uploaded model to art review. |
| [**create_creator_item_preview**](CreatorStudioApi.md#create_creator_item_preview) | **POST** /v1/creator/items/previews | Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL. |
| [**create_creator_item_wearable**](CreatorStudioApi.md#create_creator_item_wearable) | **POST** /v1/creator/items/wearables | Start a wearable from a template: slug, name, colourways (panel -&gt; #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only. |
| [**create_creator_item_wearable_submit**](CreatorStudioApi.md#create_creator_item_wearable_submit) | **POST** /v1/creator/items/wearables/{id}/submit | Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews). |
| [**create_creator_review_hide**](CreatorStudioApi.md#create_creator_review_hide) | **POST** /v1/creator/reviews/{reviewId}/hide | Hide a buyer review from your public page (it is kept, and its rating still counts). |
| [**create_creator_review_reply**](CreatorStudioApi.md#create_creator_review_reply) | **POST** /v1/creator/reviews/{reviewId}/reply | Reply to a buyer review of your creation (or change your reply). |
| [**create_creator_review_report**](CreatorStudioApi.md#create_creator_review_report) | **POST** /v1/creator/reviews/{reviewId}/report | Report a buyer review to Crossly (abuse, spam, not a real buyer). |
| [**create_creator_review_unhide**](CreatorStudioApi.md#create_creator_review_unhide) | **POST** /v1/creator/reviews/{reviewId}/unhide | Show a hidden buyer review on your page again. |
| [**delete_creator_card_game**](CreatorStudioApi.md#delete_creator_card_game) | **DELETE** /v1/creator/cards/games/{id} | Delete a composed card game that was never published. |
| [**delete_creator_card_set**](CreatorStudioApi.md#delete_creator_card_set) | **DELETE** /v1/creator/cards/sets/{id} | Delete a set draft that was never published. |
| [**delete_creator_item_model**](CreatorStudioApi.md#delete_creator_item_model) | **DELETE** /v1/creator/items/models/{id} | Delete a draft or rejected model. |
| [**delete_creator_item_wearable**](CreatorStudioApi.md#delete_creator_item_wearable) | **DELETE** /v1/creator/items/wearables/{id} | Delete a draft wearable. |
| [**get_creator_card_game**](CreatorStudioApi.md#get_creator_card_game) | **GET** /v1/creator/cards/games/{id} | One composed card game with its check: issues by field and conformance problems. |
| [**get_creator_card_set**](CreatorStudioApi.md#get_creator_card_set) | **GET** /v1/creator/cards/sets/{id} | One set draft with its check: draft issues by field and tcgStaticConformance problems. |
| [**get_creator_card_set_progress**](CreatorStudioApi.md#get_creator_card_set_progress) | **GET** /v1/creator/cards/sets/{id}/progress | A set&#39;s three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked. |
| [**get_creator_collection**](CreatorStudioApi.md#get_creator_collection) | **GET** /v1/creator/collections/{collectionId} | One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply. |
| [**get_creator_collection_perk**](CreatorStudioApi.md#get_creator_collection_perk) | **GET** /v1/creator/collections/{collectionId}/perks | A collection&#39;s holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere). |
| [**get_creator_creation**](CreatorStudioApi.md#get_creator_creation) | **GET** /v1/creator/creations/{format}/{id} | One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status. |
| [**get_creator_creation_status**](CreatorStudioApi.md#get_creator_creation_status) | **GET** /v1/creator/creations/{format}/{id}/status | Where one creation stands: its status, the reviewer&#39;s last note and its status timeline. |
| [**get_creator_earning_export**](CreatorStudioApi.md#get_creator_earning_export) | **GET** /v1/creator/earnings/export | Download your creator earnings: format&#x3D;csv (every ledger row for the filter) or format&#x3D;pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month). |
| [**get_creator_earning_reconcile**](CreatorStudioApi.md#get_creator_earning_reconcile) | **GET** /v1/creator/earnings/reconcile | Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches. |
| [**get_creator_import**](CreatorStudioApi.md#get_creator_import) | **GET** /v1/creator/imports/{id} | A stored template validation. |
| [**get_creator_item_model**](CreatorStudioApi.md#get_creator_item_model) | **GET** /v1/creator/items/models/{id} | One of your models with its budget report. |
| [**get_creator_item_template**](CreatorStudioApi.md#get_creator_item_template) | **GET** /v1/creator/items/templates | Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget. |
| [**get_creator_item_wearable**](CreatorStudioApi.md#get_creator_item_wearable) | **GET** /v1/creator/items/wearables/{id} | One of your wearables with its checks, review state and note. |
| [**get_creator_minting**](CreatorStudioApi.md#get_creator_minting) | **GET** /v1/creator/minting | Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId. |
| [**get_creator_overview**](CreatorStudioApi.md#get_creator_overview) | **GET** /v1/creator/overview | Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps. |
| [**get_creator_template**](CreatorStudioApi.md#get_creator_template) | **GET** /v1/creator/templates/{format} | The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README. |
| [**get_creator_template_zip**](CreatorStudioApi.md#get_creator_template_zip) | **GET** /v1/creator/templates/{format}/zip | A format&#39;s template as a .zip download (the same files as GET /templates/:format, plus its empty folders). |
| [**list_creator_card_games**](CreatorStudioApi.md#list_creator_card_games) | **GET** /v1/creator/cards/games | Your card games composed from several card sets: the sets, deck size, copies per card, win condition and cover, each with its check. |
| [**list_creator_card_sets**](CreatorStudioApi.md#list_creator_card_sets) | **GET** /v1/creator/cards/sets | Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked. |
| [**list_creator_creation_reviews**](CreatorStudioApi.md#list_creator_creation_reviews) | **GET** /v1/creator/creations/{format}/{id}/reviews | Buyer reviews of one creation, newest first (hidden ones included). |
| [**list_creator_creations**](CreatorStudioApi.md#list_creator_creations) | **GET** /v1/creator/creations | Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status. |
| [**list_creator_earning_trend**](CreatorStudioApi.md#list_creator_earning_trend) | **GET** /v1/creator/earnings/trend | Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter. |
| [**list_creator_earnings**](CreatorStudioApi.md#list_creator_earnings) | **GET** /v1/creator/earnings | Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages. |
| [**list_creator_item_models**](CreatorStudioApi.md#list_creator_item_models) | **GET** /v1/creator/items/models | Your uploaded 3D models with their budget reports and review state. |
| [**list_creator_item_wearables**](CreatorStudioApi.md#list_creator_item_wearables) | **GET** /v1/creator/items/wearables | Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs. |
| [**list_creator_items**](CreatorStudioApi.md#list_creator_items) | **GET** /v1/creator/items | Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings. |
| [**list_creator_reviews**](CreatorStudioApi.md#list_creator_reviews) | **GET** /v1/creator/reviews | Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note. |
| [**update_creator_card_game**](CreatorStudioApi.md#update_creator_card_game) | **PUT** /v1/creator/cards/games/{id} | Save the whole composition: name, description, setTitle, the set ids, deck size, copies per card, win condition and cover. Every word goes through the text filter. Answers the check. |
| [**update_creator_card_set**](CreatorStudioApi.md#update_creator_card_set) | **PUT** /v1/creator/cards/sets/{id} | Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without &#x60;art&#x60; (or with art as read) keeps its stored art, &#x60;art: null&#x60; clears it; only the art upload sets art. Answers the check. |
| [**update_creator_collection_perk**](CreatorStudioApi.md#update_creator_collection_perk) | **PUT** /v1/creator/collections/{collectionId}/perks | Replace a collection&#39;s holder perks: &#x60;{ perks: [...] }&#x60;, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet. |
| [**update_creator_item_wearable**](CreatorStudioApi.md#update_creator_item_wearable) | **PATCH** /v1/creator/items/wearables/{id} | Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen. |


## create_creator_card_game

> <CreatorCardGameResponse> create_creator_card_game

Compose a card game from your card sets: a game id, its own set code, a name and the set ids; optionally the deck size (8-40), copies per card (1-4), the win condition (most points, or first to N) and the cover (a card with art, or a colour). Paid seller plans only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Compose a card game from your card sets: a game id, its own set code, a name and the set ids; optionally the deck size (8-40), copies per card (1-4), the win condition (most points, or first to N) and the cover (a card with art, or a colour). Paid seller plans only.
  result = api_instance.create_creator_card_game
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game: #{e}"
end
```

#### Using the create_creator_card_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardGameResponse>, Integer, Hash)> create_creator_card_game_with_http_info

```ruby
begin
  # Compose a card game from your card sets: a game id, its own set code, a name and the set ids; optionally the deck size (8-40), copies per card (1-4), the win condition (most points, or first to N) and the cover (a card with art, or a colour). Paid seller plans only.
  data, status_code, headers = api_instance.create_creator_card_game_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreatorCardGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_card_game_check

> <CreatorCardGameResponse> create_creator_card_game_check(id)

The full check publish runs: issues, tcgStaticConformance and bot-vs-bot games of the composed rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # The full check publish runs: issues, tcgStaticConformance and bot-vs-bot games of the composed rules.
  result = api_instance.create_creator_card_game_check(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game_check: #{e}"
end
```

#### Using the create_creator_card_game_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardGameResponse>, Integer, Hash)> create_creator_card_game_check_with_http_info(id)

```ruby
begin
  # The full check publish runs: issues, tcgStaticConformance and bot-vs-bot games of the composed rules.
  data, status_code, headers = api_instance.create_creator_card_game_check_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_card_game_publish

> <CreateCreatorCardGamePublishResponse> create_creator_card_game_publish(id)

Publish: the composition must pass its check; its cards, the composed rules, art and cover are packaged and submitted as a new immutable version for review, through the same intake as every card game.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Publish: the composition must pass its check; its cards, the composed rules, art and cover are packaged and submitted as a new immutable version for review, through the same intake as every card game.
  result = api_instance.create_creator_card_game_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game_publish: #{e}"
end
```

#### Using the create_creator_card_game_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCardGamePublishResponse>, Integer, Hash)> create_creator_card_game_publish_with_http_info(id)

```ruby
begin
  # Publish: the composition must pass its check; its cards, the composed rules, art and cover are packaged and submitted as a new immutable version for review, through the same intake as every card game.
  data, status_code, headers = api_instance.create_creator_card_game_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCardGamePublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_game_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCreatorCardGamePublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_card_set

> <CreatorCardSetResponse> create_creator_card_set(opts)

Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_card_set_request: Crossly::CreateCreatorCardSetRequest.new({game_id: 'game_id_example', set_code: 'set_code_example', name: 'name_example'}) # CreateCreatorCardSetRequest | 
}

begin
  # Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.
  result = api_instance.create_creator_card_set(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set: #{e}"
end
```

#### Using the create_creator_card_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardSetResponse>, Integer, Hash)> create_creator_card_set_with_http_info(opts)

```ruby
begin
  # Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.
  data, status_code, headers = api_instance.create_creator_card_set_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardSetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_card_set_request** | **CreateCreatorCardSetRequest** |  | [optional] |

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_card_set_art

> <CreatorCardSetResponse> create_creator_card_set_art(id, slug, opts)

One card's art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 
slug = 'slug_example' # String | 
opts = {
  create_creator_card_set_art_request: Crossly::CreateCreatorCardSetArtRequest.new({png_base64: 'png_base64_example'}) # CreateCreatorCardSetArtRequest | 
}

begin
  # One card's art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.
  result = api_instance.create_creator_card_set_art(id, slug, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_art: #{e}"
end
```

#### Using the create_creator_card_set_art_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardSetResponse>, Integer, Hash)> create_creator_card_set_art_with_http_info(id, slug, opts)

```ruby
begin
  # One card's art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.
  data, status_code, headers = api_instance.create_creator_card_set_art_with_http_info(id, slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardSetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_art_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **slug** | **String** |  |  |
| **create_creator_card_set_art_request** | **CreateCreatorCardSetArtRequest** |  | [optional] |

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_card_set_check

> <CreatorCardSetResponse> create_creator_card_set_check(id)

The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.
  result = api_instance.create_creator_card_set_check(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_check: #{e}"
end
```

#### Using the create_creator_card_set_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardSetResponse>, Integer, Hash)> create_creator_card_set_check_with_http_info(id)

```ruby
begin
  # The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.
  data, status_code, headers = api_instance.create_creator_card_set_check_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardSetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_card_set_publish

> <CreateCreatorCardSetPublishResponse> create_creator_card_set_publish(id)

Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.
  result = api_instance.create_creator_card_set_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_publish: #{e}"
end
```

#### Using the create_creator_card_set_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCardSetPublishResponse>, Integer, Hash)> create_creator_card_set_publish_with_http_info(id)

```ruby
begin
  # Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.
  data, status_code, headers = api_instance.create_creator_card_set_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCardSetPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_card_set_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCreatorCardSetPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_creation_submit

> <CreateCreatorCreationSubmitResponse> create_creator_creation_submit(format, id, opts)

Send one creation to review through its format's own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 
id = 'id_example' # String | 
opts = {
  create_creator_creation_submit_request: Crossly::CreateCreatorCreationSubmitRequest.new # CreateCreatorCreationSubmitRequest | 
}

begin
  # Send one creation to review through its format's own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.
  result = api_instance.create_creator_creation_submit(format, id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_creation_submit: #{e}"
end
```

#### Using the create_creator_creation_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCreationSubmitResponse>, Integer, Hash)> create_creator_creation_submit_with_http_info(format, id, opts)

```ruby
begin
  # Send one creation to review through its format's own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.
  data, status_code, headers = api_instance.create_creator_creation_submit_with_http_info(format, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCreationSubmitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_creation_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **id** | **String** |  |  |
| **create_creator_creation_submit_request** | **CreateCreatorCreationSubmitRequest** |  | [optional] |

### Return type

**CreateCreatorCreationSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_import

> <GetCreatorImportResponse> create_creator_import(opts)

Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_import_request: Crossly::CreateCreatorImportRequest.new({manifest: 'manifest_example'}) # CreateCreatorImportRequest | 
}

begin
  # Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.
  result = api_instance.create_creator_import(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_import: #{e}"
end
```

#### Using the create_creator_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorImportResponse>, Integer, Hash)> create_creator_import_with_http_info(opts)

```ruby
begin
  # Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.
  data, status_code, headers = api_instance.create_creator_import_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_import_request** | **CreateCreatorImportRequest** |  | [optional] |

### Return type

**GetCreatorImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_import_commit

> <CreateCreatorImportCommitResponse> create_creator_import_commit(id)

Create the drafts of a validated template upload (drafts only; nothing is submitted to review).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Create the drafts of a validated template upload (drafts only; nothing is submitted to review).
  result = api_instance.create_creator_import_commit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_import_commit: #{e}"
end
```

#### Using the create_creator_import_commit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorImportCommitResponse>, Integer, Hash)> create_creator_import_commit_with_http_info(id)

```ruby
begin
  # Create the drafts of a validated template upload (drafts only; nothing is submitted to review).
  data, status_code, headers = api_instance.create_creator_import_commit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorImportCommitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_import_commit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCreatorImportCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_item_model

> <CreatorItemModelResponse> create_creator_item_model(opts)

Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_item_model_request: Crossly::CreateCreatorItemModelRequest.new({glb_base64: 'glb_base64_example', name: 'name_example'}) # CreateCreatorItemModelRequest | 
}

begin
  # Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.
  result = api_instance.create_creator_item_model(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model: #{e}"
end
```

#### Using the create_creator_item_model_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemModelResponse>, Integer, Hash)> create_creator_item_model_with_http_info(opts)

```ruby
begin
  # Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.
  data, status_code, headers = api_instance.create_creator_item_model_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemModelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_item_model_request** | **CreateCreatorItemModelRequest** |  | [optional] |

### Return type

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_item_model_check

> <CreateCreatorItemModelCheckResponse> create_creator_item_model_check(opts)

The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_item_model_check_request: Crossly::CreateCreatorItemModelCheckRequest.new({glb_base64: 'glb_base64_example'}) # CreateCreatorItemModelCheckRequest | 
}

begin
  # The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.
  result = api_instance.create_creator_item_model_check(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model_check: #{e}"
end
```

#### Using the create_creator_item_model_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorItemModelCheckResponse>, Integer, Hash)> create_creator_item_model_check_with_http_info(opts)

```ruby
begin
  # The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.
  data, status_code, headers = api_instance.create_creator_item_model_check_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorItemModelCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_item_model_check_request** | **CreateCreatorItemModelCheckRequest** |  | [optional] |

### Return type

**CreateCreatorItemModelCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_item_model_submit

> <CreatorItemModelResponse> create_creator_item_model_submit(id)

Send an uploaded model to art review.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Send an uploaded model to art review.
  result = api_instance.create_creator_item_model_submit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model_submit: #{e}"
end
```

#### Using the create_creator_item_model_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemModelResponse>, Integer, Hash)> create_creator_item_model_submit_with_http_info(id)

```ruby
begin
  # Send an uploaded model to art review.
  data, status_code, headers = api_instance.create_creator_item_model_submit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemModelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_model_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_creator_item_preview

> <CreateCreatorItemPreviewResponse> create_creator_item_preview(opts)

Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_card_set_art_request: Crossly::CreateCreatorCardSetArtRequest.new({png_base64: 'png_base64_example'}) # CreateCreatorCardSetArtRequest | 
}

begin
  # Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.
  result = api_instance.create_creator_item_preview(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_preview: #{e}"
end
```

#### Using the create_creator_item_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorItemPreviewResponse>, Integer, Hash)> create_creator_item_preview_with_http_info(opts)

```ruby
begin
  # Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.
  data, status_code, headers = api_instance.create_creator_item_preview_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorItemPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_card_set_art_request** | **CreateCreatorCardSetArtRequest** |  | [optional] |

### Return type

**CreateCreatorItemPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_item_wearable

> <CreatorItemWearableResponse> create_creator_item_wearable(opts)

Start a wearable from a template: slug, name, colourways (panel -> #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  create_creator_item_wearable_request: Crossly::CreateCreatorItemWearableRequest.new({template_key: 'template_key_example', slug: 'slug_example', name: 'name_example', colourways: [Crossly::ListCreatorItemWearablesItemColourways.new({name: 'name_example', colors: { key: 3.56}})], price_cosm: 3.56}) # CreateCreatorItemWearableRequest | 
}

begin
  # Start a wearable from a template: slug, name, colourways (panel -> #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.
  result = api_instance.create_creator_item_wearable(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_wearable: #{e}"
end
```

#### Using the create_creator_item_wearable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemWearableResponse>, Integer, Hash)> create_creator_item_wearable_with_http_info(opts)

```ruby
begin
  # Start a wearable from a template: slug, name, colourways (panel -> #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.
  data, status_code, headers = api_instance.create_creator_item_wearable_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemWearableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_wearable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_item_wearable_request** | **CreateCreatorItemWearableRequest** |  | [optional] |

### Return type

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_item_wearable_submit

> <CreatorItemWearableResponse> create_creator_item_wearable_submit(id, opts)

Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 
opts = {
  create_creator_item_wearable_submit_request: Crossly::CreateCreatorItemWearableSubmitRequest.new({preview_image_url: 'preview_image_url_example'}) # CreateCreatorItemWearableSubmitRequest | 
}

begin
  # Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).
  result = api_instance.create_creator_item_wearable_submit(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_wearable_submit: #{e}"
end
```

#### Using the create_creator_item_wearable_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemWearableResponse>, Integer, Hash)> create_creator_item_wearable_submit_with_http_info(id, opts)

```ruby
begin
  # Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).
  data, status_code, headers = api_instance.create_creator_item_wearable_submit_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemWearableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_item_wearable_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_creator_item_wearable_submit_request** | **CreateCreatorItemWearableSubmitRequest** |  | [optional] |

### Return type

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_review_hide

> <CreatorReviewResponse> create_creator_review_hide(review_id, opts)

Hide a buyer review from your public page (it is kept, and its rating still counts).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
review_id = 'review_id_example' # String | 
opts = {
  reason_request2: Crossly::ReasonRequest2.new # ReasonRequest2 | 
}

begin
  # Hide a buyer review from your public page (it is kept, and its rating still counts).
  result = api_instance.create_creator_review_hide(review_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_hide: #{e}"
end
```

#### Using the create_creator_review_hide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorReviewResponse>, Integer, Hash)> create_creator_review_hide_with_http_info(review_id, opts)

```ruby
begin
  # Hide a buyer review from your public page (it is kept, and its rating still counts).
  data, status_code, headers = api_instance.create_creator_review_hide_with_http_info(review_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_hide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **String** |  |  |
| **reason_request2** | **ReasonRequest2** |  | [optional] |

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_review_reply

> <CreatorReviewResponse> create_creator_review_reply(review_id, opts)

Reply to a buyer review of your creation (or change your reply).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
review_id = 'review_id_example' # String | 
opts = {
  create_creator_review_reply_request: Crossly::CreateCreatorReviewReplyRequest.new({reply: 'reply_example'}) # CreateCreatorReviewReplyRequest | 
}

begin
  # Reply to a buyer review of your creation (or change your reply).
  result = api_instance.create_creator_review_reply(review_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_reply: #{e}"
end
```

#### Using the create_creator_review_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorReviewResponse>, Integer, Hash)> create_creator_review_reply_with_http_info(review_id, opts)

```ruby
begin
  # Reply to a buyer review of your creation (or change your reply).
  data, status_code, headers = api_instance.create_creator_review_reply_with_http_info(review_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **String** |  |  |
| **create_creator_review_reply_request** | **CreateCreatorReviewReplyRequest** |  | [optional] |

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_review_report

> <CreatorReviewResponse> create_creator_review_report(review_id, opts)

Report a buyer review to Crossly (abuse, spam, not a real buyer).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
review_id = 'review_id_example' # String | 
opts = {
  reason_request: Crossly::ReasonRequest.new({reason: 'reason_example'}) # ReasonRequest | 
}

begin
  # Report a buyer review to Crossly (abuse, spam, not a real buyer).
  result = api_instance.create_creator_review_report(review_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_report: #{e}"
end
```

#### Using the create_creator_review_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorReviewResponse>, Integer, Hash)> create_creator_review_report_with_http_info(review_id, opts)

```ruby
begin
  # Report a buyer review to Crossly (abuse, spam, not a real buyer).
  data, status_code, headers = api_instance.create_creator_review_report_with_http_info(review_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **String** |  |  |
| **reason_request** | **ReasonRequest** |  | [optional] |

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_review_unhide

> <CreatorReviewResponse> create_creator_review_unhide(review_id)

Show a hidden buyer review on your page again.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
review_id = 'review_id_example' # String | 

begin
  # Show a hidden buyer review on your page again.
  result = api_instance.create_creator_review_unhide(review_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_unhide: #{e}"
end
```

#### Using the create_creator_review_unhide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorReviewResponse>, Integer, Hash)> create_creator_review_unhide_with_http_info(review_id)

```ruby
begin
  # Show a hidden buyer review on your page again.
  data, status_code, headers = api_instance.create_creator_review_unhide_with_http_info(review_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->create_creator_review_unhide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **String** |  |  |

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_creator_card_game

> delete_creator_card_game(id)

Delete a composed card game that was never published.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Delete a composed card game that was never published.
  api_instance.delete_creator_card_game(id)
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_card_game: #{e}"
end
```

#### Using the delete_creator_card_game_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_creator_card_game_with_http_info(id)

```ruby
begin
  # Delete a composed card game that was never published.
  data, status_code, headers = api_instance.delete_creator_card_game_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_card_game_with_http_info: #{e}"
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


## delete_creator_card_set

> delete_creator_card_set(id)

Delete a set draft that was never published.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Delete a set draft that was never published.
  api_instance.delete_creator_card_set(id)
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_card_set: #{e}"
end
```

#### Using the delete_creator_card_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_creator_card_set_with_http_info(id)

```ruby
begin
  # Delete a set draft that was never published.
  data, status_code, headers = api_instance.delete_creator_card_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_card_set_with_http_info: #{e}"
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


## delete_creator_item_model

> delete_creator_item_model(id)

Delete a draft or rejected model.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Delete a draft or rejected model.
  api_instance.delete_creator_item_model(id)
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_item_model: #{e}"
end
```

#### Using the delete_creator_item_model_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_creator_item_model_with_http_info(id)

```ruby
begin
  # Delete a draft or rejected model.
  data, status_code, headers = api_instance.delete_creator_item_model_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_item_model_with_http_info: #{e}"
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


## delete_creator_item_wearable

> delete_creator_item_wearable(id)

Delete a draft wearable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Delete a draft wearable.
  api_instance.delete_creator_item_wearable(id)
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_item_wearable: #{e}"
end
```

#### Using the delete_creator_item_wearable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_creator_item_wearable_with_http_info(id)

```ruby
begin
  # Delete a draft wearable.
  data, status_code, headers = api_instance.delete_creator_item_wearable_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->delete_creator_item_wearable_with_http_info: #{e}"
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


## get_creator_card_game

> <CreatorCardGameResponse> get_creator_card_game(id)

One composed card game with its check: issues by field and conformance problems.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # One composed card game with its check: issues by field and conformance problems.
  result = api_instance.get_creator_card_game(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_game: #{e}"
end
```

#### Using the get_creator_card_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardGameResponse>, Integer, Hash)> get_creator_card_game_with_http_info(id)

```ruby
begin
  # One composed card game with its check: issues by field and conformance problems.
  data, status_code, headers = api_instance.get_creator_card_game_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_card_set

> <CreatorCardSetResponse> get_creator_card_set(id)

One set draft with its check: draft issues by field and tcgStaticConformance problems.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # One set draft with its check: draft issues by field and tcgStaticConformance problems.
  result = api_instance.get_creator_card_set(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_set: #{e}"
end
```

#### Using the get_creator_card_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardSetResponse>, Integer, Hash)> get_creator_card_set_with_http_info(id)

```ruby
begin
  # One set draft with its check: draft issues by field and tcgStaticConformance problems.
  data, status_code, headers = api_instance.get_creator_card_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardSetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_card_set_progress

> <GetCreatorCardSetProgressResponse> get_creator_card_set_progress(id)

A set's three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # A set's three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.
  result = api_instance.get_creator_card_set_progress(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_set_progress: #{e}"
end
```

#### Using the get_creator_card_set_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCardSetProgressResponse>, Integer, Hash)> get_creator_card_set_progress_with_http_info(id)

```ruby
begin
  # A set's three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.
  data, status_code, headers = api_instance.get_creator_card_set_progress_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCardSetProgressResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_card_set_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetCreatorCardSetProgressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_collection

> <GetCreatorCollectionResponse> get_creator_collection(collection_id)

One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
collection_id = 'collection_id_example' # String | 

begin
  # One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.
  result = api_instance.get_creator_collection(collection_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_collection: #{e}"
end
```

#### Using the get_creator_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCollectionResponse>, Integer, Hash)> get_creator_collection_with_http_info(collection_id)

```ruby
begin
  # One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.
  data, status_code, headers = api_instance.get_creator_collection_with_http_info(collection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCollectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** |  |  |

### Return type

**GetCreatorCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_collection_perk

> <GetCreatorCollectionPerkResponse> get_creator_collection_perk(collection_id)

A collection's holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
collection_id = 'collection_id_example' # String | 

begin
  # A collection's holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).
  result = api_instance.get_creator_collection_perk(collection_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_collection_perk: #{e}"
end
```

#### Using the get_creator_collection_perk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCollectionPerkResponse>, Integer, Hash)> get_creator_collection_perk_with_http_info(collection_id)

```ruby
begin
  # A collection's holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).
  data, status_code, headers = api_instance.get_creator_collection_perk_with_http_info(collection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCollectionPerkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_collection_perk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** |  |  |

### Return type

**GetCreatorCollectionPerkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_creation

> <GetCreatorCreationResponse> get_creator_creation(format, id)

One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 
id = 'id_example' # String | 

begin
  # One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.
  result = api_instance.get_creator_creation(format, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_creation: #{e}"
end
```

#### Using the get_creator_creation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCreationResponse>, Integer, Hash)> get_creator_creation_with_http_info(format, id)

```ruby
begin
  # One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.
  data, status_code, headers = api_instance.get_creator_creation_with_http_info(format, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCreationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_creation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**GetCreatorCreationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_creation_status

> <GetCreatorCreationStatusResponse> get_creator_creation_status(format, id)

Where one creation stands: its status, the reviewer's last note and its status timeline.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 
id = 'id_example' # String | 

begin
  # Where one creation stands: its status, the reviewer's last note and its status timeline.
  result = api_instance.get_creator_creation_status(format, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_creation_status: #{e}"
end
```

#### Using the get_creator_creation_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCreationStatusResponse>, Integer, Hash)> get_creator_creation_status_with_http_info(format, id)

```ruby
begin
  # Where one creation stands: its status, the reviewer's last note and its status timeline.
  data, status_code, headers = api_instance.get_creator_creation_status_with_http_info(format, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCreationStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_creation_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**GetCreatorCreationStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_earning_export

> String get_creator_earning_export(opts)

Download your creator earnings: format=csv (every ledger row for the filter) or format=pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  format: 'csv', # String | 
  rail: 'cash', # String | 
  source: 'item_sale', # String | 
  state: 'available', # String | 
  group: 'creator', # String | 
  game_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  to: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Download your creator earnings: format=csv (every ledger row for the filter) or format=pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).
  result = api_instance.get_creator_earning_export(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_earning_export: #{e}"
end
```

#### Using the get_creator_earning_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_creator_earning_export_with_http_info(opts)

```ruby
begin
  # Download your creator earnings: format=csv (every ledger row for the filter) or format=pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).
  data, status_code, headers = api_instance.get_creator_earning_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_earning_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  | [optional] |
| **rail** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **group** | **String** |  | [optional] |
| **game_id** | **String** |  | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/pdf, application/json


## get_creator_earning_reconcile

> <GetCreatorEarningReconcileResponse> get_creator_earning_reconcile

Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.
  result = api_instance.get_creator_earning_reconcile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_earning_reconcile: #{e}"
end
```

#### Using the get_creator_earning_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorEarningReconcileResponse>, Integer, Hash)> get_creator_earning_reconcile_with_http_info

```ruby
begin
  # Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.
  data, status_code, headers = api_instance.get_creator_earning_reconcile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorEarningReconcileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_earning_reconcile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorEarningReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_import

> <GetCreatorImportResponse> get_creator_import(id)

A stored template validation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # A stored template validation.
  result = api_instance.get_creator_import(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_import: #{e}"
end
```

#### Using the get_creator_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorImportResponse>, Integer, Hash)> get_creator_import_with_http_info(id)

```ruby
begin
  # A stored template validation.
  data, status_code, headers = api_instance.get_creator_import_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetCreatorImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_item_model

> <CreatorItemModelResponse> get_creator_item_model(id)

One of your models with its budget report.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # One of your models with its budget report.
  result = api_instance.get_creator_item_model(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_model: #{e}"
end
```

#### Using the get_creator_item_model_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemModelResponse>, Integer, Hash)> get_creator_item_model_with_http_info(id)

```ruby
begin
  # One of your models with its budget report.
  data, status_code, headers = api_instance.get_creator_item_model_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemModelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_item_template

> <GetCreatorItemTemplateResponse> get_creator_item_template

Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.
  result = api_instance.get_creator_item_template
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_template: #{e}"
end
```

#### Using the get_creator_item_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorItemTemplateResponse>, Integer, Hash)> get_creator_item_template_with_http_info

```ruby
begin
  # Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.
  data, status_code, headers = api_instance.get_creator_item_template_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorItemTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_template_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorItemTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_item_wearable

> <CreatorItemWearableResponse> get_creator_item_wearable(id)

One of your wearables with its checks, review state and note.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # One of your wearables with its checks, review state and note.
  result = api_instance.get_creator_item_wearable(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_wearable: #{e}"
end
```

#### Using the get_creator_item_wearable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemWearableResponse>, Integer, Hash)> get_creator_item_wearable_with_http_info(id)

```ruby
begin
  # One of your wearables with its checks, review state and note.
  data, status_code, headers = api_instance.get_creator_item_wearable_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemWearableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_item_wearable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_minting

> <GetCreatorMintingResponse> get_creator_minting

Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.
  result = api_instance.get_creator_minting
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_minting: #{e}"
end
```

#### Using the get_creator_minting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorMintingResponse>, Integer, Hash)> get_creator_minting_with_http_info

```ruby
begin
  # Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.
  data, status_code, headers = api_instance.get_creator_minting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorMintingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_minting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorMintingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_overview

> <GetCreatorOverviewResponse> get_creator_overview

Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.
  result = api_instance.get_creator_overview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_overview: #{e}"
end
```

#### Using the get_creator_overview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorOverviewResponse>, Integer, Hash)> get_creator_overview_with_http_info

```ruby
begin
  # Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.
  data, status_code, headers = api_instance.get_creator_overview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorOverviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_overview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCreatorOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_template

> <GetCreatorTemplateResponse> get_creator_template(format)

The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 

begin
  # The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.
  result = api_instance.get_creator_template(format)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_template: #{e}"
end
```

#### Using the get_creator_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorTemplateResponse>, Integer, Hash)> get_creator_template_with_http_info(format)

```ruby
begin
  # The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.
  data, status_code, headers = api_instance.get_creator_template_with_http_info(format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |

### Return type

**GetCreatorTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_template_zip

> File get_creator_template_zip(format)

A format's template as a .zip download (the same files as GET /templates/:format, plus its empty folders).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 

begin
  # A format's template as a .zip download (the same files as GET /templates/:format, plus its empty folders).
  result = api_instance.get_creator_template_zip(format)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_template_zip: #{e}"
end
```

#### Using the get_creator_template_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_creator_template_zip_with_http_info(format)

```ruby
begin
  # A format's template as a .zip download (the same files as GET /templates/:format, plus its empty folders).
  data, status_code, headers = api_instance.get_creator_template_zip_with_http_info(format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->get_creator_template_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |

### Return type

**File**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/json


## list_creator_card_games

> <ListCreatorCardGamesResponse> list_creator_card_games

Your card games composed from several card sets: the sets, deck size, copies per card, win condition and cover, each with its check.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Your card games composed from several card sets: the sets, deck size, copies per card, win condition and cover, each with its check.
  result = api_instance.list_creator_card_games
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_card_games: #{e}"
end
```

#### Using the list_creator_card_games_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorCardGamesResponse>, Integer, Hash)> list_creator_card_games_with_http_info

```ruby
begin
  # Your card games composed from several card sets: the sets, deck size, copies per card, win condition and cover, each with its check.
  data, status_code, headers = api_instance.list_creator_card_games_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorCardGamesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_card_games_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorCardGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_card_sets

> <ListCreatorCardSetsResponse> list_creator_card_sets

Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.
  result = api_instance.list_creator_card_sets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_card_sets: #{e}"
end
```

#### Using the list_creator_card_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorCardSetsResponse>, Integer, Hash)> list_creator_card_sets_with_http_info

```ruby
begin
  # Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.
  data, status_code, headers = api_instance.list_creator_card_sets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorCardSetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_card_sets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorCardSetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_creation_reviews

> <ListCreatorCreationReviewsResponse> list_creator_creation_reviews(format, id, opts)

Buyer reviews of one creation, newest first (hidden ones included).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
format = 'format_example' # String | 
id = 'id_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Buyer reviews of one creation, newest first (hidden ones included).
  result = api_instance.list_creator_creation_reviews(format, id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_creation_reviews: #{e}"
end
```

#### Using the list_creator_creation_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorCreationReviewsResponse>, Integer, Hash)> list_creator_creation_reviews_with_http_info(format, id, opts)

```ruby
begin
  # Buyer reviews of one creation, newest first (hidden ones included).
  data, status_code, headers = api_instance.list_creator_creation_reviews_with_http_info(format, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorCreationReviewsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_creation_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListCreatorCreationReviewsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_creations

> <ListCreatorCreationsResponse> list_creator_creations(opts)

Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  kind: 'item', # String | 
  format: 'wearable', # String | 
  status: 'draft', # String | 
  collection: 'collection_example', # String | 
  q: 'q_example' # String | 
}

begin
  # Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.
  result = api_instance.list_creator_creations(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_creations: #{e}"
end
```

#### Using the list_creator_creations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorCreationsResponse>, Integer, Hash)> list_creator_creations_with_http_info(opts)

```ruby
begin
  # Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.
  data, status_code, headers = api_instance.list_creator_creations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorCreationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_creations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **collection** | **String** |  | [optional] |
| **q** | **String** |  | [optional] |

### Return type

**ListCreatorCreationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_earning_trend

> <ListCreatorEarningTrendResponse> list_creator_earning_trend(opts)

Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  bucket: 'day', # String | 
  rail: 'cash', # String | 
  group: 'creator', # String | 
  game_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  to: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.
  result = api_instance.list_creator_earning_trend(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_earning_trend: #{e}"
end
```

#### Using the list_creator_earning_trend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorEarningTrendResponse>, Integer, Hash)> list_creator_earning_trend_with_http_info(opts)

```ruby
begin
  # Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.
  data, status_code, headers = api_instance.list_creator_earning_trend_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorEarningTrendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_earning_trend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket** | **String** |  | [optional] |
| **rail** | **String** |  | [optional] |
| **group** | **String** |  | [optional] |
| **game_id** | **String** |  | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |

### Return type

**ListCreatorEarningTrendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_earnings

> <ListCreatorEarningsResponse> list_creator_earnings(opts)

Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  rail: 'cash', # String | 
  source: 'item_sale', # String | 
  group: 'creator', # String | 
  game_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  state: 'available', # String | 
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.
  result = api_instance.list_creator_earnings(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_earnings: #{e}"
end
```

#### Using the list_creator_earnings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorEarningsResponse>, Integer, Hash)> list_creator_earnings_with_http_info(opts)

```ruby
begin
  # Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.
  data, status_code, headers = api_instance.list_creator_earnings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorEarningsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_earnings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rail** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **group** | **String** |  | [optional] |
| **game_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListCreatorEarningsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_item_models

> <ListCreatorItemModelsResponse> list_creator_item_models

Your uploaded 3D models with their budget reports and review state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Your uploaded 3D models with their budget reports and review state.
  result = api_instance.list_creator_item_models
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_item_models: #{e}"
end
```

#### Using the list_creator_item_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorItemModelsResponse>, Integer, Hash)> list_creator_item_models_with_http_info

```ruby
begin
  # Your uploaded 3D models with their budget reports and review state.
  data, status_code, headers = api_instance.list_creator_item_models_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorItemModelsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_item_models_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorItemModelsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_item_wearables

> <ListCreatorItemWearablesResponse> list_creator_item_wearables

Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new

begin
  # Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.
  result = api_instance.list_creator_item_wearables
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_item_wearables: #{e}"
end
```

#### Using the list_creator_item_wearables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorItemWearablesResponse>, Integer, Hash)> list_creator_item_wearables_with_http_info

```ruby
begin
  # Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.
  data, status_code, headers = api_instance.list_creator_item_wearables_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorItemWearablesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_item_wearables_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCreatorItemWearablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_items

> <ListCreatorItemsResponse> list_creator_items(opts)

Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  kind: 'wearable', # String | 
  status: 'draft', # String | 
  rail: 'cash' # String | 
}

begin
  # Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.
  result = api_instance.list_creator_items(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_items: #{e}"
end
```

#### Using the list_creator_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorItemsResponse>, Integer, Hash)> list_creator_items_with_http_info(opts)

```ruby
begin
  # Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.
  data, status_code, headers = api_instance.list_creator_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorItemsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **rail** | **String** |  | [optional] |

### Return type

**ListCreatorItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_reviews

> <ListCreatorReviewsResponse> list_creator_reviews(opts)

Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
opts = {
  kind: 'item', # String | 
  state: 'in_review', # String | 
  limit: 56 # Integer | 
}

begin
  # Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.
  result = api_instance.list_creator_reviews(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_reviews: #{e}"
end
```

#### Using the list_creator_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorReviewsResponse>, Integer, Hash)> list_creator_reviews_with_http_info(opts)

```ruby
begin
  # Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.
  data, status_code, headers = api_instance.list_creator_reviews_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorReviewsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->list_creator_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListCreatorReviewsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_creator_card_game

> <CreatorCardGameResponse> update_creator_card_game(id)

Save the whole composition: name, description, setTitle, the set ids, deck size, copies per card, win condition and cover. Every word goes through the text filter. Answers the check.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Save the whole composition: name, description, setTitle, the set ids, deck size, copies per card, win condition and cover. Every word goes through the text filter. Answers the check.
  result = api_instance.update_creator_card_game(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_card_game: #{e}"
end
```

#### Using the update_creator_card_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardGameResponse>, Integer, Hash)> update_creator_card_game_with_http_info(id)

```ruby
begin
  # Save the whole composition: name, description, setTitle, the set ids, deck size, copies per card, win condition and cover. Every word goes through the text filter. Answers the check.
  data, status_code, headers = api_instance.update_creator_card_game_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_card_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_creator_card_set

> <CreatorCardSetResponse> update_creator_card_set(id)

Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without `art` (or with art as read) keeps its stored art, `art: null` clears it; only the art upload sets art. Answers the check.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 

begin
  # Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without `art` (or with art as read) keeps its stored art, `art: null` clears it; only the art upload sets art. Answers the check.
  result = api_instance.update_creator_card_set(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_card_set: #{e}"
end
```

#### Using the update_creator_card_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorCardSetResponse>, Integer, Hash)> update_creator_card_set_with_http_info(id)

```ruby
begin
  # Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without `art` (or with art as read) keeps its stored art, `art: null` clears it; only the art upload sets art. Answers the check.
  data, status_code, headers = api_instance.update_creator_card_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorCardSetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_card_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_creator_collection_perk

> <GetCreatorCollectionPerkResponse> update_creator_collection_perk(collection_id)

Replace a collection's holder perks: `{ perks: [...] }`, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
collection_id = 'collection_id_example' # String | 

begin
  # Replace a collection's holder perks: `{ perks: [...] }`, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.
  result = api_instance.update_creator_collection_perk(collection_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_collection_perk: #{e}"
end
```

#### Using the update_creator_collection_perk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorCollectionPerkResponse>, Integer, Hash)> update_creator_collection_perk_with_http_info(collection_id)

```ruby
begin
  # Replace a collection's holder perks: `{ perks: [...] }`, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.
  data, status_code, headers = api_instance.update_creator_collection_perk_with_http_info(collection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorCollectionPerkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_collection_perk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** |  |  |

### Return type

**GetCreatorCollectionPerkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_creator_item_wearable

> <CreatorItemWearableResponse> update_creator_item_wearable(id, opts)

Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CreatorStudioApi.new
id = 'id_example' # String | 
opts = {
  update_creator_item_wearable_request: Crossly::UpdateCreatorItemWearableRequest.new # UpdateCreatorItemWearableRequest | 
}

begin
  # Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.
  result = api_instance.update_creator_item_wearable(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_item_wearable: #{e}"
end
```

#### Using the update_creator_item_wearable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatorItemWearableResponse>, Integer, Hash)> update_creator_item_wearable_with_http_info(id, opts)

```ruby
begin
  # Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.
  data, status_code, headers = api_instance.update_creator_item_wearable_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatorItemWearableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CreatorStudioApi->update_creator_item_wearable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_creator_item_wearable_request** | **UpdateCreatorItemWearableRequest** |  | [optional] |

### Return type

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

