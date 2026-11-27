# Crossly::WorldsDataApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_datastore_entry_increment**](WorldsDataApi.md#create_world_experience_datastore_entry_increment) | **POST** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/increment | Atomically add &#x60;by&#x60; to a numeric key (absent counts as 0). |
| [**create_world_experience_memory_queue_item**](WorldsDataApi.md#create_world_experience_memory_queue_item) | **POST** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/items | Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000). |
| [**create_world_experience_memory_queue_read**](WorldsDataApi.md#create_world_experience_memory_queue_read) | **POST** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/read | Read and hide up to &#x60;count&#x60; queue items for invisibilitySeconds; remove them with the readId. |
| [**create_world_experience_messaging**](WorldsDataApi.md#create_world_experience_messaging) | **POST** /v1/worlds/experiences/{experienceId}/messaging/{topic} | Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic. |
| [**create_world_experience_ordered_entry_increment**](WorldsDataApi.md#create_world_experience_ordered_entry_increment) | **POST** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key}/increment | Atomically add &#x60;by&#x60; to an OrderedStore entry. |
| [**delete_world_experience_datastore_entry**](WorldsDataApi.md#delete_world_experience_datastore_entry) | **DELETE** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match. |
| [**delete_world_experience_memory_map**](WorldsDataApi.md#delete_world_experience_memory_map) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | Remove a hash map item. |
| [**delete_world_experience_memory_queue_read**](WorldsDataApi.md#delete_world_experience_memory_queue_read) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/reads/{readId} | Remove the items of one read (409 if the read lapsed). |
| [**delete_world_experience_memory_sorted**](WorldsDataApi.md#delete_world_experience_memory_sorted) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | Remove a sorted map item. |
| [**delete_world_experience_ordered_entry**](WorldsDataApi.md#delete_world_experience_ordered_entry) | **DELETE** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | Remove an OrderedStore entry. |
| [**get_world_experience_data_usage**](WorldsDataApi.md#get_world_experience_data_usage) | **GET** /v1/worlds/experiences/{experienceId}/data/usage | Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory. |
| [**get_world_experience_datastore_entry**](WorldsDataApi.md#get_world_experience_datastore_entry) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | The current value of a key: version (ETag \&quot;v&lt;n&gt;\&quot;), userIds and attributes. |
| [**get_world_experience_datastore_entry_version**](WorldsDataApi.md#get_world_experience_datastore_entry_version) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/versions/{version} | One version of a key, including a removed one. |
| [**get_world_experience_memory_map**](WorldsDataApi.md#get_world_experience_memory_map) | **GET** /v1/worlds/experiences/{experienceId}/memory/maps/{map} | Items of a MemoryStore hash map (cursor-paged, unordered). |
| [**get_world_experience_memory_map_by_key**](WorldsDataApi.md#get_world_experience_memory_map_by_key) | **GET** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | One MemoryStore hash map item with its version and expiry. |
| [**get_world_experience_memory_queue**](WorldsDataApi.md#get_world_experience_memory_queue) | **GET** /v1/worlds/experiences/{experienceId}/memory/queues/{queue} | Queue length (visible, in flight) and the head, without hiding anything. |
| [**get_world_experience_memory_sorted**](WorldsDataApi.md#get_world_experience_memory_sorted) | **GET** /v1/worlds/experiences/{experienceId}/memory/sorted/{map} | A MemoryStore sorted map in order (sortKey, then key); ?order&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;. |
| [**get_world_experience_memory_sorted_by_key**](WorldsDataApi.md#get_world_experience_memory_sorted_by_key) | **GET** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | One sorted map item. |
| [**get_world_experience_ordered**](WorldsDataApi.md#get_world_experience_ordered) | **GET** /v1/worlds/experiences/{experienceId}/ordered/{store} | An OrderedStore page ranked by value; ?order&#x3D;desc|asc&amp;min&#x3D;&amp;max&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;. |
| [**get_world_experience_ordered_entry**](WorldsDataApi.md#get_world_experience_ordered_entry) | **GET** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | One OrderedStore entry. |
| [**list_world_experience_datastore_entries**](WorldsDataApi.md#list_world_experience_datastore_entries) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries | Keys of a DataStore in key order; ?prefix&#x3D;&amp;scope&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;. |
| [**list_world_experience_datastore_entry_versions**](WorldsDataApi.md#list_world_experience_datastore_entry_versions) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/versions | Versions of a key, newest first (30-day history; the current version is kept). |
| [**list_world_experience_datastores**](WorldsDataApi.md#list_world_experience_datastores) | **GET** /v1/worlds/experiences/{experienceId}/datastores | The DataStores of an experience, with key counts and bytes. |
| [**update_world_experience_datastore_entry**](WorldsDataApi.md#update_world_experience_datastore_entry) | **PUT** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | Write a new version. If-Match \&quot;v&lt;n&gt;\&quot; (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch. |
| [**update_world_experience_memory_map**](WorldsDataApi.md#update_world_experience_memory_map) | **PUT** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | Set a hash map item (ttlSeconds required; ifVersion for compare-and-set). |
| [**update_world_experience_memory_sorted**](WorldsDataApi.md#update_world_experience_memory_sorted) | **PUT** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | Set a sorted map item (ttlSeconds, optional sortKey and ifVersion). |
| [**update_world_experience_ordered_entry**](WorldsDataApi.md#update_world_experience_ordered_entry) | **PUT** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | Set an OrderedStore entry to a whole number. |


## create_world_experience_datastore_entry_increment

> <CreateWorldExperienceDatastoreEntryIncrementResponse> create_world_experience_datastore_entry_increment(experience_id, store, key)

Atomically add `by` to a numeric key (absent counts as 0).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Atomically add `by` to a numeric key (absent counts as 0).
  result = api_instance.create_world_experience_datastore_entry_increment(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_datastore_entry_increment: #{e}"
end
```

#### Using the create_world_experience_datastore_entry_increment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceDatastoreEntryIncrementResponse>, Integer, Hash)> create_world_experience_datastore_entry_increment_with_http_info(experience_id, store, key)

```ruby
begin
  # Atomically add `by` to a numeric key (absent counts as 0).
  data, status_code, headers = api_instance.create_world_experience_datastore_entry_increment_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceDatastoreEntryIncrementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_datastore_entry_increment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**CreateWorldExperienceDatastoreEntryIncrementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_memory_queue_item

> <CreateWorldPartyInviteResponse> create_world_experience_memory_queue_item(experience_id, queue)

Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
queue = 'queue_example' # String | 

begin
  # Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).
  result = api_instance.create_world_experience_memory_queue_item(experience_id, queue)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_memory_queue_item: #{e}"
end
```

#### Using the create_world_experience_memory_queue_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyInviteResponse>, Integer, Hash)> create_world_experience_memory_queue_item_with_http_info(experience_id, queue)

```ruby
begin
  # Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).
  data, status_code, headers = api_instance.create_world_experience_memory_queue_item_with_http_info(experience_id, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_memory_queue_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **queue** | **String** |  |  |

### Return type

**CreateWorldPartyInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_memory_queue_read

> <CreateWorldExperienceMemoryQueueReadResponse> create_world_experience_memory_queue_read(experience_id, queue)

Read and hide up to `count` queue items for invisibilitySeconds; remove them with the readId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
queue = 'queue_example' # String | 

begin
  # Read and hide up to `count` queue items for invisibilitySeconds; remove them with the readId.
  result = api_instance.create_world_experience_memory_queue_read(experience_id, queue)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_memory_queue_read: #{e}"
end
```

#### Using the create_world_experience_memory_queue_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceMemoryQueueReadResponse>, Integer, Hash)> create_world_experience_memory_queue_read_with_http_info(experience_id, queue)

```ruby
begin
  # Read and hide up to `count` queue items for invisibilitySeconds; remove them with the readId.
  data, status_code, headers = api_instance.create_world_experience_memory_queue_read_with_http_info(experience_id, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceMemoryQueueReadResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_memory_queue_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **queue** | **String** |  |  |

### Return type

**CreateWorldExperienceMemoryQueueReadResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_messaging

> <CreateWorldExperienceMessagingResponse> create_world_experience_messaging(experience_id, topic)

Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
topic = 'topic_example' # String | 

begin
  # Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.
  result = api_instance.create_world_experience_messaging(experience_id, topic)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_messaging: #{e}"
end
```

#### Using the create_world_experience_messaging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceMessagingResponse>, Integer, Hash)> create_world_experience_messaging_with_http_info(experience_id, topic)

```ruby
begin
  # Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.
  data, status_code, headers = api_instance.create_world_experience_messaging_with_http_info(experience_id, topic)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceMessagingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_messaging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **topic** | **String** |  |  |

### Return type

**CreateWorldExperienceMessagingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_ordered_entry_increment

> <WorldExperienceOrderedEntryResponse> create_world_experience_ordered_entry_increment(experience_id, store, key)

Atomically add `by` to an OrderedStore entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Atomically add `by` to an OrderedStore entry.
  result = api_instance.create_world_experience_ordered_entry_increment(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_ordered_entry_increment: #{e}"
end
```

#### Using the create_world_experience_ordered_entry_increment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceOrderedEntryResponse>, Integer, Hash)> create_world_experience_ordered_entry_increment_with_http_info(experience_id, store, key)

```ruby
begin
  # Atomically add `by` to an OrderedStore entry.
  data, status_code, headers = api_instance.create_world_experience_ordered_entry_increment_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceOrderedEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->create_world_experience_ordered_entry_increment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_datastore_entry

> <DeleteWorldExperienceDatastoreEntryResponse> delete_world_experience_datastore_entry(experience_id, store, key)

Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.
  result = api_instance.delete_world_experience_datastore_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_datastore_entry: #{e}"
end
```

#### Using the delete_world_experience_datastore_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperienceDatastoreEntryResponse>, Integer, Hash)> delete_world_experience_datastore_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.
  data, status_code, headers = api_instance.delete_world_experience_datastore_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperienceDatastoreEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_datastore_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**DeleteWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_memory_map

> <DeleteSpatialSceneGrantResponse> delete_world_experience_memory_map(experience_id, map, key)

Remove a hash map item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # Remove a hash map item.
  result = api_instance.delete_world_experience_memory_map(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_map: #{e}"
end
```

#### Using the delete_world_experience_memory_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_memory_map_with_http_info(experience_id, map, key)

```ruby
begin
  # Remove a hash map item.
  data, status_code, headers = api_instance.delete_world_experience_memory_map_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_memory_queue_read

> <DeleteSpatialSceneNodeResponse> delete_world_experience_memory_queue_read(experience_id, queue, read_id)

Remove the items of one read (409 if the read lapsed).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
queue = 'queue_example' # String | 
read_id = 'read_id_example' # String | 

begin
  # Remove the items of one read (409 if the read lapsed).
  result = api_instance.delete_world_experience_memory_queue_read(experience_id, queue, read_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_queue_read: #{e}"
end
```

#### Using the delete_world_experience_memory_queue_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneNodeResponse>, Integer, Hash)> delete_world_experience_memory_queue_read_with_http_info(experience_id, queue, read_id)

```ruby
begin
  # Remove the items of one read (409 if the read lapsed).
  data, status_code, headers = api_instance.delete_world_experience_memory_queue_read_with_http_info(experience_id, queue, read_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_queue_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **queue** | **String** |  |  |
| **read_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_memory_sorted

> <DeleteSpatialSceneGrantResponse> delete_world_experience_memory_sorted(experience_id, map, key)

Remove a sorted map item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # Remove a sorted map item.
  result = api_instance.delete_world_experience_memory_sorted(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_sorted: #{e}"
end
```

#### Using the delete_world_experience_memory_sorted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_memory_sorted_with_http_info(experience_id, map, key)

```ruby
begin
  # Remove a sorted map item.
  data, status_code, headers = api_instance.delete_world_experience_memory_sorted_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_memory_sorted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_ordered_entry

> <DeleteWorldExperienceOrderedEntryResponse> delete_world_experience_ordered_entry(experience_id, store, key)

Remove an OrderedStore entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Remove an OrderedStore entry.
  result = api_instance.delete_world_experience_ordered_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_ordered_entry: #{e}"
end
```

#### Using the delete_world_experience_ordered_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperienceOrderedEntryResponse>, Integer, Hash)> delete_world_experience_ordered_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # Remove an OrderedStore entry.
  data, status_code, headers = api_instance.delete_world_experience_ordered_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperienceOrderedEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->delete_world_experience_ordered_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**DeleteWorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_data_usage

> <GetWorldExperienceDataUsageResponse> get_world_experience_data_usage(experience_id)

Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.
  result = api_instance.get_world_experience_data_usage(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_data_usage: #{e}"
end
```

#### Using the get_world_experience_data_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceDataUsageResponse>, Integer, Hash)> get_world_experience_data_usage_with_http_info(experience_id)

```ruby
begin
  # Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.
  data, status_code, headers = api_instance.get_world_experience_data_usage_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceDataUsageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_data_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceDataUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_datastore_entry

> <GetWorldExperienceDatastoreEntryResponse> get_world_experience_datastore_entry(experience_id, store, key)

The current value of a key: version (ETag \"v<n>\"), userIds and attributes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # The current value of a key: version (ETag \"v<n>\"), userIds and attributes.
  result = api_instance.get_world_experience_datastore_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_datastore_entry: #{e}"
end
```

#### Using the get_world_experience_datastore_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceDatastoreEntryResponse>, Integer, Hash)> get_world_experience_datastore_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # The current value of a key: version (ETag \"v<n>\"), userIds and attributes.
  data, status_code, headers = api_instance.get_world_experience_datastore_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceDatastoreEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_datastore_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**GetWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_datastore_entry_version

> <GetWorldExperienceDatastoreEntryResponse> get_world_experience_datastore_entry_version(experience_id, store, key, version)

One version of a key, including a removed one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 
version = 'version_example' # String | 

begin
  # One version of a key, including a removed one.
  result = api_instance.get_world_experience_datastore_entry_version(experience_id, store, key, version)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_datastore_entry_version: #{e}"
end
```

#### Using the get_world_experience_datastore_entry_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceDatastoreEntryResponse>, Integer, Hash)> get_world_experience_datastore_entry_version_with_http_info(experience_id, store, key, version)

```ruby
begin
  # One version of a key, including a removed one.
  data, status_code, headers = api_instance.get_world_experience_datastore_entry_version_with_http_info(experience_id, store, key, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceDatastoreEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_datastore_entry_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |
| **version** | **String** |  |  |

### Return type

**GetWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_memory_map

> <GetWorldExperienceMemoryMapResponse> get_world_experience_memory_map(experience_id, map)

Items of a MemoryStore hash map (cursor-paged, unordered).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 

begin
  # Items of a MemoryStore hash map (cursor-paged, unordered).
  result = api_instance.get_world_experience_memory_map(experience_id, map)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_map: #{e}"
end
```

#### Using the get_world_experience_memory_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMemoryMapResponse>, Integer, Hash)> get_world_experience_memory_map_with_http_info(experience_id, map)

```ruby
begin
  # Items of a MemoryStore hash map (cursor-paged, unordered).
  data, status_code, headers = api_instance.get_world_experience_memory_map_with_http_info(experience_id, map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMemoryMapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |

### Return type

**GetWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_memory_map_by_key

> <GetWorldExperienceMemoryMapByKeyResponse> get_world_experience_memory_map_by_key(experience_id, map, key)

One MemoryStore hash map item with its version and expiry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # One MemoryStore hash map item with its version and expiry.
  result = api_instance.get_world_experience_memory_map_by_key(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_map_by_key: #{e}"
end
```

#### Using the get_world_experience_memory_map_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMemoryMapByKeyResponse>, Integer, Hash)> get_world_experience_memory_map_by_key_with_http_info(experience_id, map, key)

```ruby
begin
  # One MemoryStore hash map item with its version and expiry.
  data, status_code, headers = api_instance.get_world_experience_memory_map_by_key_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMemoryMapByKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_map_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**GetWorldExperienceMemoryMapByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_memory_queue

> <GetWorldExperienceMemoryQueueResponse> get_world_experience_memory_queue(experience_id, queue)

Queue length (visible, in flight) and the head, without hiding anything.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
queue = 'queue_example' # String | 

begin
  # Queue length (visible, in flight) and the head, without hiding anything.
  result = api_instance.get_world_experience_memory_queue(experience_id, queue)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_queue: #{e}"
end
```

#### Using the get_world_experience_memory_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMemoryQueueResponse>, Integer, Hash)> get_world_experience_memory_queue_with_http_info(experience_id, queue)

```ruby
begin
  # Queue length (visible, in flight) and the head, without hiding anything.
  data, status_code, headers = api_instance.get_world_experience_memory_queue_with_http_info(experience_id, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMemoryQueueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **queue** | **String** |  |  |

### Return type

**GetWorldExperienceMemoryQueueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_memory_sorted

> <GetWorldExperienceMemoryMapResponse> get_world_experience_memory_sorted(experience_id, map)

A MemoryStore sorted map in order (sortKey, then key); ?order=&cursor=&limit=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 

begin
  # A MemoryStore sorted map in order (sortKey, then key); ?order=&cursor=&limit=.
  result = api_instance.get_world_experience_memory_sorted(experience_id, map)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_sorted: #{e}"
end
```

#### Using the get_world_experience_memory_sorted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMemoryMapResponse>, Integer, Hash)> get_world_experience_memory_sorted_with_http_info(experience_id, map)

```ruby
begin
  # A MemoryStore sorted map in order (sortKey, then key); ?order=&cursor=&limit=.
  data, status_code, headers = api_instance.get_world_experience_memory_sorted_with_http_info(experience_id, map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMemoryMapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_sorted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |

### Return type

**GetWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_memory_sorted_by_key

> <GetWorldExperienceMemoryMapByKeyResponse> get_world_experience_memory_sorted_by_key(experience_id, map, key)

One sorted map item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # One sorted map item.
  result = api_instance.get_world_experience_memory_sorted_by_key(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_sorted_by_key: #{e}"
end
```

#### Using the get_world_experience_memory_sorted_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMemoryMapByKeyResponse>, Integer, Hash)> get_world_experience_memory_sorted_by_key_with_http_info(experience_id, map, key)

```ruby
begin
  # One sorted map item.
  data, status_code, headers = api_instance.get_world_experience_memory_sorted_by_key_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMemoryMapByKeyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_memory_sorted_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**GetWorldExperienceMemoryMapByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_ordered

> <GetWorldExperienceOrderedResponse> get_world_experience_ordered(experience_id, store)

An OrderedStore page ranked by value; ?order=desc|asc&min=&max=&cursor=&limit=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 

begin
  # An OrderedStore page ranked by value; ?order=desc|asc&min=&max=&cursor=&limit=.
  result = api_instance.get_world_experience_ordered(experience_id, store)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_ordered: #{e}"
end
```

#### Using the get_world_experience_ordered_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceOrderedResponse>, Integer, Hash)> get_world_experience_ordered_with_http_info(experience_id, store)

```ruby
begin
  # An OrderedStore page ranked by value; ?order=desc|asc&min=&max=&cursor=&limit=.
  data, status_code, headers = api_instance.get_world_experience_ordered_with_http_info(experience_id, store)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceOrderedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_ordered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |

### Return type

**GetWorldExperienceOrderedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_ordered_entry

> <WorldExperienceOrderedEntryResponse> get_world_experience_ordered_entry(experience_id, store, key)

One OrderedStore entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # One OrderedStore entry.
  result = api_instance.get_world_experience_ordered_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_ordered_entry: #{e}"
end
```

#### Using the get_world_experience_ordered_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceOrderedEntryResponse>, Integer, Hash)> get_world_experience_ordered_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # One OrderedStore entry.
  data, status_code, headers = api_instance.get_world_experience_ordered_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceOrderedEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->get_world_experience_ordered_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_datastore_entries

> <ListWorldExperienceDatastoreEntriesResponse> list_world_experience_datastore_entries(experience_id, store)

Keys of a DataStore in key order; ?prefix=&scope=&cursor=&limit=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 

begin
  # Keys of a DataStore in key order; ?prefix=&scope=&cursor=&limit=.
  result = api_instance.list_world_experience_datastore_entries(experience_id, store)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastore_entries: #{e}"
end
```

#### Using the list_world_experience_datastore_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceDatastoreEntriesResponse>, Integer, Hash)> list_world_experience_datastore_entries_with_http_info(experience_id, store)

```ruby
begin
  # Keys of a DataStore in key order; ?prefix=&scope=&cursor=&limit=.
  data, status_code, headers = api_instance.list_world_experience_datastore_entries_with_http_info(experience_id, store)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceDatastoreEntriesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastore_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |

### Return type

**ListWorldExperienceDatastoreEntriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_datastore_entry_versions

> <ListWorldExperienceDatastoreEntryVersionsResponse> list_world_experience_datastore_entry_versions(experience_id, store, key)

Versions of a key, newest first (30-day history; the current version is kept).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Versions of a key, newest first (30-day history; the current version is kept).
  result = api_instance.list_world_experience_datastore_entry_versions(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastore_entry_versions: #{e}"
end
```

#### Using the list_world_experience_datastore_entry_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceDatastoreEntryVersionsResponse>, Integer, Hash)> list_world_experience_datastore_entry_versions_with_http_info(experience_id, store, key)

```ruby
begin
  # Versions of a key, newest first (30-day history; the current version is kept).
  data, status_code, headers = api_instance.list_world_experience_datastore_entry_versions_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceDatastoreEntryVersionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastore_entry_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**ListWorldExperienceDatastoreEntryVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_datastores

> <ListWorldExperienceDatastoresResponse> list_world_experience_datastores(experience_id)

The DataStores of an experience, with key counts and bytes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The DataStores of an experience, with key counts and bytes.
  result = api_instance.list_world_experience_datastores(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastores: #{e}"
end
```

#### Using the list_world_experience_datastores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceDatastoresResponse>, Integer, Hash)> list_world_experience_datastores_with_http_info(experience_id)

```ruby
begin
  # The DataStores of an experience, with key counts and bytes.
  data, status_code, headers = api_instance.list_world_experience_datastores_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceDatastoresResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->list_world_experience_datastores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceDatastoresResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_datastore_entry

> <UpdateWorldExperienceDatastoreEntryResponse> update_world_experience_datastore_entry(experience_id, store, key)

Write a new version. If-Match \"v<n>\" (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Write a new version. If-Match \"v<n>\" (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.
  result = api_instance.update_world_experience_datastore_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_datastore_entry: #{e}"
end
```

#### Using the update_world_experience_datastore_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceDatastoreEntryResponse>, Integer, Hash)> update_world_experience_datastore_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # Write a new version. If-Match \"v<n>\" (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.
  data, status_code, headers = api_instance.update_world_experience_datastore_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceDatastoreEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_datastore_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**UpdateWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_memory_map

> <UpdateWorldExperienceMemoryMapResponse> update_world_experience_memory_map(experience_id, map, key)

Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).
  result = api_instance.update_world_experience_memory_map(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_memory_map: #{e}"
end
```

#### Using the update_world_experience_memory_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceMemoryMapResponse>, Integer, Hash)> update_world_experience_memory_map_with_http_info(experience_id, map, key)

```ruby
begin
  # Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).
  data, status_code, headers = api_instance.update_world_experience_memory_map_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceMemoryMapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_memory_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**UpdateWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_memory_sorted

> <UpdateWorldExperienceMemoryMapResponse> update_world_experience_memory_sorted(experience_id, map, key)

Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
map = 'map_example' # String | 
key = 'key_example' # String | 

begin
  # Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).
  result = api_instance.update_world_experience_memory_sorted(experience_id, map, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_memory_sorted: #{e}"
end
```

#### Using the update_world_experience_memory_sorted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceMemoryMapResponse>, Integer, Hash)> update_world_experience_memory_sorted_with_http_info(experience_id, map, key)

```ruby
begin
  # Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).
  data, status_code, headers = api_instance.update_world_experience_memory_sorted_with_http_info(experience_id, map, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceMemoryMapResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_memory_sorted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **map** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**UpdateWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_ordered_entry

> <WorldExperienceOrderedEntryResponse> update_world_experience_ordered_entry(experience_id, store, key)

Set an OrderedStore entry to a whole number.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsDataApi.new
experience_id = 'experience_id_example' # String | 
store = 'store_example' # String | 
key = 'key_example' # String | 

begin
  # Set an OrderedStore entry to a whole number.
  result = api_instance.update_world_experience_ordered_entry(experience_id, store, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_ordered_entry: #{e}"
end
```

#### Using the update_world_experience_ordered_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceOrderedEntryResponse>, Integer, Hash)> update_world_experience_ordered_entry_with_http_info(experience_id, store, key)

```ruby
begin
  # Set an OrderedStore entry to a whole number.
  data, status_code, headers = api_instance.update_world_experience_ordered_entry_with_http_info(experience_id, store, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceOrderedEntryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsDataApi->update_world_experience_ordered_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **store** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

