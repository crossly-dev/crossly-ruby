# Crossly::TeamApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_team_accept**](TeamApi.md#create_team_accept) | **POST** /v1/team/accept | Accept a team invitation by the raw token from its link. |
| [**create_team_invite**](TeamApi.md#create_team_invite) | **POST** /v1/team/invites | Invite someone to one or more stores, each with its permissions; returns the one-time accept URL. |
| [**create_team_invite2**](TeamApi.md#create_team_invite2) | **POST** /v1/team/invite | Issue a team invitation; returns the one-time accept URL (nothing is emailed). |
| [**create_team_leave**](TeamApi.md#create_team_leave) | **POST** /v1/team/leave | Leave every team this user is currently a member of. |
| [**create_team_member_store**](TeamApi.md#create_team_member_store) | **POST** /v1/team/members/{id}/stores | Add a team member to a store with its permissions. |
| [**create_team_revoke**](TeamApi.md#create_team_revoke) | **POST** /v1/team/revoke | Revoke a pending invite OR an active team member. |
| [**delete_team_member_store**](TeamApi.md#delete_team_member_store) | **DELETE** /v1/team/members/{id}/stores/{store} | Remove a team member from one store (their other stores stay). |
| [**get_assignee**](TeamApi.md#get_assignee) | **GET** /v1/assignees | The teammates work can be assigned to (active seats; isMe marks yours). |
| [**get_team**](TeamApi.md#get_team) | **GET** /v1/team | List pending team invitations + active members. |
| [**get_team_member**](TeamApi.md#get_team_member) | **GET** /v1/team/members/{id} | One team member: added, last active and the stores they staff. |
| [**get_team_member_store**](TeamApi.md#get_team_member_store) | **GET** /v1/team/members/{id}/stores/{store} | A member&#39;s permissions and limits in one store (&#x60;all&#x60; &#x3D; all current and future stores). |
| [**list_team_invites**](TeamApi.md#list_team_invites) | **GET** /v1/team/invites | List team invitations with the stores each adds the person to. |
| [**list_team_members**](TeamApi.md#list_team_members) | **GET** /v1/team/members | List team members with the stores each staffs (search, store, preset, permission, status, last active). |
| [**list_team_stores**](TeamApi.md#list_team_stores) | **GET** /v1/team/stores | The stores whose team you may see, invite to and manage. |
| [**update_team**](TeamApi.md#update_team) | **PATCH** /v1/team/{memberId} | Update a team member&#39;s scopes (owner only). |
| [**update_team_member_store**](TeamApi.md#update_team_member_store) | **PUT** /v1/team/members/{id}/stores/{store} | Set a member&#39;s permissions and limits in one store. |


## create_team_accept

> <CreateTeamAcceptResponse> create_team_accept(token_object)

Accept a team invitation by the raw token from its link.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
token_object = Crossly::TokenObject.new({token: 'token_example'}) # TokenObject | 

begin
  # Accept a team invitation by the raw token from its link.
  result = api_instance.create_team_accept(token_object)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_accept: #{e}"
end
```

#### Using the create_team_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamAcceptResponse>, Integer, Hash)> create_team_accept_with_http_info(token_object)

```ruby
begin
  # Accept a team invitation by the raw token from its link.
  data, status_code, headers = api_instance.create_team_accept_with_http_info(token_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_object** | **TokenObject** |  |  |

### Return type

**CreateTeamAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_invite

> <CreateTeamInviteResponse> create_team_invite(create_team_invite_request)

Invite someone to one or more stores, each with its permissions; returns the one-time accept URL.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
create_team_invite_request = Crossly::CreateTeamInviteRequest.new({invitee_email: 'invitee_email_example', stores: [Crossly::CreateTeamMemberStoreRequest.new({permissions: ['permissions_example'], store: 'store_example'})]}) # CreateTeamInviteRequest | 

begin
  # Invite someone to one or more stores, each with its permissions; returns the one-time accept URL.
  result = api_instance.create_team_invite(create_team_invite_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite: #{e}"
end
```

#### Using the create_team_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamInviteResponse>, Integer, Hash)> create_team_invite_with_http_info(create_team_invite_request)

```ruby
begin
  # Invite someone to one or more stores, each with its permissions; returns the one-time accept URL.
  data, status_code, headers = api_instance.create_team_invite_with_http_info(create_team_invite_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_team_invite_request** | **CreateTeamInviteRequest** |  |  |

### Return type

**CreateTeamInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_invite2

> <CreateTeamInvite2Response> create_team_invite2(create_team_invite2_request)

Issue a team invitation; returns the one-time accept URL (nothing is emailed).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
create_team_invite2_request = Crossly::CreateTeamInvite2Request.new({invitee_email: 'invitee_email_example', scopes: ['scopes_example']}) # CreateTeamInvite2Request | 

begin
  # Issue a team invitation; returns the one-time accept URL (nothing is emailed).
  result = api_instance.create_team_invite2(create_team_invite2_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite2: #{e}"
end
```

#### Using the create_team_invite2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamInvite2Response>, Integer, Hash)> create_team_invite2_with_http_info(create_team_invite2_request)

```ruby
begin
  # Issue a team invitation; returns the one-time accept URL (nothing is emailed).
  data, status_code, headers = api_instance.create_team_invite2_with_http_info(create_team_invite2_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamInvite2Response>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_team_invite2_request** | **CreateTeamInvite2Request** |  |  |

### Return type

**CreateTeamInvite2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_leave

> <CreateTeamLeaveResponse> create_team_leave

Leave every team this user is currently a member of.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new

begin
  # Leave every team this user is currently a member of.
  result = api_instance.create_team_leave
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_leave: #{e}"
end
```

#### Using the create_team_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamLeaveResponse>, Integer, Hash)> create_team_leave_with_http_info

```ruby
begin
  # Leave every team this user is currently a member of.
  data, status_code, headers = api_instance.create_team_leave_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamLeaveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_leave_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateTeamLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_team_member_store

> <TeamMemberStoreResponse> create_team_member_store(id, create_team_member_store_request)

Add a team member to a store with its permissions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
id = 'id_example' # String | 
create_team_member_store_request = Crossly::CreateTeamMemberStoreRequest.new({permissions: ['permissions_example'], store: 'store_example'}) # CreateTeamMemberStoreRequest | 

begin
  # Add a team member to a store with its permissions.
  result = api_instance.create_team_member_store(id, create_team_member_store_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_member_store: #{e}"
end
```

#### Using the create_team_member_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamMemberStoreResponse>, Integer, Hash)> create_team_member_store_with_http_info(id, create_team_member_store_request)

```ruby
begin
  # Add a team member to a store with its permissions.
  data, status_code, headers = api_instance.create_team_member_store_with_http_info(id, create_team_member_store_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamMemberStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_member_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_team_member_store_request** | **CreateTeamMemberStoreRequest** |  |  |

### Return type

**TeamMemberStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_revoke

> <CreateTeamRevokeResponse> create_team_revoke(create_team_revoke_request)

Revoke a pending invite OR an active team member.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
create_team_revoke_request = Crossly::CreateTeamRevokeRequest.new # CreateTeamRevokeRequest | 

begin
  # Revoke a pending invite OR an active team member.
  result = api_instance.create_team_revoke(create_team_revoke_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_revoke: #{e}"
end
```

#### Using the create_team_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamRevokeResponse>, Integer, Hash)> create_team_revoke_with_http_info(create_team_revoke_request)

```ruby
begin
  # Revoke a pending invite OR an active team member.
  data, status_code, headers = api_instance.create_team_revoke_with_http_info(create_team_revoke_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamRevokeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_team_revoke_request** | **CreateTeamRevokeRequest** |  |  |

### Return type

**CreateTeamRevokeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_member_store

> <UpdateGroupBuyResponse> delete_team_member_store(id, store)

Remove a team member from one store (their other stores stay).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
id = 'id_example' # String | 
store = 'store_example' # String | 

begin
  # Remove a team member from one store (their other stores stay).
  result = api_instance.delete_team_member_store(id, store)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->delete_team_member_store: #{e}"
end
```

#### Using the delete_team_member_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_team_member_store_with_http_info(id, store)

```ruby
begin
  # Remove a team member from one store (their other stores stay).
  data, status_code, headers = api_instance.delete_team_member_store_with_http_info(id, store)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->delete_team_member_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **store** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assignee

> <GetAssigneeResponse> get_assignee

The teammates work can be assigned to (active seats; isMe marks yours).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new

begin
  # The teammates work can be assigned to (active seats; isMe marks yours).
  result = api_instance.get_assignee
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_assignee: #{e}"
end
```

#### Using the get_assignee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssigneeResponse>, Integer, Hash)> get_assignee_with_http_info

```ruby
begin
  # The teammates work can be assigned to (active seats; isMe marks yours).
  data, status_code, headers = api_instance.get_assignee_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssigneeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_assignee_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAssigneeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> <GetTeamResponse> get_team

List pending team invitations + active members.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new

begin
  # List pending team invitations + active members.
  result = api_instance.get_team
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTeamResponse>, Integer, Hash)> get_team_with_http_info

```ruby
begin
  # List pending team invitations + active members.
  data, status_code, headers = api_instance.get_team_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTeamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetTeamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team_member

> <GetTeamMemberResponse> get_team_member(id)

One team member: added, last active and the stores they staff.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
id = 'id_example' # String | 

begin
  # One team member: added, last active and the stores they staff.
  result = api_instance.get_team_member(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team_member: #{e}"
end
```

#### Using the get_team_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTeamMemberResponse>, Integer, Hash)> get_team_member_with_http_info(id)

```ruby
begin
  # One team member: added, last active and the stores they staff.
  data, status_code, headers = api_instance.get_team_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTeamMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetTeamMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team_member_store

> <TeamMemberStoreResponse> get_team_member_store(id, store)

A member's permissions and limits in one store (`all` = all current and future stores).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
id = 'id_example' # String | 
store = 'store_example' # String | 

begin
  # A member's permissions and limits in one store (`all` = all current and future stores).
  result = api_instance.get_team_member_store(id, store)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team_member_store: #{e}"
end
```

#### Using the get_team_member_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamMemberStoreResponse>, Integer, Hash)> get_team_member_store_with_http_info(id, store)

```ruby
begin
  # A member's permissions and limits in one store (`all` = all current and future stores).
  data, status_code, headers = api_instance.get_team_member_store_with_http_info(id, store)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamMemberStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->get_team_member_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **store** | **String** |  |  |

### Return type

**TeamMemberStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_invites

> <ListTeamInvitesResponse> list_team_invites(opts)

List team invitations with the stores each adds the person to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
opts = {
  store: 'store_example', # String | 
  status: 'all', # String | 
  sort: 'email', # String | 
  q: 'q_example', # String | 
  page: 8.14, # Float | 
  page_size: 8.14 # Float | 
}

begin
  # List team invitations with the stores each adds the person to.
  result = api_instance.list_team_invites(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_invites: #{e}"
end
```

#### Using the list_team_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeamInvitesResponse>, Integer, Hash)> list_team_invites_with_http_info(opts)

```ruby
begin
  # List team invitations with the stores each adds the person to.
  data, status_code, headers = api_instance.list_team_invites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeamInvitesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **sort** | **String** |  | [optional] |
| **q** | **String** |  | [optional] |
| **page** | **Float** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

**ListTeamInvitesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_members

> <ListTeamMembersResponse> list_team_members(opts)

List team members with the stores each staffs (search, store, preset, permission, status, last active).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
opts = {
  store: 'store_example', # String | A store id, or 'all' (members holding the all-stores entry).
  role: 'role_example', # String | A preset id (viewer…admin), 'custom', or the account role 'account_admin'.
  permission: 'permission_example', # String | 
  status: 'active', # String | active = reaches at least one store; no_stores = a seat with no store yet.
  last_active: 'never', # String | 
  sort: 'name', # String | 
  q: 'q_example', # String | 
  page: 8.14, # Float | 
  page_size: 8.14 # Float | 
}

begin
  # List team members with the stores each staffs (search, store, preset, permission, status, last active).
  result = api_instance.list_team_members(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_members: #{e}"
end
```

#### Using the list_team_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeamMembersResponse>, Integer, Hash)> list_team_members_with_http_info(opts)

```ruby
begin
  # List team members with the stores each staffs (search, store, preset, permission, status, last active).
  data, status_code, headers = api_instance.list_team_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeamMembersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store** | **String** | A store id, or &#39;all&#39; (members holding the all-stores entry). | [optional] |
| **role** | **String** | A preset id (viewer…admin), &#39;custom&#39;, or the account role &#39;account_admin&#39;. | [optional] |
| **permission** | **String** |  | [optional] |
| **status** | **String** | active &#x3D; reaches at least one store; no_stores &#x3D; a seat with no store yet. | [optional] |
| **last_active** | **String** |  | [optional] |
| **sort** | **String** |  | [optional] |
| **q** | **String** |  | [optional] |
| **page** | **Float** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

**ListTeamMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_stores

> <ListTeamStoresResponse> list_team_stores

The stores whose team you may see, invite to and manage.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new

begin
  # The stores whose team you may see, invite to and manage.
  result = api_instance.list_team_stores
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_stores: #{e}"
end
```

#### Using the list_team_stores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeamStoresResponse>, Integer, Hash)> list_team_stores_with_http_info

```ruby
begin
  # The stores whose team you may see, invite to and manage.
  data, status_code, headers = api_instance.list_team_stores_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeamStoresResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->list_team_stores_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListTeamStoresResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> <OkResponse> update_team(member_id, update_team_request)

Update a team member's scopes (owner only).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
member_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_team_request = Crossly::UpdateTeamRequest.new({scopes: ['scopes_example']}) # UpdateTeamRequest | 

begin
  # Update a team member's scopes (owner only).
  result = api_instance.update_team(member_id, update_team_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> update_team_with_http_info(member_id, update_team_request)

```ruby
begin
  # Update a team member's scopes (owner only).
  data, status_code, headers = api_instance.update_team_with_http_info(member_id, update_team_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** |  |  |
| **update_team_request** | **UpdateTeamRequest** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_team_member_store

> <TeamMemberStoreResponse> update_team_member_store(id, store, update_team_member_store_request)

Set a member's permissions and limits in one store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::TeamApi.new
id = 'id_example' # String | 
store = 'store_example' # String | 
update_team_member_store_request = Crossly::UpdateTeamMemberStoreRequest.new({permissions: ['permissions_example']}) # UpdateTeamMemberStoreRequest | 

begin
  # Set a member's permissions and limits in one store.
  result = api_instance.update_team_member_store(id, store, update_team_member_store_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team_member_store: #{e}"
end
```

#### Using the update_team_member_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamMemberStoreResponse>, Integer, Hash)> update_team_member_store_with_http_info(id, store, update_team_member_store_request)

```ruby
begin
  # Set a member's permissions and limits in one store.
  data, status_code, headers = api_instance.update_team_member_store_with_http_info(id, store, update_team_member_store_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamMemberStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team_member_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **store** | **String** |  |  |
| **update_team_member_store_request** | **UpdateTeamMemberStoreRequest** |  |  |

### Return type

**TeamMemberStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

