# Crossly::WorldsMoneyApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_earning_payout_account_onboard**](WorldsMoneyApi.md#create_world_earning_payout_account_onboard) | **POST** /v1/worlds/earnings/payout-account/onboard | Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists). |
| [**create_world_experience_drop_table**](WorldsMoneyApi.md#create_world_experience_drop_table) | **POST** /v1/worlds/experiences/{experienceId}/drop-tables | Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it. |
| [**create_world_experience_product**](WorldsMoneyApi.md#create_world_experience_product) | **POST** /v1/worlds/experiences/{experienceId}/products | Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable. |
| [**create_world_experience_product_archive**](WorldsMoneyApi.md#create_world_experience_product_archive) | **POST** /v1/worlds/experiences/{experienceId}/products/{productId}/archive | Take a product off sale for good. Owned passes and running subscriptions keep working. |
| [**create_world_experience_purchase**](WorldsMoneyApi.md#create_world_experience_purchase) | **POST** /v1/worlds/experiences/{experienceId}/purchases | Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout. |
| [**create_world_experience_receipt_ack**](WorldsMoneyApi.md#create_world_experience_receipt_ack) | **POST** /v1/worlds/experiences/{experienceId}/receipts/{orderId}/ack | Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate. |
| [**create_world_me_receipt_refund**](WorldsMoneyApi.md#create_world_me_receipt_refund) | **POST** /v1/worlds/me/receipts/{receiptId}/refund | Refund a developer product bought by mistake: within the self-refund window and before the experience granted it. |
| [**create_world_me_subscription_cancel**](WorldsMoneyApi.md#create_world_me_subscription_cancel) | **POST** /v1/worlds/me/subscriptions/{id}/cancel | Cancel: no more charges; the benefit lasts to the end of the paid month. |
| [**create_world_me_subscription_private_server_code**](WorldsMoneyApi.md#create_world_me_subscription_private_server_code) | **POST** /v1/worlds/me/subscriptions/{id}/private-server-code | A fresh access code for your private server (the previous one stops working). Join with reservedCode. |
| [**create_world_purchase_cancel**](WorldsMoneyApi.md#create_world_purchase_cancel) | **POST** /v1/worlds/purchases/{intentId}/cancel | Cancel an unpaid purchase sheet. |
| [**get_world_earning**](WorldsMoneyApi.md#get_world_earning) | **GET** /v1/worlds/earnings | Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs. |
| [**get_world_earning_payout_account**](WorldsMoneyApi.md#get_world_earning_payout_account) | **GET** /v1/worlds/earnings/payout-account | Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable. |
| [**get_world_economy**](WorldsMoneyApi.md#get_world_economy) | **GET** /v1/worlds/economy | The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees. |
| [**get_world_experience_revenue**](WorldsMoneyApi.md#get_world_experience_revenue) | **GET** /v1/worlds/experiences/{experienceId}/revenue | Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid. |
| [**get_world_experience_store**](WorldsMoneyApi.md#get_world_experience_store) | **GET** /v1/worlds/experiences/{experienceId}/store | An experience&#39;s store as you see it: your regional price, odds for paid random items, what you own. |
| [**get_world_purchase**](WorldsMoneyApi.md#get_world_purchase) | **GET** /v1/worlds/purchases/{intentId} | A purchase sheet: item, price, tax, total, odds, status. |
| [**list_world_earning_affiliate**](WorldsMoneyApi.md#list_world_earning_affiliate) | **GET** /v1/worlds/earnings/affiliate | Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted. |
| [**list_world_earning_ledger**](WorldsMoneyApi.md#list_world_earning_ledger) | **GET** /v1/worlds/earnings/ledger | Your creator ledger, newest first: every earning and reversal. Cursor-paged. |
| [**list_world_earning_payouts**](WorldsMoneyApi.md#list_world_earning_payouts) | **GET** /v1/worlds/earnings/payouts | Your monthly Crossly Carnival payouts. |
| [**list_world_experience_drop_tables**](WorldsMoneyApi.md#list_world_experience_drop_tables) | **GET** /v1/worlds/experiences/{experienceId}/drop-tables | Declared drop tables with their odds, simulation (10^6 draws) and hash. |
| [**list_world_experience_products**](WorldsMoneyApi.md#list_world_experience_products) | **GET** /v1/worlds/experiences/{experienceId}/products | What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived&#x3D;true). |
| [**list_world_experience_receipts**](WorldsMoneyApi.md#list_world_experience_receipts) | **GET** /v1/worlds/experiences/{experienceId}/receipts | Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since&#x3D;. |
| [**list_world_me_subscriptions**](WorldsMoneyApi.md#list_world_me_subscriptions) | **GET** /v1/worlds/me/subscriptions | Your experience subscriptions and private servers. |
| [**update_world_experience_product**](WorldsMoneyApi.md#update_world_experience_product) | **PATCH** /v1/worlds/experiences/{experienceId}/products/{productId} | Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change. |


## create_world_earning_payout_account_onboard

> <CreateWorldEarningPayoutAccountOnboardResponse> create_world_earning_payout_account_onboard

Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).
  result = api_instance.create_world_earning_payout_account_onboard
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_earning_payout_account_onboard: #{e}"
end
```

#### Using the create_world_earning_payout_account_onboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldEarningPayoutAccountOnboardResponse>, Integer, Hash)> create_world_earning_payout_account_onboard_with_http_info

```ruby
begin
  # Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).
  data, status_code, headers = api_instance.create_world_earning_payout_account_onboard_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldEarningPayoutAccountOnboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_earning_payout_account_onboard_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldEarningPayoutAccountOnboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_drop_table

> <CreateWorldExperienceDropTableResponse> create_world_experience_drop_table(experience_id, opts)

Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_drop_table_request: Crossly::CreateWorldExperienceDropTableRequest.new({name: 'name_example', entries: [{ key: 3.56}]}) # CreateWorldExperienceDropTableRequest | 
}

begin
  # Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.
  result = api_instance.create_world_experience_drop_table(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_drop_table: #{e}"
end
```

#### Using the create_world_experience_drop_table_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceDropTableResponse>, Integer, Hash)> create_world_experience_drop_table_with_http_info(experience_id, opts)

```ruby
begin
  # Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.
  data, status_code, headers = api_instance.create_world_experience_drop_table_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceDropTableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_drop_table_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_drop_table_request** | **CreateWorldExperienceDropTableRequest** |  | [optional] |

### Return type

**CreateWorldExperienceDropTableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_product

> <WorldExperienceProductResponse> create_world_experience_product(experience_id, opts)

Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_product_request: Crossly::CreateWorldExperienceProductRequest.new({kind: 'product', name: 'name_example', price_cents: 3.56}) # CreateWorldExperienceProductRequest | 
}

begin
  # Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.
  result = api_instance.create_world_experience_product(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_product: #{e}"
end
```

#### Using the create_world_experience_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceProductResponse>, Integer, Hash)> create_world_experience_product_with_http_info(experience_id, opts)

```ruby
begin
  # Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.
  data, status_code, headers = api_instance.create_world_experience_product_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceProductResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_product_request** | **CreateWorldExperienceProductRequest** |  | [optional] |

### Return type

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_product_archive

> <WorldExperienceProductResponse> create_world_experience_product_archive(experience_id, product_id)

Take a product off sale for good. Owned passes and running subscriptions keep working.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
product_id = 'product_id_example' # String | 

begin
  # Take a product off sale for good. Owned passes and running subscriptions keep working.
  result = api_instance.create_world_experience_product_archive(experience_id, product_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_product_archive: #{e}"
end
```

#### Using the create_world_experience_product_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceProductResponse>, Integer, Hash)> create_world_experience_product_archive_with_http_info(experience_id, product_id)

```ruby
begin
  # Take a product off sale for good. Owned passes and running subscriptions keep working.
  data, status_code, headers = api_instance.create_world_experience_product_archive_with_http_info(experience_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceProductResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_product_archive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **product_id** | **String** |  |  |

### Return type

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_purchase

> <CreateWorldExperiencePurchaseResponse> create_world_experience_purchase(experience_id, opts)

Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_purchase_request: Crossly::CreateWorldExperiencePurchaseRequest.new({product_id: 'product_id_example'}) # CreateWorldExperiencePurchaseRequest | 
}

begin
  # Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.
  result = api_instance.create_world_experience_purchase(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_purchase: #{e}"
end
```

#### Using the create_world_experience_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePurchaseResponse>, Integer, Hash)> create_world_experience_purchase_with_http_info(experience_id, opts)

```ruby
begin
  # Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.
  data, status_code, headers = api_instance.create_world_experience_purchase_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_purchase_request** | **CreateWorldExperiencePurchaseRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_receipt_ack

> <CreateWorldExperienceReceiptAckResponse> create_world_experience_receipt_ack(experience_id, order_id)

Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
order_id = 'order_id_example' # String | 

begin
  # Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.
  result = api_instance.create_world_experience_receipt_ack(experience_id, order_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_receipt_ack: #{e}"
end
```

#### Using the create_world_experience_receipt_ack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceReceiptAckResponse>, Integer, Hash)> create_world_experience_receipt_ack_with_http_info(experience_id, order_id)

```ruby
begin
  # Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.
  data, status_code, headers = api_instance.create_world_experience_receipt_ack_with_http_info(experience_id, order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceReceiptAckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_experience_receipt_ack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **order_id** | **String** |  |  |

### Return type

**CreateWorldExperienceReceiptAckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_me_receipt_refund

> <CreateWorldMeReceiptRefundResponse> create_world_me_receipt_refund(receipt_id)

Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
receipt_id = 'receipt_id_example' # String | 

begin
  # Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.
  result = api_instance.create_world_me_receipt_refund(receipt_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_receipt_refund: #{e}"
end
```

#### Using the create_world_me_receipt_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMeReceiptRefundResponse>, Integer, Hash)> create_world_me_receipt_refund_with_http_info(receipt_id)

```ruby
begin
  # Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.
  data, status_code, headers = api_instance.create_world_me_receipt_refund_with_http_info(receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMeReceiptRefundResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_receipt_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receipt_id** | **String** |  |  |

### Return type

**CreateWorldMeReceiptRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_me_subscription_cancel

> <CreateWorldMeSubscriptionCancelResponse> create_world_me_subscription_cancel(id)

Cancel: no more charges; the benefit lasts to the end of the paid month.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
id = 'id_example' # String | 

begin
  # Cancel: no more charges; the benefit lasts to the end of the paid month.
  result = api_instance.create_world_me_subscription_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_subscription_cancel: #{e}"
end
```

#### Using the create_world_me_subscription_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMeSubscriptionCancelResponse>, Integer, Hash)> create_world_me_subscription_cancel_with_http_info(id)

```ruby
begin
  # Cancel: no more charges; the benefit lasts to the end of the paid month.
  data, status_code, headers = api_instance.create_world_me_subscription_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMeSubscriptionCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_subscription_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldMeSubscriptionCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_me_subscription_private_server_code

> <CreateWorldMeSubscriptionPrivateServerCodeResponse> create_world_me_subscription_private_server_code(id)

A fresh access code for your private server (the previous one stops working). Join with reservedCode.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
id = 'id_example' # String | 

begin
  # A fresh access code for your private server (the previous one stops working). Join with reservedCode.
  result = api_instance.create_world_me_subscription_private_server_code(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_subscription_private_server_code: #{e}"
end
```

#### Using the create_world_me_subscription_private_server_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMeSubscriptionPrivateServerCodeResponse>, Integer, Hash)> create_world_me_subscription_private_server_code_with_http_info(id)

```ruby
begin
  # A fresh access code for your private server (the previous one stops working). Join with reservedCode.
  data, status_code, headers = api_instance.create_world_me_subscription_private_server_code_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMeSubscriptionPrivateServerCodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_me_subscription_private_server_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldMeSubscriptionPrivateServerCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_purchase_cancel

> <CreateWorldSpaceJoinResponse> create_world_purchase_cancel(intent_id)

Cancel an unpaid purchase sheet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
intent_id = 'intent_id_example' # String | 

begin
  # Cancel an unpaid purchase sheet.
  result = api_instance.create_world_purchase_cancel(intent_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_purchase_cancel: #{e}"
end
```

#### Using the create_world_purchase_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceJoinResponse>, Integer, Hash)> create_world_purchase_cancel_with_http_info(intent_id)

```ruby
begin
  # Cancel an unpaid purchase sheet.
  data, status_code, headers = api_instance.create_world_purchase_cancel_with_http_info(intent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->create_world_purchase_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent_id** | **String** |  |  |

### Return type

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_earning

> <GetWorldEarningResponse> get_world_earning

Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.
  result = api_instance.get_world_earning
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_earning: #{e}"
end
```

#### Using the get_world_earning_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldEarningResponse>, Integer, Hash)> get_world_earning_with_http_info

```ruby
begin
  # Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.
  data, status_code, headers = api_instance.get_world_earning_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldEarningResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_earning_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_earning_payout_account

> <GetWorldEarningPayoutAccountResponse> get_world_earning_payout_account

Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.
  result = api_instance.get_world_earning_payout_account
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_earning_payout_account: #{e}"
end
```

#### Using the get_world_earning_payout_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldEarningPayoutAccountResponse>, Integer, Hash)> get_world_earning_payout_account_with_http_info

```ruby
begin
  # Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.
  data, status_code, headers = api_instance.get_world_earning_payout_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldEarningPayoutAccountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_earning_payout_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldEarningPayoutAccountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_economy

> <GetWorldEconomyResponse> get_world_economy

The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.
  result = api_instance.get_world_economy
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_economy: #{e}"
end
```

#### Using the get_world_economy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldEconomyResponse>, Integer, Hash)> get_world_economy_with_http_info

```ruby
begin
  # The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.
  data, status_code, headers = api_instance.get_world_economy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldEconomyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_economy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldEconomyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_revenue

> <GetWorldExperienceRevenueResponse> get_world_experience_revenue(experience_id)

Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.
  result = api_instance.get_world_experience_revenue(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_experience_revenue: #{e}"
end
```

#### Using the get_world_experience_revenue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceRevenueResponse>, Integer, Hash)> get_world_experience_revenue_with_http_info(experience_id)

```ruby
begin
  # Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.
  data, status_code, headers = api_instance.get_world_experience_revenue_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceRevenueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_experience_revenue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceRevenueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_store

> <GetWorldExperienceStoreResponse> get_world_experience_store(experience_id)

An experience's store as you see it: your regional price, odds for paid random items, what you own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 

begin
  # An experience's store as you see it: your regional price, odds for paid random items, what you own.
  result = api_instance.get_world_experience_store(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_experience_store: #{e}"
end
```

#### Using the get_world_experience_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceStoreResponse>, Integer, Hash)> get_world_experience_store_with_http_info(experience_id)

```ruby
begin
  # An experience's store as you see it: your regional price, odds for paid random items, what you own.
  data, status_code, headers = api_instance.get_world_experience_store_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_experience_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_purchase

> <GetWorldPurchaseResponse> get_world_purchase(intent_id)

A purchase sheet: item, price, tax, total, odds, status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
intent_id = 'intent_id_example' # String | 

begin
  # A purchase sheet: item, price, tax, total, odds, status.
  result = api_instance.get_world_purchase(intent_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_purchase: #{e}"
end
```

#### Using the get_world_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPurchaseResponse>, Integer, Hash)> get_world_purchase_with_http_info(intent_id)

```ruby
begin
  # A purchase sheet: item, price, tax, total, odds, status.
  data, status_code, headers = api_instance.get_world_purchase_with_http_info(intent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->get_world_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent_id** | **String** |  |  |

### Return type

**GetWorldPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_earning_affiliate

> <ListWorldEarningAffiliateResponse> list_world_earning_affiliate

Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.
  result = api_instance.list_world_earning_affiliate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_affiliate: #{e}"
end
```

#### Using the list_world_earning_affiliate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldEarningAffiliateResponse>, Integer, Hash)> list_world_earning_affiliate_with_http_info

```ruby
begin
  # Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.
  data, status_code, headers = api_instance.list_world_earning_affiliate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldEarningAffiliateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_affiliate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldEarningAffiliateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_earning_ledger

> <ListWorldEarningLedgerResponse> list_world_earning_ledger(opts)

Your creator ledger, newest first: every earning and reversal. Cursor-paged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Your creator ledger, newest first: every earning and reversal. Cursor-paged.
  result = api_instance.list_world_earning_ledger(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_ledger: #{e}"
end
```

#### Using the list_world_earning_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldEarningLedgerResponse>, Integer, Hash)> list_world_earning_ledger_with_http_info(opts)

```ruby
begin
  # Your creator ledger, newest first: every earning and reversal. Cursor-paged.
  data, status_code, headers = api_instance.list_world_earning_ledger_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldEarningLedgerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListWorldEarningLedgerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_earning_payouts

> <ListWorldEarningPayoutsResponse> list_world_earning_payouts

Your monthly Crossly Carnival payouts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Your monthly Crossly Carnival payouts.
  result = api_instance.list_world_earning_payouts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_payouts: #{e}"
end
```

#### Using the list_world_earning_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldEarningPayoutsResponse>, Integer, Hash)> list_world_earning_payouts_with_http_info

```ruby
begin
  # Your monthly Crossly Carnival payouts.
  data, status_code, headers = api_instance.list_world_earning_payouts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldEarningPayoutsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_earning_payouts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldEarningPayoutsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_drop_tables

> <ListWorldExperienceDropTablesResponse> list_world_experience_drop_tables(experience_id)

Declared drop tables with their odds, simulation (10^6 draws) and hash.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Declared drop tables with their odds, simulation (10^6 draws) and hash.
  result = api_instance.list_world_experience_drop_tables(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_drop_tables: #{e}"
end
```

#### Using the list_world_experience_drop_tables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceDropTablesResponse>, Integer, Hash)> list_world_experience_drop_tables_with_http_info(experience_id)

```ruby
begin
  # Declared drop tables with their odds, simulation (10^6 draws) and hash.
  data, status_code, headers = api_instance.list_world_experience_drop_tables_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceDropTablesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_drop_tables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceDropTablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_products

> <ListWorldExperienceProductsResponse> list_world_experience_products(experience_id)

What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived=true).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 

begin
  # What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived=true).
  result = api_instance.list_world_experience_products(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_products: #{e}"
end
```

#### Using the list_world_experience_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceProductsResponse>, Integer, Hash)> list_world_experience_products_with_http_info(experience_id)

```ruby
begin
  # What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived=true).
  data, status_code, headers = api_instance.list_world_experience_products_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceProductsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceProductsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_receipts

> <ListWorldExperienceReceiptsResponse> list_world_experience_receipts(experience_id, opts)

Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14, # Float | 
  since: 'since_example' # String | 
}

begin
  # Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since=.
  result = api_instance.list_world_experience_receipts(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_receipts: #{e}"
end
```

#### Using the list_world_experience_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceReceiptsResponse>, Integer, Hash)> list_world_experience_receipts_with_http_info(experience_id, opts)

```ruby
begin
  # Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since=.
  data, status_code, headers = api_instance.list_world_experience_receipts_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceReceiptsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_experience_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |
| **since** | **String** |  | [optional] |

### Return type

**ListWorldExperienceReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_me_subscriptions

> <ListWorldMeSubscriptionsResponse> list_world_me_subscriptions

Your experience subscriptions and private servers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new

begin
  # Your experience subscriptions and private servers.
  result = api_instance.list_world_me_subscriptions
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_me_subscriptions: #{e}"
end
```

#### Using the list_world_me_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldMeSubscriptionsResponse>, Integer, Hash)> list_world_me_subscriptions_with_http_info

```ruby
begin
  # Your experience subscriptions and private servers.
  data, status_code, headers = api_instance.list_world_me_subscriptions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldMeSubscriptionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->list_world_me_subscriptions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldMeSubscriptionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_product

> <WorldExperienceProductResponse> update_world_experience_product(experience_id, product_id, opts)

Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsMoneyApi.new
experience_id = 'experience_id_example' # String | 
product_id = 'product_id_example' # String | 
opts = {
  update_world_experience_product_request: Crossly::UpdateWorldExperienceProductRequest.new # UpdateWorldExperienceProductRequest | 
}

begin
  # Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.
  result = api_instance.update_world_experience_product(experience_id, product_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->update_world_experience_product: #{e}"
end
```

#### Using the update_world_experience_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceProductResponse>, Integer, Hash)> update_world_experience_product_with_http_info(experience_id, product_id, opts)

```ruby
begin
  # Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.
  data, status_code, headers = api_instance.update_world_experience_product_with_http_info(experience_id, product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceProductResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsMoneyApi->update_world_experience_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **product_id** | **String** |  |  |
| **update_world_experience_product_request** | **UpdateWorldExperienceProductRequest** |  | [optional] |

### Return type

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

