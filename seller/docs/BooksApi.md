# Crossly::BooksApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_book_expense**](BooksApi.md#create_book_expense) | **POST** /v1/books/expenses | Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly. |
| [**delete_book_expense**](BooksApi.md#delete_book_expense) | **DELETE** /v1/books/expenses/{id} | Delete a logged expense. It leaves the P&amp;L and the exports. |
| [**get_book**](BooksApi.md#get_book) | **GET** /v1/books | Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents. |
| [**get_book1099k**](BooksApi.md#get_book1099k) | **GET** /v1/books/1099k | Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions). |
| [**get_book_expense**](BooksApi.md#get_book_expense) | **GET** /v1/books/expenses | Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents. |
| [**get_book_tax_profile**](BooksApi.md#get_book_tax_profile) | **GET** /v1/books/tax-profile | Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address. |
| [**get_book_transaction**](BooksApi.md#get_book_transaction) | **GET** /v1/books/transactions | The sale rows behind any P&amp;L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents. |
| [**update_book1099k**](BooksApi.md#update_book1099k) | **PUT** /v1/books/1099k | Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year&#39;s reconciliation, as GET /v1/books/1099k does. |
| [**update_book_expense**](BooksApi.md#update_book_expense) | **PATCH** /v1/books/expenses/{id} | Change a logged expense. |
| [**update_book_tax_profile**](BooksApi.md#update_book_tax_profile) | **PUT** /v1/books/tax-profile | Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged. |


## create_book_expense

> <CreateBookExpenseResponse> create_book_expense

Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new

begin
  # Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.
  result = api_instance.create_book_expense
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->create_book_expense: #{e}"
end
```

#### Using the create_book_expense_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBookExpenseResponse>, Integer, Hash)> create_book_expense_with_http_info

```ruby
begin
  # Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.
  data, status_code, headers = api_instance.create_book_expense_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBookExpenseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->create_book_expense_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBookExpenseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_book_expense

> <DeleteStoryResponse> delete_book_expense(id)

Delete a logged expense. It leaves the P&L and the exports.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The expense id.

begin
  # Delete a logged expense. It leaves the P&L and the exports.
  result = api_instance.delete_book_expense(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->delete_book_expense: #{e}"
end
```

#### Using the delete_book_expense_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStoryResponse>, Integer, Hash)> delete_book_expense_with_http_info(id)

```ruby
begin
  # Delete a logged expense. It leaves the P&L and the exports.
  data, status_code, headers = api_instance.delete_book_expense_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->delete_book_expense_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The expense id. |  |

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book

> <GetBookResponse> get_book(opts)

Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
opts = {
  year: 56, # Integer | Tax year. Default the current year.
  period: 'fy', # String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone.
  tz: 'tz_example' # String | IANA zone; default your tax profile zone.
}

begin
  # Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.
  result = api_instance.get_book(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book: #{e}"
end
```

#### Using the get_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBookResponse>, Integer, Hash)> get_book_with_http_info(opts)

```ruby
begin
  # Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.
  data, status_code, headers = api_instance.get_book_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Tax year. Default the current year. | [optional] |
| **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] |
| **tz** | **String** | IANA zone; default your tax profile zone. | [optional] |

### Return type

**GetBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book1099k

> <GetBook1099kResponse> get_book1099k(opts)

Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
opts = {
  year: 56 # Integer | Tax year. Default the current year.
}

begin
  # Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).
  result = api_instance.get_book1099k(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book1099k: #{e}"
end
```

#### Using the get_book1099k_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBook1099kResponse>, Integer, Hash)> get_book1099k_with_http_info(opts)

```ruby
begin
  # Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).
  data, status_code, headers = api_instance.get_book1099k_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBook1099kResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book1099k_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Tax year. Default the current year. | [optional] |

### Return type

**GetBook1099kResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book_expense

> <GetBookExpenseResponse> get_book_expense(opts)

Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
opts = {
  year: 56, # Integer | Tax year. Default the current year.
  period: 'fy', # String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone.
  category: 'category_example', # String | An expense category id, e.g. supplies, postage, software_subscriptions.
  page: 56, # Integer | 1-indexed page. Default 1.
  size: 56 # Integer | Rows per page, at most 100. Default 25.
}

begin
  # Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.
  result = api_instance.get_book_expense(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_expense: #{e}"
end
```

#### Using the get_book_expense_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBookExpenseResponse>, Integer, Hash)> get_book_expense_with_http_info(opts)

```ruby
begin
  # Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.
  data, status_code, headers = api_instance.get_book_expense_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBookExpenseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_expense_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Tax year. Default the current year. | [optional] |
| **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] |
| **category** | **String** | An expense category id, e.g. supplies, postage, software_subscriptions. | [optional] |
| **page** | **Integer** | 1-indexed page. Default 1. | [optional] |
| **size** | **Integer** | Rows per page, at most 100. Default 25. | [optional] |

### Return type

**GetBookExpenseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book_tax_profile

> <GetBookTaxProfileResponse> get_book_tax_profile

Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new

begin
  # Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.
  result = api_instance.get_book_tax_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_tax_profile: #{e}"
end
```

#### Using the get_book_tax_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBookTaxProfileResponse>, Integer, Hash)> get_book_tax_profile_with_http_info

```ruby
begin
  # Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.
  data, status_code, headers = api_instance.get_book_tax_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBookTaxProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_tax_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBookTaxProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book_transaction

> <GetBookTransactionResponse> get_book_transaction(opts)

The sale rows behind any P&L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
opts = {
  year: 56, # Integer | Tax year. Default the current year.
  period: 'fy', # String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone.
  tz: 'tz_example', # String | IANA zone; default your tax profile zone.
  platform: 'platform_example', # String | One platform id.
  status: 'completed', # String | completed = counted in income; pending = details not in yet (no money); default all.
  page: 56, # Integer | 1-indexed page. Default 1.
  size: 56 # Integer | Rows per page, at most 100. Default 50.
}

begin
  # The sale rows behind any P&L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.
  result = api_instance.get_book_transaction(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_transaction: #{e}"
end
```

#### Using the get_book_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBookTransactionResponse>, Integer, Hash)> get_book_transaction_with_http_info(opts)

```ruby
begin
  # The sale rows behind any P&L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.
  data, status_code, headers = api_instance.get_book_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBookTransactionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->get_book_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | Tax year. Default the current year. | [optional] |
| **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] |
| **tz** | **String** | IANA zone; default your tax profile zone. | [optional] |
| **platform** | **String** | One platform id. | [optional] |
| **status** | **String** | completed &#x3D; counted in income; pending &#x3D; details not in yet (no money); default all. | [optional] |
| **page** | **Integer** | 1-indexed page. Default 1. | [optional] |
| **size** | **Integer** | Rows per page, at most 100. Default 50. | [optional] |

### Return type

**GetBookTransactionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_book1099k

> <GetBook1099kResponse> update_book1099k

Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year's reconciliation, as GET /v1/books/1099k does.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new

begin
  # Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year's reconciliation, as GET /v1/books/1099k does.
  result = api_instance.update_book1099k
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book1099k: #{e}"
end
```

#### Using the update_book1099k_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBook1099kResponse>, Integer, Hash)> update_book1099k_with_http_info

```ruby
begin
  # Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year's reconciliation, as GET /v1/books/1099k does.
  data, status_code, headers = api_instance.update_book1099k_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBook1099kResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book1099k_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBook1099kResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_book_expense

> <CreateBookExpenseResponse> update_book_expense(id)

Change a logged expense.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The expense id.

begin
  # Change a logged expense.
  result = api_instance.update_book_expense(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book_expense: #{e}"
end
```

#### Using the update_book_expense_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBookExpenseResponse>, Integer, Hash)> update_book_expense_with_http_info(id)

```ruby
begin
  # Change a logged expense.
  data, status_code, headers = api_instance.update_book_expense_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBookExpenseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book_expense_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The expense id. |  |

### Return type

**CreateBookExpenseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_book_tax_profile

> <GetBookTaxProfileResponse> update_book_tax_profile

Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::BooksApi.new

begin
  # Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.
  result = api_instance.update_book_tax_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book_tax_profile: #{e}"
end
```

#### Using the update_book_tax_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBookTaxProfileResponse>, Integer, Hash)> update_book_tax_profile_with_http_info

```ruby
begin
  # Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.
  data, status_code, headers = api_instance.update_book_tax_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBookTaxProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling BooksApi->update_book_tax_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBookTaxProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

