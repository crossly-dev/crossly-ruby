# Crossly::WorldsTeamApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_collaboration_accept**](WorldsTeamApi.md#create_world_collaboration_accept) | **POST** /v1/worlds/collaborations/{experienceId}/accept | Accept an invitation. |
| [**create_world_collaboration_decline**](WorldsTeamApi.md#create_world_collaboration_decline) | **POST** /v1/worlds/collaborations/{experienceId}/decline | Decline an invitation. |
| [**create_world_experience_activity_revert**](WorldsTeamApi.md#create_world_experience_activity_revert) | **POST** /v1/worlds/experiences/{experienceId}/activity/{activityId}/revert | Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone. |
| [**create_world_experience_collaborator**](WorldsTeamApi.md#create_world_experience_collaborator) | **POST** /v1/worlds/experiences/{experienceId}/collaborators | Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner&#39;s plan cap. |
| [**create_world_experience_place_collab_op**](WorldsTeamApi.md#create_world_experience_place_collab_op) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/ops | Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied. |
| [**create_world_experience_place_collab_save**](WorldsTeamApi.md#create_world_experience_place_collab_save) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/save | Write the session into the place draft now (publishing and cloud tests do this themselves). |
| [**create_world_experience_place_collab_script_commit**](WorldsTeamApi.md#create_world_experience_place_collab_script_commit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId}/commit | Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source. |
| [**delete_world_experience_collaborator**](WorldsTeamApi.md#delete_world_experience_collaborator) | **DELETE** /v1/worlds/experiences/{experienceId}/collaborators/{userId} | Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month. |
| [**delete_world_experience_place_collab_script**](WorldsTeamApi.md#delete_world_experience_place_collab_script) | **DELETE** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId} | Discard your draft of a script. |
| [**get_world_experience_place_collab**](WorldsTeamApi.md#get_world_experience_place_collab) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab | The live co-editing document of a place (node ids every editor shares), its op sequence and your role. |
| [**get_world_experience_place_collab_op**](WorldsTeamApi.md#get_world_experience_place_collab_op) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/ops | Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session. |
| [**get_world_experience_split**](WorldsTeamApi.md#get_world_experience_split) | **GET** /v1/worlds/experiences/{experienceId}/splits | Revenue split of the creator share: current, scheduled, history. |
| [**get_world_experience_team**](WorldsTeamApi.md#get_world_experience_team) | **GET** /v1/worlds/experiences/{experienceId}/team | The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap. |
| [**list_world_collaborations**](WorldsTeamApi.md#list_world_collaborations) | **GET** /v1/worlds/collaborations | Experiences you are invited to or work on, with your role. |
| [**list_world_experience_activity**](WorldsTeamApi.md#list_world_experience_activity) | **GET** /v1/worlds/experiences/{experienceId}/activity | Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible. |
| [**list_world_experience_place_collab_scripts**](WorldsTeamApi.md#list_world_experience_place_collab_scripts) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts | Your script drafts in this place, with whether someone committed since you started. |
| [**update_world_experience_collaborator**](WorldsTeamApi.md#update_world_experience_collaborator) | **PATCH** /v1/worlds/experiences/{experienceId}/collaborators/{userId} | Change a collaborator&#39;s role. |
| [**update_world_experience_place_collab_script**](WorldsTeamApi.md#update_world_experience_place_collab_script) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId} | Save your own draft of a script (needs edit scripts). |
| [**update_world_experience_split**](WorldsTeamApi.md#update_world_experience_split) | **PUT** /v1/worlds/experiences/{experienceId}/splits | Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes. |


## create_world_collaboration_accept

> <CreateWorldCollaborationAcceptResponse> create_world_collaboration_accept(experience_id)

Accept an invitation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Accept an invitation.
  result = api_instance.create_world_collaboration_accept(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_collaboration_accept: #{e}"
end
```

#### Using the create_world_collaboration_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCollaborationAcceptResponse>, Integer, Hash)> create_world_collaboration_accept_with_http_info(experience_id)

```ruby
begin
  # Accept an invitation.
  data, status_code, headers = api_instance.create_world_collaboration_accept_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCollaborationAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_collaboration_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldCollaborationAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_collaboration_decline

> <CreateWorldCollaborationDeclineResponse> create_world_collaboration_decline(experience_id)

Decline an invitation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Decline an invitation.
  result = api_instance.create_world_collaboration_decline(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_collaboration_decline: #{e}"
end
```

#### Using the create_world_collaboration_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCollaborationDeclineResponse>, Integer, Hash)> create_world_collaboration_decline_with_http_info(experience_id)

```ruby
begin
  # Decline an invitation.
  data, status_code, headers = api_instance.create_world_collaboration_decline_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCollaborationDeclineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_collaboration_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldCollaborationDeclineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_activity_revert

> <CreateWorldExperienceActivityRevertResponse> create_world_experience_activity_revert(experience_id, activity_id)

Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
activity_id = 'activity_id_example' # String | 

begin
  # Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.
  result = api_instance.create_world_experience_activity_revert(experience_id, activity_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_activity_revert: #{e}"
end
```

#### Using the create_world_experience_activity_revert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceActivityRevertResponse>, Integer, Hash)> create_world_experience_activity_revert_with_http_info(experience_id, activity_id)

```ruby
begin
  # Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.
  data, status_code, headers = api_instance.create_world_experience_activity_revert_with_http_info(experience_id, activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceActivityRevertResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_activity_revert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **activity_id** | **String** |  |  |

### Return type

**CreateWorldExperienceActivityRevertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_collaborator

> <CreateWorldExperienceCollaboratorResponse> create_world_experience_collaborator(experience_id, opts)

Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner's plan cap.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_collaborator_request: Crossly::CreateWorldExperienceCollaboratorRequest.new({handle: 'handle_example', role: 'admin'}) # CreateWorldExperienceCollaboratorRequest | 
}

begin
  # Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner's plan cap.
  result = api_instance.create_world_experience_collaborator(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_collaborator: #{e}"
end
```

#### Using the create_world_experience_collaborator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceCollaboratorResponse>, Integer, Hash)> create_world_experience_collaborator_with_http_info(experience_id, opts)

```ruby
begin
  # Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner's plan cap.
  data, status_code, headers = api_instance.create_world_experience_collaborator_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceCollaboratorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_collaborator_request** | **CreateWorldExperienceCollaboratorRequest** |  | [optional] |

### Return type

**CreateWorldExperienceCollaboratorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_collab_op

> <CreateWorldExperiencePlaceCollabOpResponse> create_world_experience_place_collab_op(experience_id, place_id, opts)

Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_collab_op_request: Crossly::CreateWorldExperiencePlaceCollabOpRequest.new({ops: [3.56]}) # CreateWorldExperiencePlaceCollabOpRequest | 
}

begin
  # Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.
  result = api_instance.create_world_experience_place_collab_op(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_op: #{e}"
end
```

#### Using the create_world_experience_place_collab_op_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceCollabOpResponse>, Integer, Hash)> create_world_experience_place_collab_op_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.
  data, status_code, headers = api_instance.create_world_experience_place_collab_op_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceCollabOpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_op_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_collab_op_request** | **CreateWorldExperiencePlaceCollabOpRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceCollabOpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_collab_save

> <CreateWorldExperiencePlaceCollabSaveResponse> create_world_experience_place_collab_save(experience_id, place_id)

Write the session into the place draft now (publishing and cloud tests do this themselves).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Write the session into the place draft now (publishing and cloud tests do this themselves).
  result = api_instance.create_world_experience_place_collab_save(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_save: #{e}"
end
```

#### Using the create_world_experience_place_collab_save_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceCollabSaveResponse>, Integer, Hash)> create_world_experience_place_collab_save_with_http_info(experience_id, place_id)

```ruby
begin
  # Write the session into the place draft now (publishing and cloud tests do this themselves).
  data, status_code, headers = api_instance.create_world_experience_place_collab_save_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceCollabSaveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_save_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**CreateWorldExperiencePlaceCollabSaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_collab_script_commit

> <CreateWorldExperiencePlaceCollabScriptCommitResponse> create_world_experience_place_collab_script_commit(experience_id, place_id, node_id, opts)

Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
node_id = 'node_id_example' # String | 
opts = {
  create_world_experience_place_collab_script_commit_request: Crossly::CreateWorldExperiencePlaceCollabScriptCommitRequest.new # CreateWorldExperiencePlaceCollabScriptCommitRequest | 
}

begin
  # Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.
  result = api_instance.create_world_experience_place_collab_script_commit(experience_id, place_id, node_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_script_commit: #{e}"
end
```

#### Using the create_world_experience_place_collab_script_commit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceCollabScriptCommitResponse>, Integer, Hash)> create_world_experience_place_collab_script_commit_with_http_info(experience_id, place_id, node_id, opts)

```ruby
begin
  # Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.
  data, status_code, headers = api_instance.create_world_experience_place_collab_script_commit_with_http_info(experience_id, place_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceCollabScriptCommitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->create_world_experience_place_collab_script_commit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **node_id** | **String** |  |  |
| **create_world_experience_place_collab_script_commit_request** | **CreateWorldExperiencePlaceCollabScriptCommitRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceCollabScriptCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_world_experience_collaborator

> <DeleteSpatialSceneGrantResponse> delete_world_experience_collaborator(experience_id, user_id)

Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.
  result = api_instance.delete_world_experience_collaborator(experience_id, user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->delete_world_experience_collaborator: #{e}"
end
```

#### Using the delete_world_experience_collaborator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_collaborator_with_http_info(experience_id, user_id)

```ruby
begin
  # Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.
  data, status_code, headers = api_instance.delete_world_experience_collaborator_with_http_info(experience_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->delete_world_experience_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_place_collab_script

> <DeleteWorldExperiencePlaceCollabScriptResponse> delete_world_experience_place_collab_script(experience_id, place_id, node_id)

Discard your draft of a script.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
node_id = 'node_id_example' # String | 

begin
  # Discard your draft of a script.
  result = api_instance.delete_world_experience_place_collab_script(experience_id, place_id, node_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->delete_world_experience_place_collab_script: #{e}"
end
```

#### Using the delete_world_experience_place_collab_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperiencePlaceCollabScriptResponse>, Integer, Hash)> delete_world_experience_place_collab_script_with_http_info(experience_id, place_id, node_id)

```ruby
begin
  # Discard your draft of a script.
  data, status_code, headers = api_instance.delete_world_experience_place_collab_script_with_http_info(experience_id, place_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperiencePlaceCollabScriptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->delete_world_experience_place_collab_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **node_id** | **String** |  |  |

### Return type

**DeleteWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_collab

> <GetWorldExperiencePlaceCollabResponse> get_world_experience_place_collab(experience_id, place_id)

The live co-editing document of a place (node ids every editor shares), its op sequence and your role.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # The live co-editing document of a place (node ids every editor shares), its op sequence and your role.
  result = api_instance.get_world_experience_place_collab(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_place_collab: #{e}"
end
```

#### Using the get_world_experience_place_collab_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceCollabResponse>, Integer, Hash)> get_world_experience_place_collab_with_http_info(experience_id, place_id)

```ruby
begin
  # The live co-editing document of a place (node ids every editor shares), its op sequence and your role.
  data, status_code, headers = api_instance.get_world_experience_place_collab_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceCollabResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_place_collab_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**GetWorldExperiencePlaceCollabResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_collab_op

> <GetWorldExperiencePlaceCollabOpResponse> get_world_experience_place_collab_op(experience_id, place_id, since)

Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
since = 8.14 # Float | 

begin
  # Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.
  result = api_instance.get_world_experience_place_collab_op(experience_id, place_id, since)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_place_collab_op: #{e}"
end
```

#### Using the get_world_experience_place_collab_op_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceCollabOpResponse>, Integer, Hash)> get_world_experience_place_collab_op_with_http_info(experience_id, place_id, since)

```ruby
begin
  # Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.
  data, status_code, headers = api_instance.get_world_experience_place_collab_op_with_http_info(experience_id, place_id, since)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceCollabOpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_place_collab_op_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **since** | **Float** |  |  |

### Return type

**GetWorldExperiencePlaceCollabOpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_split

> <GetWorldExperienceSplitResponse> get_world_experience_split(experience_id)

Revenue split of the creator share: current, scheduled, history.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Revenue split of the creator share: current, scheduled, history.
  result = api_instance.get_world_experience_split(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_split: #{e}"
end
```

#### Using the get_world_experience_split_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceSplitResponse>, Integer, Hash)> get_world_experience_split_with_http_info(experience_id)

```ruby
begin
  # Revenue split of the creator share: current, scheduled, history.
  data, status_code, headers = api_instance.get_world_experience_split_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceSplitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_split_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceSplitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_team

> <GetWorldExperienceTeamResponse> get_world_experience_team(experience_id)

The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.
  result = api_instance.get_world_experience_team(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_team: #{e}"
end
```

#### Using the get_world_experience_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceTeamResponse>, Integer, Hash)> get_world_experience_team_with_http_info(experience_id)

```ruby
begin
  # The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.
  data, status_code, headers = api_instance.get_world_experience_team_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceTeamResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->get_world_experience_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceTeamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_collaborations

> <ListWorldCollaborationsResponse> list_world_collaborations

Experiences you are invited to or work on, with your role.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new

begin
  # Experiences you are invited to or work on, with your role.
  result = api_instance.list_world_collaborations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_collaborations: #{e}"
end
```

#### Using the list_world_collaborations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldCollaborationsResponse>, Integer, Hash)> list_world_collaborations_with_http_info

```ruby
begin
  # Experiences you are invited to or work on, with your role.
  data, status_code, headers = api_instance.list_world_collaborations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldCollaborationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_collaborations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldCollaborationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_activity

> <ListWorldExperienceActivityResponse> list_world_experience_activity(experience_id, opts)

Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14, # Float | 
  place_id: 'place_id_example' # String | 
}

begin
  # Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.
  result = api_instance.list_world_experience_activity(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_experience_activity: #{e}"
end
```

#### Using the list_world_experience_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceActivityResponse>, Integer, Hash)> list_world_experience_activity_with_http_info(experience_id, opts)

```ruby
begin
  # Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.
  data, status_code, headers = api_instance.list_world_experience_activity_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceActivityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_experience_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |
| **place_id** | **String** |  | [optional] |

### Return type

**ListWorldExperienceActivityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_place_collab_scripts

> <ListWorldExperiencePlaceCollabScriptsResponse> list_world_experience_place_collab_scripts(experience_id, place_id)

Your script drafts in this place, with whether someone committed since you started.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Your script drafts in this place, with whether someone committed since you started.
  result = api_instance.list_world_experience_place_collab_scripts(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_experience_place_collab_scripts: #{e}"
end
```

#### Using the list_world_experience_place_collab_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlaceCollabScriptsResponse>, Integer, Hash)> list_world_experience_place_collab_scripts_with_http_info(experience_id, place_id)

```ruby
begin
  # Your script drafts in this place, with whether someone committed since you started.
  data, status_code, headers = api_instance.list_world_experience_place_collab_scripts_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlaceCollabScriptsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->list_world_experience_place_collab_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlaceCollabScriptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_collaborator

> <CreateWorldExperienceCollaboratorResponse> update_world_experience_collaborator(experience_id, user_id, opts)

Change a collaborator's role.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
user_id = 'user_id_example' # String | 
opts = {
  update_world_experience_collaborator_request: Crossly::UpdateWorldExperienceCollaboratorRequest.new({role: 'admin'}) # UpdateWorldExperienceCollaboratorRequest | 
}

begin
  # Change a collaborator's role.
  result = api_instance.update_world_experience_collaborator(experience_id, user_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_collaborator: #{e}"
end
```

#### Using the update_world_experience_collaborator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceCollaboratorResponse>, Integer, Hash)> update_world_experience_collaborator_with_http_info(experience_id, user_id, opts)

```ruby
begin
  # Change a collaborator's role.
  data, status_code, headers = api_instance.update_world_experience_collaborator_with_http_info(experience_id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceCollaboratorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **update_world_experience_collaborator_request** | **UpdateWorldExperienceCollaboratorRequest** |  | [optional] |

### Return type

**CreateWorldExperienceCollaboratorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_place_collab_script

> <UpdateWorldExperiencePlaceCollabScriptResponse> update_world_experience_place_collab_script(experience_id, place_id, node_id, opts)

Save your own draft of a script (needs edit scripts).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
node_id = 'node_id_example' # String | 
opts = {
  update_world_interactive_design_draft_request: Crossly::UpdateWorldInteractiveDesignDraftRequest.new({source: 'source_example'}) # UpdateWorldInteractiveDesignDraftRequest | 
}

begin
  # Save your own draft of a script (needs edit scripts).
  result = api_instance.update_world_experience_place_collab_script(experience_id, place_id, node_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_place_collab_script: #{e}"
end
```

#### Using the update_world_experience_place_collab_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperiencePlaceCollabScriptResponse>, Integer, Hash)> update_world_experience_place_collab_script_with_http_info(experience_id, place_id, node_id, opts)

```ruby
begin
  # Save your own draft of a script (needs edit scripts).
  data, status_code, headers = api_instance.update_world_experience_place_collab_script_with_http_info(experience_id, place_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperiencePlaceCollabScriptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_place_collab_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **node_id** | **String** |  |  |
| **update_world_interactive_design_draft_request** | **UpdateWorldInteractiveDesignDraftRequest** |  | [optional] |

### Return type

**UpdateWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_split

> <GetWorldExperienceSplitResponse> update_world_experience_split(experience_id, opts)

Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsTeamApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_split_request: Crossly::UpdateWorldExperienceSplitRequest.new({shares: [Crossly::UpdateWorldExperienceSplitRequestShares.new({user_id: 'user_id_example', bps: 3.56})]}) # UpdateWorldExperienceSplitRequest | 
}

begin
  # Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.
  result = api_instance.update_world_experience_split(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_split: #{e}"
end
```

#### Using the update_world_experience_split_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceSplitResponse>, Integer, Hash)> update_world_experience_split_with_http_info(experience_id, opts)

```ruby
begin
  # Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.
  data, status_code, headers = api_instance.update_world_experience_split_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceSplitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsTeamApi->update_world_experience_split_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_split_request** | **UpdateWorldExperienceSplitRequest** |  | [optional] |

### Return type

**GetWorldExperienceSplitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

