# Crossly::TeamApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_team_accept**](TeamApi.md#create_team_accept) | **POST** /v1/team/accept | Accept a pending team invitation by raw token. |
| [**create_team_invite**](TeamApi.md#create_team_invite) | **POST** /v1/team/invite | Mint a team invitation; returns the one-time accept URL. |
| [**create_team_leave**](TeamApi.md#create_team_leave) | **POST** /v1/team/leave | Leave every team this user is currently a member of. |
| [**create_team_revoke**](TeamApi.md#create_team_revoke) | **POST** /v1/team/revoke | Revoke a pending invite OR an active team member. |
| [**get_team**](TeamApi.md#get_team) | **GET** /v1/team | List pending team invitations + active members. |
| [**update_team**](TeamApi.md#update_team) | **PATCH** /v1/team/{memberId} | Update a team member&#39;s scopes (owner only). |


## create_team_accept

> <CreateTeamAcceptResponse> create_team_accept

Accept a pending team invitation by raw token.

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
  # Accept a pending team invitation by raw token.
  result = api_instance.create_team_accept
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_accept: #{e}"
end
```

#### Using the create_team_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamAcceptResponse>, Integer, Hash)> create_team_accept_with_http_info

```ruby
begin
  # Accept a pending team invitation by raw token.
  data, status_code, headers = api_instance.create_team_accept_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_accept_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateTeamAcceptResponse**](CreateTeamAcceptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_team_invite

> <CreateTeamInviteResponse> create_team_invite

Mint a team invitation; returns the one-time accept URL.

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
  # Mint a team invitation; returns the one-time accept URL.
  result = api_instance.create_team_invite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite: #{e}"
end
```

#### Using the create_team_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamInviteResponse>, Integer, Hash)> create_team_invite_with_http_info

```ruby
begin
  # Mint a team invitation; returns the one-time accept URL.
  data, status_code, headers = api_instance.create_team_invite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_invite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateTeamInviteResponse**](CreateTeamInviteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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

[**CreateTeamLeaveResponse**](CreateTeamLeaveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_team_revoke

> <CreateTeamRevokeResponse> create_team_revoke

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

begin
  # Revoke a pending invite OR an active team member.
  result = api_instance.create_team_revoke
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_revoke: #{e}"
end
```

#### Using the create_team_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamRevokeResponse>, Integer, Hash)> create_team_revoke_with_http_info

```ruby
begin
  # Revoke a pending invite OR an active team member.
  data, status_code, headers = api_instance.create_team_revoke_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamRevokeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->create_team_revoke_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateTeamRevokeResponse**](CreateTeamRevokeResponse.md)

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

[**GetTeamResponse**](GetTeamResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> <UpdateTeamResponse> update_team(member_id)

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

begin
  # Update a team member's scopes (owner only).
  result = api_instance.update_team(member_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateTeamResponse>, Integer, Hash)> update_team_with_http_info(member_id)

```ruby
begin
  # Update a team member's scopes (owner only).
  data, status_code, headers = api_instance.update_team_with_http_info(member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateTeamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling TeamApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** |  |  |

### Return type

[**UpdateTeamResponse**](UpdateTeamResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

