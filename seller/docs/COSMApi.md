# Crossly::COSMApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cosm_attestation_anchor**](COSMApi.md#create_cosm_attestation_anchor) | **POST** /v1/cosm/attestations/{id}/anchor | Record a signature for a commitment anchored BY HAND. |
| [**create_cosm_auction**](COSMApi.md#create_cosm_auction) | **POST** /v1/cosm/auction | List an owned cosmetic for COSM. |
| [**create_cosm_auction_buy**](COSMApi.md#create_cosm_auction_buy) | **POST** /v1/cosm/auction/{id}/buy | Buy an open listing. |
| [**create_cosm_cosmetic_buy**](COSMApi.md#create_cosm_cosmetic_buy) | **POST** /v1/cosm/cosmetics/{id}/buy | Buy an earned-tier cosmetic. The COSM is DESTROYED. |
| [**create_cosm_cosmetic_buy_cbx**](COSMApi.md#create_cosm_cosmetic_buy_cbx) | **POST** /v1/cosm/cosmetics/{id}/buy-cbx | Buy a dollar-priced cosmetic, paying in CBX. |
| [**create_cosm_cosmetic_claim**](COSMApi.md#create_cosm_cosmetic_claim) | **POST** /v1/cosm/cosmetics/{id}/claim | Claim a stake-exclusive cosmetic once tenure qualifies. |
| [**create_cosm_fusion**](COSMApi.md#create_cosm_fusion) | **POST** /v1/cosm/fusion/{recipeId} | Fuse two cosmetics plus COSM into a rarer one. |
| [**create_cosm_handle**](COSMApi.md#create_cosm_handle) | **POST** /v1/cosm/handles | Claim a vanity handle, burning COSM. |
| [**create_cosm_withdrawal**](COSMApi.md#create_cosm_withdrawal) | **POST** /v1/cosm/withdrawals | Request a withdrawal to your own proven wallet. REFUSES today. |
| [**delete_cosm_handle**](COSMApi.md#delete_cosm_handle) | **DELETE** /v1/cosm/handles | Release a handle. NOTHING IS REFUNDED. |
| [**delete_cosm_peg**](COSMApi.md#delete_cosm_peg) | **DELETE** /v1/cosm/pegs/{listingId} | Stop repricing. The current ask stays where it is. |
| [**get_cosm_attestation_proof**](COSMApi.md#get_cosm_attestation_proof) | **GET** /v1/cosm/attestations/{id}/proof | A Merkle inclusion proof for one subject, against a published root. |
| [**get_cosm_auction_quote**](COSMApi.md#get_cosm_auction_quote) | **GET** /v1/cosm/auction/quote | What an auction listing would cost in fees. |
| [**get_cosm_balance**](COSMApi.md#get_cosm_balance) | **GET** /v1/cosm/balance | A subject&#39;s COSM balance and the earn rate in force. |
| [**get_cosm_employee_fee_quote**](COSMApi.md#get_cosm_employee_fee_quote) | **GET** /v1/cosm/employee/fee-quote | What one shop-employee conversation will cost, in COSM. |
| [**get_cosm_handle**](COSMApi.md#get_cosm_handle) | **GET** /v1/cosm/handles/{handle} | Is this handle available, and what does it cost? |
| [**get_cosm_stake_tenure**](COSMApi.md#get_cosm_stake_tenure) | **GET** /v1/cosm/stake-tenure | How long a subject has held a stake continuously, in days. |
| [**get_cosm_supply**](COSMApi.md#get_cosm_supply) | **GET** /v1/cosm/supply | Total supply — minted, burned, circulating. |
| [**list_cosm_attestations**](COSMApi.md#list_cosm_attestations) | **GET** /v1/cosm/attestations | Published Merkle commitments. What you can check instead of trusting us. |
| [**list_cosm_auction**](COSMApi.md#list_cosm_auction) | **GET** /v1/cosm/auction | Open auction listings, priced in COSM. |
| [**list_cosm_cosmetics**](COSMApi.md#list_cosm_cosmetics) | **GET** /v1/cosm/cosmetics | The cosmetics catalogue. |
| [**list_cosm_goals**](COSMApi.md#list_cosm_goals) | **GET** /v1/cosm/goals | Community burn goal progress. |
| [**list_cosm_inventory**](COSMApi.md#list_cosm_inventory) | **GET** /v1/cosm/inventory | Cosmetics a subject holds. |
| [**list_cosm_pegs**](COSMApi.md#list_cosm_pegs) | **GET** /v1/cosm/pegs | CBX-pegged listings and why each last moved. |
| [**list_cosm_supply_epochs**](COSMApi.md#list_cosm_supply_epochs) | **GET** /v1/cosm/supply/epochs | Per-epoch emission against the backstop. |
| [**list_cosm_supply_schedule**](COSMApi.md#list_cosm_supply_schedule) | **GET** /v1/cosm/supply/schedule | The published emission taper. Fixed years ahead. |
| [**list_cosm_unlocks**](COSMApi.md#list_cosm_unlocks) | **GET** /v1/cosm/unlocks | Which spatial cosmetic values this subject may apply. |
| [**list_cosm_withdrawals**](COSMApi.md#list_cosm_withdrawals) | **GET** /v1/cosm/withdrawals | Withdrawal history, and whether withdrawals are open at all. |
| [**update_cosm_cosmetic_unlock**](COSMApi.md#update_cosm_cosmetic_unlock) | **PUT** /v1/cosm/cosmetics/{id}/unlock | Set (or clear) what a cosmetic unlocks spatially. |
| [**update_cosm_peg**](COSMApi.md#update_cosm_peg) | **PUT** /v1/cosm/pegs | Set or update a CBX price peg. OFF unless you turn it on. |


## create_cosm_attestation_anchor

> <CreateCosmAttestationAnchorResponse> create_cosm_attestation_anchor(id)

Record a signature for a commitment anchored BY HAND.

An ops tool, not a trust boundary. Automated anchoring needs an RPC and a dedicated key; until those are wired, `attestationMemo()` emits exactly the bytes to publish, and this records the resulting signature so the verifiable story is available before the automation is. IT VERIFIES NOTHING beyond the signature’s shape — there is no RPC here to confirm the transaction exists or that its memo matches. A wrong signature recorded here produces a commitment that LOOKS anchored and is not, which is worse than unanchored. Refuses to overwrite an existing anchor.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Record a signature for a commitment anchored BY HAND.
  result = api_instance.create_cosm_attestation_anchor(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_attestation_anchor: #{e}"
end
```

#### Using the create_cosm_attestation_anchor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmAttestationAnchorResponse>, Integer, Hash)> create_cosm_attestation_anchor_with_http_info(id)

```ruby
begin
  # Record a signature for a commitment anchored BY HAND.
  data, status_code, headers = api_instance.create_cosm_attestation_anchor_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmAttestationAnchorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_attestation_anchor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmAttestationAnchorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_auction

> <CreateCosmAuctionResponse> create_cosm_auction

List an owned cosmetic for COSM.

Refuses a BOUND item with 403. The bound flag is CHECK-derived from how the item was acquired, so the refusal cannot be bypassed by writing a different flag. One open listing per item, enforced by a unique index — otherwise the same cosmetic could be listed twice and sold to two buyers. `askBaseUnits` is a STRING of base units and must exceed 1.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # List an owned cosmetic for COSM.
  result = api_instance.create_cosm_auction
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_auction: #{e}"
end
```

#### Using the create_cosm_auction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmAuctionResponse>, Integer, Hash)> create_cosm_auction_with_http_info

```ruby
begin
  # List an owned cosmetic for COSM.
  data, status_code, headers = api_instance.create_cosm_auction_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmAuctionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_auction_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCosmAuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_auction_buy

> <CreateCosmFusionResponse> create_cosm_auction_buy(id)

Buy an open listing.

Three ledger rows: the buyer is debited the ask, the seller is credited it, and the fee burns against the seller. Net supply falls by exactly the fee. The listing is claimed out of `open` BEFORE any COSM moves, so the loser of a race is refused rather than debited. Buying your own listing is refused by a database CHECK: it would burn the fee for nothing and is the obvious way to fake a market price.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Buy an open listing.
  result = api_instance.create_cosm_auction_buy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_auction_buy: #{e}"
end
```

#### Using the create_cosm_auction_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmFusionResponse>, Integer, Hash)> create_cosm_auction_buy_with_http_info(id)

```ruby
begin
  # Buy an open listing.
  data, status_code, headers = api_instance.create_cosm_auction_buy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmFusionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_auction_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmFusionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_cosmetic_buy

> <CreateCosmCosmeticBuyResponse> create_cosm_cosmetic_buy(id)

Buy an earned-tier cosmetic. The COSM is DESTROYED.

Not credited to a treasury. Keeping it would make cosmetics a round trip rather than a sink, and the epoch backstop is computed FROM the burn — recycling would quietly uncouple emission from consumption. Refuses a premium or stake-exclusive SKU: those are not sold for COSM. Also counts toward any open community burn goal.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Buy an earned-tier cosmetic. The COSM is DESTROYED.
  result = api_instance.create_cosm_cosmetic_buy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_buy: #{e}"
end
```

#### Using the create_cosm_cosmetic_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmCosmeticBuyResponse>, Integer, Hash)> create_cosm_cosmetic_buy_with_http_info(id)

```ruby
begin
  # Buy an earned-tier cosmetic. The COSM is DESTROYED.
  data, status_code, headers = api_instance.create_cosm_cosmetic_buy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmCosmeticBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmCosmeticBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_cosmetic_buy_cbx

> <CreateCosmCosmeticBuyCbxResponse> create_cosm_cosmetic_buy_cbx(id)

Buy a dollar-priced cosmetic, paying in CBX.

The SKU's `priceCents` is paid from the subject's EARNED CBX at spot. `requestKey` (8-64 chars, one per purchase attempt) makes a retry the same purchase. If the grant fails after payment — sold out, already held — the CBX spend is reversed. Refuses an earned (COSM) or stake-exclusive SKU.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Buy a dollar-priced cosmetic, paying in CBX.
  result = api_instance.create_cosm_cosmetic_buy_cbx(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_buy_cbx: #{e}"
end
```

#### Using the create_cosm_cosmetic_buy_cbx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmCosmeticBuyCbxResponse>, Integer, Hash)> create_cosm_cosmetic_buy_cbx_with_http_info(id)

```ruby
begin
  # Buy a dollar-priced cosmetic, paying in CBX.
  data, status_code, headers = api_instance.create_cosm_cosmetic_buy_cbx_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmCosmeticBuyCbxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_buy_cbx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmCosmeticBuyCbxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_cosmetic_claim

> <CreateCosmCosmeticClaimResponse> create_cosm_cosmetic_claim(id)

Claim a stake-exclusive cosmetic once tenure qualifies.

Bound forever, and purchasable by nobody at any price in any currency. What people buy in cosmetics is STATUS, and anything purchasable is by definition available to anyone with money — an item money cannot buy is strictly rarer than an expensive one. Tenure is the LONGEST CONTINUOUS active stake, not time since first staking: somebody who staked, unstaked and staked again has not held continuously, and that is the whole claim the item makes. A cooling stake does not count, because the commitment is already being withdrawn. Returns `granted: false` with the tenure and the requirement when it is short — that is the normal answer, not an error. Idempotent: claiming twice while the first copy is held is a no-op.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Claim a stake-exclusive cosmetic once tenure qualifies.
  result = api_instance.create_cosm_cosmetic_claim(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_claim: #{e}"
end
```

#### Using the create_cosm_cosmetic_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmCosmeticClaimResponse>, Integer, Hash)> create_cosm_cosmetic_claim_with_http_info(id)

```ruby
begin
  # Claim a stake-exclusive cosmetic once tenure qualifies.
  data, status_code, headers = api_instance.create_cosm_cosmetic_claim_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmCosmeticClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_cosmetic_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmCosmeticClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_fusion

> <CreateCosmFusionResponse> create_cosm_fusion(recipe_id)

Fuse two cosmetics plus COSM into a rarer one.

The deepest sink available: it destroys on three axes at once — both input items AND the COSM cost — while producing something whose scarcity is real, because a recipe is the only route to it. Inputs must be owned, live, UNBOUND and flagged `fusable`. Stake-exclusive items can never be consumed: there is no way to reissue one without falsifying its scarcity, so the loss would be unrecoverable. An open listing on a consumed input is cancelled, since the owner has just chosen fusion over selling.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
recipe_id = 'recipe_id_example' # String | 

begin
  # Fuse two cosmetics plus COSM into a rarer one.
  result = api_instance.create_cosm_fusion(recipe_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_fusion: #{e}"
end
```

#### Using the create_cosm_fusion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmFusionResponse>, Integer, Hash)> create_cosm_fusion_with_http_info(recipe_id)

```ruby
begin
  # Fuse two cosmetics plus COSM into a rarer one.
  data, status_code, headers = api_instance.create_cosm_fusion_with_http_info(recipe_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmFusionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_fusion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipe_id** | **String** |  |  |

### Return type

**CreateCosmFusionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_handle

> <CreateCosmHandleResponse> create_cosm_handle

Claim a vanity handle, burning COSM.

One live handle per subject, enforced by a unique index. Collecting handles is a land grab that makes the good names unavailable, not a sink. A handle is released rather than deleted when given up, so the record of who held it survives — a handle that silently changed owner is the same impersonation problem from the other direction. There is no refund on release: the COSM was burned, and refunding would mean minting.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Claim a vanity handle, burning COSM.
  result = api_instance.create_cosm_handle
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_handle: #{e}"
end
```

#### Using the create_cosm_handle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmHandleResponse>, Integer, Hash)> create_cosm_handle_with_http_info

```ruby
begin
  # Claim a vanity handle, burning COSM.
  data, status_code, headers = api_instance.create_cosm_handle_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmHandleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_handle_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCosmHandleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cosm_withdrawal

> <CreateCosmWithdrawalResponse> create_cosm_withdrawal

Request a withdrawal to your own proven wallet. REFUSES today.

Returns 409 with the outstanding preconditions until COSM is transferable. Built and switched off deliberately: a withdrawal rail written in a hurry the week it is cleared is the one that ships with mistakes. THE DESTINATION IS NOT A PARAMETER. It resolves to this subject’s own VERIFIED connected wallet, because a per-request destination is how a compromised session drains a balance to somebody else’s address. Idempotent on `externalId`. The debit lands before anything is minted, so a crash leaves a recoverable state rather than tokens in a wallet with no debit behind them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Request a withdrawal to your own proven wallet. REFUSES today.
  result = api_instance.create_cosm_withdrawal
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_withdrawal: #{e}"
end
```

#### Using the create_cosm_withdrawal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmWithdrawalResponse>, Integer, Hash)> create_cosm_withdrawal_with_http_info

```ruby
begin
  # Request a withdrawal to your own proven wallet. REFUSES today.
  data, status_code, headers = api_instance.create_cosm_withdrawal_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmWithdrawalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->create_cosm_withdrawal_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateCosmWithdrawalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cosm_handle

> <DeleteCosmHandleResponse> delete_cosm_handle

Release a handle. NOTHING IS REFUNDED.

The COSM paid for a handle was BURNED, so there is nothing to give back — refunding would mean minting, which no support flow should be able to do. Say that in the UI before calling this; a user who expects a refund will read silence as a bug. The handle returns to the pool and can be claimed by anyone, including somebody else, so releasing is not a way to park one. Returns `released: false` when the subject held none.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Release a handle. NOTHING IS REFUNDED.
  result = api_instance.delete_cosm_handle
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->delete_cosm_handle: #{e}"
end
```

#### Using the delete_cosm_handle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCosmHandleResponse>, Integer, Hash)> delete_cosm_handle_with_http_info

```ruby
begin
  # Release a handle. NOTHING IS REFUNDED.
  data, status_code, headers = api_instance.delete_cosm_handle_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCosmHandleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->delete_cosm_handle_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**DeleteCosmHandleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cosm_peg

> <DeleteCosmPegResponse> delete_cosm_peg(listing_id)

Stop repricing. The current ask stays where it is.

Disabling means “stop moving it”, not “revert to something the buyer never saw”. The terms are kept, so re-enabling later does not mean re-entering them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
listing_id = 'listing_id_example' # String | 

begin
  # Stop repricing. The current ask stays where it is.
  result = api_instance.delete_cosm_peg(listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->delete_cosm_peg: #{e}"
end
```

#### Using the delete_cosm_peg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCosmPegResponse>, Integer, Hash)> delete_cosm_peg_with_http_info(listing_id)

```ruby
begin
  # Stop repricing. The current ask stays where it is.
  data, status_code, headers = api_instance.delete_cosm_peg_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCosmPegResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->delete_cosm_peg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **String** |  |  |

### Return type

**DeleteCosmPegResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_attestation_proof

> <GetCosmAttestationProofResponse> get_cosm_attestation_proof(id)

A Merkle inclusion proof for one subject, against a published root.

Returns `canonicalLeaf`, a `proof` of sibling hashes, and the `root`. VERIFY IT YOURSELF rather than trusting `verified`: hash the leaf with a 0x00 prefix, then fold each proof step with a 0x01 prefix, ordering the two hashes lexicographically at each step, and compare to the root. That is sixteen lines in any language and needs nothing from us. The prefixes are not decoration — without them an internal node is indistinguishable from a leaf and membership of uncommitted data can be forged. Returns 409 if the underlying data no longer reproduces the published root. That is a disclosure event, not a retryable error: the published root stands and a proof against a rebuilt one would be worthless.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # A Merkle inclusion proof for one subject, against a published root.
  result = api_instance.get_cosm_attestation_proof(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_attestation_proof: #{e}"
end
```

#### Using the get_cosm_attestation_proof_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmAttestationProofResponse>, Integer, Hash)> get_cosm_attestation_proof_with_http_info(id)

```ruby
begin
  # A Merkle inclusion proof for one subject, against a published root.
  data, status_code, headers = api_instance.get_cosm_attestation_proof_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmAttestationProofResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_attestation_proof_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetCosmAttestationProofResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_auction_quote

> <GetCosmAuctionQuoteResponse> get_cosm_auction_quote

What an auction listing would cost in fees.

Quote before committing. The fee is 8% of the ask, rounded UP so a small listing can never pay nothing — a zero-fee listing would be a free transfer channel, which is the one thing the design forbids outright. The seller always nets something, and a database CHECK asserts the same bound.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # What an auction listing would cost in fees.
  result = api_instance.get_cosm_auction_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_auction_quote: #{e}"
end
```

#### Using the get_cosm_auction_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmAuctionQuoteResponse>, Integer, Hash)> get_cosm_auction_quote_with_http_info

```ruby
begin
  # What an auction listing would cost in fees.
  data, status_code, headers = api_instance.get_cosm_auction_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmAuctionQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_auction_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCosmAuctionQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_balance

> <GetCosmBalanceResponse> get_cosm_balance

A subject's COSM balance and the earn rate in force.

Balances are STRINGS of base units, and COSM has six decimals — divide by 1e6 to display. They are strings because a JSON number loses precision past 2^53, which is only about nine billion COSM: it would work in testing and corrupt balances at scale. `taper` is the emission step currently in force, which depends on lifetime supply rather than on anything about this subject — two sellers earning the same week always see the same taper.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # A subject's COSM balance and the earn rate in force.
  result = api_instance.get_cosm_balance
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_balance: #{e}"
end
```

#### Using the get_cosm_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmBalanceResponse>, Integer, Hash)> get_cosm_balance_with_http_info

```ruby
begin
  # A subject's COSM balance and the earn rate in force.
  data, status_code, headers = api_instance.get_cosm_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmBalanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCosmBalanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_employee_fee_quote

> <GetCosmEmployeeFeeQuoteResponse> get_cosm_employee_fee_quote

What one shop-employee conversation will cost, in COSM.

A quote, priced with the SAME functions the charge uses, so the figure shown is the figure taken. Half of the fee BURNS and half moves to the market pool as a tax; the two always sum to the total exactly, because the split is applied in cents and the remainder is handed to the pool rather than derived from the complementary basis points. A pure burn would make the employee a deflation lever and nothing else; a pure transfer would make it a tax with no sink. Reads nothing and charges nothing — safe to call on every keystroke.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # What one shop-employee conversation will cost, in COSM.
  result = api_instance.get_cosm_employee_fee_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_employee_fee_quote: #{e}"
end
```

#### Using the get_cosm_employee_fee_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmEmployeeFeeQuoteResponse>, Integer, Hash)> get_cosm_employee_fee_quote_with_http_info

```ruby
begin
  # What one shop-employee conversation will cost, in COSM.
  data, status_code, headers = api_instance.get_cosm_employee_fee_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmEmployeeFeeQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_employee_fee_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCosmEmployeeFeeQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_handle

> <GetCosmHandleResponse> get_cosm_handle(handle)

Is this handle available, and what does it cost?

Reasons for unavailability: `invalid_shape`, `reserved`, `taken`. Handles are lowercased and constrained to a narrow character class, because anything that can be made to LOOK like another handle is an impersonation vector rather than an expressive option. Priced by length: short names are scarcer. Uniqueness is platform-wide, not per merchant — it is a URL namespace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
handle = 'handle_example' # String | 

begin
  # Is this handle available, and what does it cost?
  result = api_instance.get_cosm_handle(handle)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_handle: #{e}"
end
```

#### Using the get_cosm_handle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmHandleResponse>, Integer, Hash)> get_cosm_handle_with_http_info(handle)

```ruby
begin
  # Is this handle available, and what does it cost?
  data, status_code, headers = api_instance.get_cosm_handle_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmHandleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_handle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetCosmHandleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_stake_tenure

> <GetCosmStakeTenureResponse> get_cosm_stake_tenure

How long a subject has held a stake continuously, in days.

The figure every stake-exclusive grant is decided on, readable on its own so a UI can show progress rather than only reporting failure at claim time. LONGEST CONTINUOUS active stake — a gap resets it, and a cooling stake does not count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # How long a subject has held a stake continuously, in days.
  result = api_instance.get_cosm_stake_tenure
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_stake_tenure: #{e}"
end
```

#### Using the get_cosm_stake_tenure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmStakeTenureResponse>, Integer, Hash)> get_cosm_stake_tenure_with_http_info

```ruby
begin
  # How long a subject has held a stake continuously, in days.
  data, status_code, headers = api_instance.get_cosm_stake_tenure_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmStakeTenureResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_stake_tenure_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCosmStakeTenureResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cosm_supply

> <GetCosmSupplyResponse> get_cosm_supply

Total supply — minted, burned, circulating.

The one question a holder of an emitted currency cannot answer for themselves. Every figure is derived from the ledger rather than a cached counter, so it cannot drift from the rows it summarises. `reconciles` is the check you can run against us: minted minus burned minus reversed must equal the sum of every balance, and the auction debit/credit pair must cancel exactly. False means a bug on our side, not stale data. Once COSM is transferable the on-chain `total_minted` emitted by `cosm-minter` is the authoritative figure and this becomes the convenient one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Total supply — minted, burned, circulating.
  result = api_instance.get_cosm_supply
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_supply: #{e}"
end
```

#### Using the get_cosm_supply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCosmSupplyResponse>, Integer, Hash)> get_cosm_supply_with_http_info

```ruby
begin
  # Total supply — minted, burned, circulating.
  data, status_code, headers = api_instance.get_cosm_supply_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCosmSupplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->get_cosm_supply_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetCosmSupplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_attestations

> <ListCosmAttestationsResponse> list_cosm_attestations

Published Merkle commitments. What you can check instead of trusting us.

Two claims become verifiable here. `cosm_emission` commits an epoch’s activity claims, so anybody can confirm emission never exceeded the sum of committed real activity — and every input is in the leaf, so the payout arithmetic can be rechecked, not just membership. `cbx_liability` commits every balance, which is the half of proof-of-reserve usually hand-waved. READ `anchoredAt` BEFORE RELYING ON A ROOT. Null means the commitment is computed and stored but NOT yet on chain — which makes it a row we could edit, so it proves nothing to somebody who does not already trust us. `totalBaseUnits` lets you check the sum without rebuilding the tree.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Published Merkle commitments. What you can check instead of trusting us.
  result = api_instance.list_cosm_attestations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_attestations: #{e}"
end
```

#### Using the list_cosm_attestations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmAttestationsResponse>, Integer, Hash)> list_cosm_attestations_with_http_info

```ruby
begin
  # Published Merkle commitments. What you can check instead of trusting us.
  data, status_code, headers = api_instance.list_cosm_attestations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmAttestationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_attestations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmAttestationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_auction

> <ListCosmAuctionResponse> list_cosm_auction

Open auction listings, priced in COSM.

A COSM-denominated peer market: buyers pay COSM, sellers receive COSM, and the 8% fee BURNS. It is not a cash market — a cash resale market for COSM-bought items would reintroduce the arbitrage between a fixed COSM price and a floating market price. `feeBaseUnits` was quoted when the listing was created and is held, because a fee recomputed at sale time is a quote nobody can rely on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Open auction listings, priced in COSM.
  result = api_instance.list_cosm_auction
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_auction: #{e}"
end
```

#### Using the list_cosm_auction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmAuctionResponse>, Integer, Hash)> list_cosm_auction_with_http_info

```ruby
begin
  # Open auction listings, priced in COSM.
  data, status_code, headers = api_instance.list_cosm_auction_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmAuctionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_auction_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmAuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_cosmetics

> <ListCosmCosmeticsResponse> list_cosm_cosmetics

The cosmetics catalogue.

Tiers are DISJOINT and no SKU carries two prices: `premium` is cash only, `earned` is COSM only, `stake_exclusive` cannot be bought at any price in any currency. That is not a presentation choice — pricing one SKU in both currencies would expose a fixed COSM price to a floating market price, which is free money in the gap and hands limited editions to whoever automates it. `priceCents` is set only on premium, `priceBaseUnits` only on earned.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # The cosmetics catalogue.
  result = api_instance.list_cosm_cosmetics
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_cosmetics: #{e}"
end
```

#### Using the list_cosm_cosmetics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmCosmeticsResponse>, Integer, Hash)> list_cosm_cosmetics_with_http_info

```ruby
begin
  # The cosmetics catalogue.
  data, status_code, headers = api_instance.list_cosm_cosmetics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmCosmeticsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_cosmetics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmCosmeticsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_goals

> <ListCosmGoalsResponse> list_cosm_goals

Community burn goal progress.

Aggregate burn crossing a threshold unlocks a cosmetic for everyone who contributed — scoped to contributors, because a goal that rewarded non-participants makes contributing irrational. Only burns inside the window count; a goal counting all history would complete the moment it was created. `progressBps` is capped at 10000: the total is snapshotted on completion so a bar never reads over 100%.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Community burn goal progress.
  result = api_instance.list_cosm_goals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_goals: #{e}"
end
```

#### Using the list_cosm_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmGoalsResponse>, Integer, Hash)> list_cosm_goals_with_http_info

```ruby
begin
  # Community burn goal progress.
  data, status_code, headers = api_instance.list_cosm_goals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmGoalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_goals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmGoalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_inventory

> <ListCosmInventoryResponse> list_cosm_inventory

Cosmetics a subject holds.

`bound` is derived from how it was acquired and is enforced by a database CHECK, not set by hand: a stake-exclusive grant and a make-good are bound forever, everything else trades. Bound items cannot be listed on the auction house or used as a fusion input. `editionNumber` identifies the ITEM and travels with it through a sale, because a reissued #7 would falsify every scarcity claim a market has priced.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Cosmetics a subject holds.
  result = api_instance.list_cosm_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_inventory: #{e}"
end
```

#### Using the list_cosm_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmInventoryResponse>, Integer, Hash)> list_cosm_inventory_with_http_info

```ruby
begin
  # Cosmetics a subject holds.
  data, status_code, headers = api_instance.list_cosm_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_pegs

> <ListCosmPegsResponse> list_cosm_pegs

CBX-pegged listings and why each last moved.

A peg holds a CBX ask at a dollar target. `lastReason` says what the last cycle did: repriced, no_rate, below_threshold, clamped_floor, clamped_ceiling or clamped_change. A seller asking why their price has not moved deserves an answer that is not “it should have”. The repricer reads a 24h MINIMUM rate, never spot — tracking spot would let somebody pump CBX, watch the ask drop, and pay with cheaply bought tokens.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # CBX-pegged listings and why each last moved.
  result = api_instance.list_cosm_pegs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_pegs: #{e}"
end
```

#### Using the list_cosm_pegs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmPegsResponse>, Integer, Hash)> list_cosm_pegs_with_http_info

```ruby
begin
  # CBX-pegged listings and why each last moved.
  data, status_code, headers = api_instance.list_cosm_pegs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmPegsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_pegs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmPegsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_supply_epochs

> <ListCosmSupplyEpochsResponse> list_cosm_supply_epochs

Per-epoch emission against the backstop.

`demanded` is what activity would have earned at full rate; `emitted` is what was actually credited. Both are reported because storing only the second would make a refusal indistinguishable from a quiet rate cut. `ceilingBound` should be rare — the governor is the emission rate itself, which is a share of transaction value, so the ceiling binding means an anomaly rather than a busy week.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Per-epoch emission against the backstop.
  result = api_instance.list_cosm_supply_epochs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_supply_epochs: #{e}"
end
```

#### Using the list_cosm_supply_epochs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmSupplyEpochsResponse>, Integer, Hash)> list_cosm_supply_epochs_with_http_info

```ruby
begin
  # Per-epoch emission against the backstop.
  data, status_code, headers = api_instance.list_cosm_supply_epochs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmSupplyEpochsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_supply_epochs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmSupplyEpochsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_supply_schedule

> <ListCosmSupplyScheduleResponse> list_cosm_supply_schedule

The published emission taper. Fixed years ahead.

Indexed on CUMULATIVE MINTED, which is monotonic and which nothing anybody does can move backwards. Net circulating supply would be self-correcting against a healthy sink and would also be reflexive — burning to hold the taper back would become a strategy. A schedule nobody can game beats a clever loop. The final step is a floor, not zero: a terminating schedule is a loyalty programme with an expiry date, where the last cohort to join earns nothing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # The published emission taper. Fixed years ahead.
  result = api_instance.list_cosm_supply_schedule
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_supply_schedule: #{e}"
end
```

#### Using the list_cosm_supply_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmSupplyScheduleResponse>, Integer, Hash)> list_cosm_supply_schedule_with_http_info

```ruby
begin
  # The published emission taper. Fixed years ahead.
  data, status_code, headers = api_instance.list_cosm_supply_schedule_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmSupplyScheduleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_supply_schedule_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmSupplyScheduleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_unlocks

> <ListCosmUnlocksResponse> list_cosm_unlocks

Which spatial cosmetic values this subject may apply.

Owning a cosmetic is what permits setting the room value it claims. Values no SKU claims — the stock walls, floors and themes — are free and are not listed here. Paint a picker from this rather than discovering a refusal on submit: the redecorate endpoint returns the locked items by name so a swatch can be greyed out instead.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Which spatial cosmetic values this subject may apply.
  result = api_instance.list_cosm_unlocks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_unlocks: #{e}"
end
```

#### Using the list_cosm_unlocks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmUnlocksResponse>, Integer, Hash)> list_cosm_unlocks_with_http_info

```ruby
begin
  # Which spatial cosmetic values this subject may apply.
  data, status_code, headers = api_instance.list_cosm_unlocks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmUnlocksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_unlocks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmUnlocksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cosm_withdrawals

> <ListCosmWithdrawalsResponse> list_cosm_withdrawals

Withdrawal history, and whether withdrawals are open at all.

COSM does not leave the platform yet. `open` is false and `outstanding` lists the preconditions still to be met: an audited minter, a securities opinion, a money-transmission review, and the emission invariant proven under real volume. None of them has a date, so do not present one. The endpoint exists so a client can show that state honestly rather than hiding the feature and surprising somebody later.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Withdrawal history, and whether withdrawals are open at all.
  result = api_instance.list_cosm_withdrawals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_withdrawals: #{e}"
end
```

#### Using the list_cosm_withdrawals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmWithdrawalsResponse>, Integer, Hash)> list_cosm_withdrawals_with_http_info

```ruby
begin
  # Withdrawal history, and whether withdrawals are open at all.
  data, status_code, headers = api_instance.list_cosm_withdrawals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmWithdrawalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->list_cosm_withdrawals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCosmWithdrawalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cosm_cosmetic_unlock

> <UpdateCosmCosmeticUnlockResponse> update_cosm_cosmetic_unlock(id)

Set (or clear) what a cosmetic unlocks spatially.

A cosmetic can gate a spatial control — a theme, a prop, a room feature — by naming a key/value pair the scene reads. Both or neither: a key with no value would claim EVERY value of that key and silently gate the whole control, so passing one without the other clears both. Pass two nulls to remove the gate entirely, which makes the control free for everyone. Treasury scope — this changes what every holder can reach, not one subject.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new
id = 'id_example' # String | 

begin
  # Set (or clear) what a cosmetic unlocks spatially.
  result = api_instance.update_cosm_cosmetic_unlock(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->update_cosm_cosmetic_unlock: #{e}"
end
```

#### Using the update_cosm_cosmetic_unlock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCosmCosmeticUnlockResponse>, Integer, Hash)> update_cosm_cosmetic_unlock_with_http_info(id)

```ruby
begin
  # Set (or clear) what a cosmetic unlocks spatially.
  data, status_code, headers = api_instance.update_cosm_cosmetic_unlock_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCosmCosmeticUnlockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->update_cosm_cosmetic_unlock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateCosmCosmeticUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cosm_peg

> <UpdateCosmPegResponse> update_cosm_peg

Set or update a CBX price peg. OFF unless you turn it on.

Holds a CBX ask at a dollar target, repriced hourly against a 24h MINIMUM rate. Three bounds, each for a different failure: `maxChangeBps` stops one bad reading posting an absurd ask (it converges over cycles instead), `floorBaseUnits` and `ceilingBaseUnits` are YOUR limits so a sustained real move never posts a price you did not consider, and `minChangeBps` stops the ask being rewritten for a fraction of a percent. Accepting CBX means holding CBX. The peg protects the dollar value of the ASK; it cannot protect the value of tokens once you have them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::COSMApi.new

begin
  # Set or update a CBX price peg. OFF unless you turn it on.
  result = api_instance.update_cosm_peg
  p result
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->update_cosm_peg: #{e}"
end
```

#### Using the update_cosm_peg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCosmPegResponse>, Integer, Hash)> update_cosm_peg_with_http_info

```ruby
begin
  # Set or update a CBX price peg. OFF unless you turn it on.
  data, status_code, headers = api_instance.update_cosm_peg_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCosmPegResponse>
rescue Crossly::ApiError => e
  puts "Error when calling COSMApi->update_cosm_peg_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateCosmPegResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

