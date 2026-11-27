# Crossly::StorefrontsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_storefront**](StorefrontsApi.md#create_storefront) | **POST** /v1/storefronts | Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default. |
| [**create_storefront_listing_move**](StorefrontsApi.md#create_storefront_listing_move) | **POST** /v1/storefronts/{id}/listings/{platformListingId}/move | Move a Crossly listing (by its platform_listing id) into this store. |
| [**create_storefront_onboarding_skip**](StorefrontsApi.md#create_storefront_onboarding_skip) | **POST** /v1/storefronts/onboarding/skip | Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent. |
| [**create_storefront_onboarding_suggest**](StorefrontsApi.md#create_storefront_onboarding_suggest) | **POST** /v1/storefronts/onboarding/suggest | Suggest another generated store name with a free matching slug. |
| [**create_storefront_policy_from_term**](StorefrontsApi.md#create_storefront_policy_from_term) | **POST** /v1/storefronts/{id}/policies/from-terms | Create a policy preset from this store&#39;s current terms (body: { kind: &#39;shipping&#39; | &#39;return&#39; | &#39;payment&#39; }) and assign it to the store. Returns { preset, policies }. |
| [**create_storefront_policy_use_shared**](StorefrontsApi.md#create_storefront_policy_use_shared) | **POST** /v1/storefronts/{id}/policies/use-shared | Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy). |
| [**create_storefront_publish**](StorefrontsApi.md#create_storefront_publish) | **POST** /v1/storefronts/{id}/publish | Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set. |
| [**create_storefront_section_by_id**](StorefrontsApi.md#create_storefront_section_by_id) | **POST** /v1/storefronts/{id}/sections | Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations). |
| [**delete_storefront**](StorefrontsApi.md#delete_storefront) | **DELETE** /v1/storefronts/{id} | Archive a store. If it was the default, your oldest remaining store becomes the default. |
| [**delete_storefront_section_by_section_id**](StorefrontsApi.md#delete_storefront_section_by_section_id) | **DELETE** /v1/storefronts/{id}/sections/{sectionId} | Remove a section from a store. Listings on a removed shelf stay live. |
| [**delete_storefront_team_access**](StorefrontsApi.md#delete_storefront_team_access) | **DELETE** /v1/storefronts/team-access | Revoke a team member&#39;s access to one store (or their all-stores grant). |
| [**get_hub_setup**](StorefrontsApi.md#get_hub_setup) | **GET** /v1/hub/setup/{section} | A Hub section&#39;s setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored. |
| [**get_storefront_by_id**](StorefrontsApi.md#get_storefront_by_id) | **GET** /v1/storefronts/{id} | One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt. |
| [**get_storefront_onboarding**](StorefrontsApi.md#get_storefront_onboarding) | **GET** /v1/storefronts/onboarding | Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live. |
| [**get_storefront_policy**](StorefrontsApi.md#get_storefront_policy) | **GET** /v1/storefronts/{id}/policies | A store&#39;s policies: per kind (shipping, return, payment) the preset the store picked (presetId, null &#x3D; your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body). |
| [**get_storefront_requirement**](StorefrontsApi.md#get_storefront_requirement) | **GET** /v1/storefronts/{id}/requirements | What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each. |
| [**get_storefront_setting**](StorefrontsApi.md#get_storefront_setting) | **GET** /v1/storefronts/{id}/settings | A store&#39;s settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store&#39;s preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields. |
| [**get_storefront_slug_available**](StorefrontsApi.md#get_storefront_slug_available) | **GET** /v1/storefronts/slug-available | Is this store slug free? Checks shape, reserved words, current slugs and retired ones. |
| [**list_storefront_sections_by_id**](StorefrontsApi.md#list_storefront_sections_by_id) | **GET** /v1/storefronts/{id}/sections | A store&#39;s sections in display order. |
| [**list_storefront_team_access**](StorefrontsApi.md#list_storefront_team_access) | **GET** /v1/storefronts/team-access | Every active per-store grant you have made to team members (storefrontId null &#x3D; all stores). |
| [**list_storefronts**](StorefrontsApi.md#list_storefronts) | **GET** /v1/storefronts | Your stores (default first). includeArchived&#x3D;true adds archived ones. |
| [**update_storefront_by_id**](StorefrontsApi.md#update_storefront_by_id) | **PATCH** /v1/storefronts/{id} | Rename a store. Never changes the slug or your @handle. |
| [**update_storefront_default**](StorefrontsApi.md#update_storefront_default) | **PUT** /v1/storefronts/{id}/default | Make this store your default (where a Crossly publish with no storefrontId lands). |
| [**update_storefront_policy**](StorefrontsApi.md#update_storefront_policy) | **PUT** /v1/storefronts/{id}/policies | Set a store&#39;s policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted &#x3D; unchanged. Listings in the store with no preset of their own follow these. |
| [**update_storefront_section_by_section_id**](StorefrontsApi.md#update_storefront_section_by_section_id) | **PATCH** /v1/storefronts/{id}/sections/{sectionId} | Rename, show/hide, refill (listings shelves) or reconfigure one section of a store. |
| [**update_storefront_section_reorder_by_id**](StorefrontsApi.md#update_storefront_section_reorder_by_id) | **PUT** /v1/storefronts/{id}/sections/reorder | Set a store&#39;s section order in one atomic call: every section id, top to bottom. |
| [**update_storefront_setting**](StorefrontsApi.md#update_storefront_setting) | **PUT** /v1/storefronts/{id}/settings | Update a store&#39;s settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store&#39;s presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store&#39;s preset. |
| [**update_storefront_slug**](StorefrontsApi.md#update_storefront_slug) | **PUT** /v1/storefronts/{id}/slug | Change a store&#39;s slug. The old slug keeps redirecting to the store. |
| [**update_storefront_status**](StorefrontsApi.md#update_storefront_status) | **PUT** /v1/storefronts/{id}/status | Set a store&#39;s status: draft | live | paused | archived. A live store is public once it has a live listing. |
| [**update_storefront_team_access**](StorefrontsApi.md#update_storefront_team_access) | **PUT** /v1/storefronts/team-access | Grant (or replace) a team member&#39;s access to one store, or to every store (storefrontId null), with scopes. |


## create_storefront

> <StorefrontResponse> create_storefront

Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.
  result = api_instance.create_storefront
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront: #{e}"
end
```

#### Using the create_storefront_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> create_storefront_with_http_info

```ruby
begin
  # Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.
  data, status_code, headers = api_instance.create_storefront_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_listing_move

> <OkResponse> create_storefront_listing_move(id, platform_listing_id)

Move a Crossly listing (by its platform_listing id) into this store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Move a Crossly listing (by its platform_listing id) into this store.
  result = api_instance.create_storefront_listing_move(id, platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_listing_move: #{e}"
end
```

#### Using the create_storefront_listing_move_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_storefront_listing_move_with_http_info(id, platform_listing_id)

```ruby
begin
  # Move a Crossly listing (by its platform_listing id) into this store.
  data, status_code, headers = api_instance.create_storefront_listing_move_with_http_info(id, platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_listing_move_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_onboarding_skip

> <StorefrontResponse> create_storefront_onboarding_skip

Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.
  result = api_instance.create_storefront_onboarding_skip
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_onboarding_skip: #{e}"
end
```

#### Using the create_storefront_onboarding_skip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> create_storefront_onboarding_skip_with_http_info

```ruby
begin
  # Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.
  data, status_code, headers = api_instance.create_storefront_onboarding_skip_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_onboarding_skip_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_onboarding_suggest

> <CreateStorefrontOnboardingSuggestResponse> create_storefront_onboarding_suggest

Suggest another generated store name with a free matching slug.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Suggest another generated store name with a free matching slug.
  result = api_instance.create_storefront_onboarding_suggest
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_onboarding_suggest: #{e}"
end
```

#### Using the create_storefront_onboarding_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStorefrontOnboardingSuggestResponse>, Integer, Hash)> create_storefront_onboarding_suggest_with_http_info

```ruby
begin
  # Suggest another generated store name with a free matching slug.
  data, status_code, headers = api_instance.create_storefront_onboarding_suggest_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStorefrontOnboardingSuggestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_onboarding_suggest_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateStorefrontOnboardingSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_policy_from_term

> <CreateStorefrontPolicyFromTermResponse> create_storefront_policy_from_term(id)

Create a policy preset from this store's current terms (body: { kind: 'shipping' | 'return' | 'payment' }) and assign it to the store. Returns { preset, policies }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Create a policy preset from this store's current terms (body: { kind: 'shipping' | 'return' | 'payment' }) and assign it to the store. Returns { preset, policies }.
  result = api_instance.create_storefront_policy_from_term(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_policy_from_term: #{e}"
end
```

#### Using the create_storefront_policy_from_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStorefrontPolicyFromTermResponse>, Integer, Hash)> create_storefront_policy_from_term_with_http_info(id)

```ruby
begin
  # Create a policy preset from this store's current terms (body: { kind: 'shipping' | 'return' | 'payment' }) and assign it to the store. Returns { preset, policies }.
  data, status_code, headers = api_instance.create_storefront_policy_from_term_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStorefrontPolicyFromTermResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_policy_from_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateStorefrontPolicyFromTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_policy_use_shared

> <UpdateStorefrontSettingResponse> create_storefront_policy_use_shared(id)

Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).
  result = api_instance.create_storefront_policy_use_shared(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_policy_use_shared: #{e}"
end
```

#### Using the create_storefront_policy_use_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateStorefrontSettingResponse>, Integer, Hash)> create_storefront_policy_use_shared_with_http_info(id)

```ruby
begin
  # Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).
  data, status_code, headers = api_instance.create_storefront_policy_use_shared_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateStorefrontSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_policy_use_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_publish

> <StorefrontResponse> create_storefront_publish(id)

Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.
  result = api_instance.create_storefront_publish(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_publish: #{e}"
end
```

#### Using the create_storefront_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> create_storefront_publish_with_http_info(id)

```ruby
begin
  # Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.
  data, status_code, headers = api_instance.create_storefront_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_storefront_section_by_id

> <StorefrontSectionResponse> create_storefront_section_by_id(id)

Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).
  result = api_instance.create_storefront_section_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_section_by_id: #{e}"
end
```

#### Using the create_storefront_section_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontSectionResponse>, Integer, Hash)> create_storefront_section_by_id_with_http_info(id)

```ruby
begin
  # Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).
  data, status_code, headers = api_instance.create_storefront_section_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontSectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->create_storefront_section_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontSectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_storefront

> <StorefrontResponse> delete_storefront(id)

Archive a store. If it was the default, your oldest remaining store becomes the default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Archive a store. If it was the default, your oldest remaining store becomes the default.
  result = api_instance.delete_storefront(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront: #{e}"
end
```

#### Using the delete_storefront_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> delete_storefront_with_http_info(id)

```ruby
begin
  # Archive a store. If it was the default, your oldest remaining store becomes the default.
  data, status_code, headers = api_instance.delete_storefront_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_storefront_section_by_section_id

> <OkResponse> delete_storefront_section_by_section_id(id, section_id)

Remove a section from a store. Listings on a removed shelf stay live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 
section_id = 'section_id_example' # String | 

begin
  # Remove a section from a store. Listings on a removed shelf stay live.
  result = api_instance.delete_storefront_section_by_section_id(id, section_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront_section_by_section_id: #{e}"
end
```

#### Using the delete_storefront_section_by_section_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_storefront_section_by_section_id_with_http_info(id, section_id)

```ruby
begin
  # Remove a section from a store. Listings on a removed shelf stay live.
  data, status_code, headers = api_instance.delete_storefront_section_by_section_id_with_http_info(id, section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront_section_by_section_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **section_id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_storefront_team_access

> <OkResponse> delete_storefront_team_access

Revoke a team member's access to one store (or their all-stores grant).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Revoke a team member's access to one store (or their all-stores grant).
  result = api_instance.delete_storefront_team_access
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront_team_access: #{e}"
end
```

#### Using the delete_storefront_team_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_storefront_team_access_with_http_info

```ruby
begin
  # Revoke a team member's access to one store (or their all-stores grant).
  data, status_code, headers = api_instance.delete_storefront_team_access_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->delete_storefront_team_access_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hub_setup

> <GetHubSetupResponse> get_hub_setup(section)

A Hub section's setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
section = 'storefront' # String | 

begin
  # A Hub section's setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.
  result = api_instance.get_hub_setup(section)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_hub_setup: #{e}"
end
```

#### Using the get_hub_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHubSetupResponse>, Integer, Hash)> get_hub_setup_with_http_info(section)

```ruby
begin
  # A Hub section's setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.
  data, status_code, headers = api_instance.get_hub_setup_with_http_info(section)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHubSetupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_hub_setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section** | **String** |  |  |

### Return type

**GetHubSetupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_by_id

> <StorefrontResponse> get_storefront_by_id(id)

One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.
  result = api_instance.get_storefront_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_by_id: #{e}"
end
```

#### Using the get_storefront_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> get_storefront_by_id_with_http_info(id)

```ruby
begin
  # One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.
  data, status_code, headers = api_instance.get_storefront_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_onboarding

> <GetStorefrontOnboardingResponse> get_storefront_onboarding

Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.
  result = api_instance.get_storefront_onboarding
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_onboarding: #{e}"
end
```

#### Using the get_storefront_onboarding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontOnboardingResponse>, Integer, Hash)> get_storefront_onboarding_with_http_info

```ruby
begin
  # Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.
  data, status_code, headers = api_instance.get_storefront_onboarding_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontOnboardingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_onboarding_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetStorefrontOnboardingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_policy

> <GetStorefrontPolicyResponse> get_storefront_policy(id)

A store's policies: per kind (shipping, return, payment) the preset the store picked (presetId, null = your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # A store's policies: per kind (shipping, return, payment) the preset the store picked (presetId, null = your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).
  result = api_instance.get_storefront_policy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_policy: #{e}"
end
```

#### Using the get_storefront_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontPolicyResponse>, Integer, Hash)> get_storefront_policy_with_http_info(id)

```ruby
begin
  # A store's policies: per kind (shipping, return, payment) the preset the store picked (presetId, null = your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).
  data, status_code, headers = api_instance.get_storefront_policy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontPolicyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetStorefrontPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_requirement

> <GetStorefrontRequirementResponse> get_storefront_requirement(id)

What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.
  result = api_instance.get_storefront_requirement(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_requirement: #{e}"
end
```

#### Using the get_storefront_requirement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontRequirementResponse>, Integer, Hash)> get_storefront_requirement_with_http_info(id)

```ruby
begin
  # What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.
  data, status_code, headers = api_instance.get_storefront_requirement_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontRequirementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_requirement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetStorefrontRequirementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_setting

> <GetStorefrontSettingResponse> get_storefront_setting(id)

A store's settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store's preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # A store's settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store's preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.
  result = api_instance.get_storefront_setting(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_setting: #{e}"
end
```

#### Using the get_storefront_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontSettingResponse>, Integer, Hash)> get_storefront_setting_with_http_info(id)

```ruby
begin
  # A store's settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store's preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.
  data, status_code, headers = api_instance.get_storefront_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storefront_slug_available

> <GetStorefrontSlugAvailableResponse> get_storefront_slug_available

Is this store slug free? Checks shape, reserved words, current slugs and retired ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Is this store slug free? Checks shape, reserved words, current slugs and retired ones.
  result = api_instance.get_storefront_slug_available
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_slug_available: #{e}"
end
```

#### Using the get_storefront_slug_available_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontSlugAvailableResponse>, Integer, Hash)> get_storefront_slug_available_with_http_info

```ruby
begin
  # Is this store slug free? Checks shape, reserved words, current slugs and retired ones.
  data, status_code, headers = api_instance.get_storefront_slug_available_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontSlugAvailableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->get_storefront_slug_available_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetStorefrontSlugAvailableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_storefront_sections_by_id

> <StorefrontResponse4> list_storefront_sections_by_id(id)

A store's sections in display order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # A store's sections in display order.
  result = api_instance.list_storefront_sections_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefront_sections_by_id: #{e}"
end
```

#### Using the list_storefront_sections_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse4>, Integer, Hash)> list_storefront_sections_by_id_with_http_info(id)

```ruby
begin
  # A store's sections in display order.
  data, status_code, headers = api_instance.list_storefront_sections_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse4>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefront_sections_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_storefront_team_access

> <ListStorefrontTeamAccessResponse> list_storefront_team_access

Every active per-store grant you have made to team members (storefrontId null = all stores).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Every active per-store grant you have made to team members (storefrontId null = all stores).
  result = api_instance.list_storefront_team_access
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefront_team_access: #{e}"
end
```

#### Using the list_storefront_team_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStorefrontTeamAccessResponse>, Integer, Hash)> list_storefront_team_access_with_http_info

```ruby
begin
  # Every active per-store grant you have made to team members (storefrontId null = all stores).
  data, status_code, headers = api_instance.list_storefront_team_access_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStorefrontTeamAccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefront_team_access_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListStorefrontTeamAccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_storefronts

> <ListStorefrontsResponse> list_storefronts

Your stores (default first). includeArchived=true adds archived ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Your stores (default first). includeArchived=true adds archived ones.
  result = api_instance.list_storefronts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefronts: #{e}"
end
```

#### Using the list_storefronts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStorefrontsResponse>, Integer, Hash)> list_storefronts_with_http_info

```ruby
begin
  # Your stores (default first). includeArchived=true adds archived ones.
  data, status_code, headers = api_instance.list_storefronts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStorefrontsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->list_storefronts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListStorefrontsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_by_id

> <StorefrontResponse> update_storefront_by_id(id)

Rename a store. Never changes the slug or your @handle.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Rename a store. Never changes the slug or your @handle.
  result = api_instance.update_storefront_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_by_id: #{e}"
end
```

#### Using the update_storefront_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> update_storefront_by_id_with_http_info(id)

```ruby
begin
  # Rename a store. Never changes the slug or your @handle.
  data, status_code, headers = api_instance.update_storefront_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_default

> <StorefrontResponse> update_storefront_default(id)

Make this store your default (where a Crossly publish with no storefrontId lands).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Make this store your default (where a Crossly publish with no storefrontId lands).
  result = api_instance.update_storefront_default(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_default: #{e}"
end
```

#### Using the update_storefront_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> update_storefront_default_with_http_info(id)

```ruby
begin
  # Make this store your default (where a Crossly publish with no storefrontId lands).
  data, status_code, headers = api_instance.update_storefront_default_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_policy

> <GetStorefrontPolicyResponse> update_storefront_policy(id)

Set a store's policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted = unchanged. Listings in the store with no preset of their own follow these.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Set a store's policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted = unchanged. Listings in the store with no preset of their own follow these.
  result = api_instance.update_storefront_policy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_policy: #{e}"
end
```

#### Using the update_storefront_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorefrontPolicyResponse>, Integer, Hash)> update_storefront_policy_with_http_info(id)

```ruby
begin
  # Set a store's policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted = unchanged. Listings in the store with no preset of their own follow these.
  data, status_code, headers = api_instance.update_storefront_policy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorefrontPolicyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetStorefrontPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_section_by_section_id

> <StorefrontSectionResponse> update_storefront_section_by_section_id(id, section_id)

Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 
section_id = 'section_id_example' # String | 

begin
  # Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.
  result = api_instance.update_storefront_section_by_section_id(id, section_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_section_by_section_id: #{e}"
end
```

#### Using the update_storefront_section_by_section_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontSectionResponse>, Integer, Hash)> update_storefront_section_by_section_id_with_http_info(id, section_id)

```ruby
begin
  # Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.
  data, status_code, headers = api_instance.update_storefront_section_by_section_id_with_http_info(id, section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontSectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_section_by_section_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **section_id** | **String** |  |  |

### Return type

**StorefrontSectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_section_reorder_by_id

> <StorefrontResponse4> update_storefront_section_reorder_by_id(id)

Set a store's section order in one atomic call: every section id, top to bottom.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Set a store's section order in one atomic call: every section id, top to bottom.
  result = api_instance.update_storefront_section_reorder_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_section_reorder_by_id: #{e}"
end
```

#### Using the update_storefront_section_reorder_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse4>, Integer, Hash)> update_storefront_section_reorder_by_id_with_http_info(id)

```ruby
begin
  # Set a store's section order in one atomic call: every section id, top to bottom.
  data, status_code, headers = api_instance.update_storefront_section_reorder_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse4>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_section_reorder_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_setting

> <UpdateStorefrontSettingResponse> update_storefront_setting(id)

Update a store's settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store's presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store's preset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Update a store's settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store's presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store's preset.
  result = api_instance.update_storefront_setting(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_setting: #{e}"
end
```

#### Using the update_storefront_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateStorefrontSettingResponse>, Integer, Hash)> update_storefront_setting_with_http_info(id)

```ruby
begin
  # Update a store's settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store's presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store's preset.
  data, status_code, headers = api_instance.update_storefront_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateStorefrontSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_slug

> <StorefrontResponse> update_storefront_slug(id)

Change a store's slug. The old slug keeps redirecting to the store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Change a store's slug. The old slug keeps redirecting to the store.
  result = api_instance.update_storefront_slug(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_slug: #{e}"
end
```

#### Using the update_storefront_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> update_storefront_slug_with_http_info(id)

```ruby
begin
  # Change a store's slug. The old slug keeps redirecting to the store.
  data, status_code, headers = api_instance.update_storefront_slug_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_status

> <StorefrontResponse> update_storefront_status(id)

Set a store's status: draft | live | paused | archived. A live store is public once it has a live listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new
id = 'id_example' # String | 

begin
  # Set a store's status: draft | live | paused | archived. A live store is public once it has a live listing.
  result = api_instance.update_storefront_status(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_status: #{e}"
end
```

#### Using the update_storefront_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorefrontResponse>, Integer, Hash)> update_storefront_status_with_http_info(id)

```ruby
begin
  # Set a store's status: draft | live | paused | archived. A live store is public once it has a live listing.
  data, status_code, headers = api_instance.update_storefront_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorefrontResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_storefront_team_access

> <OkResponse> update_storefront_team_access

Grant (or replace) a team member's access to one store, or to every store (storefrontId null), with scopes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::StorefrontsApi.new

begin
  # Grant (or replace) a team member's access to one store, or to every store (storefrontId null), with scopes.
  result = api_instance.update_storefront_team_access
  p result
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_team_access: #{e}"
end
```

#### Using the update_storefront_team_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> update_storefront_team_access_with_http_info

```ruby
begin
  # Grant (or replace) a team member's access to one store, or to every store (storefrontId null), with scopes.
  data, status_code, headers = api_instance.update_storefront_team_access_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling StorefrontsApi->update_storefront_team_access_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

