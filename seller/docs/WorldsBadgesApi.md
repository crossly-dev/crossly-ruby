# Crossly::WorldsBadgesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_badge**](WorldsBadgesApi.md#create_world_experience_badge) | **POST** /v1/worlds/experiences/{experienceId}/badges | Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 &#x3D; the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it. |
| [**get_world_badge_mine**](WorldsBadgesApi.md#get_world_badge_mine) | **GET** /v1/worlds/badges/mine | Every game badge you hold, newest first, and whether your person page shows them. |
| [**get_world_experience_badge**](WorldsBadgesApi.md#get_world_experience_badge) | **GET** /v1/worlds/experiences/{experienceId}/badges | A game&#39;s badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId). |
| [**get_world_game_badge**](WorldsBadgesApi.md#get_world_game_badge) | **GET** /v1/worlds/games/{game}/badges | A Crossly Carnival game&#39;s badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game&#39;s players) and, for you, when you earned it. :game is a Worlds experience id or key. |
| [**get_world_player_badge**](WorldsBadgesApi.md#get_world_player_badge) | **GET** /v1/worlds/players/{username}/badges | The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear). |
| [**update_world_badge_profile**](WorldsBadgesApi.md#update_world_badge_profile) | **PUT** /v1/worlds/badges/profile | Show (or hide) the game badges you hold on your person page. Off by default. |
| [**update_world_experience_badge**](WorldsBadgesApi.md#update_world_experience_badge) | **PATCH** /v1/worlds/experiences/{experienceId}/badges/{badgeId} | Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge. |


## create_world_experience_badge

> <CreateWorldExperienceBadgeResponse> create_world_experience_badge(experience_id)

Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 = the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 = the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.
  result = api_instance.create_world_experience_badge(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->create_world_experience_badge: #{e}"
end
```

#### Using the create_world_experience_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceBadgeResponse>, Integer, Hash)> create_world_experience_badge_with_http_info(experience_id)

```ruby
begin
  # Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 = the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.
  data, status_code, headers = api_instance.create_world_experience_badge_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->create_world_experience_badge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_badge_mine

> <GetWorldBadgeMineResponse> get_world_badge_mine

Every game badge you hold, newest first, and whether your person page shows them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new

begin
  # Every game badge you hold, newest first, and whether your person page shows them.
  result = api_instance.get_world_badge_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_badge_mine: #{e}"
end
```

#### Using the get_world_badge_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldBadgeMineResponse>, Integer, Hash)> get_world_badge_mine_with_http_info

```ruby
begin
  # Every game badge you hold, newest first, and whether your person page shows them.
  data, status_code, headers = api_instance.get_world_badge_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldBadgeMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_badge_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldBadgeMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_badge

> <GetWorldExperienceBadgeResponse> get_world_experience_badge(experience_id)

A game's badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new
experience_id = 'experience_id_example' # String | 

begin
  # A game's badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).
  result = api_instance.get_world_experience_badge(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_experience_badge: #{e}"
end
```

#### Using the get_world_experience_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceBadgeResponse>, Integer, Hash)> get_world_experience_badge_with_http_info(experience_id)

```ruby
begin
  # A game's badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).
  data, status_code, headers = api_instance.get_world_experience_badge_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_experience_badge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_badge

> <GetWorldGameBadgeResponse> get_world_game_badge(game)

A Crossly Carnival game's badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game's players) and, for you, when you earned it. :game is a Worlds experience id or key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new
game = 'game_example' # String | 

begin
  # A Crossly Carnival game's badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game's players) and, for you, when you earned it. :game is a Worlds experience id or key.
  result = api_instance.get_world_game_badge(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_game_badge: #{e}"
end
```

#### Using the get_world_game_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameBadgeResponse>, Integer, Hash)> get_world_game_badge_with_http_info(game)

```ruby
begin
  # A Crossly Carnival game's badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game's players) and, for you, when you earned it. :game is a Worlds experience id or key.
  data, status_code, headers = api_instance.get_world_game_badge_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_game_badge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetWorldGameBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_player_badge

> <GetWorldPlayerBadgeResponse> get_world_player_badge(username)

The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new
username = 'username_example' # String | 

begin
  # The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).
  result = api_instance.get_world_player_badge(username)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_player_badge: #{e}"
end
```

#### Using the get_world_player_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlayerBadgeResponse>, Integer, Hash)> get_world_player_badge_with_http_info(username)

```ruby
begin
  # The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).
  data, status_code, headers = api_instance.get_world_player_badge_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlayerBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->get_world_player_badge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |

### Return type

**GetWorldPlayerBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_badge_profile

> <UpdateWorldBadgeProfileResponse> update_world_badge_profile

Show (or hide) the game badges you hold on your person page. Off by default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new

begin
  # Show (or hide) the game badges you hold on your person page. Off by default.
  result = api_instance.update_world_badge_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->update_world_badge_profile: #{e}"
end
```

#### Using the update_world_badge_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldBadgeProfileResponse>, Integer, Hash)> update_world_badge_profile_with_http_info

```ruby
begin
  # Show (or hide) the game badges you hold on your person page. Off by default.
  data, status_code, headers = api_instance.update_world_badge_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldBadgeProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->update_world_badge_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateWorldBadgeProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_badge

> <CreateWorldExperienceBadgeResponse> update_world_experience_badge(experience_id, badge_id)

Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsBadgesApi.new
experience_id = 'experience_id_example' # String | 
badge_id = 'badge_id_example' # String | 

begin
  # Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.
  result = api_instance.update_world_experience_badge(experience_id, badge_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->update_world_experience_badge: #{e}"
end
```

#### Using the update_world_experience_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceBadgeResponse>, Integer, Hash)> update_world_experience_badge_with_http_info(experience_id, badge_id)

```ruby
begin
  # Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.
  data, status_code, headers = api_instance.update_world_experience_badge_with_http_info(experience_id, badge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsBadgesApi->update_world_experience_badge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **badge_id** | **String** |  |  |

### Return type

**CreateWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

