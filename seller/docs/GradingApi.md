# Crossly::GradingApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grading_run_reserve**](GradingApi.md#create_grading_run_reserve) | **POST** /v1/grading/runs/{id}/reserve | Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required. |
| [**create_grading_submission_cancel**](GradingApi.md#create_grading_submission_cancel) | **POST** /v1/grading/submissions/{id}/cancel | Pull a reserved card out of its run. Only while it is reserved; nothing was charged. |
| [**create_grading_submission_shipped**](GradingApi.md#create_grading_submission_shipped) | **POST** /v1/grading/submissions/{id}/shipped | Say you mailed a charged card to the hub, with optional tracking. |
| [**create_grading_verify_cert**](GradingApi.md#create_grading_verify_cert) | **POST** /v1/grading/verify-cert | Look a cert number up with its grader. found&#x3D;false when the grader has no record. |
| [**create_vault_market_grading_order**](GradingApi.md#create_vault_market_grading_order) | **POST** /v1/vault-markets/grading/orders | Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay. |
| [**create_vault_market_grading_order_cancel**](GradingApi.md#create_vault_market_grading_order_cancel) | **POST** /v1/vault-markets/grading/orders/{id}/cancel | Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here. |
| [**create_vault_market_grading_order_pay**](GradingApi.md#create_vault_market_grading_order_pay) | **POST** /v1/vault-markets/grading/orders/{id}/pay | Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required. |
| [**create_vault_market_grading_order_pay_confirm**](GradingApi.md#create_vault_market_grading_order_pay_confirm) | **POST** /v1/vault-markets/grading/orders/{id}/pay/confirm | After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid. |
| [**get_grading_price_book**](GradingApi.md#get_grading_price_book) | **GET** /v1/grading/price-book | The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from. |
| [**get_grading_worth**](GradingApi.md#get_grading_worth) | **GET** /v1/grading/worth/{inventoryItemId} | Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade. |
| [**get_vault_market_grading_order**](GradingApi.md#get_vault_market_grading_order) | **GET** /v1/vault-markets/grading/orders/{id} | One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking. |
| [**list_grading_rate_card**](GradingApi.md#list_grading_rate_card) | **GET** /v1/grading/rate-card | Every grader and tier Crossly can send to, with the per-card price in cents (null &#x3D; paused at the grader). |
| [**list_grading_runs**](GradingApi.md#list_grading_runs) | **GET** /v1/grading/runs | Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off. |
| [**list_grading_submissions**](GradingApi.md#list_grading_submissions) | **GET** /v1/grading/submissions | Your cards out for grading (runs and Direct), newest first. active&#x3D;1 keeps only the ones still in flight. |
| [**list_vault_market_grading_candidates**](GradingApi.md#list_vault_market_grading_candidates) | **GET** /v1/vault-markets/grading/candidates | What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go. |
| [**list_vault_market_grading_orders**](GradingApi.md#list_vault_market_grading_orders) | **GET** /v1/vault-markets/grading/orders | Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers. |


## create_grading_run_reserve

> <IdResponse> create_grading_run_reserve(id)

Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
  result = api_instance.create_grading_run_reserve(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_run_reserve: #{e}"
end
```

#### Using the create_grading_run_reserve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdResponse>, Integer, Hash)> create_grading_run_reserve_with_http_info(id)

```ruby
begin
  # Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
  data, status_code, headers = api_instance.create_grading_run_reserve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_run_reserve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_submission_cancel

> <OkResponse> create_grading_submission_cancel(id)

Pull a reserved card out of its run. Only while it is reserved; nothing was charged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
  result = api_instance.create_grading_submission_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_cancel: #{e}"
end
```

#### Using the create_grading_submission_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_grading_submission_cancel_with_http_info(id)

```ruby
begin
  # Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
  data, status_code, headers = api_instance.create_grading_submission_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_submission_shipped

> <OkResponse> create_grading_submission_shipped(id)

Say you mailed a charged card to the hub, with optional tracking.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Say you mailed a charged card to the hub, with optional tracking.
  result = api_instance.create_grading_submission_shipped(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_shipped: #{e}"
end
```

#### Using the create_grading_submission_shipped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_grading_submission_shipped_with_http_info(id)

```ruby
begin
  # Say you mailed a charged card to the hub, with optional tracking.
  data, status_code, headers = api_instance.create_grading_submission_shipped_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_submission_shipped_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_grading_verify_cert

> <CreateGradingVerifyCertResponse> create_grading_verify_cert

Look a cert number up with its grader. found=false when the grader has no record.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Look a cert number up with its grader. found=false when the grader has no record.
  result = api_instance.create_grading_verify_cert
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_verify_cert: #{e}"
end
```

#### Using the create_grading_verify_cert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGradingVerifyCertResponse>, Integer, Hash)> create_grading_verify_cert_with_http_info

```ruby
begin
  # Look a cert number up with its grader. found=false when the grader has no record.
  data, status_code, headers = api_instance.create_grading_verify_cert_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGradingVerifyCertResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_grading_verify_cert_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateGradingVerifyCertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_vault_market_grading_order

> <CreateVaultMarketGradingOrderResponse> create_vault_market_grading_order

Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.
  result = api_instance.create_vault_market_grading_order
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order: #{e}"
end
```

#### Using the create_vault_market_grading_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVaultMarketGradingOrderResponse>, Integer, Hash)> create_vault_market_grading_order_with_http_info

```ruby
begin
  # Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.
  data, status_code, headers = api_instance.create_vault_market_grading_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVaultMarketGradingOrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVaultMarketGradingOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_vault_market_grading_order_cancel

> <StatusResponse> create_vault_market_grading_order_cancel(id)

Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.
  result = api_instance.create_vault_market_grading_order_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_cancel: #{e}"
end
```

#### Using the create_vault_market_grading_order_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatusResponse>, Integer, Hash)> create_vault_market_grading_order_cancel_with_http_info(id)

```ruby
begin
  # Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.
  data, status_code, headers = api_instance.create_vault_market_grading_order_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_vault_market_grading_order_pay

> <CreateVaultMarketGradingOrderPayResponse> create_vault_market_grading_order_pay(id)

Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.
  result = api_instance.create_vault_market_grading_order_pay(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_pay: #{e}"
end
```

#### Using the create_vault_market_grading_order_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVaultMarketGradingOrderPayResponse>, Integer, Hash)> create_vault_market_grading_order_pay_with_http_info(id)

```ruby
begin
  # Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.
  data, status_code, headers = api_instance.create_vault_market_grading_order_pay_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVaultMarketGradingOrderPayResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateVaultMarketGradingOrderPayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_vault_market_grading_order_pay_confirm

> <StatusResponse> create_vault_market_grading_order_pay_confirm(id)

After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.
  result = api_instance.create_vault_market_grading_order_pay_confirm(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_pay_confirm: #{e}"
end
```

#### Using the create_vault_market_grading_order_pay_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatusResponse>, Integer, Hash)> create_vault_market_grading_order_pay_confirm_with_http_info(id)

```ruby
begin
  # After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.
  data, status_code, headers = api_instance.create_vault_market_grading_order_pay_confirm_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->create_vault_market_grading_order_pay_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_grading_price_book

> <GetGradingPriceBookResponse> get_grading_price_book

The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.
  result = api_instance.get_grading_price_book
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_price_book: #{e}"
end
```

#### Using the get_grading_price_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGradingPriceBookResponse>, Integer, Hash)> get_grading_price_book_with_http_info

```ruby
begin
  # The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.
  data, status_code, headers = api_instance.get_grading_price_book_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGradingPriceBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_price_book_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetGradingPriceBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_grading_worth

> <GetGradingWorthResponse> get_grading_worth(inventory_item_id)

Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
inventory_item_id = 'inventory_item_id_example' # String | 

begin
  # Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
  result = api_instance.get_grading_worth(inventory_item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_worth: #{e}"
end
```

#### Using the get_grading_worth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGradingWorthResponse>, Integer, Hash)> get_grading_worth_with_http_info(inventory_item_id)

```ruby
begin
  # Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
  data, status_code, headers = api_instance.get_grading_worth_with_http_info(inventory_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGradingWorthResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_grading_worth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory_item_id** | **String** |  |  |

### Return type

**GetGradingWorthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_market_grading_order

> <GetVaultMarketGradingOrderResponse> get_vault_market_grading_order(id)

One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
id = 'id_example' # String | 

begin
  # One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.
  result = api_instance.get_vault_market_grading_order(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_vault_market_grading_order: #{e}"
end
```

#### Using the get_vault_market_grading_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVaultMarketGradingOrderResponse>, Integer, Hash)> get_vault_market_grading_order_with_http_info(id)

```ruby
begin
  # One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.
  data, status_code, headers = api_instance.get_vault_market_grading_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVaultMarketGradingOrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->get_vault_market_grading_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetVaultMarketGradingOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_rate_card

> <ListGradingRateCardResponse> list_grading_rate_card

Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).
  result = api_instance.list_grading_rate_card
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_rate_card: #{e}"
end
```

#### Using the list_grading_rate_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingRateCardResponse>, Integer, Hash)> list_grading_rate_card_with_http_info

```ruby
begin
  # Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).
  data, status_code, headers = api_instance.list_grading_rate_card_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingRateCardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_rate_card_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListGradingRateCardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_runs

> <ListGradingRunsResponse> list_grading_runs

Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
  result = api_instance.list_grading_runs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_runs: #{e}"
end
```

#### Using the list_grading_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingRunsResponse>, Integer, Hash)> list_grading_runs_with_http_info

```ruby
begin
  # Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
  data, status_code, headers = api_instance.list_grading_runs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingRunsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_runs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListGradingRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_grading_submissions

> <ListGradingSubmissionsResponse> list_grading_submissions(opts)

Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new
opts = {
  active: '0' # String | Only cards that have not finished.
}

begin
  # Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.
  result = api_instance.list_grading_submissions(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_submissions: #{e}"
end
```

#### Using the list_grading_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGradingSubmissionsResponse>, Integer, Hash)> list_grading_submissions_with_http_info(opts)

```ruby
begin
  # Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.
  data, status_code, headers = api_instance.list_grading_submissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGradingSubmissionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_grading_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **String** | Only cards that have not finished. | [optional] |

### Return type

**ListGradingSubmissionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vault_market_grading_candidates

> <ListVaultMarketGradingCandidatesResponse> list_vault_market_grading_candidates

What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.
  result = api_instance.list_vault_market_grading_candidates
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_vault_market_grading_candidates: #{e}"
end
```

#### Using the list_vault_market_grading_candidates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVaultMarketGradingCandidatesResponse>, Integer, Hash)> list_vault_market_grading_candidates_with_http_info

```ruby
begin
  # What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.
  data, status_code, headers = api_instance.list_vault_market_grading_candidates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVaultMarketGradingCandidatesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_vault_market_grading_candidates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListVaultMarketGradingCandidatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vault_market_grading_orders

> <ListVaultMarketGradingOrdersResponse> list_vault_market_grading_orders

Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::GradingApi.new

begin
  # Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.
  result = api_instance.list_vault_market_grading_orders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_vault_market_grading_orders: #{e}"
end
```

#### Using the list_vault_market_grading_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVaultMarketGradingOrdersResponse>, Integer, Hash)> list_vault_market_grading_orders_with_http_info

```ruby
begin
  # Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.
  data, status_code, headers = api_instance.list_vault_market_grading_orders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVaultMarketGradingOrdersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling GradingApi->list_vault_market_grading_orders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListVaultMarketGradingOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

