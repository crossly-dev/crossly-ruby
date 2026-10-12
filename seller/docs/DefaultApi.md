# Crossly::DefaultApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cosm_designer_chain_auto_unlock**](DefaultApi.md#create_cosm_designer_chain_auto_unlock) | **POST** /v1/cosm/designer/chain-auto-unlock |  |
| [**create_cosm_designer_chain_unlock**](DefaultApi.md#create_cosm_designer_chain_unlock) | **POST** /v1/cosm/designer/chain-unlock |  |
| [**create_cosm_designer_materialise**](DefaultApi.md#create_cosm_designer_materialise) | **POST** /v1/cosm/designer/materialise |  |
| [**create_cosm_designer_materialise_confirm**](DefaultApi.md#create_cosm_designer_materialise_confirm) | **POST** /v1/cosm/designer/materialise/confirm |  |
| [**create_cosm_designer_materialise_release**](DefaultApi.md#create_cosm_designer_materialise_release) | **POST** /v1/cosm/designer/materialise/release |  |
| [**create_cosm_designer_submit_for_review**](DefaultApi.md#create_cosm_designer_submit_for_review) | **POST** /v1/cosm/designer/submit-for-review |  |
| [**create_cosm_designer_term**](DefaultApi.md#create_cosm_designer_term) | **POST** /v1/cosm/designer/terms |  |
| [**get_cosm_designer_copy_state**](DefaultApi.md#get_cosm_designer_copy_state) | **GET** /v1/cosm/designer/copy-state |  |
| [**get_cosm_designer_earning**](DefaultApi.md#get_cosm_designer_earning) | **GET** /v1/cosm/designer/earnings |  |
| [**get_cosm_designer_term**](DefaultApi.md#get_cosm_designer_term) | **GET** /v1/cosm/designer/terms |  |
| [**get_listing_variation_group**](DefaultApi.md#get_listing_variation_group) | **GET** /v1/listings/{id}/variation-group |  |
| [**get_market_metal_spot_history**](DefaultApi.md#get_market_metal_spot_history) | **GET** /v1/market/metals/spot/history |  |
| [**get_market_product**](DefaultApi.md#get_market_product) | **GET** /v1/market/products/{id} |  |
| [**get_market_product_related**](DefaultApi.md#get_market_product_related) | **GET** /v1/market/products/{id}/related |  |
| [**get_market_scrap_quote**](DefaultApi.md#get_market_scrap_quote) | **GET** /v1/market/scrap/quote |  |
| [**get_market_variant_book**](DefaultApi.md#get_market_variant_book) | **GET** /v1/market/variants/{id}/book |  |
| [**get_variation_group**](DefaultApi.md#get_variation_group) | **GET** /v1/variation-groups/{id} |  |
| [**get_variation_group_publish_plan**](DefaultApi.md#get_variation_group_publish_plan) | **GET** /v1/variation-groups/{id}/publish-plan |  |
| [**list_market_bullion**](DefaultApi.md#list_market_bullion) | **GET** /v1/market/bullion |  |
| [**list_market_graders**](DefaultApi.md#list_market_graders) | **GET** /v1/market/graders |  |
| [**list_market_metal_spot**](DefaultApi.md#list_market_metal_spot) | **GET** /v1/market/metals/spot |  |
| [**list_market_products**](DefaultApi.md#list_market_products) | **GET** /v1/market/products |  |
| [**list_market_variant_tiers**](DefaultApi.md#list_market_variant_tiers) | **GET** /v1/market/variants/{id}/tiers |  |
| [**list_variation_groups**](DefaultApi.md#list_variation_groups) | **GET** /v1/variation-groups |  |


## create_cosm_designer_chain_auto_unlock

> <CreateCosmDesignerChainAutoUnlockResponse> create_cosm_designer_chain_auto_unlock(request_body)



Opt a design in or out of the free chain unlock a popular limited design earns (on by default). Designer-only. Answers the popularity of the design toward the bar.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_chain_auto_unlock(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_chain_auto_unlock: #{e}"
end
```

#### Using the create_cosm_designer_chain_auto_unlock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerChainAutoUnlockResponse>, Integer, Hash)> create_cosm_designer_chain_auto_unlock_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_chain_auto_unlock_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerChainAutoUnlockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_chain_auto_unlock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerChainAutoUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_chain_unlock

> <CreateCosmDesignerChainUnlockResponse> create_cosm_designer_chain_unlock(request_body)



Burn COSM to make a design mintable on chain. Designer-only and idempotent: paying twice is impossible, and a second call returns the existing unlock without charging. The fee is DESTROYED rather than collected. Limited editions only. Once unlocked, any holder may take their own copy on chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_chain_unlock(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_chain_unlock: #{e}"
end
```

#### Using the create_cosm_designer_chain_unlock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerChainUnlockResponse>, Integer, Hash)> create_cosm_designer_chain_unlock_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_chain_unlock_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerChainUnlockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_chain_unlock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerChainUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_materialise

> <CreateCosmDesignerMaterialiseResponse> create_cosm_designer_materialise(request_body)



Lock a copy and return an UNSIGNED Metaplex Core mint for the holder to sign. One call: it resolves the designer royalty, locks the copy, publishes immutable content-addressed metadata and builds the transaction — so a lock is never taken without a transaction to go with it, and a failure after the lock releases it. Does NOT void the copy; call confirm once the chain reaches FINALIZED commitment. Every royalty recipient needs a connected wallet first, and the designer must have unlocked the design.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_materialise(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise: #{e}"
end
```

#### Using the create_cosm_designer_materialise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerMaterialiseResponse>, Integer, Hash)> create_cosm_designer_materialise_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_materialise_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerMaterialiseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerMaterialiseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_materialise_confirm

> <CreateCosmDesignerMaterialiseConfirmResponse> create_cosm_designer_materialise_confirm(request_body)



Record a confirmed mint and void the in-world copy, in one transaction. The caller MUST have verified the transaction at finalized commitment first — an NFT recorded against a transaction that never landed cannot be recalled, and the copy it voided is gone. Idempotent on an already-confirmed request.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_materialise_confirm(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise_confirm: #{e}"
end
```

#### Using the create_cosm_designer_materialise_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerMaterialiseConfirmResponse>, Integer, Hash)> create_cosm_designer_materialise_confirm_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_materialise_confirm_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerMaterialiseConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerMaterialiseConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_materialise_release

> <CreateWorldJobShiftReleaseResponse> create_cosm_designer_materialise_release(request_body)



Release a mint lock that was never signed. The ordinary outcome of somebody closing a wallet prompt, and it leaves the copy exactly as it was. Refuses a request that has already minted, because releasing one would unlock a copy that is on chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_materialise_release(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise_release: #{e}"
end
```

#### Using the create_cosm_designer_materialise_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldJobShiftReleaseResponse>, Integer, Hash)> create_cosm_designer_materialise_release_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_materialise_release_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldJobShiftReleaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_materialise_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateWorldJobShiftReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_submit_for_review

> <CreateCosmDesignerSubmitForReviewResponse> create_cosm_designer_submit_for_review(request_body)



Submit a user-authored design for moderation. Designer-only, and refuses a design with no preview image HERE rather than at approval so the designer learns what is missing while they can still fix it. Submitting twice returns the existing pending review instead of queueing a second one — a moderator facing two reviews of one piece does not know which they are deciding. A design already on sale is refused.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_submit_for_review(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_submit_for_review: #{e}"
end
```

#### Using the create_cosm_designer_submit_for_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerSubmitForReviewResponse>, Integer, Hash)> create_cosm_designer_submit_for_review_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_submit_for_review_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerSubmitForReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_submit_for_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerSubmitForReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cosm_designer_term

> <CreateCosmDesignerTermResponse> create_cosm_designer_term(request_body)



Publish terms for a design. Never edits: every change is a new version, and a copy sold under an earlier one keeps those terms forever. Only the designer may call it. Collaborator shares are of the ROYALTY rather than the sale price and may total at most 100%, with the remainder staying with the designer; a total above 100% is refused rather than scaled down.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_cosm_designer_term(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_term: #{e}"
end
```

#### Using the create_cosm_designer_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerTermResponse>, Integer, Hash)> create_cosm_designer_term_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_cosm_designer_term_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerTermResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->create_cosm_designer_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateCosmDesignerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cosm_designer_copy_state

> <GetCosmDesignerCopyStateResponse> get_cosm_designer_copy_state(ownership_id)



Where a copy currently is: held (in-world, wearable, listable for COSM), minting (locked while a mint is in flight) or materialised (an NFT in the holder wallet). A copy is in exactly one of these, never two.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
ownership_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.get_cosm_designer_copy_state(ownership_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_copy_state: #{e}"
end
```

#### Using the get_cosm_designer_copy_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmDesignerCopyStateResponse>, Integer, Hash)> get_cosm_designer_copy_state_with_http_info(ownership_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cosm_designer_copy_state_with_http_info(ownership_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmDesignerCopyStateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_copy_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_id** | **String** |  |  |

### Return type

**GetCosmDesignerCopyStateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_designer_earning

> <GetCosmDesignerEarningResponse> get_cosm_designer_earning(subject_id)



What a designer has earned, in both denominations. COSM royalties come from COSM-priced sales; cash earnings come from cash-priced sales and are funded by the buyer payment itself. The two are never converted into one another, and COSM is never cashed out.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
subject_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.get_cosm_designer_earning(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_earning: #{e}"
end
```

#### Using the get_cosm_designer_earning_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmDesignerEarningResponse>, Integer, Hash)> get_cosm_designer_earning_with_http_info(subject_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cosm_designer_earning_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmDesignerEarningResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_earning_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

**GetCosmDesignerEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_designer_term

> <GetCosmDesignerTermResponse> get_cosm_designer_term(cosmetic_id)



The published terms for a design: resale, price window, secondary royalty and collaborator splits. Also reports the platform rates a designer does not control, and whether the terms are enforceable on chain — inside Crossly every rule is enforced, but a third-party marketplace honours a royalty voluntarily at best.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
cosmetic_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.get_cosm_designer_term(cosmetic_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_term: #{e}"
end
```

#### Using the get_cosm_designer_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmDesignerTermResponse>, Integer, Hash)> get_cosm_designer_term_with_http_info(cosmetic_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cosm_designer_term_with_http_info(cosmetic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmDesignerTermResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_cosm_designer_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cosmetic_id** | **String** |  |  |

### Return type

**GetCosmDesignerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_variation_group

> <GetListingVariationGroupResponse> get_listing_variation_group(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_listing_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_listing_variation_group: #{e}"
end
```

#### Using the get_listing_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListingVariationGroupResponse>, Integer, Hash)> get_listing_variation_group_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListingVariationGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_listing_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetListingVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_metal_spot_history

> <GetMarketMetalSpotHistoryResponse> get_market_metal_spot_history



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.get_market_metal_spot_history
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_metal_spot_history: #{e}"
end
```

#### Using the get_market_metal_spot_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketMetalSpotHistoryResponse>, Integer, Hash)> get_market_metal_spot_history_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_metal_spot_history_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketMetalSpotHistoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_metal_spot_history_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMarketMetalSpotHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_product

> <GetMarketProductResponse> get_market_product(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_market_product(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product: #{e}"
end
```

#### Using the get_market_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketProductResponse>, Integer, Hash)> get_market_product_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketProductResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetMarketProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_product_related

> <GetMarketProductRelatedResponse> get_market_product_related(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_market_product_related(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product_related: #{e}"
end
```

#### Using the get_market_product_related_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketProductRelatedResponse>, Integer, Hash)> get_market_product_related_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_product_related_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketProductRelatedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_product_related_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetMarketProductRelatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_scrap_quote

> <GetMarketScrapQuoteResponse> get_market_scrap_quote



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.get_market_scrap_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_scrap_quote: #{e}"
end
```

#### Using the get_market_scrap_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketScrapQuoteResponse>, Integer, Hash)> get_market_scrap_quote_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_scrap_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketScrapQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_scrap_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMarketScrapQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market_variant_book

> <GetMarketVariantBookResponse> get_market_variant_book(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_market_variant_book(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_variant_book: #{e}"
end
```

#### Using the get_market_variant_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarketVariantBookResponse>, Integer, Hash)> get_market_variant_book_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_market_variant_book_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarketVariantBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_market_variant_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetMarketVariantBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variation_group

> <ListVariationGroupsItem> get_variation_group(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_variation_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group: #{e}"
end
```

#### Using the get_variation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVariationGroupsItem>, Integer, Hash)> get_variation_group_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_variation_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVariationGroupsItem>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListVariationGroupsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variation_group_publish_plan

> <GetVariationGroupPublishPlanResponse> get_variation_group_publish_plan(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.get_variation_group_publish_plan(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_publish_plan: #{e}"
end
```

#### Using the get_variation_group_publish_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVariationGroupPublishPlanResponse>, Integer, Hash)> get_variation_group_publish_plan_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_variation_group_publish_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVariationGroupPublishPlanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->get_variation_group_publish_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetVariationGroupPublishPlanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_bullion

> <ListMarketBullionResponse> list_market_bullion



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_bullion
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_bullion: #{e}"
end
```

#### Using the list_market_bullion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMarketBullionResponse>, Integer, Hash)> list_market_bullion_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_bullion_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMarketBullionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_bullion_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListMarketBullionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_graders

> <ListMarketGradersResponse> list_market_graders



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_graders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_graders: #{e}"
end
```

#### Using the list_market_graders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMarketGradersResponse>, Integer, Hash)> list_market_graders_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_graders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMarketGradersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_graders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListMarketGradersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_metal_spot

> <ListMarketMetalSpotResponse> list_market_metal_spot



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_metal_spot
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_metal_spot: #{e}"
end
```

#### Using the list_market_metal_spot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMarketMetalSpotResponse>, Integer, Hash)> list_market_metal_spot_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_metal_spot_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMarketMetalSpotResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_metal_spot_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListMarketMetalSpotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_products

> <ListMarketProductsResponse> list_market_products



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_market_products
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_products: #{e}"
end
```

#### Using the list_market_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMarketProductsResponse>, Integer, Hash)> list_market_products_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_products_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMarketProductsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_products_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListMarketProductsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_market_variant_tiers

> <ListMarketVariantTiersResponse> list_market_variant_tiers(id)



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new
id = 'id_example' # String | 

begin
  
  result = api_instance.list_market_variant_tiers(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_variant_tiers: #{e}"
end
```

#### Using the list_market_variant_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMarketVariantTiersResponse>, Integer, Hash)> list_market_variant_tiers_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_market_variant_tiers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMarketVariantTiersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_market_variant_tiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListMarketVariantTiersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_variation_groups

> <ListVariationGroupsResponse> list_variation_groups



### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DefaultApi.new

begin
  
  result = api_instance.list_variation_groups
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_variation_groups: #{e}"
end
```

#### Using the list_variation_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVariationGroupsResponse>, Integer, Hash)> list_variation_groups_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.list_variation_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVariationGroupsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DefaultApi->list_variation_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListVariationGroupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

