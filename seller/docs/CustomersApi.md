# Crossly::CustomersApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_bulk_delete**](CustomersApi.md#create_customer_bulk_delete) | **POST** /v1/customers/bulk-delete | Bulk blocklist customer handles. |
| [**create_customer_bulk_export**](CustomersApi.md#create_customer_bulk_export) | **POST** /v1/customers/bulk-export | Bulk export aggregated customers as CSV. |
| [**create_customer_refresh_profile**](CustomersApi.md#create_customer_refresh_profile) | **POST** /v1/customers/{handle}/refresh-profile | Queue a fresh read of a customer&#39;s buyer profiles on every platform they ordered on. |
| [**create_loyalty_airdrop_cancel**](CustomersApi.md#create_loyalty_airdrop_cancel) | **POST** /v1/loyalty/airdrops/{id}/cancel | Cancel a queued or failed airdrop (one already sent is the member’s). |
| [**create_loyalty_airdrop_check**](CustomersApi.md#create_loyalty_airdrop_check) | **POST** /v1/loyalty/airdrops/{id}/check | Read a submitted airdrop’s receipt again now. |
| [**create_loyalty_airdrop_prepare**](CustomersApi.md#create_loyalty_airdrop_prepare) | **POST** /v1/loyalty/airdrops/{id}/prepare | The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built. |
| [**create_loyalty_airdrop_submit**](CustomersApi.md#create_loyalty_airdrop_submit) | **POST** /v1/loyalty/airdrops/{id}/submit | Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed. |
| [**create_loyalty_program_invite**](CustomersApi.md#create_loyalty_program_invite) | **POST** /v1/loyalty/program/invite | Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited. |
| [**create_loyalty_program_member_override**](CustomersApi.md#create_loyalty_program_member_override) | **POST** /v1/loyalty/program/members/{id}/override | Pin a member to a tier (tierId null clears the pin), with a reason. |
| [**create_loyalty_program_member_point**](CustomersApi.md#create_loyalty_program_member_point) | **POST** /v1/loyalty/program/members/{id}/points | Give a member points by hand (Idempotency-Key required: the same key awards once). Fires loyalty.points_awarded. |
| [**create_loyalty_tier**](CustomersApi.md#create_loyalty_tier) | **POST** /v1/loyalty/tiers | Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …). |
| [**delete_loyalty_reward**](CustomersApi.md#delete_loyalty_reward) | **DELETE** /v1/loyalty/rewards/{rewardId} | Take a reward off the shelf. Perks already redeemed stay with their buyers. |
| [**delete_loyalty_tier**](CustomersApi.md#delete_loyalty_tier) | **DELETE** /v1/loyalty/tiers/{id} | Delete a tier; its members are re-evaluated. |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v1/customers/{handle} | Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders. |
| [**get_customer_note**](CustomersApi.md#get_customer_note) | **GET** /v1/customers/{handle}/notes | Your private notes on a customer (empty when none). Works before their first order. |
| [**get_loyalty_airdrop**](CustomersApi.md#get_loyalty_airdrop) | **GET** /v1/loyalty/airdrops/{id} | One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status. |
| [**get_loyalty_club**](CustomersApi.md#get_loyalty_club) | **GET** /v1/loyalty/club | Your loyalty club: tiers and how many members are in each. |
| [**get_loyalty_program**](CustomersApi.md#get_loyalty_program) | **GET** /v1/loyalty/program | Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks. |
| [**get_loyalty_program_member**](CustomersApi.md#get_loyalty_program_member) | **GET** /v1/loyalty/program/members/{id} | One member: standing, tier, progress, perks held, history and any override. |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /v1/customers | List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating. |
| [**list_loyalty_airdrops**](CustomersApi.md#list_loyalty_airdrops) | **GET** /v1/loyalty/airdrops | NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled. |
| [**list_loyalty_members**](CustomersApi.md#list_loyalty_members) | **GET** /v1/loyalty/members | Your loyalty club’s members, by spend with you. |
| [**list_loyalty_program_invite_candidates**](CustomersApi.md#list_loyalty_program_invite_candidates) | **GET** /v1/loyalty/program/invite-candidates | Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite. |
| [**list_loyalty_program_member_points**](CustomersApi.md#list_loyalty_program_member_points) | **GET** /v1/loyalty/program/members/{id}/points | A member’s points history: purchases, hunts, event check-ins, photo reviews, group buys, manual grants and redeemed rewards. |
| [**list_loyalty_program_members**](CustomersApi.md#list_loyalty_program_members) | **GET** /v1/loyalty/program/members | Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters. |
| [**list_loyalty_rewards**](CustomersApi.md#list_loyalty_rewards) | **GET** /v1/loyalty/rewards | Your loyalty rewards shelf: typed perks members buy with points, each with its cost, stock left, per-member limit and how many were redeemed. |
| [**update_customer_note**](CustomersApi.md#update_customer_note) | **PUT** /v1/customers/{handle}/notes | Save your private notes on a customer (an empty string clears them). |
| [**update_loyalty_club**](CustomersApi.md#update_loyalty_club) | **PUT** /v1/loyalty/club | Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks. |
| [**update_loyalty_program**](CustomersApi.md#update_loyalty_program) | **PUT** /v1/loyalty/program | Create or update your loyalty program settings. |
| [**update_loyalty_reward**](CustomersApi.md#update_loyalty_reward) | **PUT** /v1/loyalty/rewards | Replace the rewards shelf (up to 50 rewards). A price perk (% off, $ off, free shipping) is redeemed as a single-use code. |
| [**update_loyalty_reward_by_reward_id**](CustomersApi.md#update_loyalty_reward_by_reward_id) | **PUT** /v1/loyalty/rewards/{rewardId} | Add a reward to the shelf, or replace the one with this id. |
| [**update_loyalty_tier**](CustomersApi.md#update_loyalty_tier) | **PUT** /v1/loyalty/tiers/{id} | Replace a tier. Members holding it get the edited perks. |


## create_customer_bulk_delete

> <CreateCustomerBulkDeleteResponse> create_customer_bulk_delete(create_customer_bulk_delete_request)

Bulk blocklist customer handles.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
create_customer_bulk_delete_request = Crossly::CreateCustomerBulkDeleteRequest.new({handles: ['handles_example']}) # CreateCustomerBulkDeleteRequest | 

begin
  # Bulk blocklist customer handles.
  result = api_instance.create_customer_bulk_delete(create_customer_bulk_delete_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete: #{e}"
end
```

#### Using the create_customer_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerBulkDeleteResponse>, Integer, Hash)> create_customer_bulk_delete_with_http_info(create_customer_bulk_delete_request)

```ruby
begin
  # Bulk blocklist customer handles.
  data, status_code, headers = api_instance.create_customer_bulk_delete_with_http_info(create_customer_bulk_delete_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_bulk_delete_request** | **CreateCustomerBulkDeleteRequest** |  |  |

### Return type

**CreateCustomerBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_bulk_export

> String create_customer_bulk_export(create_customer_bulk_delete_request)

Bulk export aggregated customers as CSV.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
create_customer_bulk_delete_request = Crossly::CreateCustomerBulkDeleteRequest.new({handles: ['handles_example']}) # CreateCustomerBulkDeleteRequest | 

begin
  # Bulk export aggregated customers as CSV.
  result = api_instance.create_customer_bulk_export(create_customer_bulk_delete_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export: #{e}"
end
```

#### Using the create_customer_bulk_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_customer_bulk_export_with_http_info(create_customer_bulk_delete_request)

```ruby
begin
  # Bulk export aggregated customers as CSV.
  data, status_code, headers = api_instance.create_customer_bulk_export_with_http_info(create_customer_bulk_delete_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_bulk_delete_request** | **CreateCustomerBulkDeleteRequest** |  |  |

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/csv, application/json


## create_customer_refresh_profile

> <CreateCustomerRefreshProfileResponse> create_customer_refresh_profile(handle)

Queue a fresh read of a customer's buyer profiles on every platform they ordered on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Queue a fresh read of a customer's buyer profiles on every platform they ordered on.
  result = api_instance.create_customer_refresh_profile(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_refresh_profile: #{e}"
end
```

#### Using the create_customer_refresh_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerRefreshProfileResponse>, Integer, Hash)> create_customer_refresh_profile_with_http_info(handle)

```ruby
begin
  # Queue a fresh read of a customer's buyer profiles on every platform they ordered on.
  data, status_code, headers = api_instance.create_customer_refresh_profile_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerRefreshProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_refresh_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**CreateCustomerRefreshProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_airdrop_cancel

> <LoyaltyAirdropResponse> create_loyalty_airdrop_cancel(id)

Cancel a queued or failed airdrop (one already sent is the member’s).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # Cancel a queued or failed airdrop (one already sent is the member’s).
  result = api_instance.create_loyalty_airdrop_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_cancel: #{e}"
end
```

#### Using the create_loyalty_airdrop_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyAirdropResponse>, Integer, Hash)> create_loyalty_airdrop_cancel_with_http_info(id)

```ruby
begin
  # Cancel a queued or failed airdrop (one already sent is the member’s).
  data, status_code, headers = api_instance.create_loyalty_airdrop_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltyAirdropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_airdrop_check

> <LoyaltyAirdropResponse> create_loyalty_airdrop_check(id)

Read a submitted airdrop’s receipt again now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # Read a submitted airdrop’s receipt again now.
  result = api_instance.create_loyalty_airdrop_check(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_check: #{e}"
end
```

#### Using the create_loyalty_airdrop_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyAirdropResponse>, Integer, Hash)> create_loyalty_airdrop_check_with_http_info(id)

```ruby
begin
  # Read a submitted airdrop’s receipt again now.
  data, status_code, headers = api_instance.create_loyalty_airdrop_check_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltyAirdropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_airdrop_prepare

> <CreateLoyaltyAirdropPrepareResponse> create_loyalty_airdrop_prepare(id)

The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.
  result = api_instance.create_loyalty_airdrop_prepare(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_prepare: #{e}"
end
```

#### Using the create_loyalty_airdrop_prepare_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyAirdropPrepareResponse>, Integer, Hash)> create_loyalty_airdrop_prepare_with_http_info(id)

```ruby
begin
  # The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.
  data, status_code, headers = api_instance.create_loyalty_airdrop_prepare_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyAirdropPrepareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_prepare_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLoyaltyAirdropPrepareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_airdrop_submit

> <LoyaltyAirdropResponse> create_loyalty_airdrop_submit(id, create_loyalty_airdrop_submit_request)

Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 
create_loyalty_airdrop_submit_request = Crossly::CreateLoyaltyAirdropSubmitRequest.new # CreateLoyaltyAirdropSubmitRequest | 

begin
  # Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
  result = api_instance.create_loyalty_airdrop_submit(id, create_loyalty_airdrop_submit_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_submit: #{e}"
end
```

#### Using the create_loyalty_airdrop_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyAirdropResponse>, Integer, Hash)> create_loyalty_airdrop_submit_with_http_info(id, create_loyalty_airdrop_submit_request)

```ruby
begin
  # Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
  data, status_code, headers = api_instance.create_loyalty_airdrop_submit_with_http_info(id, create_loyalty_airdrop_submit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltyAirdropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_loyalty_airdrop_submit_request** | **CreateLoyaltyAirdropSubmitRequest** |  |  |

### Return type

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_loyalty_program_invite

> <CreateLoyaltyProgramInviteResponse> create_loyalty_program_invite(create_loyalty_program_invite_request)

Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
create_loyalty_program_invite_request = Crossly::CreateLoyaltyProgramInviteRequest.new({buyer_user_ids: ['buyer_user_ids_example']}) # CreateLoyaltyProgramInviteRequest | 

begin
  # Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
  result = api_instance.create_loyalty_program_invite(create_loyalty_program_invite_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_invite: #{e}"
end
```

#### Using the create_loyalty_program_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyProgramInviteResponse>, Integer, Hash)> create_loyalty_program_invite_with_http_info(create_loyalty_program_invite_request)

```ruby
begin
  # Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
  data, status_code, headers = api_instance.create_loyalty_program_invite_with_http_info(create_loyalty_program_invite_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyProgramInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_loyalty_program_invite_request** | **CreateLoyaltyProgramInviteRequest** |  |  |

### Return type

**CreateLoyaltyProgramInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_loyalty_program_member_override

> <GetLoyaltyProgramMemberResponse> create_loyalty_program_member_override(id, create_loyalty_program_member_override_request)

Pin a member to a tier (tierId null clears the pin), with a reason.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 
create_loyalty_program_member_override_request = Crossly::CreateLoyaltyProgramMemberOverrideRequest.new({tier_id: 'tier_id_example'}) # CreateLoyaltyProgramMemberOverrideRequest | 

begin
  # Pin a member to a tier (tierId null clears the pin), with a reason.
  result = api_instance.create_loyalty_program_member_override(id, create_loyalty_program_member_override_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_member_override: #{e}"
end
```

#### Using the create_loyalty_program_member_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyProgramMemberResponse>, Integer, Hash)> create_loyalty_program_member_override_with_http_info(id, create_loyalty_program_member_override_request)

```ruby
begin
  # Pin a member to a tier (tierId null clears the pin), with a reason.
  data, status_code, headers = api_instance.create_loyalty_program_member_override_with_http_info(id, create_loyalty_program_member_override_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyProgramMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_member_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_loyalty_program_member_override_request** | **CreateLoyaltyProgramMemberOverrideRequest** |  |  |

### Return type

**GetLoyaltyProgramMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_loyalty_program_member_point

> <CreateLoyaltyProgramMemberPointResponse> create_loyalty_program_member_point(id, create_loyalty_program_member_point_request)

Give a member points by hand (Idempotency-Key required: the same key awards once). Fires loyalty.points_awarded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 
create_loyalty_program_member_point_request = Crossly::CreateLoyaltyProgramMemberPointRequest.new({points: 3.56}) # CreateLoyaltyProgramMemberPointRequest | 

begin
  # Give a member points by hand (Idempotency-Key required: the same key awards once). Fires loyalty.points_awarded.
  result = api_instance.create_loyalty_program_member_point(id, create_loyalty_program_member_point_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_member_point: #{e}"
end
```

#### Using the create_loyalty_program_member_point_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyProgramMemberPointResponse>, Integer, Hash)> create_loyalty_program_member_point_with_http_info(id, create_loyalty_program_member_point_request)

```ruby
begin
  # Give a member points by hand (Idempotency-Key required: the same key awards once). Fires loyalty.points_awarded.
  data, status_code, headers = api_instance.create_loyalty_program_member_point_with_http_info(id, create_loyalty_program_member_point_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyProgramMemberPointResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_member_point_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_loyalty_program_member_point_request** | **CreateLoyaltyProgramMemberPointRequest** |  |  |

### Return type

**CreateLoyaltyProgramMemberPointResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_loyalty_tier

> <CreateLoyaltyTierResponse> create_loyalty_tier

Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).
  result = api_instance.create_loyalty_tier
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_tier: #{e}"
end
```

#### Using the create_loyalty_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyTierResponse>, Integer, Hash)> create_loyalty_tier_with_http_info

```ruby
begin
  # Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).
  data, status_code, headers = api_instance.create_loyalty_tier_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyTierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_tier_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateLoyaltyTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_loyalty_reward

> <UpdateGroupBuyResponse> delete_loyalty_reward(reward_id)

Take a reward off the shelf. Perks already redeemed stay with their buyers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
reward_id = 'reward_id_example' # String | 

begin
  # Take a reward off the shelf. Perks already redeemed stay with their buyers.
  result = api_instance.delete_loyalty_reward(reward_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->delete_loyalty_reward: #{e}"
end
```

#### Using the delete_loyalty_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_loyalty_reward_with_http_info(reward_id)

```ruby
begin
  # Take a reward off the shelf. Perks already redeemed stay with their buyers.
  data, status_code, headers = api_instance.delete_loyalty_reward_with_http_info(reward_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->delete_loyalty_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_loyalty_tier

> <UpdateGroupBuyResponse> delete_loyalty_tier(id)

Delete a tier; its members are re-evaluated.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # Delete a tier; its members are re-evaluated.
  result = api_instance.delete_loyalty_tier(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->delete_loyalty_tier: #{e}"
end
```

#### Using the delete_loyalty_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_loyalty_tier_with_http_info(id)

```ruby
begin
  # Delete a tier; its members are re-evaluated.
  data, status_code, headers = api_instance.delete_loyalty_tier_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->delete_loyalty_tier_with_http_info: #{e}"
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


## get_customer

> <GetCustomerResponse> get_customer(handle)

Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
  result = api_instance.get_customer(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerResponse>, Integer, Hash)> get_customer_with_http_info(handle)

```ruby
begin
  # Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
  data, status_code, headers = api_instance.get_customer_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetCustomerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_note

> <GetCustomerNoteResponse> get_customer_note(handle)

Your private notes on a customer (empty when none). Works before their first order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 

begin
  # Your private notes on a customer (empty when none). Works before their first order.
  result = api_instance.get_customer_note(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer_note: #{e}"
end
```

#### Using the get_customer_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerNoteResponse>, Integer, Hash)> get_customer_note_with_http_info(handle)

```ruby
begin
  # Your private notes on a customer (empty when none). Works before their first order.
  data, status_code, headers = api_instance.get_customer_note_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerNoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_customer_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetCustomerNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_airdrop

> <LoyaltyAirdropResponse> get_loyalty_airdrop(id)

One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.
  result = api_instance.get_loyalty_airdrop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_airdrop: #{e}"
end
```

#### Using the get_loyalty_airdrop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyAirdropResponse>, Integer, Hash)> get_loyalty_airdrop_with_http_info(id)

```ruby
begin
  # One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.
  data, status_code, headers = api_instance.get_loyalty_airdrop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltyAirdropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_airdrop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_club

> <GetLoyaltyClubResponse> get_loyalty_club

Your loyalty club: tiers and how many members are in each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty club: tiers and how many members are in each.
  result = api_instance.get_loyalty_club
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_club: #{e}"
end
```

#### Using the get_loyalty_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyClubResponse>, Integer, Hash)> get_loyalty_club_with_http_info

```ruby
begin
  # Your loyalty club: tiers and how many members are in each.
  data, status_code, headers = api_instance.get_loyalty_club_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyClubResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_club_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_program

> <GetLoyaltyProgramResponse> get_loyalty_program

Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.
  result = api_instance.get_loyalty_program
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_program: #{e}"
end
```

#### Using the get_loyalty_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyProgramResponse>, Integer, Hash)> get_loyalty_program_with_http_info

```ruby
begin
  # Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.
  data, status_code, headers = api_instance.get_loyalty_program_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyProgramResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_program_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetLoyaltyProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_program_member

> <GetLoyaltyProgramMemberResponse> get_loyalty_program_member(id)

One member: standing, tier, progress, perks held, history and any override.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # One member: standing, tier, progress, perks held, history and any override.
  result = api_instance.get_loyalty_program_member(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_program_member: #{e}"
end
```

#### Using the get_loyalty_program_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyProgramMemberResponse>, Integer, Hash)> get_loyalty_program_member_with_http_info(id)

```ruby
begin
  # One member: standing, tier, progress, perks held, history and any override.
  data, status_code, headers = api_instance.get_loyalty_program_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyProgramMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->get_loyalty_program_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetLoyaltyProgramMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <ListCustomersResponse> list_customers

List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
  result = api_instance.list_customers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomersResponse>, Integer, Hash)> list_customers_with_http_info

```ruby
begin
  # List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
  data, status_code, headers = api_instance.list_customers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCustomersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_airdrops

> <ListLoyaltyAirdropsResponse> list_loyalty_airdrops(opts)

NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
opts = {
  status: 'cancelled', # String | 
  limit: 8.14 # Float | 
}

begin
  # NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
  result = api_instance.list_loyalty_airdrops(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_airdrops: #{e}"
end
```

#### Using the list_loyalty_airdrops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyAirdropsResponse>, Integer, Hash)> list_loyalty_airdrops_with_http_info(opts)

```ruby
begin
  # NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
  data, status_code, headers = api_instance.list_loyalty_airdrops_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyAirdropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_airdrops_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListLoyaltyAirdropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_members

> <ListLoyaltyMembersResponse> list_loyalty_members

Your loyalty club’s members, by spend with you.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty club’s members, by spend with you.
  result = api_instance.list_loyalty_members
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_members: #{e}"
end
```

#### Using the list_loyalty_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyMembersResponse>, Integer, Hash)> list_loyalty_members_with_http_info

```ruby
begin
  # Your loyalty club’s members, by spend with you.
  data, status_code, headers = api_instance.list_loyalty_members_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyMembersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_members_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLoyaltyMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_program_invite_candidates

> <ListLoyaltyProgramInviteCandidatesResponse> list_loyalty_program_invite_candidates

Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.
  result = api_instance.list_loyalty_program_invite_candidates
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_invite_candidates: #{e}"
end
```

#### Using the list_loyalty_program_invite_candidates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyProgramInviteCandidatesResponse>, Integer, Hash)> list_loyalty_program_invite_candidates_with_http_info

```ruby
begin
  # Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.
  data, status_code, headers = api_instance.list_loyalty_program_invite_candidates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyProgramInviteCandidatesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_invite_candidates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLoyaltyProgramInviteCandidatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_program_member_points

> <ListLoyaltyProgramMemberPointsResponse> list_loyalty_program_member_points(id)

A member’s points history: purchases, hunts, event check-ins, photo reviews, group buys, manual grants and redeemed rewards.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # A member’s points history: purchases, hunts, event check-ins, photo reviews, group buys, manual grants and redeemed rewards.
  result = api_instance.list_loyalty_program_member_points(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_member_points: #{e}"
end
```

#### Using the list_loyalty_program_member_points_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyProgramMemberPointsResponse>, Integer, Hash)> list_loyalty_program_member_points_with_http_info(id)

```ruby
begin
  # A member’s points history: purchases, hunts, event check-ins, photo reviews, group buys, manual grants and redeemed rewards.
  data, status_code, headers = api_instance.list_loyalty_program_member_points_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyProgramMemberPointsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_member_points_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListLoyaltyProgramMemberPointsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_program_members

> <ListLoyaltyProgramMembersResponse> list_loyalty_program_members

Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.
  result = api_instance.list_loyalty_program_members
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_members: #{e}"
end
```

#### Using the list_loyalty_program_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyProgramMembersResponse>, Integer, Hash)> list_loyalty_program_members_with_http_info

```ruby
begin
  # Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.
  data, status_code, headers = api_instance.list_loyalty_program_members_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyProgramMembersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_program_members_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLoyaltyProgramMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_rewards

> <ListLoyaltyRewardsResponse> list_loyalty_rewards

Your loyalty rewards shelf: typed perks members buy with points, each with its cost, stock left, per-member limit and how many were redeemed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Your loyalty rewards shelf: typed perks members buy with points, each with its cost, stock left, per-member limit and how many were redeemed.
  result = api_instance.list_loyalty_rewards
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_rewards: #{e}"
end
```

#### Using the list_loyalty_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyRewardsResponse>, Integer, Hash)> list_loyalty_rewards_with_http_info

```ruby
begin
  # Your loyalty rewards shelf: typed perks members buy with points, each with its cost, stock left, per-member limit and how many were redeemed.
  data, status_code, headers = api_instance.list_loyalty_rewards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyRewardsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_rewards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLoyaltyRewardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer_note

> <GetCustomerNoteResponse> update_customer_note(handle, update_customer_note_request)

Save your private notes on a customer (an empty string clears them).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
handle = 'handle_example' # String | 
update_customer_note_request = Crossly::UpdateCustomerNoteRequest.new({notes: 'notes_example'}) # UpdateCustomerNoteRequest | 

begin
  # Save your private notes on a customer (an empty string clears them).
  result = api_instance.update_customer_note(handle, update_customer_note_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_customer_note: #{e}"
end
```

#### Using the update_customer_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerNoteResponse>, Integer, Hash)> update_customer_note_with_http_info(handle, update_customer_note_request)

```ruby
begin
  # Save your private notes on a customer (an empty string clears them).
  data, status_code, headers = api_instance.update_customer_note_with_http_info(handle, update_customer_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerNoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_customer_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |
| **update_customer_note_request** | **UpdateCustomerNoteRequest** |  |  |

### Return type

**GetCustomerNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_club

> <GetLoyaltyClubResponse> update_loyalty_club(update_loyalty_club_request)

Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
update_loyalty_club_request = Crossly::UpdateLoyaltyClubRequest.new({name: 'name_example', tiers: [Crossly::UpdateLoyaltyClubRequestTiers.new({name: 'name_example', min_spend_cents: 3.56, discount_bps: 3.56})]}) # UpdateLoyaltyClubRequest | 

begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  result = api_instance.update_loyalty_club(update_loyalty_club_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club: #{e}"
end
```

#### Using the update_loyalty_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyClubResponse>, Integer, Hash)> update_loyalty_club_with_http_info(update_loyalty_club_request)

```ruby
begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  data, status_code, headers = api_instance.update_loyalty_club_with_http_info(update_loyalty_club_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyClubResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_loyalty_club_request** | **UpdateLoyaltyClubRequest** |  |  |

### Return type

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_program

> <UpdateLoyaltyProgramResponse> update_loyalty_program

Create or update your loyalty program settings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new

begin
  # Create or update your loyalty program settings.
  result = api_instance.update_loyalty_program
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_program: #{e}"
end
```

#### Using the update_loyalty_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLoyaltyProgramResponse>, Integer, Hash)> update_loyalty_program_with_http_info

```ruby
begin
  # Create or update your loyalty program settings.
  data, status_code, headers = api_instance.update_loyalty_program_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLoyaltyProgramResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_program_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateLoyaltyProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_loyalty_reward

> <ListLoyaltyRewardsResponse> update_loyalty_reward(update_loyalty_reward_request)

Replace the rewards shelf (up to 50 rewards). A price perk (% off, $ off, free shipping) is redeemed as a single-use code.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
update_loyalty_reward_request = Crossly::UpdateLoyaltyRewardRequest.new({rewards: [3.56]}) # UpdateLoyaltyRewardRequest | 

begin
  # Replace the rewards shelf (up to 50 rewards). A price perk (% off, $ off, free shipping) is redeemed as a single-use code.
  result = api_instance.update_loyalty_reward(update_loyalty_reward_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_reward: #{e}"
end
```

#### Using the update_loyalty_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyRewardsResponse>, Integer, Hash)> update_loyalty_reward_with_http_info(update_loyalty_reward_request)

```ruby
begin
  # Replace the rewards shelf (up to 50 rewards). A price perk (% off, $ off, free shipping) is redeemed as a single-use code.
  data, status_code, headers = api_instance.update_loyalty_reward_with_http_info(update_loyalty_reward_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyRewardsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_loyalty_reward_request** | **UpdateLoyaltyRewardRequest** |  |  |

### Return type

**ListLoyaltyRewardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_reward_by_reward_id

> <UpdateLoyaltyRewardByRewardIdResponse> update_loyalty_reward_by_reward_id(reward_id)

Add a reward to the shelf, or replace the one with this id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
reward_id = 'reward_id_example' # String | 

begin
  # Add a reward to the shelf, or replace the one with this id.
  result = api_instance.update_loyalty_reward_by_reward_id(reward_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_reward_by_reward_id: #{e}"
end
```

#### Using the update_loyalty_reward_by_reward_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLoyaltyRewardByRewardIdResponse>, Integer, Hash)> update_loyalty_reward_by_reward_id_with_http_info(reward_id)

```ruby
begin
  # Add a reward to the shelf, or replace the one with this id.
  data, status_code, headers = api_instance.update_loyalty_reward_by_reward_id_with_http_info(reward_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLoyaltyRewardByRewardIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_reward_by_reward_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** |  |  |

### Return type

**UpdateLoyaltyRewardByRewardIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_loyalty_tier

> <CreateLoyaltyTierResponse> update_loyalty_tier(id)

Replace a tier. Members holding it get the edited perks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CustomersApi.new
id = 'id_example' # String | 

begin
  # Replace a tier. Members holding it get the edited perks.
  result = api_instance.update_loyalty_tier(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_tier: #{e}"
end
```

#### Using the update_loyalty_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyTierResponse>, Integer, Hash)> update_loyalty_tier_with_http_info(id)

```ruby
begin
  # Replace a tier. Members holding it get the edited perks.
  data, status_code, headers = api_instance.update_loyalty_tier_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyTierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLoyaltyTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

