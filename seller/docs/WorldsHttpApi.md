# Crossly::WorldsHttpApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_http_domain**](WorldsHttpApi.md#create_world_experience_http_domain) | **POST** /v1/worlds/experiences/{experienceId}/http/domains | Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works. |
| [**delete_world_experience_http_domain**](WorldsHttpApi.md#delete_world_experience_http_domain) | **DELETE** /v1/worlds/experiences/{experienceId}/http/domains/{domainId} | Remove a domain: scripts lose access at once. |
| [**delete_world_experience_http_secret**](WorldsHttpApi.md#delete_world_experience_http_secret) | **DELETE** /v1/worlds/experiences/{experienceId}/http/secrets/{name} | Delete a secret. |
| [**get_world_experience_http**](WorldsHttpApi.md#get_world_experience_http) | **GET** /v1/worlds/experiences/{experienceId}/http | Http settings: declared domains with their review state, secret names (never values), limits and rules. |
| [**update_world_experience_http_secret**](WorldsHttpApi.md#update_world_experience_http_secret) | **PUT** /v1/worlds/experiences/{experienceId}/http/secrets/{name} | Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\&quot;NAME\&quot;); the value is never returned. |


## create_world_experience_http_domain

> <CreateWorldExperienceHttpDomainResponse> create_world_experience_http_domain(experience_id)

Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsHttpApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.
  result = api_instance.create_world_experience_http_domain(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->create_world_experience_http_domain: #{e}"
end
```

#### Using the create_world_experience_http_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceHttpDomainResponse>, Integer, Hash)> create_world_experience_http_domain_with_http_info(experience_id)

```ruby
begin
  # Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.
  data, status_code, headers = api_instance.create_world_experience_http_domain_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceHttpDomainResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->create_world_experience_http_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceHttpDomainResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_http_domain

> <DeleteSpatialSceneGrantResponse> delete_world_experience_http_domain(experience_id, domain_id)

Remove a domain: scripts lose access at once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsHttpApi.new
experience_id = 'experience_id_example' # String | 
domain_id = 'domain_id_example' # String | 

begin
  # Remove a domain: scripts lose access at once.
  result = api_instance.delete_world_experience_http_domain(experience_id, domain_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->delete_world_experience_http_domain: #{e}"
end
```

#### Using the delete_world_experience_http_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_http_domain_with_http_info(experience_id, domain_id)

```ruby
begin
  # Remove a domain: scripts lose access at once.
  data, status_code, headers = api_instance.delete_world_experience_http_domain_with_http_info(experience_id, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->delete_world_experience_http_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **domain_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_http_secret

> <DeleteSpatialSceneGrantResponse> delete_world_experience_http_secret(experience_id, name)

Delete a secret.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsHttpApi.new
experience_id = 'experience_id_example' # String | 
name = 'name_example' # String | 

begin
  # Delete a secret.
  result = api_instance.delete_world_experience_http_secret(experience_id, name)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->delete_world_experience_http_secret: #{e}"
end
```

#### Using the delete_world_experience_http_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_http_secret_with_http_info(experience_id, name)

```ruby
begin
  # Delete a secret.
  data, status_code, headers = api_instance.delete_world_experience_http_secret_with_http_info(experience_id, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->delete_world_experience_http_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **name** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_http

> <GetWorldExperienceHttpResponse> get_world_experience_http(experience_id)

Http settings: declared domains with their review state, secret names (never values), limits and rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsHttpApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Http settings: declared domains with their review state, secret names (never values), limits and rules.
  result = api_instance.get_world_experience_http(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->get_world_experience_http: #{e}"
end
```

#### Using the get_world_experience_http_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceHttpResponse>, Integer, Hash)> get_world_experience_http_with_http_info(experience_id)

```ruby
begin
  # Http settings: declared domains with their review state, secret names (never values), limits and rules.
  data, status_code, headers = api_instance.get_world_experience_http_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceHttpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->get_world_experience_http_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceHttpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_http_secret

> <UpdateWorldExperienceHttpSecretResponse> update_world_experience_http_secret(experience_id, name)

Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\"NAME\"); the value is never returned.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsHttpApi.new
experience_id = 'experience_id_example' # String | 
name = 'name_example' # String | 

begin
  # Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\"NAME\"); the value is never returned.
  result = api_instance.update_world_experience_http_secret(experience_id, name)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->update_world_experience_http_secret: #{e}"
end
```

#### Using the update_world_experience_http_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceHttpSecretResponse>, Integer, Hash)> update_world_experience_http_secret_with_http_info(experience_id, name)

```ruby
begin
  # Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\"NAME\"); the value is never returned.
  data, status_code, headers = api_instance.update_world_experience_http_secret_with_http_info(experience_id, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceHttpSecretResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsHttpApi->update_world_experience_http_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **name** | **String** |  |  |

### Return type

**UpdateWorldExperienceHttpSecretResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

