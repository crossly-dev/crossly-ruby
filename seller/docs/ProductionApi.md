# Crossly::ProductionApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_production_candidate_accept**](ProductionApi.md#create_production_candidate_accept) | **POST** /v1/production/candidates/{id}/accept | Accept a graduated design&#39;s production terms (edition size, cost, holder access). |
| [**create_production_candidate_po**](ProductionApi.md#create_production_candidate_po) | **POST** /v1/production/candidates/{id}/po | Ops: open a purchase order for a candidate. Admin PAT only. |
| [**create_production_candidate_vote**](ProductionApi.md#create_production_candidate_vote) | **POST** /v1/production/candidates/{id}/vote | Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly. |
| [**create_production_design_brief**](ProductionApi.md#create_production_design_brief) | **POST** /v1/production/designs/{cosmeticId}/brief | Set a design&#39;s production brief (materials, finish, box, reference images). |
| [**create_production_design_consent**](ProductionApi.md#create_production_design_consent) | **POST** /v1/production/designs/{cosmeticId}/consent | Opt a design in or out of physical production. |
| [**create_production_design_spec**](ProductionApi.md#create_production_design_spec) | **POST** /v1/production/designs/{cosmeticId}/spec | Set a design&#39;s production spec (category, materials, complexity, packaging). |
| [**create_production_estimate**](ProductionApi.md#create_production_estimate) | **POST** /v1/production/estimate | Estimate a run&#39;s landed cost from a spec + edition size (overshoots for safety). |
| [**create_production_run_purchase**](ProductionApi.md#create_production_run_purchase) | **POST** /v1/production/runs/{id}/purchase | Buy a limited-edition unit of a physical run (holder pricing applies). |
| [**create_receipt_relist**](ProductionApi.md#create_receipt_relist) | **POST** /v1/receipts/{id}/relist | Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance. |
| [**get_production_ballot**](ProductionApi.md#get_production_ballot) | **GET** /v1/production/ballot | The ballot: designs waiting for a physical run, most backed first, and whether you may vote. |
| [**get_production_candidate**](ProductionApi.md#get_production_candidate) | **GET** /v1/production/candidates | Your designs that have graduated toward a physical run. |
| [**get_production_design_pref**](ProductionApi.md#get_production_design_pref) | **GET** /v1/production/designs/{cosmeticId}/prefs | Read a design&#39;s production preferences (spec, brief, opt-out). |
| [**get_production_drop**](ProductionApi.md#get_production_drop) | **GET** /v1/production/drops | Limited-edition units you own, with fulfillment status. |
| [**get_production_earning**](ProductionApi.md#get_production_earning) | **GET** /v1/production/earnings | Your CBX earnings from physical production (royalties + balance + lines). |
| [**get_production_line**](ProductionApi.md#get_production_line) | **GET** /v1/production/lines | Your production lines dashboard (candidate + run + inventory). |
| [**get_production_po**](ProductionApi.md#get_production_po) | **GET** /v1/production/pos | Ops: list purchase orders (optionally for one candidate). Admin PAT only. |
| [**get_production_po_reconcile**](ProductionApi.md#get_production_po_reconcile) | **GET** /v1/production/pos/{poId}/reconcile | Ops: reconcile a PO&#39;s actuals against the estimate. Admin PAT only. |
| [**get_production_run**](ProductionApi.md#get_production_run) | **GET** /v1/production/runs | Browse open limited-edition physical runs (graduated designs). |
| [**get_shop_listing_provenance**](ProductionApi.md#get_shop_listing_provenance) | **GET** /v1/shop/listings/{slug}/provenance | Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here. |
| [**update_production_po**](ProductionApi.md#update_production_po) | **PATCH** /v1/production/pos/{poId} | Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only. |


## create_production_candidate_accept

> <CreateProductionCandidateAcceptResponse> create_production_candidate_accept(id)

Accept a graduated design's production terms (edition size, cost, holder access).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
id = 'id_example' # String | 

begin
  # Accept a graduated design's production terms (edition size, cost, holder access).
  result = api_instance.create_production_candidate_accept(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_accept: #{e}"
end
```

#### Using the create_production_candidate_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionCandidateAcceptResponse>, Integer, Hash)> create_production_candidate_accept_with_http_info(id)

```ruby
begin
  # Accept a graduated design's production terms (edition size, cost, holder access).
  data, status_code, headers = api_instance.create_production_candidate_accept_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionCandidateAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateProductionCandidateAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_candidate_po

> <UpdateProductionPoResponse> create_production_candidate_po(id)

Ops: open a purchase order for a candidate. Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
id = 'id_example' # String | 

begin
  # Ops: open a purchase order for a candidate. Admin PAT only.
  result = api_instance.create_production_candidate_po(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_po: #{e}"
end
```

#### Using the create_production_candidate_po_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProductionPoResponse>, Integer, Hash)> create_production_candidate_po_with_http_info(id)

```ruby
begin
  # Ops: open a purchase order for a candidate. Admin PAT only.
  data, status_code, headers = api_instance.create_production_candidate_po_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProductionPoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_po_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_candidate_vote

> <CreateProductionCandidateVoteResponse> create_production_candidate_vote(id)

Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
id = 'id_example' # String | 

begin
  # Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.
  result = api_instance.create_production_candidate_vote(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_vote: #{e}"
end
```

#### Using the create_production_candidate_vote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionCandidateVoteResponse>, Integer, Hash)> create_production_candidate_vote_with_http_info(id)

```ruby
begin
  # Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.
  data, status_code, headers = api_instance.create_production_candidate_vote_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionCandidateVoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_candidate_vote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateProductionCandidateVoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_design_brief

> <CreateProductionDesignSpecResponse> create_production_design_brief(cosmetic_id)

Set a design's production brief (materials, finish, box, reference images).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
cosmetic_id = 'cosmetic_id_example' # String | 

begin
  # Set a design's production brief (materials, finish, box, reference images).
  result = api_instance.create_production_design_brief(cosmetic_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_brief: #{e}"
end
```

#### Using the create_production_design_brief_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionDesignSpecResponse>, Integer, Hash)> create_production_design_brief_with_http_info(cosmetic_id)

```ruby
begin
  # Set a design's production brief (materials, finish, box, reference images).
  data, status_code, headers = api_instance.create_production_design_brief_with_http_info(cosmetic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionDesignSpecResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_brief_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cosmetic_id** | **String** |  |  |

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_design_consent

> <CreateProductionDesignSpecResponse> create_production_design_consent(cosmetic_id)

Opt a design in or out of physical production.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
cosmetic_id = 'cosmetic_id_example' # String | 

begin
  # Opt a design in or out of physical production.
  result = api_instance.create_production_design_consent(cosmetic_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_consent: #{e}"
end
```

#### Using the create_production_design_consent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionDesignSpecResponse>, Integer, Hash)> create_production_design_consent_with_http_info(cosmetic_id)

```ruby
begin
  # Opt a design in or out of physical production.
  data, status_code, headers = api_instance.create_production_design_consent_with_http_info(cosmetic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionDesignSpecResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_consent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cosmetic_id** | **String** |  |  |

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_design_spec

> <CreateProductionDesignSpecResponse> create_production_design_spec(cosmetic_id)

Set a design's production spec (category, materials, complexity, packaging).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
cosmetic_id = 'cosmetic_id_example' # String | 

begin
  # Set a design's production spec (category, materials, complexity, packaging).
  result = api_instance.create_production_design_spec(cosmetic_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_spec: #{e}"
end
```

#### Using the create_production_design_spec_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionDesignSpecResponse>, Integer, Hash)> create_production_design_spec_with_http_info(cosmetic_id)

```ruby
begin
  # Set a design's production spec (category, materials, complexity, packaging).
  data, status_code, headers = api_instance.create_production_design_spec_with_http_info(cosmetic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionDesignSpecResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_design_spec_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cosmetic_id** | **String** |  |  |

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_estimate

> <CreateProductionEstimateResponse> create_production_estimate

Estimate a run's landed cost from a spec + edition size (overshoots for safety).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Estimate a run's landed cost from a spec + edition size (overshoots for safety).
  result = api_instance.create_production_estimate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_estimate: #{e}"
end
```

#### Using the create_production_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionEstimateResponse>, Integer, Hash)> create_production_estimate_with_http_info

```ruby
begin
  # Estimate a run's landed cost from a spec + edition size (overshoots for safety).
  data, status_code, headers = api_instance.create_production_estimate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionEstimateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_estimate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateProductionEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_production_run_purchase

> <CreateProductionRunPurchaseResponse> create_production_run_purchase(id)

Buy a limited-edition unit of a physical run (holder pricing applies).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
id = 'id_example' # String | 

begin
  # Buy a limited-edition unit of a physical run (holder pricing applies).
  result = api_instance.create_production_run_purchase(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_run_purchase: #{e}"
end
```

#### Using the create_production_run_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductionRunPurchaseResponse>, Integer, Hash)> create_production_run_purchase_with_http_info(id)

```ruby
begin
  # Buy a limited-edition unit of a physical run (holder pricing applies).
  data, status_code, headers = api_instance.create_production_run_purchase_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductionRunPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_production_run_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateProductionRunPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_receipt_relist

> <CreateReceiptRelistResponse> create_receipt_relist(id)

Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
id = 'id_example' # String | 

begin
  # Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.
  result = api_instance.create_receipt_relist(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_receipt_relist: #{e}"
end
```

#### Using the create_receipt_relist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReceiptRelistResponse>, Integer, Hash)> create_receipt_relist_with_http_info(id)

```ruby
begin
  # Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.
  data, status_code, headers = api_instance.create_receipt_relist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReceiptRelistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->create_receipt_relist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateReceiptRelistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_ballot

> <GetProductionBallotResponse> get_production_ballot

The ballot: designs waiting for a physical run, most backed first, and whether you may vote.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # The ballot: designs waiting for a physical run, most backed first, and whether you may vote.
  result = api_instance.get_production_ballot
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_ballot: #{e}"
end
```

#### Using the get_production_ballot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionBallotResponse>, Integer, Hash)> get_production_ballot_with_http_info

```ruby
begin
  # The ballot: designs waiting for a physical run, most backed first, and whether you may vote.
  data, status_code, headers = api_instance.get_production_ballot_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionBallotResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_ballot_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionBallotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_candidate

> <GetProductionCandidateResponse> get_production_candidate

Your designs that have graduated toward a physical run.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Your designs that have graduated toward a physical run.
  result = api_instance.get_production_candidate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_candidate: #{e}"
end
```

#### Using the get_production_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionCandidateResponse>, Integer, Hash)> get_production_candidate_with_http_info

```ruby
begin
  # Your designs that have graduated toward a physical run.
  data, status_code, headers = api_instance.get_production_candidate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionCandidateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_candidate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionCandidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_design_pref

> <GetProductionDesignPrefResponse> get_production_design_pref(cosmetic_id)

Read a design's production preferences (spec, brief, opt-out).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
cosmetic_id = 'cosmetic_id_example' # String | 

begin
  # Read a design's production preferences (spec, brief, opt-out).
  result = api_instance.get_production_design_pref(cosmetic_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_design_pref: #{e}"
end
```

#### Using the get_production_design_pref_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionDesignPrefResponse>, Integer, Hash)> get_production_design_pref_with_http_info(cosmetic_id)

```ruby
begin
  # Read a design's production preferences (spec, brief, opt-out).
  data, status_code, headers = api_instance.get_production_design_pref_with_http_info(cosmetic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionDesignPrefResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_design_pref_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cosmetic_id** | **String** |  |  |

### Return type

**GetProductionDesignPrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_drop

> <GetProductionDropResponse> get_production_drop

Limited-edition units you own, with fulfillment status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Limited-edition units you own, with fulfillment status.
  result = api_instance.get_production_drop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_drop: #{e}"
end
```

#### Using the get_production_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionDropResponse>, Integer, Hash)> get_production_drop_with_http_info

```ruby
begin
  # Limited-edition units you own, with fulfillment status.
  data, status_code, headers = api_instance.get_production_drop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_drop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_earning

> <GetProductionEarningResponse> get_production_earning

Your CBX earnings from physical production (royalties + balance + lines).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Your CBX earnings from physical production (royalties + balance + lines).
  result = api_instance.get_production_earning
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_earning: #{e}"
end
```

#### Using the get_production_earning_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionEarningResponse>, Integer, Hash)> get_production_earning_with_http_info

```ruby
begin
  # Your CBX earnings from physical production (royalties + balance + lines).
  data, status_code, headers = api_instance.get_production_earning_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionEarningResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_earning_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_line

> <GetProductionLineResponse> get_production_line

Your production lines dashboard (candidate + run + inventory).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Your production lines dashboard (candidate + run + inventory).
  result = api_instance.get_production_line
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_line: #{e}"
end
```

#### Using the get_production_line_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionLineResponse>, Integer, Hash)> get_production_line_with_http_info

```ruby
begin
  # Your production lines dashboard (candidate + run + inventory).
  data, status_code, headers = api_instance.get_production_line_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionLineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_line_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionLineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_po

> <GetProductionPoResponse> get_production_po(opts)

Ops: list purchase orders (optionally for one candidate). Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
opts = {
  candidate_id: 'candidate_id_example' # String | 
}

begin
  # Ops: list purchase orders (optionally for one candidate). Admin PAT only.
  result = api_instance.get_production_po(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_po: #{e}"
end
```

#### Using the get_production_po_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionPoResponse>, Integer, Hash)> get_production_po_with_http_info(opts)

```ruby
begin
  # Ops: list purchase orders (optionally for one candidate). Admin PAT only.
  data, status_code, headers = api_instance.get_production_po_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionPoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_po_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |

### Return type

**GetProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_po_reconcile

> <GetProductionPoReconcileResponse> get_production_po_reconcile(po_id)

Ops: reconcile a PO's actuals against the estimate. Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
po_id = 'po_id_example' # String | 

begin
  # Ops: reconcile a PO's actuals against the estimate. Admin PAT only.
  result = api_instance.get_production_po_reconcile(po_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_po_reconcile: #{e}"
end
```

#### Using the get_production_po_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionPoReconcileResponse>, Integer, Hash)> get_production_po_reconcile_with_http_info(po_id)

```ruby
begin
  # Ops: reconcile a PO's actuals against the estimate. Admin PAT only.
  data, status_code, headers = api_instance.get_production_po_reconcile_with_http_info(po_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionPoReconcileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_po_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **po_id** | **String** |  |  |

### Return type

**GetProductionPoReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_run

> <GetProductionRunResponse> get_production_run

Browse open limited-edition physical runs (graduated designs).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new

begin
  # Browse open limited-edition physical runs (graduated designs).
  result = api_instance.get_production_run
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_run: #{e}"
end
```

#### Using the get_production_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductionRunResponse>, Integer, Hash)> get_production_run_with_http_info

```ruby
begin
  # Browse open limited-edition physical runs (graduated designs).
  data, status_code, headers = api_instance.get_production_run_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductionRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_production_run_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetProductionRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_listing_provenance

> <GetShopListingProvenanceResponse> get_shop_listing_provenance(slug)

Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
slug = 'slug_example' # String | 

begin
  # Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.
  result = api_instance.get_shop_listing_provenance(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_shop_listing_provenance: #{e}"
end
```

#### Using the get_shop_listing_provenance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShopListingProvenanceResponse>, Integer, Hash)> get_shop_listing_provenance_with_http_info(slug)

```ruby
begin
  # Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.
  data, status_code, headers = api_instance.get_shop_listing_provenance_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShopListingProvenanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->get_shop_listing_provenance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetShopListingProvenanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_production_po

> <UpdateProductionPoResponse> update_production_po(po_id)

Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ProductionApi.new
po_id = 'po_id_example' # String | 

begin
  # Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.
  result = api_instance.update_production_po(po_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->update_production_po: #{e}"
end
```

#### Using the update_production_po_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProductionPoResponse>, Integer, Hash)> update_production_po_with_http_info(po_id)

```ruby
begin
  # Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.
  data, status_code, headers = api_instance.update_production_po_with_http_info(po_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProductionPoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ProductionApi->update_production_po_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **po_id** | **String** |  |  |

### Return type

**UpdateProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

