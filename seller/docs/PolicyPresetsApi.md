# Crossly::PolicyPresetsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_geo_location_check**](PolicyPresetsApi.md#create_geo_location_check) | **POST** /v1/geo/location-check | Check whether a shipping policy ships to an address. |
| [**create_policy_preset**](PolicyPresetsApi.md#create_policy_preset) | **POST** /v1/policy-presets | Create a return / shipping / payment policy preset. |
| [**delete_policy_preset**](PolicyPresetsApi.md#delete_policy_preset) | **DELETE** /v1/policy-presets/{id} | Delete a policy preset. Listings that used it switch to the default preset of its kind. |
| [**get_policy**](PolicyPresetsApi.md#get_policy) | **GET** /v1/policies | The seller&#39;s shipping / return / payment policy presets by kind, with each kind&#39;s default. |
| [**list_policy_presets**](PolicyPresetsApi.md#list_policy_presets) | **GET** /v1/policy-presets | List the seller&#39;s return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default). |
| [**update_policy_preset**](PolicyPresetsApi.md#update_policy_preset) | **PATCH** /v1/policy-presets/{id} | Update a policy preset. |


## create_geo_location_check

> <CreateGeoLocationCheckResponse> create_geo_location_check

Check whether a shipping policy ships to an address.

Pass an unsaved `policy` draft or a `presetId` (neither = your default shipping policy), an `address`, and optionally `consolidateVia` (a ship-together hub). Returns `ships`, and when it does not: `reason`, `stage` (buyer | hub), `message` and the deciding `rule`. `partial` means a fuller address (state, ZIP) could change the answer. A draft that is not a valid shipping policy is a 422; a presetId that is not yours is a 404.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new

begin
  # Check whether a shipping policy ships to an address.
  result = api_instance.create_geo_location_check
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_geo_location_check: #{e}"
end
```

#### Using the create_geo_location_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGeoLocationCheckResponse>, Integer, Hash)> create_geo_location_check_with_http_info

```ruby
begin
  # Check whether a shipping policy ships to an address.
  data, status_code, headers = api_instance.create_geo_location_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGeoLocationCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_geo_location_check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateGeoLocationCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_policy_preset

> <CreatePolicyPresetResponse> create_policy_preset

Create a return / shipping / payment policy preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new

begin
  # Create a return / shipping / payment policy preset.
  result = api_instance.create_policy_preset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset: #{e}"
end
```

#### Using the create_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePolicyPresetResponse>, Integer, Hash)> create_policy_preset_with_http_info

```ruby
begin
  # Create a return / shipping / payment policy preset.
  data, status_code, headers = api_instance.create_policy_preset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePolicyPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_policy_preset

> <DeletePolicyPresetResponse> delete_policy_preset(id)

Delete a policy preset. Listings that used it switch to the default preset of its kind.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a policy preset. Listings that used it switch to the default preset of its kind.
  result = api_instance.delete_policy_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->delete_policy_preset: #{e}"
end
```

#### Using the delete_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePolicyPresetResponse>, Integer, Hash)> delete_policy_preset_with_http_info(id)

```ruby
begin
  # Delete a policy preset. Listings that used it switch to the default preset of its kind.
  data, status_code, headers = api_instance.delete_policy_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePolicyPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->delete_policy_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeletePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy

> <GetPolicyResponse> get_policy

The seller's shipping / return / payment policy presets by kind, with each kind's default.

Pass a preset `id` as `policies.shippingPresetId` / `returnPresetId` / `paymentPresetId` on POST or PATCH /v1/listings (null = the marketplace's own default). A kind you omit uses `defaultPresetId`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new

begin
  # The seller's shipping / return / payment policy presets by kind, with each kind's default.
  result = api_instance.get_policy
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy: #{e}"
end
```

#### Using the get_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPolicyResponse>, Integer, Hash)> get_policy_with_http_info

```ruby
begin
  # The seller's shipping / return / payment policy presets by kind, with each kind's default.
  data, status_code, headers = api_instance.get_policy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPolicyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policy_presets

> <ListPolicyPresetsResponse> list_policy_presets(opts)

List the seller's return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
opts = {
  kind: 'return' # String | 
}

begin
  # List the seller's return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
  result = api_instance.list_policy_presets(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_presets: #{e}"
end
```

#### Using the list_policy_presets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetsResponse>, Integer, Hash)> list_policy_presets_with_http_info(opts)

```ruby
begin
  # List the seller's return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
  data, status_code, headers = api_instance.list_policy_presets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_presets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |

### Return type

**ListPolicyPresetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy_preset

> <CreatePolicyPresetResponse> update_policy_preset(id)

Update a policy preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::PolicyPresetsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update a policy preset.
  result = api_instance.update_policy_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset: #{e}"
end
```

#### Using the update_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePolicyPresetResponse>, Integer, Hash)> update_policy_preset_with_http_info(id)

```ruby
begin
  # Update a policy preset.
  data, status_code, headers = api_instance.update_policy_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePolicyPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

