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
| [**create_loyalty_tier**](CustomersApi.md#create_loyalty_tier) | **POST** /v1/loyalty/tiers | Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …). |
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
| [**list_loyalty_program_members**](CustomersApi.md#list_loyalty_program_members) | **GET** /v1/loyalty/program/members | Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters. |
| [**update_customer_note**](CustomersApi.md#update_customer_note) | **PUT** /v1/customers/{handle}/notes | Save your private notes on a customer (an empty string clears them). |
| [**update_loyalty_club**](CustomersApi.md#update_loyalty_club) | **PUT** /v1/loyalty/club | Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks. |
| [**update_loyalty_program**](CustomersApi.md#update_loyalty_program) | **PUT** /v1/loyalty/program | Create or update your loyalty program settings. |
| [**update_loyalty_tier**](CustomersApi.md#update_loyalty_tier) | **PUT** /v1/loyalty/tiers/{id} | Replace a tier. Members holding it get the edited perks. |


## create_customer_bulk_delete

> <CreateCustomerBulkDeleteResponse> create_customer_bulk_delete

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

begin
  # Bulk blocklist customer handles.
  result = api_instance.create_customer_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete: #{e}"
end
```

#### Using the create_customer_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerBulkDeleteResponse>, Integer, Hash)> create_customer_bulk_delete_with_http_info

```ruby
begin
  # Bulk blocklist customer handles.
  data, status_code, headers = api_instance.create_customer_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCustomerBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_customer_bulk_export

> String create_customer_bulk_export

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

begin
  # Bulk export aggregated customers as CSV.
  result = api_instance.create_customer_bulk_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export: #{e}"
end
```

#### Using the create_customer_bulk_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_customer_bulk_export_with_http_info

```ruby
begin
  # Bulk export aggregated customers as CSV.
  data, status_code, headers = api_instance.create_customer_bulk_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_customer_bulk_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

> <LoyaltyAirdropResponse> create_loyalty_airdrop_submit(id)

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

begin
  # Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
  result = api_instance.create_loyalty_airdrop_submit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_airdrop_submit: #{e}"
end
```

#### Using the create_loyalty_airdrop_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyAirdropResponse>, Integer, Hash)> create_loyalty_airdrop_submit_with_http_info(id)

```ruby
begin
  # Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
  data, status_code, headers = api_instance.create_loyalty_airdrop_submit_with_http_info(id)
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

### Return type

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_program_invite

> <CreateLoyaltyProgramInviteResponse> create_loyalty_program_invite

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

begin
  # Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
  result = api_instance.create_loyalty_program_invite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_invite: #{e}"
end
```

#### Using the create_loyalty_program_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLoyaltyProgramInviteResponse>, Integer, Hash)> create_loyalty_program_invite_with_http_info

```ruby
begin
  # Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
  data, status_code, headers = api_instance.create_loyalty_program_invite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLoyaltyProgramInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_invite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateLoyaltyProgramInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_loyalty_program_member_override

> <GetLoyaltyProgramMemberResponse> create_loyalty_program_member_override(id)

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

begin
  # Pin a member to a tier (tierId null clears the pin), with a reason.
  result = api_instance.create_loyalty_program_member_override(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->create_loyalty_program_member_override: #{e}"
end
```

#### Using the create_loyalty_program_member_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyProgramMemberResponse>, Integer, Hash)> create_loyalty_program_member_override_with_http_info(id)

```ruby
begin
  # Pin a member to a tier (tierId null clears the pin), with a reason.
  data, status_code, headers = api_instance.create_loyalty_program_member_override_with_http_info(id)
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

### Return type

**GetLoyaltyProgramMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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

> <ListLoyaltyAirdropsResponse> list_loyalty_airdrops

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

begin
  # NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
  result = api_instance.list_loyalty_airdrops
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_airdrops: #{e}"
end
```

#### Using the list_loyalty_airdrops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLoyaltyAirdropsResponse>, Integer, Hash)> list_loyalty_airdrops_with_http_info

```ruby
begin
  # NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
  data, status_code, headers = api_instance.list_loyalty_airdrops_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLoyaltyAirdropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->list_loyalty_airdrops_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

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

> <GetLoyaltyClubResponse> update_loyalty_club

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

begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  result = api_instance.update_loyalty_club
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club: #{e}"
end
```

#### Using the update_loyalty_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoyaltyClubResponse>, Integer, Hash)> update_loyalty_club_with_http_info

```ruby
begin
  # Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
  data, status_code, headers = api_instance.update_loyalty_club_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoyaltyClubResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CustomersApi->update_loyalty_club_with_http_info: #{e}"
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

