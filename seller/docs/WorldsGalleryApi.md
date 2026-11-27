# Crossly::WorldsGalleryApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_gallery**](WorldsGalleryApi.md#create_world_experience_gallery) | **POST** /v1/worlds/experiences/{experienceId}/gallery | Add an uploaded screenshot or video (your own upload&#39;s publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game&#39;s page once approved. |
| [**create_world_experience_gallery_upload_url**](WorldsGalleryApi.md#create_world_experience_gallery_upload_url) | **POST** /v1/worlds/experiences/{experienceId}/gallery/upload-url | A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery. |
| [**delete_world_experience_gallery**](WorldsGalleryApi.md#delete_world_experience_gallery) | **DELETE** /v1/worlds/experiences/{experienceId}/gallery/{mediaId} | Take an item off the game&#39;s page now. |
| [**get_world_experience_gallery**](WorldsGalleryApi.md#get_world_experience_gallery) | **GET** /v1/worlds/experiences/{experienceId}/gallery | The game&#39;s gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer&#39;s note), position and caption, plus the limits. |
| [**update_world_experience_gallery**](WorldsGalleryApi.md#update_world_experience_gallery) | **PATCH** /v1/worlds/experiences/{experienceId}/gallery/{mediaId} | Change an item&#39;s caption (filtered; an approved item with a new caption goes back to review). |
| [**update_world_experience_gallery_order**](WorldsGalleryApi.md#update_world_experience_gallery_order) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/order | Set the order on the game&#39;s page: the ids you list first, the rest after in their current order. |
| [**update_world_experience_gallery_role**](WorldsGalleryApi.md#update_world_experience_gallery_role) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/{mediaId}/role | Make an item the game&#39;s icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery. |
| [**update_world_experience_gallery_trailer_url**](WorldsGalleryApi.md#update_world_experience_gallery_trailer_url) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/trailer-url | Set the game&#39;s trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link). |


## create_world_experience_gallery

> <WorldExperienceGalleryResponse> create_world_experience_gallery(experience_id)

Add an uploaded screenshot or video (your own upload's publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game's page once approved.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Add an uploaded screenshot or video (your own upload's publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game's page once approved.
  result = api_instance.create_world_experience_gallery(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->create_world_experience_gallery: #{e}"
end
```

#### Using the create_world_experience_gallery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceGalleryResponse>, Integer, Hash)> create_world_experience_gallery_with_http_info(experience_id)

```ruby
begin
  # Add an uploaded screenshot or video (your own upload's publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game's page once approved.
  data, status_code, headers = api_instance.create_world_experience_gallery_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceGalleryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->create_world_experience_gallery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_gallery_upload_url

> <CreateWorldExperienceGalleryUploadUrlResponse> create_world_experience_gallery_upload_url(experience_id)

A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 

begin
  # A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.
  result = api_instance.create_world_experience_gallery_upload_url(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->create_world_experience_gallery_upload_url: #{e}"
end
```

#### Using the create_world_experience_gallery_upload_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceGalleryUploadUrlResponse>, Integer, Hash)> create_world_experience_gallery_upload_url_with_http_info(experience_id)

```ruby
begin
  # A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.
  data, status_code, headers = api_instance.create_world_experience_gallery_upload_url_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceGalleryUploadUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->create_world_experience_gallery_upload_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceGalleryUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_gallery

> <DeleteSpatialSceneGrantResponse> delete_world_experience_gallery(experience_id, media_id)

Take an item off the game's page now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 
media_id = 'media_id_example' # String | 

begin
  # Take an item off the game's page now.
  result = api_instance.delete_world_experience_gallery(experience_id, media_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->delete_world_experience_gallery: #{e}"
end
```

#### Using the delete_world_experience_gallery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_gallery_with_http_info(experience_id, media_id)

```ruby
begin
  # Take an item off the game's page now.
  data, status_code, headers = api_instance.delete_world_experience_gallery_with_http_info(experience_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->delete_world_experience_gallery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **media_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_gallery

> <GetWorldExperienceGalleryResponse> get_world_experience_gallery(experience_id)

The game's gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer's note), position and caption, plus the limits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The game's gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer's note), position and caption, plus the limits.
  result = api_instance.get_world_experience_gallery(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->get_world_experience_gallery: #{e}"
end
```

#### Using the get_world_experience_gallery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceGalleryResponse>, Integer, Hash)> get_world_experience_gallery_with_http_info(experience_id)

```ruby
begin
  # The game's gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer's note), position and caption, plus the limits.
  data, status_code, headers = api_instance.get_world_experience_gallery_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceGalleryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->get_world_experience_gallery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_gallery

> <WorldExperienceGalleryResponse> update_world_experience_gallery(experience_id, media_id)

Change an item's caption (filtered; an approved item with a new caption goes back to review).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 
media_id = 'media_id_example' # String | 

begin
  # Change an item's caption (filtered; an approved item with a new caption goes back to review).
  result = api_instance.update_world_experience_gallery(experience_id, media_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery: #{e}"
end
```

#### Using the update_world_experience_gallery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceGalleryResponse>, Integer, Hash)> update_world_experience_gallery_with_http_info(experience_id, media_id)

```ruby
begin
  # Change an item's caption (filtered; an approved item with a new caption goes back to review).
  data, status_code, headers = api_instance.update_world_experience_gallery_with_http_info(experience_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceGalleryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **media_id** | **String** |  |  |

### Return type

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_gallery_order

> <UpdateWorldExperienceGalleryRoleResponse> update_world_experience_gallery_order(experience_id)

Set the order on the game's page: the ids you list first, the rest after in their current order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Set the order on the game's page: the ids you list first, the rest after in their current order.
  result = api_instance.update_world_experience_gallery_order(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_order: #{e}"
end
```

#### Using the update_world_experience_gallery_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceGalleryRoleResponse>, Integer, Hash)> update_world_experience_gallery_order_with_http_info(experience_id)

```ruby
begin
  # Set the order on the game's page: the ids you list first, the rest after in their current order.
  data, status_code, headers = api_instance.update_world_experience_gallery_order_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceGalleryRoleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**UpdateWorldExperienceGalleryRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_gallery_role

> <UpdateWorldExperienceGalleryRoleResponse> update_world_experience_gallery_role(experience_id, media_id)

Make an item the game's icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 
media_id = 'media_id_example' # String | 

begin
  # Make an item the game's icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.
  result = api_instance.update_world_experience_gallery_role(experience_id, media_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_role: #{e}"
end
```

#### Using the update_world_experience_gallery_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceGalleryRoleResponse>, Integer, Hash)> update_world_experience_gallery_role_with_http_info(experience_id, media_id)

```ruby
begin
  # Make an item the game's icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.
  data, status_code, headers = api_instance.update_world_experience_gallery_role_with_http_info(experience_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceGalleryRoleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **media_id** | **String** |  |  |

### Return type

**UpdateWorldExperienceGalleryRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_gallery_trailer_url

> <WorldExperienceGalleryResponse> update_world_experience_gallery_trailer_url(experience_id)

Set the game's trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsGalleryApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Set the game's trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).
  result = api_instance.update_world_experience_gallery_trailer_url(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_trailer_url: #{e}"
end
```

#### Using the update_world_experience_gallery_trailer_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceGalleryResponse>, Integer, Hash)> update_world_experience_gallery_trailer_url_with_http_info(experience_id)

```ruby
begin
  # Set the game's trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).
  data, status_code, headers = api_instance.update_world_experience_gallery_trailer_url_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceGalleryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsGalleryApi->update_world_experience_gallery_trailer_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

