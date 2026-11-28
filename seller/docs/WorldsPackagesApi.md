# Crossly::WorldsPackagesApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_place_package**](WorldsPackagesApi.md#create_world_experience_place_package) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages | Insert a copy of a package (default: the newest version, auto-update on). |
| [**create_world_experience_place_package_update**](WorldsPackagesApi.md#create_world_experience_place_package_update) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages/{nodeId}/update | Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced). |
| [**create_world_package**](WorldsPackagesApi.md#create_world_package) | **POST** /v1/worlds/packages | Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating. |
| [**create_world_package_toolbox**](WorldsPackagesApi.md#create_world_package_toolbox) | **POST** /v1/worlds/packages/{packageId}/toolbox | List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply). |
| [**create_world_package_version**](WorldsPackagesApi.md#create_world_package_version) | **POST** /v1/worlds/packages/{packageId}/versions | Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place. |
| [**delete_world_package**](WorldsPackagesApi.md#delete_world_package) | **DELETE** /v1/worlds/packages/{packageId} | Archive a package. Copies in places keep working; they just stop receiving updates. |
| [**get_world_package**](WorldsPackagesApi.md#get_world_package) | **GET** /v1/worlds/packages/{packageId} | A package with its versions. |
| [**get_world_package_version**](WorldsPackagesApi.md#get_world_package_version) | **GET** /v1/worlds/packages/{packageId}/versions/{number} | One version, with its payload (one root node in place JSON). |
| [**list_world_experience_place_packages**](WorldsPackagesApi.md#list_world_experience_place_packages) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages | Package copies in a place: version, newest version, modified, auto-update. |
| [**list_world_packages**](WorldsPackagesApi.md#list_world_packages) | **GET** /v1/worlds/packages | Your package library: reusable models and modules, newest first, with how many places hold copies. |
| [**update_world_experience_place_package**](WorldsPackagesApi.md#update_world_experience_place_package) | **PATCH** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages/{nodeId} | Turn auto-update on or off for one copy. |
| [**update_world_package**](WorldsPackagesApi.md#update_world_package) | **PATCH** /v1/worlds/packages/{packageId} | Rename a package or change its description. |


## create_world_experience_place_package

> <CreateWorldExperiencePlacePackageResponse> create_world_experience_place_package(experience_id, place_id, opts)

Insert a copy of a package (default: the newest version, auto-update on).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_package_request: Crossly::CreateWorldExperiencePlacePackageRequest.new({package_id: 'package_id_example'}) # CreateWorldExperiencePlacePackageRequest | 
}

begin
  # Insert a copy of a package (default: the newest version, auto-update on).
  result = api_instance.create_world_experience_place_package(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_experience_place_package: #{e}"
end
```

#### Using the create_world_experience_place_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlacePackageResponse>, Integer, Hash)> create_world_experience_place_package_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Insert a copy of a package (default: the newest version, auto-update on).
  data, status_code, headers = api_instance.create_world_experience_place_package_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlacePackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_experience_place_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_package_request** | **CreateWorldExperiencePlacePackageRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlacePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_package_update

> <CreateWorldExperiencePlacePackageUpdateResponse> create_world_experience_place_package_update(experience_id, place_id, node_id, opts)

Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
node_id = 'node_id_example' # String | 
opts = {
  create_world_experience_place_package_update_request: Crossly::CreateWorldExperiencePlacePackageUpdateRequest.new # CreateWorldExperiencePlacePackageUpdateRequest | 
}

begin
  # Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).
  result = api_instance.create_world_experience_place_package_update(experience_id, place_id, node_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_experience_place_package_update: #{e}"
end
```

#### Using the create_world_experience_place_package_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlacePackageUpdateResponse>, Integer, Hash)> create_world_experience_place_package_update_with_http_info(experience_id, place_id, node_id, opts)

```ruby
begin
  # Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).
  data, status_code, headers = api_instance.create_world_experience_place_package_update_with_http_info(experience_id, place_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlacePackageUpdateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_experience_place_package_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **node_id** | **String** |  |  |
| **create_world_experience_place_package_update_request** | **CreateWorldExperiencePlacePackageUpdateRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlacePackageUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_package

> <GetWorldPackageResponse> create_world_package(opts)

Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
opts = {
  create_world_package_request: Crossly::CreateWorldPackageRequest.new({name: 'name_example'}) # CreateWorldPackageRequest | 
}

begin
  # Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.
  result = api_instance.create_world_package(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package: #{e}"
end
```

#### Using the create_world_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPackageResponse>, Integer, Hash)> create_world_package_with_http_info(opts)

```ruby
begin
  # Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.
  data, status_code, headers = api_instance.create_world_package_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_package_request** | **CreateWorldPackageRequest** |  | [optional] |

### Return type

**GetWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_package_toolbox

> <CreateWorldPackageToolboxResponse> create_world_package_toolbox(package_id, opts)

List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 
opts = {
  create_world_package_toolbox_request: Crossly::CreateWorldPackageToolboxRequest.new # CreateWorldPackageToolboxRequest | 
}

begin
  # List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).
  result = api_instance.create_world_package_toolbox(package_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package_toolbox: #{e}"
end
```

#### Using the create_world_package_toolbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPackageToolboxResponse>, Integer, Hash)> create_world_package_toolbox_with_http_info(package_id, opts)

```ruby
begin
  # List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).
  data, status_code, headers = api_instance.create_world_package_toolbox_with_http_info(package_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPackageToolboxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package_toolbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |
| **create_world_package_toolbox_request** | **CreateWorldPackageToolboxRequest** |  | [optional] |

### Return type

**CreateWorldPackageToolboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_package_version

> <CreateWorldPackageVersionResponse> create_world_package_version(package_id, opts)

Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 
opts = {
  create_world_package_version_request: Crossly::CreateWorldPackageVersionRequest.new # CreateWorldPackageVersionRequest | 
}

begin
  # Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.
  result = api_instance.create_world_package_version(package_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package_version: #{e}"
end
```

#### Using the create_world_package_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPackageVersionResponse>, Integer, Hash)> create_world_package_version_with_http_info(package_id, opts)

```ruby
begin
  # Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.
  data, status_code, headers = api_instance.create_world_package_version_with_http_info(package_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPackageVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->create_world_package_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |
| **create_world_package_version_request** | **CreateWorldPackageVersionRequest** |  | [optional] |

### Return type

**CreateWorldPackageVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_world_package

> <DeleteWorldPackageResponse> delete_world_package(package_id)

Archive a package. Copies in places keep working; they just stop receiving updates.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 

begin
  # Archive a package. Copies in places keep working; they just stop receiving updates.
  result = api_instance.delete_world_package(package_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->delete_world_package: #{e}"
end
```

#### Using the delete_world_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldPackageResponse>, Integer, Hash)> delete_world_package_with_http_info(package_id)

```ruby
begin
  # Archive a package. Copies in places keep working; they just stop receiving updates.
  data, status_code, headers = api_instance.delete_world_package_with_http_info(package_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldPackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->delete_world_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |

### Return type

**DeleteWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_package

> <GetWorldPackageResponse> get_world_package(package_id)

A package with its versions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 

begin
  # A package with its versions.
  result = api_instance.get_world_package(package_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->get_world_package: #{e}"
end
```

#### Using the get_world_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPackageResponse>, Integer, Hash)> get_world_package_with_http_info(package_id)

```ruby
begin
  # A package with its versions.
  data, status_code, headers = api_instance.get_world_package_with_http_info(package_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->get_world_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |

### Return type

**GetWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_package_version

> <GetWorldPackageVersionResponse> get_world_package_version(package_id, number)

One version, with its payload (one root node in place JSON).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 
number = 'number_example' # String | 

begin
  # One version, with its payload (one root node in place JSON).
  result = api_instance.get_world_package_version(package_id, number)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->get_world_package_version: #{e}"
end
```

#### Using the get_world_package_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPackageVersionResponse>, Integer, Hash)> get_world_package_version_with_http_info(package_id, number)

```ruby
begin
  # One version, with its payload (one root node in place JSON).
  data, status_code, headers = api_instance.get_world_package_version_with_http_info(package_id, number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPackageVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->get_world_package_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |
| **number** | **String** |  |  |

### Return type

**GetWorldPackageVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_place_packages

> <ListWorldExperiencePlacePackagesResponse> list_world_experience_place_packages(experience_id, place_id)

Package copies in a place: version, newest version, modified, auto-update.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Package copies in a place: version, newest version, modified, auto-update.
  result = api_instance.list_world_experience_place_packages(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->list_world_experience_place_packages: #{e}"
end
```

#### Using the list_world_experience_place_packages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlacePackagesResponse>, Integer, Hash)> list_world_experience_place_packages_with_http_info(experience_id, place_id)

```ruby
begin
  # Package copies in a place: version, newest version, modified, auto-update.
  data, status_code, headers = api_instance.list_world_experience_place_packages_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlacePackagesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->list_world_experience_place_packages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlacePackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_packages

> <ListWorldPackagesResponse> list_world_packages(opts)

Your package library: reusable models and modules, newest first, with how many places hold copies.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
opts = {
  archived: 'true' # String | 
}

begin
  # Your package library: reusable models and modules, newest first, with how many places hold copies.
  result = api_instance.list_world_packages(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->list_world_packages: #{e}"
end
```

#### Using the list_world_packages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPackagesResponse>, Integer, Hash)> list_world_packages_with_http_info(opts)

```ruby
begin
  # Your package library: reusable models and modules, newest first, with how many places hold copies.
  data, status_code, headers = api_instance.list_world_packages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPackagesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->list_world_packages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived** | **String** |  | [optional] |

### Return type

**ListWorldPackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_place_package

> <UpdateWorldExperiencePlacePackageResponse> update_world_experience_place_package(experience_id, place_id, node_id, opts)

Turn auto-update on or off for one copy.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
node_id = 'node_id_example' # String | 
opts = {
  update_world_experience_place_package_request: Crossly::UpdateWorldExperiencePlacePackageRequest.new({auto_update: false}) # UpdateWorldExperiencePlacePackageRequest | 
}

begin
  # Turn auto-update on or off for one copy.
  result = api_instance.update_world_experience_place_package(experience_id, place_id, node_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->update_world_experience_place_package: #{e}"
end
```

#### Using the update_world_experience_place_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperiencePlacePackageResponse>, Integer, Hash)> update_world_experience_place_package_with_http_info(experience_id, place_id, node_id, opts)

```ruby
begin
  # Turn auto-update on or off for one copy.
  data, status_code, headers = api_instance.update_world_experience_place_package_with_http_info(experience_id, place_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperiencePlacePackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->update_world_experience_place_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **node_id** | **String** |  |  |
| **update_world_experience_place_package_request** | **UpdateWorldExperiencePlacePackageRequest** |  | [optional] |

### Return type

**UpdateWorldExperiencePlacePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_package

> <DeleteWorldPackageResponse> update_world_package(package_id, opts)

Rename a package or change its description.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsPackagesApi.new
package_id = 'package_id_example' # String | 
opts = {
  update_world_package_request: Crossly::UpdateWorldPackageRequest.new # UpdateWorldPackageRequest | 
}

begin
  # Rename a package or change its description.
  result = api_instance.update_world_package(package_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->update_world_package: #{e}"
end
```

#### Using the update_world_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldPackageResponse>, Integer, Hash)> update_world_package_with_http_info(package_id, opts)

```ruby
begin
  # Rename a package or change its description.
  data, status_code, headers = api_instance.update_world_package_with_http_info(package_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldPackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsPackagesApi->update_world_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **String** |  |  |
| **update_world_package_request** | **UpdateWorldPackageRequest** |  | [optional] |

### Return type

**DeleteWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

