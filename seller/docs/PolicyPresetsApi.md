# Crossly::PolicyPresetsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_geo_location_check**](PolicyPresetsApi.md#create_geo_location_check) | **POST** /v1/geo/location-check | Check whether a shipping policy ships to an address. |
| [**create_policy_preset**](PolicyPresetsApi.md#create_policy_preset) | **POST** /v1/policy-presets | Create a return / shipping / payment / pricing policy preset. |
| [**create_policy_preset_duplicate**](PolicyPresetsApi.md#create_policy_preset_duplicate) | **POST** /v1/policy-presets/{id}/duplicate | Copy a policy preset (\&quot;&lt;name&gt; (copy)\&quot;, never the default; a pricing copy applies nowhere yet). |
| [**delete_policy_preset**](PolicyPresetsApi.md#delete_policy_preset) | **DELETE** /v1/policy-presets/{id} | Delete a policy preset. Listings that used it switch to the default preset of its kind. |
| [**get_policy**](PolicyPresetsApi.md#get_policy) | **GET** /v1/policies | The store&#39;s shipping / return / payment policy presets by kind, with each kind&#39;s default (X-Storefront-Id, else the default store). |
| [**get_policy_general**](PolicyPresetsApi.md#get_policy_general) | **GET** /v1/policies/general | Settings that fit no policy kind: vacation mode (schedule, scope, message, auto-actions). |
| [**get_policy_preset**](PolicyPresetsApi.md#get_policy_preset) | **GET** /v1/policy-presets/{id} | One policy: its fields, how many listings use it, where it applies per platform account (use this policy / the marketplace&#39;s own setting / default for that marketplace) with what each marketplace receives, and its history. |
| [**list_policy_preset_accounts**](PolicyPresetsApi.md#list_policy_preset_accounts) | **GET** /v1/policy-presets/accounts | The connected platform accounts a policy can apply to (\&quot;Where this applies\&quot;). |
| [**list_policy_presets**](PolicyPresetsApi.md#list_policy_presets) | **GET** /v1/policy-presets | List the seller&#39;s return / shipping / payment / pricing policy presets (no kind &#x3D; the three listing kinds). meta.migrationNotices lists defaults the policy migration demoted (kind still has no default). |
| [**update_policy_general**](PolicyPresetsApi.md#update_policy_general) | **PUT** /v1/policies/general | Save vacation mode: on now or scheduled, everywhere or chosen accounts, message, auto-actions. |
| [**update_policy_preset**](PolicyPresetsApi.md#update_policy_preset) | **PATCH** /v1/policy-presets/{id} | Update a policy preset. |
| [**update_policy_preset_application**](PolicyPresetsApi.md#update_policy_preset_application) | **PUT** /v1/policy-presets/{id}/applications | Replace where a policy applies: per platform account, push (use this policy), marketplace (the marketplace&#39;s own setting, optionally an eBay business policy id) or off (pricing), and isDefault (default for that marketplace). |


## create_geo_location_check

> <CreateGeoLocationCheckResponse> create_geo_location_check(create_geo_location_check_request)

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
create_geo_location_check_request = Crossly::CreateGeoLocationCheckRequest.new({address: Crossly::CreateGeoLocationCheckRequestAddress.new({country: 'country_example'})}) # CreateGeoLocationCheckRequest | 

begin
  # Check whether a shipping policy ships to an address.
  result = api_instance.create_geo_location_check(create_geo_location_check_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_geo_location_check: #{e}"
end
```

#### Using the create_geo_location_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGeoLocationCheckResponse>, Integer, Hash)> create_geo_location_check_with_http_info(create_geo_location_check_request)

```ruby
begin
  # Check whether a shipping policy ships to an address.
  data, status_code, headers = api_instance.create_geo_location_check_with_http_info(create_geo_location_check_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGeoLocationCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_geo_location_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_geo_location_check_request** | **CreateGeoLocationCheckRequest** |  |  |

### Return type

**CreateGeoLocationCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_policy_preset

> <CreatePolicyPresetResponse> create_policy_preset(create_policy_preset_request)

Create a return / shipping / payment / pricing policy preset.

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
create_policy_preset_request = Crossly::CreatePolicyPresetRequest.new({kind: 'shipping', name: 'name_example'}) # CreatePolicyPresetRequest | 

begin
  # Create a return / shipping / payment / pricing policy preset.
  result = api_instance.create_policy_preset(create_policy_preset_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset: #{e}"
end
```

#### Using the create_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePolicyPresetResponse>, Integer, Hash)> create_policy_preset_with_http_info(create_policy_preset_request)

```ruby
begin
  # Create a return / shipping / payment / pricing policy preset.
  data, status_code, headers = api_instance.create_policy_preset_with_http_info(create_policy_preset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePolicyPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_policy_preset_request** | **CreatePolicyPresetRequest** |  |  |

### Return type

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_policy_preset_duplicate

> <ListPolicyPresetsItem> create_policy_preset_duplicate(id)

Copy a policy preset (\"<name> (copy)\", never the default; a pricing copy applies nowhere yet).

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
  # Copy a policy preset (\"<name> (copy)\", never the default; a pricing copy applies nowhere yet).
  result = api_instance.create_policy_preset_duplicate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset_duplicate: #{e}"
end
```

#### Using the create_policy_preset_duplicate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetsItem>, Integer, Hash)> create_policy_preset_duplicate_with_http_info(id)

```ruby
begin
  # Copy a policy preset (\"<name> (copy)\", never the default; a pricing copy applies nowhere yet).
  data, status_code, headers = api_instance.create_policy_preset_duplicate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetsItem>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->create_policy_preset_duplicate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListPolicyPresetsItem**

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

The store's shipping / return / payment policy presets by kind, with each kind's default (X-Storefront-Id, else the default store).

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
  # The store's shipping / return / payment policy presets by kind, with each kind's default (X-Storefront-Id, else the default store).
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
  # The store's shipping / return / payment policy presets by kind, with each kind's default (X-Storefront-Id, else the default store).
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


## get_policy_general

> <GetPolicyGeneralResponse> get_policy_general

Settings that fit no policy kind: vacation mode (schedule, scope, message, auto-actions).

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
  # Settings that fit no policy kind: vacation mode (schedule, scope, message, auto-actions).
  result = api_instance.get_policy_general
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy_general: #{e}"
end
```

#### Using the get_policy_general_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPolicyGeneralResponse>, Integer, Hash)> get_policy_general_with_http_info

```ruby
begin
  # Settings that fit no policy kind: vacation mode (schedule, scope, message, auto-actions).
  data, status_code, headers = api_instance.get_policy_general_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPolicyGeneralResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy_general_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetPolicyGeneralResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_preset

> <GetPolicyPresetResponse> get_policy_preset(id)

One policy: its fields, how many listings use it, where it applies per platform account (use this policy / the marketplace's own setting / default for that marketplace) with what each marketplace receives, and its history.

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
  # One policy: its fields, how many listings use it, where it applies per platform account (use this policy / the marketplace's own setting / default for that marketplace) with what each marketplace receives, and its history.
  result = api_instance.get_policy_preset(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy_preset: #{e}"
end
```

#### Using the get_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPolicyPresetResponse>, Integer, Hash)> get_policy_preset_with_http_info(id)

```ruby
begin
  # One policy: its fields, how many listings use it, where it applies per platform account (use this policy / the marketplace's own setting / default for that marketplace) with what each marketplace receives, and its history.
  data, status_code, headers = api_instance.get_policy_preset_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPolicyPresetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->get_policy_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetPolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policy_preset_accounts

> <ListPolicyPresetAccountsResponse> list_policy_preset_accounts

The connected platform accounts a policy can apply to (\"Where this applies\").

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
  # The connected platform accounts a policy can apply to (\"Where this applies\").
  result = api_instance.list_policy_preset_accounts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_preset_accounts: #{e}"
end
```

#### Using the list_policy_preset_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyPresetAccountsResponse>, Integer, Hash)> list_policy_preset_accounts_with_http_info

```ruby
begin
  # The connected platform accounts a policy can apply to (\"Where this applies\").
  data, status_code, headers = api_instance.list_policy_preset_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyPresetAccountsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->list_policy_preset_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPolicyPresetAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policy_presets

> <ListPolicyPresetsResponse> list_policy_presets(opts)

List the seller's return / shipping / payment / pricing policy presets (no kind = the three listing kinds). meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).

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
  # List the seller's return / shipping / payment / pricing policy presets (no kind = the three listing kinds). meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
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
  # List the seller's return / shipping / payment / pricing policy presets (no kind = the three listing kinds). meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
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


## update_policy_general

> <UpdatePolicyGeneralResponse> update_policy_general(update_policy_general_request)

Save vacation mode: on now or scheduled, everywhere or chosen accounts, message, auto-actions.

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
update_policy_general_request = Crossly::UpdatePolicyGeneralRequest.new({vacation: Crossly::UpdatePolicyGeneralRequestVacation.new({enabled: false})}) # UpdatePolicyGeneralRequest | 

begin
  # Save vacation mode: on now or scheduled, everywhere or chosen accounts, message, auto-actions.
  result = api_instance.update_policy_general(update_policy_general_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_general: #{e}"
end
```

#### Using the update_policy_general_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePolicyGeneralResponse>, Integer, Hash)> update_policy_general_with_http_info(update_policy_general_request)

```ruby
begin
  # Save vacation mode: on now or scheduled, everywhere or chosen accounts, message, auto-actions.
  data, status_code, headers = api_instance.update_policy_general_with_http_info(update_policy_general_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePolicyGeneralResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_general_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_policy_general_request** | **UpdatePolicyGeneralRequest** |  |  |

### Return type

**UpdatePolicyGeneralResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_preset

> <CreatePolicyPresetResponse> update_policy_preset(id, update_policy_preset_request)

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
update_policy_preset_request = Crossly::UpdatePolicyPresetRequest.new # UpdatePolicyPresetRequest | 

begin
  # Update a policy preset.
  result = api_instance.update_policy_preset(id, update_policy_preset_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset: #{e}"
end
```

#### Using the update_policy_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePolicyPresetResponse>, Integer, Hash)> update_policy_preset_with_http_info(id, update_policy_preset_request)

```ruby
begin
  # Update a policy preset.
  data, status_code, headers = api_instance.update_policy_preset_with_http_info(id, update_policy_preset_request)
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
| **update_policy_preset_request** | **UpdatePolicyPresetRequest** |  |  |

### Return type

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_preset_application

> <UpdatePolicyPresetApplicationResponse> update_policy_preset_application(id, update_policy_preset_application_request)

Replace where a policy applies: per platform account, push (use this policy), marketplace (the marketplace's own setting, optionally an eBay business policy id) or off (pricing), and isDefault (default for that marketplace).

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
update_policy_preset_application_request = Crossly::UpdatePolicyPresetApplicationRequest.new({applications: [Crossly::UpdatePolicyPresetApplicationRequestApplications.new({platform: 'platform_example', mode: 'push'})]}) # UpdatePolicyPresetApplicationRequest | 

begin
  # Replace where a policy applies: per platform account, push (use this policy), marketplace (the marketplace's own setting, optionally an eBay business policy id) or off (pricing), and isDefault (default for that marketplace).
  result = api_instance.update_policy_preset_application(id, update_policy_preset_application_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset_application: #{e}"
end
```

#### Using the update_policy_preset_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePolicyPresetApplicationResponse>, Integer, Hash)> update_policy_preset_application_with_http_info(id, update_policy_preset_application_request)

```ruby
begin
  # Replace where a policy applies: per platform account, push (use this policy), marketplace (the marketplace's own setting, optionally an eBay business policy id) or off (pricing), and isDefault (default for that marketplace).
  data, status_code, headers = api_instance.update_policy_preset_application_with_http_info(id, update_policy_preset_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePolicyPresetApplicationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling PolicyPresetsApi->update_policy_preset_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_policy_preset_application_request** | **UpdatePolicyPresetApplicationRequest** |  |  |

### Return type

**UpdatePolicyPresetApplicationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

