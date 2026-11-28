# Crossly::WorldsStudioApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_asset_mesh**](WorldsStudioApi.md#create_world_experience_asset_mesh) | **POST** /v1/worlds/experiences/{experienceId}/assets/meshes | Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session. |
| [**create_world_experience_asset_mesh_check**](WorldsStudioApi.md#create_world_experience_asset_mesh_check) | **POST** /v1/worlds/experiences/{experienceId}/assets/meshes/check | Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points. |
| [**create_world_experience_place_assistant**](WorldsStudioApi.md#create_world_experience_place_assistant) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/assistant | Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied. |
| [**create_world_experience_place_assistant_apply**](WorldsStudioApi.md#create_world_experience_place_assistant_apply) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/assistant/apply | Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now. |
| [**create_world_experience_place_studio_edit**](WorldsStudioApi.md#create_world_experience_place_studio_edit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/edits | Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed. |
| [**create_world_experience_place_studio_insert_asset**](WorldsStudioApi.md#create_world_experience_place_studio_insert_asset) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/insert-asset | Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner&#39;s licence. |
| [**create_world_experience_place_studio_playtest**](WorldsStudioApi.md#create_world_experience_place_studio_playtest) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/playtest | Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test&#39;s Output. |
| [**create_world_experience_place_studio_playtest_stop**](WorldsStudioApi.md#create_world_experience_place_studio_playtest_stop) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/playtest/stop | Stop this place&#39;s cloud-test servers now. |
| [**create_world_experience_place_studio_publish**](WorldsStudioApi.md#create_world_experience_place_studio_publish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/publish | Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish). |
| [**create_world_experience_place_studio_script_commit**](WorldsStudioApi.md#create_world_experience_place_studio_script_commit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script/commit | Commit your draft with a three-way merge onto the script as it is now (collaborators&#39; edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs. |
| [**delete_world_experience_place_studio_script**](WorldsStudioApi.md#delete_world_experience_place_studio_script) | **DELETE** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | Discard your draft of a script. |
| [**get_world_assistant_status**](WorldsStudioApi.md#get_world_assistant_status) | **GET** /v1/worlds/assistant/status | Studio Assistant status: whether Crossly&#39;s model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month). |
| [**get_world_experience_place_studio_find**](WorldsStudioApi.md#get_world_experience_place_studio_find) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/find | Find instances by name (contains), exact class and/or tag. |
| [**get_world_experience_place_studio_instance**](WorldsStudioApi.md#get_world_experience_place_studio_instance) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/instance | One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script. |
| [**get_world_experience_place_studio_output**](WorldsStudioApi.md#get_world_experience_place_studio_output) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/output | Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope&#x3D;all). Kept 24 hours. |
| [**get_world_experience_place_studio_problem**](WorldsStudioApi.md#get_world_experience_place_studio_problem) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/problems | The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable &#x3D; no errors. |
| [**get_world_experience_place_studio_script**](WorldsStudioApi.md#get_world_experience_place_studio_script) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | A script&#39;s current source, your draft of it (if any, with whether someone committed since) and the lint of each. |
| [**get_world_experience_place_studio_snapshot**](WorldsStudioApi.md#get_world_experience_place_studio_snapshot) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/snapshot | A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall. |
| [**get_world_experience_place_studio_tree**](WorldsStudioApi.md#get_world_experience_place_studio_tree) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/tree | The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12). |
| [**get_world_studio_class**](WorldsStudioApi.md#get_world_studio_class) | **GET** /v1/worlds/studio/classes | The engine&#39;s class table: insertable classes, services, and for ?name&#x3D; one class with every property, its type, default and the exact JSON a place (and a studio edit) takes. |
| [**list_world_experience_assets**](WorldsStudioApi.md#list_world_experience_assets) | **GET** /v1/worlds/experiences/{experienceId}/assets | Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now. |
| [**update_world_experience_place_studio_script**](WorldsStudioApi.md#update_world_experience_place_studio_script) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source. |


## create_world_experience_asset_mesh

> <CreateWorldExperienceAssetMeshResponse> create_world_experience_asset_mesh(experience_id, opts)

Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_asset_mesh_request: Crossly::CreateWorldExperienceAssetMeshRequest.new({glb_base64: 'glb_base64_example'}) # CreateWorldExperienceAssetMeshRequest | 
}

begin
  # Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.
  result = api_instance.create_world_experience_asset_mesh(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_asset_mesh: #{e}"
end
```

#### Using the create_world_experience_asset_mesh_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceAssetMeshResponse>, Integer, Hash)> create_world_experience_asset_mesh_with_http_info(experience_id, opts)

```ruby
begin
  # Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.
  data, status_code, headers = api_instance.create_world_experience_asset_mesh_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceAssetMeshResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_asset_mesh_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_asset_mesh_request** | **CreateWorldExperienceAssetMeshRequest** |  | [optional] |

### Return type

**CreateWorldExperienceAssetMeshResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_asset_mesh_check

> <CreateWorldExperienceAssetMeshCheckResponse> create_world_experience_asset_mesh_check(experience_id, opts)

Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_asset_mesh_check_request: Crossly::CreateWorldExperienceAssetMeshCheckRequest.new({glb_base64: 'glb_base64_example'}) # CreateWorldExperienceAssetMeshCheckRequest | 
}

begin
  # Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.
  result = api_instance.create_world_experience_asset_mesh_check(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_asset_mesh_check: #{e}"
end
```

#### Using the create_world_experience_asset_mesh_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceAssetMeshCheckResponse>, Integer, Hash)> create_world_experience_asset_mesh_check_with_http_info(experience_id, opts)

```ruby
begin
  # Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.
  data, status_code, headers = api_instance.create_world_experience_asset_mesh_check_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceAssetMeshCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_asset_mesh_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_asset_mesh_check_request** | **CreateWorldExperienceAssetMeshCheckRequest** |  | [optional] |

### Return type

**CreateWorldExperienceAssetMeshCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_assistant

> <CreateWorldExperiencePlaceAssistantResponse> create_world_experience_place_assistant(experience_id, place_id, opts)

Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_assistant_request: Crossly::CreateWorldExperiencePlaceAssistantRequest.new # CreateWorldExperiencePlaceAssistantRequest | 
}

begin
  # Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.
  result = api_instance.create_world_experience_place_assistant(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_assistant: #{e}"
end
```

#### Using the create_world_experience_place_assistant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceAssistantResponse>, Integer, Hash)> create_world_experience_place_assistant_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.
  data, status_code, headers = api_instance.create_world_experience_place_assistant_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceAssistantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_assistant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_assistant_request** | **CreateWorldExperiencePlaceAssistantRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceAssistantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_assistant_apply

> <CreateWorldExperiencePlaceAssistantApplyResponse> create_world_experience_place_assistant_apply(experience_id, place_id, opts)

Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_assistant_apply_request: Crossly::CreateWorldExperiencePlaceAssistantApplyRequest.new({changes: [3.56]}) # CreateWorldExperiencePlaceAssistantApplyRequest | 
}

begin
  # Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.
  result = api_instance.create_world_experience_place_assistant_apply(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_assistant_apply: #{e}"
end
```

#### Using the create_world_experience_place_assistant_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceAssistantApplyResponse>, Integer, Hash)> create_world_experience_place_assistant_apply_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.
  data, status_code, headers = api_instance.create_world_experience_place_assistant_apply_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceAssistantApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_assistant_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_assistant_apply_request** | **CreateWorldExperiencePlaceAssistantApplyRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceAssistantApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_studio_edit

> <CreateWorldExperiencePlaceStudioEditResponse> create_world_experience_place_studio_edit(experience_id, place_id, opts)

Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_studio_edit_request: Crossly::CreateWorldExperiencePlaceStudioEditRequest.new({edits: [3.56]}) # CreateWorldExperiencePlaceStudioEditRequest | 
}

begin
  # Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.
  result = api_instance.create_world_experience_place_studio_edit(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_edit: #{e}"
end
```

#### Using the create_world_experience_place_studio_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioEditResponse>, Integer, Hash)> create_world_experience_place_studio_edit_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.
  data, status_code, headers = api_instance.create_world_experience_place_studio_edit_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioEditResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_edit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_studio_edit_request** | **CreateWorldExperiencePlaceStudioEditRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceStudioEditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_studio_insert_asset

> <CreateWorldExperiencePlaceStudioInsertAssetResponse> create_world_experience_place_studio_insert_asset(experience_id, place_id, opts)

Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner's licence.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_studio_insert_asset_request: Crossly::CreateWorldExperiencePlaceStudioInsertAssetRequest.new({asset_id: 'asset_id_example'}) # CreateWorldExperiencePlaceStudioInsertAssetRequest | 
}

begin
  # Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner's licence.
  result = api_instance.create_world_experience_place_studio_insert_asset(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_insert_asset: #{e}"
end
```

#### Using the create_world_experience_place_studio_insert_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioInsertAssetResponse>, Integer, Hash)> create_world_experience_place_studio_insert_asset_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner's licence.
  data, status_code, headers = api_instance.create_world_experience_place_studio_insert_asset_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioInsertAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_insert_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_studio_insert_asset_request** | **CreateWorldExperiencePlaceStudioInsertAssetRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceStudioInsertAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_studio_playtest

> <CreateWorldExperiencePlaceStudioPlaytestResponse> create_world_experience_place_studio_playtest(experience_id, place_id)

Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test's Output.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test's Output.
  result = api_instance.create_world_experience_place_studio_playtest(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_playtest: #{e}"
end
```

#### Using the create_world_experience_place_studio_playtest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioPlaytestResponse>, Integer, Hash)> create_world_experience_place_studio_playtest_with_http_info(experience_id, place_id)

```ruby
begin
  # Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test's Output.
  data, status_code, headers = api_instance.create_world_experience_place_studio_playtest_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioPlaytestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_playtest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**CreateWorldExperiencePlaceStudioPlaytestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_studio_playtest_stop

> <CreateWorldExperiencePlaceStudioPlaytestStopResponse> create_world_experience_place_studio_playtest_stop(experience_id, place_id)

Stop this place's cloud-test servers now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Stop this place's cloud-test servers now.
  result = api_instance.create_world_experience_place_studio_playtest_stop(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_playtest_stop: #{e}"
end
```

#### Using the create_world_experience_place_studio_playtest_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioPlaytestStopResponse>, Integer, Hash)> create_world_experience_place_studio_playtest_stop_with_http_info(experience_id, place_id)

```ruby
begin
  # Stop this place's cloud-test servers now.
  data, status_code, headers = api_instance.create_world_experience_place_studio_playtest_stop_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioPlaytestStopResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_playtest_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**CreateWorldExperiencePlaceStudioPlaytestStopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_studio_publish

> <CreateWorldExperiencePlaceStudioPublishResponse> create_world_experience_place_studio_publish(experience_id, place_id, opts)

Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_studio_publish_request: Crossly::CreateWorldExperiencePlaceStudioPublishRequest.new # CreateWorldExperiencePlaceStudioPublishRequest | 
}

begin
  # Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).
  result = api_instance.create_world_experience_place_studio_publish(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_publish: #{e}"
end
```

#### Using the create_world_experience_place_studio_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioPublishResponse>, Integer, Hash)> create_world_experience_place_studio_publish_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).
  data, status_code, headers = api_instance.create_world_experience_place_studio_publish_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioPublishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_studio_publish_request** | **CreateWorldExperiencePlaceStudioPublishRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceStudioPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_studio_script_commit

> <CreateWorldExperiencePlaceStudioScriptCommitResponse> create_world_experience_place_studio_script_commit(experience_id, place_id, opts)

Commit your draft with a three-way merge onto the script as it is now (collaborators' edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_studio_script_commit_request: Crossly::CreateWorldExperiencePlaceStudioScriptCommitRequest.new({path: 'path_example'}) # CreateWorldExperiencePlaceStudioScriptCommitRequest | 
}

begin
  # Commit your draft with a three-way merge onto the script as it is now (collaborators' edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.
  result = api_instance.create_world_experience_place_studio_script_commit(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_script_commit: #{e}"
end
```

#### Using the create_world_experience_place_studio_script_commit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceStudioScriptCommitResponse>, Integer, Hash)> create_world_experience_place_studio_script_commit_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Commit your draft with a three-way merge onto the script as it is now (collaborators' edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.
  data, status_code, headers = api_instance.create_world_experience_place_studio_script_commit_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceStudioScriptCommitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->create_world_experience_place_studio_script_commit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_studio_script_commit_request** | **CreateWorldExperiencePlaceStudioScriptCommitRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceStudioScriptCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_world_experience_place_studio_script

> <DeleteWorldExperiencePlaceCollabScriptResponse> delete_world_experience_place_studio_script(experience_id, place_id, path)

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

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
path = 'path_example' # String | 

begin
  # Discard your draft of a script.
  result = api_instance.delete_world_experience_place_studio_script(experience_id, place_id, path)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->delete_world_experience_place_studio_script: #{e}"
end
```

#### Using the delete_world_experience_place_studio_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperiencePlaceCollabScriptResponse>, Integer, Hash)> delete_world_experience_place_studio_script_with_http_info(experience_id, place_id, path)

```ruby
begin
  # Discard your draft of a script.
  data, status_code, headers = api_instance.delete_world_experience_place_studio_script_with_http_info(experience_id, place_id, path)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperiencePlaceCollabScriptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->delete_world_experience_place_studio_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **path** | **String** |  |  |

### Return type

**DeleteWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_assistant_status

> <GetWorldAssistantStatusResponse> get_world_assistant_status

Studio Assistant status: whether Crossly's model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new

begin
  # Studio Assistant status: whether Crossly's model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).
  result = api_instance.get_world_assistant_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_assistant_status: #{e}"
end
```

#### Using the get_world_assistant_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAssistantStatusResponse>, Integer, Hash)> get_world_assistant_status_with_http_info

```ruby
begin
  # Studio Assistant status: whether Crossly's model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).
  data, status_code, headers = api_instance.get_world_assistant_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAssistantStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_assistant_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAssistantStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_find

> <GetWorldExperiencePlaceStudioFindResponse> get_world_experience_place_studio_find(experience_id, place_id, opts)

Find instances by name (contains), exact class and/or tag.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  name: 'name_example', # String | 
  _class: '_class_example', # String | 
  tag: 'tag_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Find instances by name (contains), exact class and/or tag.
  result = api_instance.get_world_experience_place_studio_find(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_find: #{e}"
end
```

#### Using the get_world_experience_place_studio_find_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioFindResponse>, Integer, Hash)> get_world_experience_place_studio_find_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Find instances by name (contains), exact class and/or tag.
  data, status_code, headers = api_instance.get_world_experience_place_studio_find_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioFindResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_find_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **_class** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**GetWorldExperiencePlaceStudioFindResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_instance

> <GetWorldExperiencePlaceStudioInstanceResponse> get_world_experience_place_studio_instance(experience_id, place_id, opts)

One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  path: 'path_example', # String | 
  id: 'id_example' # String | 
}

begin
  # One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.
  result = api_instance.get_world_experience_place_studio_instance(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_instance: #{e}"
end
```

#### Using the get_world_experience_place_studio_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioInstanceResponse>, Integer, Hash)> get_world_experience_place_studio_instance_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.
  data, status_code, headers = api_instance.get_world_experience_place_studio_instance_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioInstanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **path** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |

### Return type

**GetWorldExperiencePlaceStudioInstanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_output

> <GetWorldExperiencePlaceStudioOutputResponse> get_world_experience_place_studio_output(experience_id, place_id, opts)

Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope=all). Kept 24 hours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  since: 8.14, # Float | 
  server_id: 'server_id_example', # String | 
  level: 'info', # String | 
  scope: 'all', # String | 
  limit: 8.14 # Float | 
}

begin
  # Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope=all). Kept 24 hours.
  result = api_instance.get_world_experience_place_studio_output(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_output: #{e}"
end
```

#### Using the get_world_experience_place_studio_output_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioOutputResponse>, Integer, Hash)> get_world_experience_place_studio_output_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope=all). Kept 24 hours.
  data, status_code, headers = api_instance.get_world_experience_place_studio_output_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioOutputResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_output_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **since** | **Float** |  | [optional] |
| **server_id** | **String** |  | [optional] |
| **level** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**GetWorldExperiencePlaceStudioOutputResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_problem

> <GetWorldExperiencePlaceStudioProblemResponse> get_world_experience_place_studio_problem(experience_id, place_id)

The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable = no errors.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable = no errors.
  result = api_instance.get_world_experience_place_studio_problem(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_problem: #{e}"
end
```

#### Using the get_world_experience_place_studio_problem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioProblemResponse>, Integer, Hash)> get_world_experience_place_studio_problem_with_http_info(experience_id, place_id)

```ruby
begin
  # The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable = no errors.
  data, status_code, headers = api_instance.get_world_experience_place_studio_problem_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioProblemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_problem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**GetWorldExperiencePlaceStudioProblemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_script

> <GetWorldExperiencePlaceStudioScriptResponse> get_world_experience_place_studio_script(experience_id, place_id, path)

A script's current source, your draft of it (if any, with whether someone committed since) and the lint of each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
path = 'path_example' # String | 

begin
  # A script's current source, your draft of it (if any, with whether someone committed since) and the lint of each.
  result = api_instance.get_world_experience_place_studio_script(experience_id, place_id, path)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_script: #{e}"
end
```

#### Using the get_world_experience_place_studio_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioScriptResponse>, Integer, Hash)> get_world_experience_place_studio_script_with_http_info(experience_id, place_id, path)

```ruby
begin
  # A script's current source, your draft of it (if any, with whether someone committed since) and the lint of each.
  data, status_code, headers = api_instance.get_world_experience_place_studio_script_with_http_info(experience_id, place_id, path)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioScriptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **path** | **String** |  |  |

### Return type

**GetWorldExperiencePlaceStudioScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_snapshot

> <GetWorldExperiencePlaceStudioSnapshotResponse> get_world_experience_place_studio_snapshot(experience_id, place_id, opts)

A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  path: 'path_example', # String | 
  view: 'top', # String | 
  labels: 'true' # String | 
}

begin
  # A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.
  result = api_instance.get_world_experience_place_studio_snapshot(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_snapshot: #{e}"
end
```

#### Using the get_world_experience_place_studio_snapshot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioSnapshotResponse>, Integer, Hash)> get_world_experience_place_studio_snapshot_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.
  data, status_code, headers = api_instance.get_world_experience_place_studio_snapshot_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioSnapshotResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_snapshot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **path** | **String** |  | [optional] |
| **view** | **String** |  | [optional] |
| **labels** | **String** |  | [optional] |

### Return type

**GetWorldExperiencePlaceStudioSnapshotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_studio_tree

> <GetWorldExperiencePlaceStudioTreeResponse> get_world_experience_place_studio_tree(experience_id, place_id, opts)

The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  path: 'path_example', # String | 
  depth: 8.14 # Float | 
}

begin
  # The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).
  result = api_instance.get_world_experience_place_studio_tree(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_tree: #{e}"
end
```

#### Using the get_world_experience_place_studio_tree_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceStudioTreeResponse>, Integer, Hash)> get_world_experience_place_studio_tree_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).
  data, status_code, headers = api_instance.get_world_experience_place_studio_tree_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceStudioTreeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_experience_place_studio_tree_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **path** | **String** |  | [optional] |
| **depth** | **Float** |  | [optional] |

### Return type

**GetWorldExperiencePlaceStudioTreeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_studio_class

> <GetWorldStudioClassResponse> get_world_studio_class(opts)

The engine's class table: insertable classes, services, and for ?name= one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
opts = {
  name: 'name_example' # String | 
}

begin
  # The engine's class table: insertable classes, services, and for ?name= one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.
  result = api_instance.get_world_studio_class(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_studio_class: #{e}"
end
```

#### Using the get_world_studio_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldStudioClassResponse>, Integer, Hash)> get_world_studio_class_with_http_info(opts)

```ruby
begin
  # The engine's class table: insertable classes, services, and for ?name= one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.
  data, status_code, headers = api_instance.get_world_studio_class_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldStudioClassResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->get_world_studio_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |

### Return type

**GetWorldStudioClassResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_assets

> <ListWorldExperienceAssetsResponse> list_world_experience_assets(experience_id, opts)

Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  limit: 8.14 # Float | 
}

begin
  # Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.
  result = api_instance.list_world_experience_assets(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->list_world_experience_assets: #{e}"
end
```

#### Using the list_world_experience_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceAssetsResponse>, Integer, Hash)> list_world_experience_assets_with_http_info(experience_id, opts)

```ruby
begin
  # Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.
  data, status_code, headers = api_instance.list_world_experience_assets_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceAssetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->list_world_experience_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **limit** | **Float** |  | [optional] |

### Return type

**ListWorldExperienceAssetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_place_studio_script

> <UpdateWorldExperiencePlaceStudioScriptResponse> update_world_experience_place_studio_script(experience_id, place_id, opts)

Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsStudioApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  update_world_experience_place_studio_script_request: Crossly::UpdateWorldExperiencePlaceStudioScriptRequest.new({path: 'path_example', source: 'source_example'}) # UpdateWorldExperiencePlaceStudioScriptRequest | 
}

begin
  # Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.
  result = api_instance.update_world_experience_place_studio_script(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->update_world_experience_place_studio_script: #{e}"
end
```

#### Using the update_world_experience_place_studio_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperiencePlaceStudioScriptResponse>, Integer, Hash)> update_world_experience_place_studio_script_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.
  data, status_code, headers = api_instance.update_world_experience_place_studio_script_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperiencePlaceStudioScriptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsStudioApi->update_world_experience_place_studio_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **update_world_experience_place_studio_script_request** | **UpdateWorldExperiencePlaceStudioScriptRequest** |  | [optional] |

### Return type

**UpdateWorldExperiencePlaceStudioScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

