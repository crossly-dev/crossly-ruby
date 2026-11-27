# Crossly::FundingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_apply**](FundingApi.md#create_funding_apply) | **POST** /v1/funding/apply | Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit &#x3D; 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person. |
| [**create_funding_draw**](FundingApi.md#create_funding_draw) | **POST** /v1/funding/draws | Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey. |
| [**create_funding_draw_approve**](FundingApi.md#create_funding_draw_approve) | **POST** /v1/funding/draws/{id}/approve | Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own. |
| [**create_funding_draw_quote**](FundingApi.md#create_funding_draw_quote) | **POST** /v1/funding/draws/quote | The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn. |
| [**create_funding_draw_reject**](FundingApi.md#create_funding_draw_reject) | **POST** /v1/funding/draws/{id}/reject | Reject a held draw. Nothing was drawn, so nothing is owed. |
| [**create_funding_draw_use**](FundingApi.md#create_funding_draw_use) | **POST** /v1/funding/draws/use | Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first. |
| [**create_funding_invoice_file**](FundingApi.md#create_funding_invoice_file) | **POST** /v1/funding/invoice-files | Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId &#x3D; file.id. Stored privately; one draw per file. |
| [**create_funding_pay_crossly_fee**](FundingApi.md#create_funding_pay_crossly_fee) | **POST** /v1/funding/pay/crossly-fees | Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice. |
| [**create_funding_pay_shipping_label**](FundingApi.md#create_funding_pay_shipping_label) | **POST** /v1/funding/pay/shipping-labels | Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw. |
| [**create_funding_pay_vault_fee**](FundingApi.md#create_funding_pay_vault_fee) | **POST** /v1/funding/pay/vault-fees | Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card. |
| [**create_funding_pool_stake**](FundingApi.md#create_funding_pool_stake) | **POST** /v1/funding/pool/stake | Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open. |
| [**create_funding_pool_unstake**](FundingApi.md#create_funding_pool_unstake) | **POST** /v1/funding/pool/unstake | Queue an unstake. Paid first-in first-out once your lockup has passed. |
| [**create_funding_pool_unstake_cancel**](FundingApi.md#create_funding_pool_unstake_cancel) | **POST** /v1/funding/pool/unstake/{id}/cancel | Cancel a queued unstake that has not been paid yet. |
| [**create_funding_pool_waitlist**](FundingApi.md#create_funding_pool_waitlist) | **POST** /v1/funding/pool/waitlist | Join the staker waitlist: told the moment staking into the funding pool opens. |
| [**create_funding_repay**](FundingApi.md#create_funding_repay) | **POST** /v1/funding/repay | Repay. source \&quot;balance\&quot; (default) takes it from your available Stripe payout balance and applies it at once. source \&quot;card\&quot; returns a PaymentIntent client secret to confirm with Stripe; source \&quot;checkout\&quot; returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \&quot;cbx\&quot; pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey. |
| [**delete_funding_member**](FundingApi.md#delete_funding_member) | **DELETE** /v1/funding/members/{memberUserId} | Remove a team member’s funding limit: they can no longer draw. |
| [**get_funding_control**](FundingApi.md#get_funding_control) | **GET** /v1/funding/controls | Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit. |
| [**get_funding_draw**](FundingApi.md#get_funding_draw) | **GET** /v1/funding/draws/{id} | One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid). |
| [**get_funding_draw_invoice**](FundingApi.md#get_funding_draw_invoice) | **GET** /v1/funding/draws/{id}/invoice | A 15-minute signed link to a draw&#39;s uploaded supplier invoice, with the file&#39;s name, type and size. 404 when the draw has no uploaded file. |
| [**get_funding_line**](FundingApi.md#get_funding_line) | **GET** /v1/funding/line | Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share. |
| [**get_funding_offer**](FundingApi.md#get_funding_offer) | **GET** /v1/funding/offer | Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line. |
| [**get_funding_pool**](FundingApi.md#get_funding_pool) | **GET** /v1/funding/pool | The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows. |
| [**get_funding_pool_stake**](FundingApi.md#get_funding_pool_stake) | **GET** /v1/funding/pool/stake | Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure. |
| [**get_funding_spendable**](FundingApi.md#get_funding_spendable) | **GET** /v1/funding/spendable | What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 &#x3D; none, or your spend controls refuse that use. |
| [**get_funding_statement**](FundingApi.md#get_funding_statement) | **GET** /v1/funding/statements | A monthly statement (?month&#x3D;YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available. |
| [**list_funding_approvals**](FundingApi.md#list_funding_approvals) | **GET** /v1/funding/approvals | Draws your spend controls hold for approval, with the approvals so far and how many are needed. |
| [**list_funding_draws**](FundingApi.md#list_funding_draws) | **GET** /v1/funding/draws | Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date. |
| [**list_funding_receipts**](FundingApi.md#list_funding_receipts) | **GET** /v1/funding/receipts | Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against. |
| [**list_funding_repayments**](FundingApi.md#list_funding_repayments) | **GET** /v1/funding/repayments | Manual repayments (card / bank, or from your payout balance), newest first. |
| [**update_funding_autorepay**](FundingApi.md#update_funding_autorepay) | **PUT** /v1/funding/autorepay | Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken. |
| [**update_funding_control**](FundingApi.md#update_funding_control) | **PUT** /v1/funding/controls | Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees. |
| [**update_funding_member**](FundingApi.md#update_funding_member) | **PUT** /v1/funding/members/{memberUserId} | Set a team member’s funding limit (per draw or per month). |


## create_funding_apply

> <CreateFundingApplyResponse> create_funding_apply

Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit = 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit = 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.
  result = api_instance.create_funding_apply
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_apply: #{e}"
end
```

#### Using the create_funding_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingApplyResponse>, Integer, Hash)> create_funding_apply_with_http_info

```ruby
begin
  # Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit = 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.
  data, status_code, headers = api_instance.create_funding_apply_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_apply_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_draw

> <CreateFundingDrawResponse> create_funding_draw

Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.
  result = api_instance.create_funding_draw
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw: #{e}"
end
```

#### Using the create_funding_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingDrawResponse>, Integer, Hash)> create_funding_draw_with_http_info

```ruby
begin
  # Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.
  data, status_code, headers = api_instance.create_funding_draw_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingDrawResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_draw_approve

> <CreateFundingDrawRejectResponse> create_funding_draw_approve(id)

Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
id = 'id_example' # String | 

begin
  # Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.
  result = api_instance.create_funding_draw_approve(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_approve: #{e}"
end
```

#### Using the create_funding_draw_approve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingDrawRejectResponse>, Integer, Hash)> create_funding_draw_approve_with_http_info(id)

```ruby
begin
  # Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.
  data, status_code, headers = api_instance.create_funding_draw_approve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingDrawRejectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_approve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateFundingDrawRejectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_draw_quote

> <CreateFundingDrawQuoteResponse> create_funding_draw_quote

The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.
  result = api_instance.create_funding_draw_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_quote: #{e}"
end
```

#### Using the create_funding_draw_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingDrawQuoteResponse>, Integer, Hash)> create_funding_draw_quote_with_http_info

```ruby
begin
  # The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.
  data, status_code, headers = api_instance.create_funding_draw_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingDrawQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingDrawQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_draw_reject

> <CreateFundingDrawRejectResponse> create_funding_draw_reject(id)

Reject a held draw. Nothing was drawn, so nothing is owed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
id = 'id_example' # String | 

begin
  # Reject a held draw. Nothing was drawn, so nothing is owed.
  result = api_instance.create_funding_draw_reject(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_reject: #{e}"
end
```

#### Using the create_funding_draw_reject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingDrawRejectResponse>, Integer, Hash)> create_funding_draw_reject_with_http_info(id)

```ruby
begin
  # Reject a held draw. Nothing was drawn, so nothing is owed.
  data, status_code, headers = api_instance.create_funding_draw_reject_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingDrawRejectResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_reject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateFundingDrawRejectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_draw_use

> <CreateFundingDrawUseResponse> create_funding_draw_use

Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.
  result = api_instance.create_funding_draw_use
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_use: #{e}"
end
```

#### Using the create_funding_draw_use_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingDrawUseResponse>, Integer, Hash)> create_funding_draw_use_with_http_info

```ruby
begin
  # Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.
  data, status_code, headers = api_instance.create_funding_draw_use_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingDrawUseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_draw_use_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingDrawUseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_invoice_file

> <CreateFundingInvoiceFileResponse> create_funding_invoice_file

Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId = file.id. Stored privately; one draw per file.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId = file.id. Stored privately; one draw per file.
  result = api_instance.create_funding_invoice_file
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_invoice_file: #{e}"
end
```

#### Using the create_funding_invoice_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingInvoiceFileResponse>, Integer, Hash)> create_funding_invoice_file_with_http_info

```ruby
begin
  # Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId = file.id. Stored privately; one draw per file.
  data, status_code, headers = api_instance.create_funding_invoice_file_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingInvoiceFileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_invoice_file_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingInvoiceFileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pay_crossly_fee

> <CreateFundingPayCrosslyFeeResponse> create_funding_pay_crossly_fee

Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.
  result = api_instance.create_funding_pay_crossly_fee
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_crossly_fee: #{e}"
end
```

#### Using the create_funding_pay_crossly_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingPayCrosslyFeeResponse>, Integer, Hash)> create_funding_pay_crossly_fee_with_http_info

```ruby
begin
  # Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.
  data, status_code, headers = api_instance.create_funding_pay_crossly_fee_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingPayCrosslyFeeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_crossly_fee_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingPayCrosslyFeeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pay_shipping_label

> <CreateFundingPayShippingLabelResponse> create_funding_pay_shipping_label

Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.
  result = api_instance.create_funding_pay_shipping_label
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_shipping_label: #{e}"
end
```

#### Using the create_funding_pay_shipping_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingPayShippingLabelResponse>, Integer, Hash)> create_funding_pay_shipping_label_with_http_info

```ruby
begin
  # Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.
  data, status_code, headers = api_instance.create_funding_pay_shipping_label_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingPayShippingLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_shipping_label_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingPayShippingLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pay_vault_fee

> <CreateFundingPayVaultFeeResponse> create_funding_pay_vault_fee

Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.
  result = api_instance.create_funding_pay_vault_fee
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_vault_fee: #{e}"
end
```

#### Using the create_funding_pay_vault_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingPayVaultFeeResponse>, Integer, Hash)> create_funding_pay_vault_fee_with_http_info

```ruby
begin
  # Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.
  data, status_code, headers = api_instance.create_funding_pay_vault_fee_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingPayVaultFeeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pay_vault_fee_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingPayVaultFeeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pool_stake

> <CreateFundingPoolStakeResponse> create_funding_pool_stake

Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.
  result = api_instance.create_funding_pool_stake
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_stake: #{e}"
end
```

#### Using the create_funding_pool_stake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingPoolStakeResponse>, Integer, Hash)> create_funding_pool_stake_with_http_info

```ruby
begin
  # Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.
  data, status_code, headers = api_instance.create_funding_pool_stake_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingPoolStakeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_stake_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingPoolStakeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pool_unstake

> <FundingPoolResponse> create_funding_pool_unstake

Queue an unstake. Paid first-in first-out once your lockup has passed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Queue an unstake. Paid first-in first-out once your lockup has passed.
  result = api_instance.create_funding_pool_unstake
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_unstake: #{e}"
end
```

#### Using the create_funding_pool_unstake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingPoolResponse>, Integer, Hash)> create_funding_pool_unstake_with_http_info

```ruby
begin
  # Queue an unstake. Paid first-in first-out once your lockup has passed.
  data, status_code, headers = api_instance.create_funding_pool_unstake_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_unstake_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pool_unstake_cancel

> <FundingPoolResponse> create_funding_pool_unstake_cancel(id)

Cancel a queued unstake that has not been paid yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
id = 'id_example' # String | 

begin
  # Cancel a queued unstake that has not been paid yet.
  result = api_instance.create_funding_pool_unstake_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_unstake_cancel: #{e}"
end
```

#### Using the create_funding_pool_unstake_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingPoolResponse>, Integer, Hash)> create_funding_pool_unstake_cancel_with_http_info(id)

```ruby
begin
  # Cancel a queued unstake that has not been paid yet.
  data, status_code, headers = api_instance.create_funding_pool_unstake_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_unstake_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_pool_waitlist

> <FundingPoolResponse> create_funding_pool_waitlist

Join the staker waitlist: told the moment staking into the funding pool opens.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Join the staker waitlist: told the moment staking into the funding pool opens.
  result = api_instance.create_funding_pool_waitlist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_waitlist: #{e}"
end
```

#### Using the create_funding_pool_waitlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingPoolResponse>, Integer, Hash)> create_funding_pool_waitlist_with_http_info

```ruby
begin
  # Join the staker waitlist: told the moment staking into the funding pool opens.
  data, status_code, headers = api_instance.create_funding_pool_waitlist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_pool_waitlist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_funding_repay

> <CreateFundingRepayResponse> create_funding_repay

Repay. source \"balance\" (default) takes it from your available Stripe payout balance and applies it at once. source \"card\" returns a PaymentIntent client secret to confirm with Stripe; source \"checkout\" returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \"cbx\" pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Repay. source \"balance\" (default) takes it from your available Stripe payout balance and applies it at once. source \"card\" returns a PaymentIntent client secret to confirm with Stripe; source \"checkout\" returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \"cbx\" pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.
  result = api_instance.create_funding_repay
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_repay: #{e}"
end
```

#### Using the create_funding_repay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFundingRepayResponse>, Integer, Hash)> create_funding_repay_with_http_info

```ruby
begin
  # Repay. source \"balance\" (default) takes it from your available Stripe payout balance and applies it at once. source \"card\" returns a PaymentIntent client secret to confirm with Stripe; source \"checkout\" returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \"cbx\" pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.
  data, status_code, headers = api_instance.create_funding_repay_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFundingRepayResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->create_funding_repay_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateFundingRepayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_funding_member

> <DeleteFundingMemberResponse> delete_funding_member(member_user_id)

Remove a team member’s funding limit: they can no longer draw.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
member_user_id = 'member_user_id_example' # String | 

begin
  # Remove a team member’s funding limit: they can no longer draw.
  result = api_instance.delete_funding_member(member_user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->delete_funding_member: #{e}"
end
```

#### Using the delete_funding_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFundingMemberResponse>, Integer, Hash)> delete_funding_member_with_http_info(member_user_id)

```ruby
begin
  # Remove a team member’s funding limit: they can no longer draw.
  data, status_code, headers = api_instance.delete_funding_member_with_http_info(member_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFundingMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->delete_funding_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_user_id** | **String** |  |  |

### Return type

**DeleteFundingMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_control

> <GetFundingControlResponse> get_funding_control

Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.
  result = api_instance.get_funding_control
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_control: #{e}"
end
```

#### Using the get_funding_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingControlResponse>, Integer, Hash)> get_funding_control_with_http_info

```ruby
begin
  # Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.
  data, status_code, headers = api_instance.get_funding_control_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingControlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_control_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_draw

> <GetFundingDrawResponse> get_funding_draw(id)

One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
id = 'id_example' # String | 

begin
  # One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).
  result = api_instance.get_funding_draw(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_draw: #{e}"
end
```

#### Using the get_funding_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingDrawResponse>, Integer, Hash)> get_funding_draw_with_http_info(id)

```ruby
begin
  # One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).
  data, status_code, headers = api_instance.get_funding_draw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingDrawResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_draw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetFundingDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_draw_invoice

> <GetFundingDrawInvoiceResponse> get_funding_draw_invoice(id)

A 15-minute signed link to a draw's uploaded supplier invoice, with the file's name, type and size. 404 when the draw has no uploaded file.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
id = 'id_example' # String | 

begin
  # A 15-minute signed link to a draw's uploaded supplier invoice, with the file's name, type and size. 404 when the draw has no uploaded file.
  result = api_instance.get_funding_draw_invoice(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_draw_invoice: #{e}"
end
```

#### Using the get_funding_draw_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingDrawInvoiceResponse>, Integer, Hash)> get_funding_draw_invoice_with_http_info(id)

```ruby
begin
  # A 15-minute signed link to a draw's uploaded supplier invoice, with the file's name, type and size. 404 when the draw has no uploaded file.
  data, status_code, headers = api_instance.get_funding_draw_invoice_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingDrawInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_draw_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetFundingDrawInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_line

> <GetFundingLineResponse> get_funding_line

Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.
  result = api_instance.get_funding_line
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_line: #{e}"
end
```

#### Using the get_funding_line_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingLineResponse>, Integer, Hash)> get_funding_line_with_http_info

```ruby
begin
  # Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.
  data, status_code, headers = api_instance.get_funding_line_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingLineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_line_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingLineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_offer

> <GetFundingOfferResponse> get_funding_offer

Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.
  result = api_instance.get_funding_offer
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_offer: #{e}"
end
```

#### Using the get_funding_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingOfferResponse>, Integer, Hash)> get_funding_offer_with_http_info

```ruby
begin
  # Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.
  data, status_code, headers = api_instance.get_funding_offer_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_offer_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_pool

> <GetFundingPoolResponse> get_funding_pool

The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.
  result = api_instance.get_funding_pool
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_pool: #{e}"
end
```

#### Using the get_funding_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingPoolResponse>, Integer, Hash)> get_funding_pool_with_http_info

```ruby
begin
  # The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.
  data, status_code, headers = api_instance.get_funding_pool_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_pool_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_pool_stake

> <FundingPoolResponse> get_funding_pool_stake

Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.
  result = api_instance.get_funding_pool_stake
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_pool_stake: #{e}"
end
```

#### Using the get_funding_pool_stake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingPoolResponse>, Integer, Hash)> get_funding_pool_stake_with_http_info

```ruby
begin
  # Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.
  data, status_code, headers = api_instance.get_funding_pool_stake_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingPoolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_pool_stake_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_spendable

> <GetFundingSpendableResponse> get_funding_spendable

What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 = none, or your spend controls refuse that use.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 = none, or your spend controls refuse that use.
  result = api_instance.get_funding_spendable
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_spendable: #{e}"
end
```

#### Using the get_funding_spendable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingSpendableResponse>, Integer, Hash)> get_funding_spendable_with_http_info

```ruby
begin
  # What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 = none, or your spend controls refuse that use.
  data, status_code, headers = api_instance.get_funding_spendable_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingSpendableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_spendable_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingSpendableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_statement

> <GetFundingStatementResponse> get_funding_statement

A monthly statement (?month=YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # A monthly statement (?month=YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.
  result = api_instance.get_funding_statement
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_statement: #{e}"
end
```

#### Using the get_funding_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingStatementResponse>, Integer, Hash)> get_funding_statement_with_http_info

```ruby
begin
  # A monthly statement (?month=YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.
  data, status_code, headers = api_instance.get_funding_statement_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingStatementResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->get_funding_statement_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetFundingStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_funding_approvals

> <ListFundingApprovalsResponse> list_funding_approvals

Draws your spend controls hold for approval, with the approvals so far and how many are needed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Draws your spend controls hold for approval, with the approvals so far and how many are needed.
  result = api_instance.list_funding_approvals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_approvals: #{e}"
end
```

#### Using the list_funding_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingApprovalsResponse>, Integer, Hash)> list_funding_approvals_with_http_info

```ruby
begin
  # Draws your spend controls hold for approval, with the approvals so far and how many are needed.
  data, status_code, headers = api_instance.list_funding_approvals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingApprovalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_approvals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListFundingApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_funding_draws

> <ListFundingDrawsResponse> list_funding_draws

Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.
  result = api_instance.list_funding_draws
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_draws: #{e}"
end
```

#### Using the list_funding_draws_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingDrawsResponse>, Integer, Hash)> list_funding_draws_with_http_info

```ruby
begin
  # Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.
  data, status_code, headers = api_instance.list_funding_draws_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingDrawsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_draws_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListFundingDrawsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_funding_receipts

> <ListFundingReceiptsResponse> list_funding_receipts

Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.
  result = api_instance.list_funding_receipts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_receipts: #{e}"
end
```

#### Using the list_funding_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingReceiptsResponse>, Integer, Hash)> list_funding_receipts_with_http_info

```ruby
begin
  # Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.
  data, status_code, headers = api_instance.list_funding_receipts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingReceiptsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_receipts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListFundingReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_funding_repayments

> <ListFundingRepaymentsResponse> list_funding_repayments

Manual repayments (card / bank, or from your payout balance), newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Manual repayments (card / bank, or from your payout balance), newest first.
  result = api_instance.list_funding_repayments
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_repayments: #{e}"
end
```

#### Using the list_funding_repayments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingRepaymentsResponse>, Integer, Hash)> list_funding_repayments_with_http_info

```ruby
begin
  # Manual repayments (card / bank, or from your payout balance), newest first.
  data, status_code, headers = api_instance.list_funding_repayments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingRepaymentsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->list_funding_repayments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListFundingRepaymentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_funding_autorepay

> <UpdateFundingAutorepayResponse> update_funding_autorepay

Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.
  result = api_instance.update_funding_autorepay
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_autorepay: #{e}"
end
```

#### Using the update_funding_autorepay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFundingAutorepayResponse>, Integer, Hash)> update_funding_autorepay_with_http_info

```ruby
begin
  # Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.
  data, status_code, headers = api_instance.update_funding_autorepay_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFundingAutorepayResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_autorepay_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateFundingAutorepayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_funding_control

> <UpdateFundingControlResponse> update_funding_control

Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new

begin
  # Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.
  result = api_instance.update_funding_control
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_control: #{e}"
end
```

#### Using the update_funding_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFundingControlResponse>, Integer, Hash)> update_funding_control_with_http_info

```ruby
begin
  # Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.
  data, status_code, headers = api_instance.update_funding_control_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFundingControlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_control_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateFundingControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_funding_member

> <UpdateFundingMemberResponse> update_funding_member(member_user_id)

Set a team member’s funding limit (per draw or per month).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::FundingApi.new
member_user_id = 'member_user_id_example' # String | 

begin
  # Set a team member’s funding limit (per draw or per month).
  result = api_instance.update_funding_member(member_user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_member: #{e}"
end
```

#### Using the update_funding_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFundingMemberResponse>, Integer, Hash)> update_funding_member_with_http_info(member_user_id)

```ruby
begin
  # Set a team member’s funding limit (per draw or per month).
  data, status_code, headers = api_instance.update_funding_member_with_http_info(member_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFundingMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling FundingApi->update_funding_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_user_id** | **String** |  |  |

### Return type

**UpdateFundingMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

