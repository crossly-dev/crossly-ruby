# Crossly::CBXApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cbx_accrual**](CBXApi.md#create_cbx_accrual) | **POST** /v1/cbx/accruals | Record cashback a user earned, in cents. |
| [**create_cbx_accrual_purchase**](CBXApi.md#create_cbx_accrual_purchase) | **POST** /v1/cbx/accruals/purchase | Accrue cashback for an order at the resolved rate. |
| [**create_cbx_accrual_reverse**](CBXApi.md#create_cbx_accrual_reverse) | **POST** /v1/cbx/accruals/{accrualId}/reverse | Claw back a pending accrual — a refund, a cancellation, fraud. |
| [**create_cbx_ad_credit_purchase**](CBXApi.md#create_cbx_ad_credit_purchase) | **POST** /v1/cbx/ad-credit/purchase | Claim ad credit against a CBX transfer you sent. |
| [**create_cbx_ad_credit_quote**](CBXApi.md#create_cbx_ad_credit_quote) | **POST** /v1/cbx/ad-credit/quote | What a given number of tokens buys in ad credit. |
| [**create_cbx_ad_credit_spend**](CBXApi.md#create_cbx_ad_credit_spend) | **POST** /v1/cbx/ad-credit/spend | Consume credit for a billing period. |
| [**create_cbx_boost**](CBXApi.md#create_cbx_boost) | **POST** /v1/cbx/boosts | Fund elevated cashback on matching items. |
| [**create_cbx_boost_pause**](CBXApi.md#create_cbx_boost_pause) | **POST** /v1/cbx/boosts/{boostId}/pause | Stop a boost from matching further orders. |
| [**create_cbx_campaign**](CBXApi.md#create_cbx_campaign) | **POST** /v1/cbx/campaigns | Create a campaign in draft. |
| [**create_cbx_campaign_approve**](CBXApi.md#create_cbx_campaign_approve) | **POST** /v1/cbx/campaigns/{campaignId}/approve | Approve the previewed recipient list. |
| [**create_cbx_campaign_execute**](CBXApi.md#create_cbx_campaign_execute) | **POST** /v1/cbx/campaigns/{campaignId}/execute | Pay an approved campaign. |
| [**create_cbx_campaign_preview**](CBXApi.md#create_cbx_campaign_preview) | **POST** /v1/cbx/campaigns/{campaignId}/preview | Compute the recipient list without paying it. |
| [**create_cbx_claim**](CBXApi.md#create_cbx_claim) | **POST** /v1/cbx/claims | Reserve a claim. Debits the balance and queues the transfer. |
| [**create_cbx_claim_quote**](CBXApi.md#create_cbx_claim_quote) | **POST** /v1/cbx/claims/quote | What a claim would cost, without committing to it. |
| [**create_cbx_claim_send**](CBXApi.md#create_cbx_claim_send) | **POST** /v1/cbx/claims/{claimId}/send | Send a reserved claim on chain. |
| [**create_cbx_credit_draw**](CBXApi.md#create_cbx_credit_draw) | **POST** /v1/cbx/credit/draw | Draw against a line, receiving grant credit. |
| [**create_cbx_credit_freeze**](CBXApi.md#create_cbx_credit_freeze) | **POST** /v1/cbx/credit/freeze | Stop new draws. Leaves the drawn balance on its terms. |
| [**create_cbx_credit_refresh**](CBXApi.md#create_cbx_credit_refresh) | **POST** /v1/cbx/credit/refresh | Recompute a limit from trading history and stake. |
| [**create_cbx_credit_repay**](CBXApi.md#create_cbx_credit_repay) | **POST** /v1/cbx/credit/repay | Apply a repayment to a line. |
| [**create_cbx_disbursement_rule**](CBXApi.md#create_cbx_disbursement_rule) | **POST** /v1/cbx/disbursement-rules | Fire a distribution when the events pool crosses a threshold. |
| [**create_cbx_disbursement_rule_active**](CBXApi.md#create_cbx_disbursement_rule_active) | **POST** /v1/cbx/disbursement-rules/{ruleId}/active | Enable or disable a rule. |
| [**create_cbx_disbursement_rule_check**](CBXApi.md#create_cbx_disbursement_rule_check) | **POST** /v1/cbx/disbursement-rules/{ruleId}/check | Evaluate a rule now. Fires it if every gate passes. |
| [**create_cbx_earn_tier**](CBXApi.md#create_cbx_earn_tier) | **POST** /v1/cbx/earn-tiers | Define an earn term. |
| [**create_cbx_rate_quote**](CBXApi.md#create_cbx_rate_quote) | **POST** /v1/cbx/rates/quote | What would this order earn, and why. |
| [**create_cbx_redemption**](CBXApi.md#create_cbx_redemption) | **POST** /v1/cbx/redemptions | Pay for a service in CBX. |
| [**create_cbx_redemption_quote**](CBXApi.md#create_cbx_redemption_quote) | **POST** /v1/cbx/redemptions/quote | What a service costs in tokens right now. |
| [**create_cbx_revenue_sweep**](CBXApi.md#create_cbx_revenue_sweep) | **POST** /v1/cbx/revenue/sweep | Move accrued revenue from the reserve to your revenue wallet. |
| [**create_cbx_spend**](CBXApi.md#create_cbx_spend) | **POST** /v1/cbx/spends | Redeem a user&#39;s CBX against an order. |
| [**create_cbx_spend_reverse**](CBXApi.md#create_cbx_spend_reverse) | **POST** /v1/cbx/spends/{externalId}/reverse | Refund a spend — give the tokens back and claw the skim back. |
| [**create_cbx_stake_tier**](CBXApi.md#create_cbx_stake_tier) | **POST** /v1/cbx/stake-tiers | Define a staking tier. |
| [**create_cbx_subject**](CBXApi.md#create_cbx_subject) | **POST** /v1/cbx/subjects | Map one of your user ids to a CBX subject. |
| [**create_cbx_subject_grant**](CBXApi.md#create_cbx_subject_grant) | **POST** /v1/cbx/subjects/{subjectId}/grants | Issue grant credit — in-platform, non-withdrawable. |
| [**create_cbx_subject_spend_plan**](CBXApi.md#create_cbx_subject_spend_plan) | **POST** /v1/cbx/subjects/{subjectId}/spend-plan | Which balances would pay for a spend, and in what order. |
| [**create_cbx_subject_stake**](CBXApi.md#create_cbx_subject_stake) | **POST** /v1/cbx/subjects/{subjectId}/stake | Lock a subject&#39;s tokens for a tier. |
| [**create_cbx_subject_stake_unstake**](CBXApi.md#create_cbx_subject_stake_unstake) | **POST** /v1/cbx/subjects/{subjectId}/stake/unstake | Start the cooldown. Tokens unlock when it elapses. |
| [**create_cbx_wallet_challenge**](CBXApi.md#create_cbx_wallet_challenge) | **POST** /v1/cbx/wallets/challenge | Start wallet verification. Returns a message for the user to sign. |
| [**create_cbx_wallet_payment_confirm**](CBXApi.md#create_cbx_wallet_payment_confirm) | **POST** /v1/cbx/wallet-payments/confirm | Present the signature. Returns a ship / do-not-ship decision. |
| [**create_cbx_wallet_payment_quote**](CBXApi.md#create_cbx_wallet_payment_quote) | **POST** /v1/cbx/wallet-payments/quote | Build a transfer for the buyer to sign themselves. |
| [**create_cbx_wallet_payment_resolve**](CBXApi.md#create_cbx_wallet_payment_resolve) | **POST** /v1/cbx/wallet-payments/{paymentId}/resolve | A human decides on a held payment. |
| [**create_cbx_wallet_verify**](CBXApi.md#create_cbx_wallet_verify) | **POST** /v1/cbx/wallets/verify | Complete wallet verification with the user&#39;s signature. |
| [**get_cbx_ad_credit**](CBXApi.md#get_cbx_ad_credit) | **GET** /v1/cbx/ad-credit | Unspent advertising credit, in cents. |
| [**get_cbx_claim**](CBXApi.md#get_cbx_claim) | **GET** /v1/cbx/claims/{claimId} | A claim&#39;s current state. |
| [**get_cbx_credit**](CBXApi.md#get_cbx_credit) | **GET** /v1/cbx/credit | A seller&#39;s wholesale credit line. |
| [**get_cbx_me**](CBXApi.md#get_cbx_me) | **GET** /v1/cbx/me | Identity check — which merchant this key belongs to, and its terms. |
| [**get_cbx_pool**](CBXApi.md#get_cbx_pool) | **GET** /v1/cbx/pool | Your events-pool balance. |
| [**get_cbx_revenue**](CBXApi.md#get_cbx_revenue) | **GET** /v1/cbx/revenue | Operator revenue accrued and not yet withdrawn. |
| [**get_cbx_subject_balance**](CBXApi.md#get_cbx_subject_balance) | **GET** /v1/cbx/subjects/{subjectId}/balance | What a subject holds: pending cents and available CBX. |
| [**get_cbx_subject_balance_by_subject_id**](CBXApi.md#get_cbx_subject_balance_by_subject_id) | **GET** /v1/cbx/subjects/{subjectId}/balances | All three balances a subject holds. |
| [**get_cbx_subject_spent**](CBXApi.md#get_cbx_subject_spent) | **GET** /v1/cbx/subjects/{subjectId}/spent | Total CBX a subject has spent in your marketplace. |
| [**get_cbx_subject_stake**](CBXApi.md#get_cbx_subject_stake) | **GET** /v1/cbx/subjects/{subjectId}/stake | A subject&#39;s staking state and spendable balance. |
| [**get_cbx_subject_wallet**](CBXApi.md#get_cbx_subject_wallet) | **GET** /v1/cbx/subjects/{subjectId}/wallet | The verified payout address for a subject, if any. |
| [**get_cbx_treasury**](CBXApi.md#get_cbx_treasury) | **GET** /v1/cbx/treasury | Your most recent reserve reconciliation. |
| [**list_cbx_ad_credit_ledger**](CBXApi.md#list_cbx_ad_credit_ledger) | **GET** /v1/cbx/ad-credit/ledger | Ad-credit movements, newest first. |
| [**list_cbx_boosts**](CBXApi.md#list_cbx_boosts) | **GET** /v1/cbx/boosts | Your funded cashback boosts, newest first. |
| [**list_cbx_campaign_payouts**](CBXApi.md#list_cbx_campaign_payouts) | **GET** /v1/cbx/campaigns/{campaignId}/payouts | What a campaign actually paid, with the weight behind each amount. |
| [**list_cbx_campaigns**](CBXApi.md#list_cbx_campaigns) | **GET** /v1/cbx/campaigns | Your campaigns, newest first. |
| [**list_cbx_disbursement_progress**](CBXApi.md#list_cbx_disbursement_progress) | **GET** /v1/cbx/disbursement-progress | How close each rule is to firing — the public counter. |
| [**list_cbx_disbursement_rules**](CBXApi.md#list_cbx_disbursement_rules) | **GET** /v1/cbx/disbursement-rules | Threshold rules that fire community distributions. |
| [**list_cbx_earn_tiers**](CBXApi.md#list_cbx_earn_tiers) | **GET** /v1/cbx/earn-tiers | Earn terms on offer — longer maturation, higher rate. |
| [**list_cbx_redemption_services**](CBXApi.md#list_cbx_redemption_services) | **GET** /v1/cbx/redemptions/services | Services payable in CBX, and the discount each carries. |
| [**list_cbx_stake_tiers**](CBXApi.md#list_cbx_stake_tiers) | **GET** /v1/cbx/stake-tiers | Staking tiers — what locking tokens buys. |
| [**list_cbx_subject_grants**](CBXApi.md#list_cbx_subject_grants) | **GET** /v1/cbx/subjects/{subjectId}/grants | Live grants, soonest-expiring first. |
| [**list_cbx_subject_ledger**](CBXApi.md#list_cbx_subject_ledger) | **GET** /v1/cbx/subjects/{subjectId}/ledger | A subject&#39;s CBX ledger, newest first. |
| [**list_cbx_wallet_payment_review**](CBXApi.md#list_cbx_wallet_payment_review) | **GET** /v1/cbx/wallet-payments/review | Payments held for a human — the ops queue. |


## create_cbx_accrual

> <CreateCbxAccrualResponse> create_cbx_accrual

Record cashback a user earned, in cents.

The accrual is PENDING until its maturation window closes, then converts to CBX at that moment's market price. It is denominated in cents the whole time it is pending, deliberately: quoting a token quantity up front and buying later would leave the reserve short for the length of the window. Send sourceExternalId and a retry is a no-op rather than a double credit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Record cashback a user earned, in cents.
  result = api_instance.create_cbx_accrual
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual: #{e}"
end
```

#### Using the create_cbx_accrual_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAccrualResponse>, Integer, Hash)> create_cbx_accrual_with_http_info

```ruby
begin
  # Record cashback a user earned, in cents.
  data, status_code, headers = api_instance.create_cbx_accrual_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAccrualResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxAccrualResponse**](CreateCbxAccrualResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_accrual_purchase

> <CreateCbxAccrualPurchaseResponse> create_cbx_accrual_purchase

Accrue cashback for an order at the resolved rate.

Prefer this over POST /accruals when you want us to do the rate maths — it resolves the tier, the boost and the stake boost, charges your boost budget in the same transaction, and records what rate was actually granted. If a matching boost cannot fund the order, the accrual falls back to your un-boosted rate and `boostBudgetExhausted` is true. Idempotent on externalId: a retried webhook neither accrues twice nor charges your budget twice.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Accrue cashback for an order at the resolved rate.
  result = api_instance.create_cbx_accrual_purchase
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual_purchase: #{e}"
end
```

#### Using the create_cbx_accrual_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAccrualPurchaseResponse>, Integer, Hash)> create_cbx_accrual_purchase_with_http_info

```ruby
begin
  # Accrue cashback for an order at the resolved rate.
  data, status_code, headers = api_instance.create_cbx_accrual_purchase_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAccrualPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual_purchase_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxAccrualPurchaseResponse**](CreateCbxAccrualPurchaseResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_accrual_reverse

> <CreateCbxAccrualReverseResponse> create_cbx_accrual_reverse(accrual_id)

Claw back a pending accrual — a refund, a cancellation, fraud.

Only works while the accrual is still pending. Once it has converted, the value is tokens in somebody's balance and this is the wrong operation: reversing then is a debit against that balance, which is a different act with different consequences and is not something an integration key can do. This is why the maturation window has to be at least as long as your refund window.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
accrual_id = 'accrual_id_example' # String | 

begin
  # Claw back a pending accrual — a refund, a cancellation, fraud.
  result = api_instance.create_cbx_accrual_reverse(accrual_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual_reverse: #{e}"
end
```

#### Using the create_cbx_accrual_reverse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAccrualReverseResponse>, Integer, Hash)> create_cbx_accrual_reverse_with_http_info(accrual_id)

```ruby
begin
  # Claw back a pending accrual — a refund, a cancellation, fraud.
  data, status_code, headers = api_instance.create_cbx_accrual_reverse_with_http_info(accrual_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAccrualReverseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_accrual_reverse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrual_id** | **String** |  |  |

### Return type

[**CreateCbxAccrualReverseResponse**](CreateCbxAccrualReverseResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_ad_credit_purchase

> <CreateCbxAdCreditPurchaseResponse> create_cbx_ad_credit_purchase

Claim ad credit against a CBX transfer you sent.

Send CBX to our revenue wallet yourself, then present the signature. We read the actual balance delta at FINALIZED commitment — a confirmed transaction can still be dropped by a fork, and this grants real credit. One signature can be claimed exactly once. Priced at the spot when the claim is processed, not when you signed: pricing at send time would let somebody hold signed transfers and claim only the ones that moved in their favour. A 409 means the transaction has not finalized yet and you should retry; a 400 means it will never be claimable (failed, wrong mint, wrong destination).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Claim ad credit against a CBX transfer you sent.
  result = api_instance.create_cbx_ad_credit_purchase
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_purchase: #{e}"
end
```

#### Using the create_cbx_ad_credit_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAdCreditPurchaseResponse>, Integer, Hash)> create_cbx_ad_credit_purchase_with_http_info

```ruby
begin
  # Claim ad credit against a CBX transfer you sent.
  data, status_code, headers = api_instance.create_cbx_ad_credit_purchase_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAdCreditPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_purchase_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxAdCreditPurchaseResponse**](CreateCbxAdCreditPurchaseResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_ad_credit_quote

> <CreateCbxAdCreditQuoteResponse> create_cbx_ad_credit_quote

What a given number of tokens buys in ad credit.

Credit is 1:1 with the market value of the tokens at confirmation. Refuses with 409 when there is no fresh price — pricing an entire prepaid budget off a guess is not something to do quietly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # What a given number of tokens buys in ad credit.
  result = api_instance.create_cbx_ad_credit_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_quote: #{e}"
end
```

#### Using the create_cbx_ad_credit_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAdCreditQuoteResponse>, Integer, Hash)> create_cbx_ad_credit_quote_with_http_info

```ruby
begin
  # What a given number of tokens buys in ad credit.
  data, status_code, headers = api_instance.create_cbx_ad_credit_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAdCreditQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxAdCreditQuoteResponse**](CreateCbxAdCreditQuoteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_ad_credit_spend

> <CreateCbxAdCreditSpendResponse> create_cbx_ad_credit_spend

Consume credit for a billing period.

Spends what the balance covers and reports the rest as `shortfallCents` — the campaign should stop there rather than running on credit that does not exist. 20% of what is spent moves to the community events pool and 80% is operator revenue; the split happens on SPEND rather than at purchase, because the pool's share is earned when the advertising is actually delivered. Idempotent on externalId: pass your billing-period id so a retried run does not consume the same credit twice.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Consume credit for a billing period.
  result = api_instance.create_cbx_ad_credit_spend
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_spend: #{e}"
end
```

#### Using the create_cbx_ad_credit_spend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxAdCreditSpendResponse>, Integer, Hash)> create_cbx_ad_credit_spend_with_http_info

```ruby
begin
  # Consume credit for a billing period.
  data, status_code, headers = api_instance.create_cbx_ad_credit_spend_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxAdCreditSpendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_ad_credit_spend_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxAdCreditSpendResponse**](CreateCbxAdCreditSpendResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_boost

> <CreateCbxBoostResponse> create_cbx_boost

Fund elevated cashback on matching items.

Performance marketing priced in CBX: the spend lands as a durable balance the buyer returns to use, rather than a one-time price cut they pocket. A boost REPLACES the base or tier rate rather than adding to it — you are stating the total you will pay, and it is priced against your margin. Targeting is matched by equality on one facet; most specific wins (sku > collection > category > all). Kinds: all, category, sku, collection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Fund elevated cashback on matching items.
  result = api_instance.create_cbx_boost
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_boost: #{e}"
end
```

#### Using the create_cbx_boost_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxBoostResponse>, Integer, Hash)> create_cbx_boost_with_http_info

```ruby
begin
  # Fund elevated cashback on matching items.
  data, status_code, headers = api_instance.create_cbx_boost_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxBoostResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_boost_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxBoostResponse**](CreateCbxBoostResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_boost_pause

> <CreateCbxBoostPauseResponse> create_cbx_boost_pause(boost_id)

Stop a boost from matching further orders.

Pausing does not refund anything — already-accrued cashback is a promise already made to a buyer, and unwinding it would take back cashback somebody was shown at checkout. The remaining budget simply stops being spendable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
boost_id = 'boost_id_example' # String | 

begin
  # Stop a boost from matching further orders.
  result = api_instance.create_cbx_boost_pause(boost_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_boost_pause: #{e}"
end
```

#### Using the create_cbx_boost_pause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxBoostPauseResponse>, Integer, Hash)> create_cbx_boost_pause_with_http_info(boost_id)

```ruby
begin
  # Stop a boost from matching further orders.
  data, status_code, headers = api_instance.create_cbx_boost_pause_with_http_info(boost_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxBoostPauseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_boost_pause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boost_id** | **String** |  |  |

### Return type

[**CreateCbxBoostPauseResponse**](CreateCbxBoostPauseResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_campaign

> <CreateCbxCampaignResponse> create_cbx_campaign

Create a campaign in draft.

Nothing is paid until it is previewed, approved and executed. Available metrics: accruals_count, accrued_cents, spend_count, spend_base_units — all of them measure activity inside the window. `capPerSubject` is worth setting on a proportional campaign: without it one large participant can take almost the whole pool, which makes the event pointless for everybody else.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Create a campaign in draft.
  result = api_instance.create_cbx_campaign
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign: #{e}"
end
```

#### Using the create_cbx_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCampaignResponse>, Integer, Hash)> create_cbx_campaign_with_http_info

```ruby
begin
  # Create a campaign in draft.
  data, status_code, headers = api_instance.create_cbx_campaign_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxCampaignResponse**](CreateCbxCampaignResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_campaign_approve

> <CreateCbxCampaignApproveResponse> create_cbx_campaign_approve(campaign_id)

Approve the previewed recipient list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
campaign_id = 'campaign_id_example' # String | 

begin
  # Approve the previewed recipient list.
  result = api_instance.create_cbx_campaign_approve(campaign_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_approve: #{e}"
end
```

#### Using the create_cbx_campaign_approve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCampaignApproveResponse>, Integer, Hash)> create_cbx_campaign_approve_with_http_info(campaign_id)

```ruby
begin
  # Approve the previewed recipient list.
  data, status_code, headers = api_instance.create_cbx_campaign_approve_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCampaignApproveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_approve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  |  |

### Return type

[**CreateCbxCampaignApproveResponse**](CreateCbxCampaignApproveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_campaign_execute

> <CreateCbxCampaignExecuteResponse> create_cbx_campaign_execute(campaign_id)

Pay an approved campaign.

Recomputes the list and refuses if the hash no longer matches the approved one. Payouts credit balances directly rather than transferring on chain, so a distribution to ten thousand recipients costs one internal move and is reversible if it was computed wrong.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
campaign_id = 'campaign_id_example' # String | 

begin
  # Pay an approved campaign.
  result = api_instance.create_cbx_campaign_execute(campaign_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_execute: #{e}"
end
```

#### Using the create_cbx_campaign_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCampaignExecuteResponse>, Integer, Hash)> create_cbx_campaign_execute_with_http_info(campaign_id)

```ruby
begin
  # Pay an approved campaign.
  data, status_code, headers = api_instance.create_cbx_campaign_execute_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCampaignExecuteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  |  |

### Return type

[**CreateCbxCampaignExecuteResponse**](CreateCbxCampaignExecuteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_campaign_preview

> <CreateCbxCampaignPreviewResponse> create_cbx_campaign_preview(campaign_id)

Compute the recipient list without paying it.

Returns every recipient and amount, plus a hash of the list. Re-previewing invalidates any prior approval by design — the approver signed off on a specific list, and if it has changed they have not approved what would now happen.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
campaign_id = 'campaign_id_example' # String | 

begin
  # Compute the recipient list without paying it.
  result = api_instance.create_cbx_campaign_preview(campaign_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_preview: #{e}"
end
```

#### Using the create_cbx_campaign_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCampaignPreviewResponse>, Integer, Hash)> create_cbx_campaign_preview_with_http_info(campaign_id)

```ruby
begin
  # Compute the recipient list without paying it.
  data, status_code, headers = api_instance.create_cbx_campaign_preview_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCampaignPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_campaign_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  |  |

### Return type

[**CreateCbxCampaignPreviewResponse**](CreateCbxCampaignPreviewResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_claim

> <CreateCbxClaimResponse> create_cbx_claim

Reserve a claim. Debits the balance and queues the transfer.

The balance is debited here, before anything is sent, which is the only safe order: sending first and debiting after means a crash between the two pays somebody and never charges them, and that is unrecoverable. A crash after this leaves a reserved balance and a pending claim, which is recoverable by looking at the chain. Send the same idempotencyKey to retry safely.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Reserve a claim. Debits the balance and queues the transfer.
  result = api_instance.create_cbx_claim
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim: #{e}"
end
```

#### Using the create_cbx_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxClaimResponse>, Integer, Hash)> create_cbx_claim_with_http_info

```ruby
begin
  # Reserve a claim. Debits the balance and queues the transfer.
  data, status_code, headers = api_instance.create_cbx_claim_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxClaimResponse**](CreateCbxClaimResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_claim_quote

> <CreateCbxClaimQuoteResponse> create_cbx_claim_quote

What a claim would cost, without committing to it.

Every fee at cost, so a confirm screen can show the breakdown before the user agrees. The network fee is passed through at actual cost and includes the one-time account rent when the recipient has no token account yet — that rent is a recoverable deposit on an account the USER owns, not a fee we keep.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # What a claim would cost, without committing to it.
  result = api_instance.create_cbx_claim_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim_quote: #{e}"
end
```

#### Using the create_cbx_claim_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxClaimQuoteResponse>, Integer, Hash)> create_cbx_claim_quote_with_http_info

```ruby
begin
  # What a claim would cost, without committing to it.
  data, status_code, headers = api_instance.create_cbx_claim_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxClaimQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxClaimQuoteResponse**](CreateCbxClaimQuoteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_claim_send

> <CreateCbxClaimSendResponse> create_cbx_claim_send(claim_id)

Send a reserved claim on chain.

Re-checks every precondition rather than trusting the reservation: the delegation may have been revoked, the fee payer may have run dry, the address may have been flagged since. A response of `unconfirmed` means the transfer may have landed but confirmation was not observed — do NOT retry it, it needs reconciliation against the chain first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
claim_id = 'claim_id_example' # String | 

begin
  # Send a reserved claim on chain.
  result = api_instance.create_cbx_claim_send(claim_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim_send: #{e}"
end
```

#### Using the create_cbx_claim_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxClaimSendResponse>, Integer, Hash)> create_cbx_claim_send_with_http_info(claim_id)

```ruby
begin
  # Send a reserved claim on chain.
  data, status_code, headers = api_instance.create_cbx_claim_send_with_http_info(claim_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxClaimSendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_claim_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_id** | **String** |  |  |

### Return type

[**CreateCbxClaimSendResponse**](CreateCbxClaimSendResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_credit_draw

> <CreateCbxCreditDrawResponse> create_cbx_credit_draw

Draw against a line, receiving grant credit.

The advance lands as GRANT balance: in-platform only, so it cannot be withdrawn, cannot be turned into cash and absconded with, and adds nothing to the float that could hit an order book. Restricted to wholesale channels — the limit was sized on the theory that the advance buys goods that get sold and generate the payout stream repaying it, and credit spent on a subscription does not create that stream. Refuses if the reserve has no unallocated tokens: credit is real value and cannot be advanced against tokens that do not exist. Idempotent on externalId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Draw against a line, receiving grant credit.
  result = api_instance.create_cbx_credit_draw
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_draw: #{e}"
end
```

#### Using the create_cbx_credit_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCreditDrawResponse>, Integer, Hash)> create_cbx_credit_draw_with_http_info

```ruby
begin
  # Draw against a line, receiving grant credit.
  data, status_code, headers = api_instance.create_cbx_credit_draw_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCreditDrawResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_draw_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxCreditDrawResponse**](CreateCbxCreditDrawResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_credit_freeze

> <CreateCbxCreditFreezeResponse> create_cbx_credit_freeze

Stop new draws. Leaves the drawn balance on its terms.

The only lever over a line, and deliberately the only one. A seller who took inventory on Tuesday keeps Tuesday's terms whatever the token does on Wednesday — the only way a credit product sits next to a volatile asset without transmitting its volatility.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Stop new draws. Leaves the drawn balance on its terms.
  result = api_instance.create_cbx_credit_freeze
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_freeze: #{e}"
end
```

#### Using the create_cbx_credit_freeze_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCreditFreezeResponse>, Integer, Hash)> create_cbx_credit_freeze_with_http_info

```ruby
begin
  # Stop new draws. Leaves the drawn balance on its terms.
  data, status_code, headers = api_instance.create_cbx_credit_freeze_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCreditFreezeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_freeze_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxCreditFreezeResponse**](CreateCbxCreditFreezeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_credit_refresh

> <CreateCbxCreditRefreshResponse> create_cbx_credit_refresh

Recompute a limit from trading history and stake.

The earned limit is a share of trailing SETTLED payout volume — money that actually reached the seller, not listed inventory or projected sales. The stake bonus is capped at a share of that, so a seller with no history gets nothing however much they stake. A frozen line stays frozen: freezing is a credit decision somebody made, and a recompute must not quietly undo it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Recompute a limit from trading history and stake.
  result = api_instance.create_cbx_credit_refresh
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_refresh: #{e}"
end
```

#### Using the create_cbx_credit_refresh_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCreditRefreshResponse>, Integer, Hash)> create_cbx_credit_refresh_with_http_info

```ruby
begin
  # Recompute a limit from trading history and stake.
  data, status_code, headers = api_instance.create_cbx_credit_refresh_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCreditRefreshResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_refresh_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxCreditRefreshResponse**](CreateCbxCreditRefreshResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_credit_repay

> <CreateCbxCreditRepayResponse> create_cbx_credit_repay

Apply a repayment to a line.

`treasury` scope, which looks backwards next to a draw needing only `spend` and is deliberate: a forged repayment writes off real money owed to us, while a forged draw hands out credit spendable only in our own marketplace. The scope follows the loss. Clamped to what is outstanding — a payout larger than the debt would otherwise push the balance negative and read as credit nobody underwrote.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Apply a repayment to a line.
  result = api_instance.create_cbx_credit_repay
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_repay: #{e}"
end
```

#### Using the create_cbx_credit_repay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxCreditRepayResponse>, Integer, Hash)> create_cbx_credit_repay_with_http_info

```ruby
begin
  # Apply a repayment to a line.
  data, status_code, headers = api_instance.create_cbx_credit_repay_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxCreditRepayResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_credit_repay_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxCreditRepayResponse**](CreateCbxCreditRepayResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_disbursement_rule

> <CreateCbxDisbursementRuleResponse> create_cbx_disbursement_rule

Fire a distribution when the events pool crosses a threshold.

Applies to the EVENTS POOL only — never free reserve surplus. Reserve surplus is the recirculation buffer that funds the next accrual without touching the market, so distributing it would force us to buy the same tokens back at spread plus MEV. `checkCadenceHours` bounds how often the rule may fire even when the pool is over the line: a pure threshold fires at an unpredictable moment, and the pool jumps most after a lapse sweep — precisely when engagement was worst. `distributeBps` is capped under 100% because draining the pool removes the standing balance that makes the next event credible. The rule decides WHEN only: firing opens a campaign that still needs preview, approval and execution. Metrics: accruals_count, accrued_cents, spend_count, spend_base_units.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Fire a distribution when the events pool crosses a threshold.
  result = api_instance.create_cbx_disbursement_rule
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule: #{e}"
end
```

#### Using the create_cbx_disbursement_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxDisbursementRuleResponse>, Integer, Hash)> create_cbx_disbursement_rule_with_http_info

```ruby
begin
  # Fire a distribution when the events pool crosses a threshold.
  data, status_code, headers = api_instance.create_cbx_disbursement_rule_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxDisbursementRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxDisbursementRuleResponse**](CreateCbxDisbursementRuleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_disbursement_rule_active

> <CreateCbxDisbursementRuleActiveResponse> create_cbx_disbursement_rule_active(rule_id)

Enable or disable a rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
rule_id = 'rule_id_example' # String | 

begin
  # Enable or disable a rule.
  result = api_instance.create_cbx_disbursement_rule_active(rule_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule_active: #{e}"
end
```

#### Using the create_cbx_disbursement_rule_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxDisbursementRuleActiveResponse>, Integer, Hash)> create_cbx_disbursement_rule_active_with_http_info(rule_id)

```ruby
begin
  # Enable or disable a rule.
  data, status_code, headers = api_instance.create_cbx_disbursement_rule_active_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxDisbursementRuleActiveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule_active_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |

### Return type

[**CreateCbxDisbursementRuleActiveResponse**](CreateCbxDisbursementRuleActiveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_disbursement_rule_check

> <CreateCbxDisbursementRuleCheckResponse> create_cbx_disbursement_rule_check(rule_id)

Evaluate a rule now. Fires it if every gate passes.

Gates in order: cadence, threshold, coverage. `outcome` names the one that stopped it — every evaluation is recorded including the declines, because \"why didn't the event happen\" is the question people ask and the answer is always a check that ran and said no. A missing or stale treasury snapshot declines on `coverage`: unknown coverage is not healthy coverage. Send dryRun to evaluate without opening a campaign or writing anything.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
rule_id = 'rule_id_example' # String | 

begin
  # Evaluate a rule now. Fires it if every gate passes.
  result = api_instance.create_cbx_disbursement_rule_check(rule_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule_check: #{e}"
end
```

#### Using the create_cbx_disbursement_rule_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxDisbursementRuleCheckResponse>, Integer, Hash)> create_cbx_disbursement_rule_check_with_http_info(rule_id)

```ruby
begin
  # Evaluate a rule now. Fires it if every gate passes.
  data, status_code, headers = api_instance.create_cbx_disbursement_rule_check_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxDisbursementRuleCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_disbursement_rule_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |

### Return type

[**CreateCbxDisbursementRuleCheckResponse**](CreateCbxDisbursementRuleCheckResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_earn_tier

> <CreateCbxEarnTierResponse> create_cbx_earn_tier

Define an earn term.

Setting `isDefault` moves the default off whatever held it — exactly one active default per merchant is enforced by a unique index, because two would make \"what rate did this user get\" depend on row order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Define an earn term.
  result = api_instance.create_cbx_earn_tier
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_earn_tier: #{e}"
end
```

#### Using the create_cbx_earn_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxEarnTierResponse>, Integer, Hash)> create_cbx_earn_tier_with_http_info

```ruby
begin
  # Define an earn term.
  data, status_code, headers = api_instance.create_cbx_earn_tier_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxEarnTierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_earn_tier_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxEarnTierResponse**](CreateCbxEarnTierResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_rate_quote

> <CreateCbxRateQuoteResponse> create_cbx_rate_quote

What would this order earn, and why.

Resolve the rate without accruing anything, so a checkout can show the real number and its reason. `source` tells you whether it came from your base rate, a tier, or a boost; `stakeBoostBps` is the part the user's own stake contributed. Quoting does NOT reserve boost budget — a quote and the subsequent accrual can differ if the budget runs out in between, which is why the accrual response repeats the rate it actually granted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # What would this order earn, and why.
  result = api_instance.create_cbx_rate_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_rate_quote: #{e}"
end
```

#### Using the create_cbx_rate_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxRateQuoteResponse>, Integer, Hash)> create_cbx_rate_quote_with_http_info

```ruby
begin
  # What would this order earn, and why.
  data, status_code, headers = api_instance.create_cbx_rate_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxRateQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_rate_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxRateQuoteResponse**](CreateCbxRateQuoteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_redemption

> <CreateCbxRedemptionResponse> create_cbx_redemption

Pay for a service in CBX.

Idempotent on (serviceKind, externalId) rather than externalId alone: a grading submission and a listing boost can legitimately share an id because they refer to the same item, and without the service in the key, boosting a listing you had already graded would return the grading receipt and never charge for the boost. Staked tokens cannot pay — the debit checks spendable balance, not total.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Pay for a service in CBX.
  result = api_instance.create_cbx_redemption
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_redemption: #{e}"
end
```

#### Using the create_cbx_redemption_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxRedemptionResponse>, Integer, Hash)> create_cbx_redemption_with_http_info

```ruby
begin
  # Pay for a service in CBX.
  data, status_code, headers = api_instance.create_cbx_redemption_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxRedemptionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_redemption_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxRedemptionResponse**](CreateCbxRedemptionResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_redemption_quote

> <CreateCbxRedemptionQuoteResponse> create_cbx_redemption_quote

What a service costs in tokens right now.

Refuses with 409 when there is no fresh price. A dollar-priced service has no honest token quantity without a spot, and there is no safe direction to guess in — a guess either overcharges the user or undercharges us.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # What a service costs in tokens right now.
  result = api_instance.create_cbx_redemption_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_redemption_quote: #{e}"
end
```

#### Using the create_cbx_redemption_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxRedemptionQuoteResponse>, Integer, Hash)> create_cbx_redemption_quote_with_http_info

```ruby
begin
  # What a service costs in tokens right now.
  data, status_code, headers = api_instance.create_cbx_redemption_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxRedemptionQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_redemption_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxRedemptionQuoteResponse**](CreateCbxRedemptionQuoteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_revenue_sweep

> <CreateCbxRevenueSweepResponse> create_cbx_revenue_sweep

Move accrued revenue from the reserve to your revenue wallet.

Computes what is genuinely free — reserve minus outstanding balances, minus claims in flight, minus the pool, minus unswept revenue — and moves at most that. If the reserve is short it moves NOTHING, whatever the ledger says: an under-covered reserve is not a reason to stop paying users, it is a reason to stop paying yourself. Send dryRun to see the arithmetic without moving tokens.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Move accrued revenue from the reserve to your revenue wallet.
  result = api_instance.create_cbx_revenue_sweep
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_revenue_sweep: #{e}"
end
```

#### Using the create_cbx_revenue_sweep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxRevenueSweepResponse>, Integer, Hash)> create_cbx_revenue_sweep_with_http_info

```ruby
begin
  # Move accrued revenue from the reserve to your revenue wallet.
  data, status_code, headers = api_instance.create_cbx_revenue_sweep_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxRevenueSweepResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_revenue_sweep_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxRevenueSweepResponse**](CreateCbxRevenueSweepResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_spend

> <CreateCbxSpendResponse> create_cbx_spend

Redeem a user's CBX against an order.

Debits the user exactly what they spent — the skim is never added on top, because making CBX worth less when used than when sold would invert the whole reason to spend rather than liquidate. The skim comes out of YOUR fee on the order and is capped against it, so an order paid entirely in saved-up CBX does not have its whole margin eaten. Idempotent on externalId: a retried checkout returns the original spend rather than debiting twice. Spending is always free and has no minimum — that asymmetry against the withdrawal fee is what steers toward spending without ever telling anyone they cannot have their money.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Redeem a user's CBX against an order.
  result = api_instance.create_cbx_spend
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_spend: #{e}"
end
```

#### Using the create_cbx_spend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSpendResponse>, Integer, Hash)> create_cbx_spend_with_http_info

```ruby
begin
  # Redeem a user's CBX against an order.
  data, status_code, headers = api_instance.create_cbx_spend_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSpendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_spend_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxSpendResponse**](CreateCbxSpendResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_spend_reverse

> <CreateCbxSpendReverseResponse> create_cbx_spend_reverse(external_id)

Refund a spend — give the tokens back and claw the skim back.

Returns the user's tokens AND reverses the skim out of both the community pool and operator revenue. All three move together: returning the tokens while the pool and operator kept their shares would count the same tokens twice against one reserve. The spend also stops counting as activity for campaign weighting, so buy-then-refund cannot farm distributions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
external_id = 'external_id_example' # String | 

begin
  # Refund a spend — give the tokens back and claw the skim back.
  result = api_instance.create_cbx_spend_reverse(external_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_spend_reverse: #{e}"
end
```

#### Using the create_cbx_spend_reverse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSpendReverseResponse>, Integer, Hash)> create_cbx_spend_reverse_with_http_info(external_id)

```ruby
begin
  # Refund a spend — give the tokens back and claw the skim back.
  data, status_code, headers = api_instance.create_cbx_spend_reverse_with_http_info(external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSpendReverseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_spend_reverse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |

### Return type

[**CreateCbxSpendReverseResponse**](CreateCbxSpendReverseResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_stake_tier

> <CreateCbxStakeTierResponse> create_cbx_stake_tier

Define a staking tier.

A user gets the highest tier their amount clears. `cooldownDays` is what makes the discount real: without a wait, a user stakes for the discount and unstakes the moment they want to withdraw, so the commitment it was priced against never existed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Define a staking tier.
  result = api_instance.create_cbx_stake_tier
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_stake_tier: #{e}"
end
```

#### Using the create_cbx_stake_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxStakeTierResponse>, Integer, Hash)> create_cbx_stake_tier_with_http_info

```ruby
begin
  # Define a staking tier.
  data, status_code, headers = api_instance.create_cbx_stake_tier_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxStakeTierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_stake_tier_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxStakeTierResponse**](CreateCbxStakeTierResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_subject

> <CreateCbxSubjectResponse> create_cbx_subject

Map one of your user ids to a CBX subject.

Idempotent. Call it whenever you need a subject id; repeated calls with the same externalUserId return the same subject. Your user ids are opaque to us and unique only within your merchant, so two marketplaces can both have a user \"1\" without collision.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Map one of your user ids to a CBX subject.
  result = api_instance.create_cbx_subject
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject: #{e}"
end
```

#### Using the create_cbx_subject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSubjectResponse>, Integer, Hash)> create_cbx_subject_with_http_info

```ruby
begin
  # Map one of your user ids to a CBX subject.
  data, status_code, headers = api_instance.create_cbx_subject_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSubjectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxSubjectResponse**](CreateCbxSubjectResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_subject_grant

> <CreateCbxSubjectGrantResponse> create_cbx_subject_grant(subject_id)

Issue grant credit — in-platform, non-withdrawable.

Requires a funding `batchId` for every kind except `grant_makegood`. Grant credit is spendable at merchants who receive real value, so the tokens have to exist — the same rule earned balance obeys. A makegood is exempt because compensating somebody for our failure must not be blocked on treasury state. There is no path that converts a grant to earned balance or pays it to an address, and the database enforces that rather than a comment.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Issue grant credit — in-platform, non-withdrawable.
  result = api_instance.create_cbx_subject_grant(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_grant: #{e}"
end
```

#### Using the create_cbx_subject_grant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSubjectGrantResponse>, Integer, Hash)> create_cbx_subject_grant_with_http_info(subject_id)

```ruby
begin
  # Issue grant credit — in-platform, non-withdrawable.
  data, status_code, headers = api_instance.create_cbx_subject_grant_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSubjectGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_grant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**CreateCbxSubjectGrantResponse**](CreateCbxSubjectGrantResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_subject_spend_plan

> <CreateCbxSubjectSpendPlanResponse> create_cbx_subject_spend_plan(subject_id)

Which balances would pay for a spend, and in what order.

The order is granted → earned → connected and you do not get to choose it. Granted first is a security property, not a preference: if earned spent first, a subject holding both would spend their withdrawable balance down while their non-withdrawable grant sat untouched — converting a grant into a withdrawable balance one purchase at a time. Returns a `shortfallBaseUnits` rather than failing, so a checkout can charge the remainder to a card. Send excludeConnected on a flow that cannot wait for an on-chain transfer.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Which balances would pay for a spend, and in what order.
  result = api_instance.create_cbx_subject_spend_plan(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_spend_plan: #{e}"
end
```

#### Using the create_cbx_subject_spend_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSubjectSpendPlanResponse>, Integer, Hash)> create_cbx_subject_spend_plan_with_http_info(subject_id)

```ruby
begin
  # Which balances would pay for a spend, and in what order.
  data, status_code, headers = api_instance.create_cbx_subject_spend_plan_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSubjectSpendPlanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_spend_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**CreateCbxSubjectSpendPlanResponse**](CreateCbxSubjectSpendPlanResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_subject_stake

> <CreateCbxSubjectStakeResponse> create_cbx_subject_stake(subject_id)

Lock a subject's tokens for a tier.

Refuses an amount that clears no tier — locking tokens for no benefit is never what somebody meant to do. One stake per subject: to change the amount, unstake and wait out the cooldown first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Lock a subject's tokens for a tier.
  result = api_instance.create_cbx_subject_stake(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_stake: #{e}"
end
```

#### Using the create_cbx_subject_stake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSubjectStakeResponse>, Integer, Hash)> create_cbx_subject_stake_with_http_info(subject_id)

```ruby
begin
  # Lock a subject's tokens for a tier.
  data, status_code, headers = api_instance.create_cbx_subject_stake_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSubjectStakeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_stake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**CreateCbxSubjectStakeResponse**](CreateCbxSubjectStakeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_subject_stake_unstake

> <CreateCbxSubjectStakeUnstakeResponse> create_cbx_subject_stake_unstake(subject_id)

Start the cooldown. Tokens unlock when it elapses.

The earn boost stops immediately; the tokens stay locked until `unlocksAt`. The cooldown is read from the tier as configured NOW, which is the one place a later config change is allowed to matter — holding somebody to a longer wait the merchant has since abandoned would be the worse behaviour.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Start the cooldown. Tokens unlock when it elapses.
  result = api_instance.create_cbx_subject_stake_unstake(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_stake_unstake: #{e}"
end
```

#### Using the create_cbx_subject_stake_unstake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxSubjectStakeUnstakeResponse>, Integer, Hash)> create_cbx_subject_stake_unstake_with_http_info(subject_id)

```ruby
begin
  # Start the cooldown. Tokens unlock when it elapses.
  data, status_code, headers = api_instance.create_cbx_subject_stake_unstake_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxSubjectStakeUnstakeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_subject_stake_unstake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**CreateCbxSubjectStakeUnstakeResponse**](CreateCbxSubjectStakeUnstakeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_wallet_challenge

> <CreateCbxWalletChallengeResponse> create_cbx_wallet_challenge

Start wallet verification. Returns a message for the user to sign.

Present the returned `message` verbatim to the user's wallet for signing. It binds your merchant, their subject, the address and a single-use nonce, so the resulting signature is not transferable to another address or account. A signature is required because there is no custody here: a send cannot be undone, so a typo or a swapped address is permanent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Start wallet verification. Returns a message for the user to sign.
  result = api_instance.create_cbx_wallet_challenge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_challenge: #{e}"
end
```

#### Using the create_cbx_wallet_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxWalletChallengeResponse>, Integer, Hash)> create_cbx_wallet_challenge_with_http_info

```ruby
begin
  # Start wallet verification. Returns a message for the user to sign.
  data, status_code, headers = api_instance.create_cbx_wallet_challenge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxWalletChallengeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_challenge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxWalletChallengeResponse**](CreateCbxWalletChallengeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_wallet_payment_confirm

> <CreateCbxWalletPaymentConfirmResponse> create_cbx_wallet_payment_confirm

Present the signature. Returns a ship / do-not-ship decision.

Everything is read from the CHAIN at finalized commitment — the amount, the payer, the destination. Nothing you assert about the payment is trusted, because a client that can state its own payment amount can state a larger one. The response `releaseDecision` is about the ORDER, not the payment: by the time we see a signature the tokens have moved and cannot be un-moved, so the only decision left is whether to hand over goods. `release` means ship. `review` means hold — a person needs to look, and that includes the case where no screening provider is configured. `refuse` means do not ship; the payment is still recorded, because we received the tokens and that fact does not go away. Idempotent twice over: on txSig globally, so one payment cannot pay two orders, and on (merchant, externalId), so one order is not paid twice. A 409 means the transaction has not finalized yet and you should retry; a 400 means it never will be claimable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Present the signature. Returns a ship / do-not-ship decision.
  result = api_instance.create_cbx_wallet_payment_confirm
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_confirm: #{e}"
end
```

#### Using the create_cbx_wallet_payment_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxWalletPaymentConfirmResponse>, Integer, Hash)> create_cbx_wallet_payment_confirm_with_http_info

```ruby
begin
  # Present the signature. Returns a ship / do-not-ship decision.
  data, status_code, headers = api_instance.create_cbx_wallet_payment_confirm_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxWalletPaymentConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_confirm_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxWalletPaymentConfirmResponse**](CreateCbxWalletPaymentConfirmResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_wallet_payment_quote

> <CreateCbxWalletPaymentQuoteResponse> create_cbx_wallet_payment_quote

Build a transfer for the buyer to sign themselves.

Returns an unsigned, base64 transaction. The buyer's wallet signs and submits it; we never hold a key or a delegation and never submit anything, so the platform has no authority over their tokens at any point. RESERVES NOTHING — no row, no hold, no balance change. The buyer may never sign it. The SIGNATURE is the event, so treat this as a convenience and not a commitment. `lastValidBlockHeight` is when it expires: a wallet prompt left open for a couple of minutes produces a transaction the chain will reject, and you should re-quote rather than retry. `payerCanCover` is a courtesy read of their balance so you can warn before a prompt rather than after a failure; null means we could not read it, which is not the same as \"no\". The buyer needs no prior wallet registration: a payment proves control of the tokens, which is what a connect-and-verify step would have been proving.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Build a transfer for the buyer to sign themselves.
  result = api_instance.create_cbx_wallet_payment_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_quote: #{e}"
end
```

#### Using the create_cbx_wallet_payment_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxWalletPaymentQuoteResponse>, Integer, Hash)> create_cbx_wallet_payment_quote_with_http_info

```ruby
begin
  # Build a transfer for the buyer to sign themselves.
  data, status_code, headers = api_instance.create_cbx_wallet_payment_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxWalletPaymentQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxWalletPaymentQuoteResponse**](CreateCbxWalletPaymentQuoteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_wallet_payment_resolve

> <CreateCbxWalletPaymentResolveResponse> create_cbx_wallet_payment_resolve(payment_id)

A human decides on a held payment.

Only moves a payment OUT of `review`, never between the other two. A refusal that could later be flipped to a release is an approval control with no teeth, and a release re-decided as a refusal after the goods shipped is a record that no longer describes what happened. The reviewer and their note are stored on the row, because this is the decision somebody will be asked to justify.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
payment_id = 'payment_id_example' # String | 

begin
  # A human decides on a held payment.
  result = api_instance.create_cbx_wallet_payment_resolve(payment_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_resolve: #{e}"
end
```

#### Using the create_cbx_wallet_payment_resolve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxWalletPaymentResolveResponse>, Integer, Hash)> create_cbx_wallet_payment_resolve_with_http_info(payment_id)

```ruby
begin
  # A human decides on a held payment.
  data, status_code, headers = api_instance.create_cbx_wallet_payment_resolve_with_http_info(payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxWalletPaymentResolveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_payment_resolve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |

### Return type

[**CreateCbxWalletPaymentResolveResponse**](CreateCbxWalletPaymentResolveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_cbx_wallet_verify

> <CreateCbxWalletVerifyResponse> create_cbx_wallet_verify

Complete wallet verification with the user's signature.

The signature is checked against the message WE issued and stored, never one supplied here. The nonce is single-use, so the same signature cannot re-verify an address later.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Complete wallet verification with the user's signature.
  result = api_instance.create_cbx_wallet_verify
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_verify: #{e}"
end
```

#### Using the create_cbx_wallet_verify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCbxWalletVerifyResponse>, Integer, Hash)> create_cbx_wallet_verify_with_http_info

```ruby
begin
  # Complete wallet verification with the user's signature.
  data, status_code, headers = api_instance.create_cbx_wallet_verify_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCbxWalletVerifyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->create_cbx_wallet_verify_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateCbxWalletVerifyResponse**](CreateCbxWalletVerifyResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_ad_credit

> <GetCbxAdCreditResponse> get_cbx_ad_credit

Unspent advertising credit, in cents.

Advertising is payable in CBX and nothing else. Your budget is denominated in dollars, priced at the spot when your payment finalized — deliberately NOT held as a token quantity, since a price move would otherwise silently change the budget you prepaid, making you a market participant because you bought ads. Credit is 1:1 with market value: with CBX the only way to pay there is nothing to discount against. Spendable on advertising only, and not refundable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Unspent advertising credit, in cents.
  result = api_instance.get_cbx_ad_credit
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_ad_credit: #{e}"
end
```

#### Using the get_cbx_ad_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxAdCreditResponse>, Integer, Hash)> get_cbx_ad_credit_with_http_info

```ruby
begin
  # Unspent advertising credit, in cents.
  data, status_code, headers = api_instance.get_cbx_ad_credit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxAdCreditResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_ad_credit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxAdCreditResponse**](GetCbxAdCreditResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_claim

> <GetCbxClaimResponse> get_cbx_claim(claim_id)

A claim's current state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
claim_id = 'claim_id_example' # String | 

begin
  # A claim's current state.
  result = api_instance.get_cbx_claim(claim_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_claim: #{e}"
end
```

#### Using the get_cbx_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxClaimResponse>, Integer, Hash)> get_cbx_claim_with_http_info(claim_id)

```ruby
begin
  # A claim's current state.
  data, status_code, headers = api_instance.get_cbx_claim_with_http_info(claim_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_id** | **String** |  |  |

### Return type

[**GetCbxClaimResponse**](GetCbxClaimResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_credit

> <GetCbxCreditResponse> get_cbx_credit

A seller's wholesale credit line.

Trade credit, not token-collateralized lending. The line is secured by receivables we already hold — the payout stream sits under a hold with an exposure ceiling — and secondarily by goods bought from our own wholesale channel. CBX is the alignment mechanism, not the collateral: a stake raises the limit and lowers the rate, bounded to a share of the earned limit so a price collapse can never remove the majority of a facility. The limit may FALL. A drawn balance is never accelerated or margin-called — there is no liquidation engine, no keeper and no oracle trigger anywhere in it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # A seller's wholesale credit line.
  result = api_instance.get_cbx_credit
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_credit: #{e}"
end
```

#### Using the get_cbx_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxCreditResponse>, Integer, Hash)> get_cbx_credit_with_http_info

```ruby
begin
  # A seller's wholesale credit line.
  data, status_code, headers = api_instance.get_cbx_credit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxCreditResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_credit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxCreditResponse**](GetCbxCreditResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_me

> <GetCbxMeResponse> get_cbx_me

Identity check — which merchant this key belongs to, and its terms.

Returns the economics your merchant is configured with, so an integration can display accurate terms rather than hard-coding ours. Note `claimsEnabled`: off means balances are store credit that cannot leave, which is the default and the smaller regulatory posture.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Identity check — which merchant this key belongs to, and its terms.
  result = api_instance.get_cbx_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_me: #{e}"
end
```

#### Using the get_cbx_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxMeResponse>, Integer, Hash)> get_cbx_me_with_http_info

```ruby
begin
  # Identity check — which merchant this key belongs to, and its terms.
  data, status_code, headers = api_instance.get_cbx_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxMeResponse**](GetCbxMeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_pool

> <GetCbxPoolResponse> get_cbx_pool

Your events-pool balance.

Funded by the skim on in-marketplace CBX spending, the community share of withdrawal fees, and lapsed balances. Sponsor budgets are tracked separately and are not included here.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Your events-pool balance.
  result = api_instance.get_cbx_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_pool: #{e}"
end
```

#### Using the get_cbx_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxPoolResponse>, Integer, Hash)> get_cbx_pool_with_http_info

```ruby
begin
  # Your events-pool balance.
  data, status_code, headers = api_instance.get_cbx_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxPoolResponse**](GetCbxPoolResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_revenue

> <GetCbxRevenueResponse> get_cbx_revenue

Operator revenue accrued and not yet withdrawn.

Your share of the spend skim plus your half of withdrawal fees, denominated in CBX. It sits inside the reserve until swept, which is why it is tracked here rather than inferred: without a number saying how much of the reserve is yours, there is no safe amount to take out.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Operator revenue accrued and not yet withdrawn.
  result = api_instance.get_cbx_revenue
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_revenue: #{e}"
end
```

#### Using the get_cbx_revenue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxRevenueResponse>, Integer, Hash)> get_cbx_revenue_with_http_info

```ruby
begin
  # Operator revenue accrued and not yet withdrawn.
  data, status_code, headers = api_instance.get_cbx_revenue_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxRevenueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_revenue_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxRevenueResponse**](GetCbxRevenueResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_subject_balance

> <GetCbxSubjectBalanceResponse> get_cbx_subject_balance(subject_id)

What a subject holds: pending cents and available CBX.

Two numbers because they are two different things. `pendingCents` is cashback earned but still inside its window — reversible, denominated in dollars, not yet tokens. `availableBaseUnits` is CBX they hold now. Amounts are strings because a token balance can exceed what a JSON number represents exactly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # What a subject holds: pending cents and available CBX.
  result = api_instance.get_cbx_subject_balance(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_balance: #{e}"
end
```

#### Using the get_cbx_subject_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxSubjectBalanceResponse>, Integer, Hash)> get_cbx_subject_balance_with_http_info(subject_id)

```ruby
begin
  # What a subject holds: pending cents and available CBX.
  data, status_code, headers = api_instance.get_cbx_subject_balance_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxSubjectBalanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**GetCbxSubjectBalanceResponse**](GetCbxSubjectBalanceResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_subject_balance_by_subject_id

> <GetCbxSubjectBalanceBySubjectIdResponse> get_cbx_subject_balance_by_subject_id(subject_id)

All three balances a subject holds.

EARNED is cashback and affiliate accruals — withdrawable once matured and above the claim floor. GRANTED is ad credit, wholesale draws and promos — spendable in your marketplace only, never withdrawable, so it creates no sell pressure. CONNECTED is the subject's own self-custodied CBX, reachable through a bounded delegation; it was never our liability and does not enter the reserve invariant. `connectedAvailableBaseUnits` is delegation HEADROOM, not a wallet balance — the subject may hold less than they approved, or have revoked on chain without telling us, so treat it as a ceiling and let the spend re-read the chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # All three balances a subject holds.
  result = api_instance.get_cbx_subject_balance_by_subject_id(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_balance_by_subject_id: #{e}"
end
```

#### Using the get_cbx_subject_balance_by_subject_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxSubjectBalanceBySubjectIdResponse>, Integer, Hash)> get_cbx_subject_balance_by_subject_id_with_http_info(subject_id)

```ruby
begin
  # All three balances a subject holds.
  data, status_code, headers = api_instance.get_cbx_subject_balance_by_subject_id_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxSubjectBalanceBySubjectIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_balance_by_subject_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**GetCbxSubjectBalanceBySubjectIdResponse**](GetCbxSubjectBalanceBySubjectIdResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_subject_spent

> <GetCbxSubjectSpentResponse> get_cbx_subject_spent(subject_id)

Total CBX a subject has spent in your marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Total CBX a subject has spent in your marketplace.
  result = api_instance.get_cbx_subject_spent(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_spent: #{e}"
end
```

#### Using the get_cbx_subject_spent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxSubjectSpentResponse>, Integer, Hash)> get_cbx_subject_spent_with_http_info(subject_id)

```ruby
begin
  # Total CBX a subject has spent in your marketplace.
  data, status_code, headers = api_instance.get_cbx_subject_spent_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxSubjectSpentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_spent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**GetCbxSubjectSpentResponse**](GetCbxSubjectSpentResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_subject_stake

> <GetCbxSubjectStakeResponse> get_cbx_subject_stake(subject_id)

A subject's staking state and spendable balance.

`availableBaseUnits` is the number a checkout must use — balance minus anything locked. `earnBoostBps` reads zero once an unstake has been requested, because the boost ends with the commitment; `feeDiscountBps` survives the cooldown, since withdrawing is exactly what somebody in cooldown is trying to do.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # A subject's staking state and spendable balance.
  result = api_instance.get_cbx_subject_stake(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_stake: #{e}"
end
```

#### Using the get_cbx_subject_stake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxSubjectStakeResponse>, Integer, Hash)> get_cbx_subject_stake_with_http_info(subject_id)

```ruby
begin
  # A subject's staking state and spendable balance.
  data, status_code, headers = api_instance.get_cbx_subject_stake_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxSubjectStakeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_stake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**GetCbxSubjectStakeResponse**](GetCbxSubjectStakeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_subject_wallet

> <GetCbxSubjectWalletResponse> get_cbx_subject_wallet(subject_id)

The verified payout address for a subject, if any.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # The verified payout address for a subject, if any.
  result = api_instance.get_cbx_subject_wallet(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_wallet: #{e}"
end
```

#### Using the get_cbx_subject_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxSubjectWalletResponse>, Integer, Hash)> get_cbx_subject_wallet_with_http_info(subject_id)

```ruby
begin
  # The verified payout address for a subject, if any.
  data, status_code, headers = api_instance.get_cbx_subject_wallet_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxSubjectWalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_subject_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**GetCbxSubjectWalletResponse**](GetCbxSubjectWalletResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cbx_treasury

> <GetCbxTreasuryResponse> get_cbx_treasury

Your most recent reserve reconciliation.

Coverage is your reserve measured against what you owe your users, including claims already in flight. Below 100% your conversions stop — we will not credit balances that nothing backs. Claims and spends keep working, because those move value out and improve coverage.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Your most recent reserve reconciliation.
  result = api_instance.get_cbx_treasury
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_treasury: #{e}"
end
```

#### Using the get_cbx_treasury_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCbxTreasuryResponse>, Integer, Hash)> get_cbx_treasury_with_http_info

```ruby
begin
  # Your most recent reserve reconciliation.
  data, status_code, headers = api_instance.get_cbx_treasury_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCbxTreasuryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->get_cbx_treasury_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCbxTreasuryResponse**](GetCbxTreasuryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_ad_credit_ledger

> <V1List> list_cbx_ad_credit_ledger

Ad-credit movements, newest first.

Append-only. `purchase_cbx` and `grant` add; `ad_spend` and `expire` subtract. There is no refund kind and there will not be one: advertising credit exists to buy advertising, and any exit at face value turns it into a currency exchange.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Ad-credit movements, newest first.
  result = api_instance.list_cbx_ad_credit_ledger
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_ad_credit_ledger: #{e}"
end
```

#### Using the list_cbx_ad_credit_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_ad_credit_ledger_with_http_info

```ruby
begin
  # Ad-credit movements, newest first.
  data, status_code, headers = api_instance.list_cbx_ad_credit_ledger_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_ad_credit_ledger_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_boosts

> <V1List> list_cbx_boosts

Your funded cashback boosts, newest first.

`spentCents` against `budgetCents` is the live burn. The budget is a hard ceiling enforced inside the accrual transaction, so a boost cannot overspend — when it runs out, matching orders quietly fall back to your base rate rather than failing or accruing zero.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Your funded cashback boosts, newest first.
  result = api_instance.list_cbx_boosts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_boosts: #{e}"
end
```

#### Using the list_cbx_boosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_boosts_with_http_info

```ruby
begin
  # Your funded cashback boosts, newest first.
  data, status_code, headers = api_instance.list_cbx_boosts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_boosts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_campaign_payouts

> <V1List> list_cbx_campaign_payouts(campaign_id)

What a campaign actually paid, with the weight behind each amount.

The weight is kept so a payout can be explained to the person who received it. \"Why did I get this much\" should have an answer that is not \"the algorithm\".

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
campaign_id = 'campaign_id_example' # String | 

begin
  # What a campaign actually paid, with the weight behind each amount.
  result = api_instance.list_cbx_campaign_payouts(campaign_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_campaign_payouts: #{e}"
end
```

#### Using the list_cbx_campaign_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_campaign_payouts_with_http_info(campaign_id)

```ruby
begin
  # What a campaign actually paid, with the weight behind each amount.
  data, status_code, headers = api_instance.list_cbx_campaign_payouts_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_campaign_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_campaigns

> <V1List> list_cbx_campaigns

Your campaigns, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Your campaigns, newest first.
  result = api_instance.list_cbx_campaigns
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_campaigns: #{e}"
end
```

#### Using the list_cbx_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_campaigns_with_http_info

```ruby
begin
  # Your campaigns, newest first.
  data, status_code, headers = api_instance.list_cbx_campaigns_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_campaigns_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_disbursement_progress

> <V1List> list_cbx_disbursement_progress

How close each rule is to firing — the public counter.

Safe to show users. A climbing counter toward a known number is the reason to prefer cadence-plus-threshold over a pure threshold: people can see the pool rising and know roughly when the next event is possible. A trigger nobody can anticipate generates suspicion rather than anticipation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # How close each rule is to firing — the public counter.
  result = api_instance.list_cbx_disbursement_progress
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_disbursement_progress: #{e}"
end
```

#### Using the list_cbx_disbursement_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_disbursement_progress_with_http_info

```ruby
begin
  # How close each rule is to firing — the public counter.
  data, status_code, headers = api_instance.list_cbx_disbursement_progress_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_disbursement_progress_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_disbursement_rules

> <V1List> list_cbx_disbursement_rules

Threshold rules that fire community distributions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Threshold rules that fire community distributions.
  result = api_instance.list_cbx_disbursement_rules
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_disbursement_rules: #{e}"
end
```

#### Using the list_cbx_disbursement_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_disbursement_rules_with_http_info

```ruby
begin
  # Threshold rules that fire community distributions.
  data, status_code, headers = api_instance.list_cbx_disbursement_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_disbursement_rules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_earn_tiers

> <V1List> list_cbx_earn_tiers

Earn terms on offer — longer maturation, higher rate.

A term structure on a rebate, not a yield: the user chooses WHEN to be paid for a purchase they already made, and a longer wait earns more. Nothing accrues to a balance for being held. Show these at checkout so the choice is the user's — the rate is snapshot onto the accrual, so a tier edited later never reprices a promise already made.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Earn terms on offer — longer maturation, higher rate.
  result = api_instance.list_cbx_earn_tiers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_earn_tiers: #{e}"
end
```

#### Using the list_cbx_earn_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_earn_tiers_with_http_info

```ruby
begin
  # Earn terms on offer — longer maturation, higher rate.
  data, status_code, headers = api_instance.list_cbx_earn_tiers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_earn_tiers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_redemption_services

> <V1List> list_cbx_redemption_services

Services payable in CBX, and the discount each carries.

Paying in CBX costs less than paying in dollars, which is what makes anybody choose it. These are real services with real cost behind them rather than a sink invented to soak up supply — and sinks matter: supply is fixed, so tokens that only ever accumulate starve the market the protocol has to buy from.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Services payable in CBX, and the discount each carries.
  result = api_instance.list_cbx_redemption_services
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_redemption_services: #{e}"
end
```

#### Using the list_cbx_redemption_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_redemption_services_with_http_info

```ruby
begin
  # Services payable in CBX, and the discount each carries.
  data, status_code, headers = api_instance.list_cbx_redemption_services_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_redemption_services_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_stake_tiers

> <V1List> list_cbx_stake_tiers

Staking tiers — what locking tokens buys.

Staking pays NOTHING. It confers a lower withdrawal fee and a higher earn rate on future purchases: a discount for commitment, not a return on a holding. Staked tokens never leave the user — they stay in their balance and stay backed by the reserve — they simply become unspendable until unstaked.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Staking tiers — what locking tokens buys.
  result = api_instance.list_cbx_stake_tiers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_stake_tiers: #{e}"
end
```

#### Using the list_cbx_stake_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_stake_tiers_with_http_info

```ruby
begin
  # Staking tiers — what locking tokens buys.
  data, status_code, headers = api_instance.list_cbx_stake_tiers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_stake_tiers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_subject_grants

> <V1List> list_cbx_subject_grants(subject_id)

Live grants, soonest-expiring first.

That ordering is the allocation order: a spend consumes the grant closest to lapsing, so value about to expire is used before value that will not. Grants with no expiry sort last.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 

begin
  # Live grants, soonest-expiring first.
  result = api_instance.list_cbx_subject_grants(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_subject_grants: #{e}"
end
```

#### Using the list_cbx_subject_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_subject_grants_with_http_info(subject_id)

```ruby
begin
  # Live grants, soonest-expiring first.
  data, status_code, headers = api_instance.list_cbx_subject_grants_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_subject_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_subject_ledger

> <V1List> list_cbx_subject_ledger(subject_id, opts)

A subject's CBX ledger, newest first.

Append-only. The balance is the sum of these rows and there is no cached balance anywhere that could disagree with them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new
subject_id = 'subject_id_example' # String | 
opts = {
  limit: 56 # Integer | 
}

begin
  # A subject's CBX ledger, newest first.
  result = api_instance.list_cbx_subject_ledger(subject_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_subject_ledger: #{e}"
end
```

#### Using the list_cbx_subject_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_subject_ledger_with_http_info(subject_id, opts)

```ruby
begin
  # A subject's CBX ledger, newest first.
  data, status_code, headers = api_instance.list_cbx_subject_ledger_with_http_info(subject_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_subject_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cbx_wallet_payment_review

> <V1List> list_cbx_wallet_payment_review

Payments held for a human — the ops queue.

Every row here is money taken and goods not shipped, which is not a state to leave a buyer in without it appearing on a list. `riskLevel` and `riskExposures` are the verdict as recorded at the time, not re-derived — asking a provider again next month answers a different question than the one already decided.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CBXApi.new

begin
  # Payments held for a human — the ops queue.
  result = api_instance.list_cbx_wallet_payment_review
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_wallet_payment_review: #{e}"
end
```

#### Using the list_cbx_wallet_payment_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_cbx_wallet_payment_review_with_http_info

```ruby
begin
  # Payments held for a human — the ops queue.
  data, status_code, headers = api_instance.list_cbx_wallet_payment_review_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling CBXApi->list_cbx_wallet_payment_review_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

