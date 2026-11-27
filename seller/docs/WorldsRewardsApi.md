# Crossly::WorldsRewardsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_reward_close**](WorldsRewardsApi.md#create_world_experience_reward_close) | **POST** /v1/worlds/experiences/{experienceId}/rewards/close | Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working. |
| [**create_world_experience_reward_definition**](WorldsRewardsApi.md#create_world_experience_reward_definition) | **POST** /v1/worlds/experiences/{experienceId}/rewards/definitions | Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount). |
| [**create_world_experience_reward_deposit**](WorldsRewardsApi.md#create_world_experience_reward_deposit) | **POST** /v1/worlds/experiences/{experienceId}/rewards/deposits | Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey. |
| [**create_world_experience_reward_topup**](WorldsRewardsApi.md#create_world_experience_reward_topup) | **POST** /v1/worlds/experiences/{experienceId}/rewards/topups | Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only. |
| [**create_world_reward_topup_cancel**](WorldsRewardsApi.md#create_world_reward_topup_cancel) | **POST** /v1/worlds/rewards/topups/{topupId}/cancel | Cancel an unpaid top-up sheet. |
| [**get_world_experience_reward**](WorldsRewardsApi.md#get_world_experience_reward) | **GET** /v1/worlds/experiences/{experienceId}/rewards | The funded reward pool: balance, reserved (owed) value, caps, today&#39;s grants, the reward catalogue and the published rates. |
| [**get_world_reward_topup**](WorldsRewardsApi.md#get_world_reward_topup) | **GET** /v1/worlds/rewards/topups/{topupId} | One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds. |
| [**list_world_experience_reward_grants**](WorldsRewardsApi.md#list_world_experience_reward_grants) | **GET** /v1/worlds/experiences/{experienceId}/rewards/grants | Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub&#x3D; for one player. |
| [**list_world_experience_reward_ledger**](WorldsRewardsApi.md#list_world_experience_reward_ledger) | **GET** /v1/worlds/experiences/{experienceId}/rewards/ledger | The pool&#39;s own ledger: deposits, grant draw-downs, refunds. Cursor-paged. |
| [**list_world_experience_reward_topups**](WorldsRewardsApi.md#list_world_experience_reward_topups) | **GET** /v1/worlds/experiences/{experienceId}/rewards/topups | Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card. |
| [**update_world_experience_reward_definition**](WorldsRewardsApi.md#update_world_experience_reward_definition) | **PATCH** /v1/worlds/experiences/{experienceId}/rewards/definitions/{rewardId} | Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change. |
| [**update_world_experience_reward_pool**](WorldsRewardsApi.md#update_world_experience_reward_pool) | **PATCH** /v1/worlds/experiences/{experienceId}/rewards/pool | Set the pool&#39;s daily caps: total value per day, value and grant count per player per day. |


## create_world_experience_reward_close

> <CreateWorldExperienceRewardCloseResponse> create_world_experience_reward_close(experience_id)

Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.
  result = api_instance.create_world_experience_reward_close(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_close: #{e}"
end
```

#### Using the create_world_experience_reward_close_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceRewardCloseResponse>, Integer, Hash)> create_world_experience_reward_close_with_http_info(experience_id)

```ruby
begin
  # Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.
  data, status_code, headers = api_instance.create_world_experience_reward_close_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceRewardCloseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_close_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceRewardCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_reward_definition

> <CreateWorldExperienceRewardDefinitionResponse> create_world_experience_reward_definition(experience_id)

Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).
  result = api_instance.create_world_experience_reward_definition(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_definition: #{e}"
end
```

#### Using the create_world_experience_reward_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceRewardDefinitionResponse>, Integer, Hash)> create_world_experience_reward_definition_with_http_info(experience_id)

```ruby
begin
  # Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).
  data, status_code, headers = api_instance.create_world_experience_reward_definition_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceRewardDefinitionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceRewardDefinitionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_reward_deposit

> <CreateWorldExperienceRewardDepositResponse> create_world_experience_reward_deposit(experience_id)

Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.
  result = api_instance.create_world_experience_reward_deposit(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_deposit: #{e}"
end
```

#### Using the create_world_experience_reward_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceRewardDepositResponse>, Integer, Hash)> create_world_experience_reward_deposit_with_http_info(experience_id)

```ruby
begin
  # Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.
  data, status_code, headers = api_instance.create_world_experience_reward_deposit_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceRewardDepositResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceRewardDepositResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_reward_topup

> <CreateWorldExperienceRewardTopupResponse> create_world_experience_reward_topup(experience_id)

Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.
  result = api_instance.create_world_experience_reward_topup(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_topup: #{e}"
end
```

#### Using the create_world_experience_reward_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceRewardTopupResponse>, Integer, Hash)> create_world_experience_reward_topup_with_http_info(experience_id)

```ruby
begin
  # Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.
  data, status_code, headers = api_instance.create_world_experience_reward_topup_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceRewardTopupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_experience_reward_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceRewardTopupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_reward_topup_cancel

> <CreateWorldSpaceJoinResponse> create_world_reward_topup_cancel(topup_id)

Cancel an unpaid top-up sheet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
topup_id = 'topup_id_example' # String | 

begin
  # Cancel an unpaid top-up sheet.
  result = api_instance.create_world_reward_topup_cancel(topup_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_reward_topup_cancel: #{e}"
end
```

#### Using the create_world_reward_topup_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceJoinResponse>, Integer, Hash)> create_world_reward_topup_cancel_with_http_info(topup_id)

```ruby
begin
  # Cancel an unpaid top-up sheet.
  data, status_code, headers = api_instance.create_world_reward_topup_cancel_with_http_info(topup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->create_world_reward_topup_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |

### Return type

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_reward

> <GetWorldExperienceRewardResponse> get_world_experience_reward(experience_id)

The funded reward pool: balance, reserved (owed) value, caps, today's grants, the reward catalogue and the published rates.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The funded reward pool: balance, reserved (owed) value, caps, today's grants, the reward catalogue and the published rates.
  result = api_instance.get_world_experience_reward(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->get_world_experience_reward: #{e}"
end
```

#### Using the get_world_experience_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceRewardResponse>, Integer, Hash)> get_world_experience_reward_with_http_info(experience_id)

```ruby
begin
  # The funded reward pool: balance, reserved (owed) value, caps, today's grants, the reward catalogue and the published rates.
  data, status_code, headers = api_instance.get_world_experience_reward_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceRewardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->get_world_experience_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceRewardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_reward_topup

> <GetWorldRewardTopupResponse> get_world_reward_topup(topup_id)

One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
topup_id = 'topup_id_example' # String | 

begin
  # One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.
  result = api_instance.get_world_reward_topup(topup_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->get_world_reward_topup: #{e}"
end
```

#### Using the get_world_reward_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldRewardTopupResponse>, Integer, Hash)> get_world_reward_topup_with_http_info(topup_id)

```ruby
begin
  # One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.
  data, status_code, headers = api_instance.get_world_reward_topup_with_http_info(topup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldRewardTopupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->get_world_reward_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |

### Return type

**GetWorldRewardTopupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_reward_grants

> <ListWorldExperienceRewardGrantsResponse> list_world_experience_reward_grants(experience_id)

Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub= for one player.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub= for one player.
  result = api_instance.list_world_experience_reward_grants(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_grants: #{e}"
end
```

#### Using the list_world_experience_reward_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceRewardGrantsResponse>, Integer, Hash)> list_world_experience_reward_grants_with_http_info(experience_id)

```ruby
begin
  # Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub= for one player.
  data, status_code, headers = api_instance.list_world_experience_reward_grants_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceRewardGrantsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceRewardGrantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_reward_ledger

> <ListWorldExperienceRewardLedgerResponse> list_world_experience_reward_ledger(experience_id)

The pool's own ledger: deposits, grant draw-downs, refunds. Cursor-paged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The pool's own ledger: deposits, grant draw-downs, refunds. Cursor-paged.
  result = api_instance.list_world_experience_reward_ledger(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_ledger: #{e}"
end
```

#### Using the list_world_experience_reward_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceRewardLedgerResponse>, Integer, Hash)> list_world_experience_reward_ledger_with_http_info(experience_id)

```ruby
begin
  # The pool's own ledger: deposits, grant draw-downs, refunds. Cursor-paged.
  data, status_code, headers = api_instance.list_world_experience_reward_ledger_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceRewardLedgerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceRewardLedgerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_reward_topups

> <ListWorldExperienceRewardTopupsResponse> list_world_experience_reward_topups(experience_id)

Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.
  result = api_instance.list_world_experience_reward_topups(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_topups: #{e}"
end
```

#### Using the list_world_experience_reward_topups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceRewardTopupsResponse>, Integer, Hash)> list_world_experience_reward_topups_with_http_info(experience_id)

```ruby
begin
  # Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.
  data, status_code, headers = api_instance.list_world_experience_reward_topups_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceRewardTopupsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->list_world_experience_reward_topups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceRewardTopupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_reward_definition

> <CreateWorldExperienceRewardDefinitionResponse> update_world_experience_reward_definition(experience_id, reward_id)

Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 
reward_id = 'reward_id_example' # String | 

begin
  # Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.
  result = api_instance.update_world_experience_reward_definition(experience_id, reward_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->update_world_experience_reward_definition: #{e}"
end
```

#### Using the update_world_experience_reward_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceRewardDefinitionResponse>, Integer, Hash)> update_world_experience_reward_definition_with_http_info(experience_id, reward_id)

```ruby
begin
  # Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.
  data, status_code, headers = api_instance.update_world_experience_reward_definition_with_http_info(experience_id, reward_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceRewardDefinitionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->update_world_experience_reward_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **reward_id** | **String** |  |  |

### Return type

**CreateWorldExperienceRewardDefinitionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_reward_pool

> <UpdateWorldExperienceRewardPoolResponse> update_world_experience_reward_pool(experience_id)

Set the pool's daily caps: total value per day, value and grant count per player per day.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsRewardsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Set the pool's daily caps: total value per day, value and grant count per player per day.
  result = api_instance.update_world_experience_reward_pool(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->update_world_experience_reward_pool: #{e}"
end
```

#### Using the update_world_experience_reward_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceRewardPoolResponse>, Integer, Hash)> update_world_experience_reward_pool_with_http_info(experience_id)

```ruby
begin
  # Set the pool's daily caps: total value per day, value and grant count per player per day.
  data, status_code, headers = api_instance.update_world_experience_reward_pool_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceRewardPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsRewardsApi->update_world_experience_reward_pool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**UpdateWorldExperienceRewardPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

