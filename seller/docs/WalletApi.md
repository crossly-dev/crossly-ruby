# Crossly::WalletApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_wallet_default**](WalletApi.md#delete_wallet_default) | **DELETE** /v1/wallet/defaults | Clear a default (the purpose falls back to your only wallet, or none) or one override (&#x60;refKind&#x60; + &#x60;refKey&#x60;). |
| [**list_wallet_defaults**](WalletApi.md#list_wallet_defaults) | **GET** /v1/wallet/defaults | Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today. |
| [**update_wallet_default**](WalletApi.md#update_wallet_default) | **PUT** /v1/wallet/defaults | Set the default wallet for a purpose, or an override for one collection (&#x60;ref: { kind: \&quot;collection\&quot;, chain, contract }&#x60;) or game (&#x60;ref: { kind: \&quot;game\&quot;, experienceId }&#x60;). The wallet must be yours, verified, and on a network the purpose accepts. |


## delete_wallet_default

> <WalletResponse> delete_wallet_default

Clear a default (the purpose falls back to your only wallet, or none) or one override (`refKind` + `refKey`).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WalletApi.new

begin
  # Clear a default (the purpose falls back to your only wallet, or none) or one override (`refKind` + `refKey`).
  result = api_instance.delete_wallet_default
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->delete_wallet_default: #{e}"
end
```

#### Using the delete_wallet_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletResponse>, Integer, Hash)> delete_wallet_default_with_http_info

```ruby
begin
  # Clear a default (the purpose falls back to your only wallet, or none) or one override (`refKind` + `refKey`).
  data, status_code, headers = api_instance.delete_wallet_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->delete_wallet_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wallet_defaults

> <WalletResponse> list_wallet_defaults

Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WalletApi.new

begin
  # Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.
  result = api_instance.list_wallet_defaults
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->list_wallet_defaults: #{e}"
end
```

#### Using the list_wallet_defaults_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletResponse>, Integer, Hash)> list_wallet_defaults_with_http_info

```ruby
begin
  # Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.
  data, status_code, headers = api_instance.list_wallet_defaults_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->list_wallet_defaults_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wallet_default

> <WalletResponse> update_wallet_default

Set the default wallet for a purpose, or an override for one collection (`ref: { kind: \"collection\", chain, contract }`) or game (`ref: { kind: \"game\", experienceId }`). The wallet must be yours, verified, and on a network the purpose accepts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WalletApi.new

begin
  # Set the default wallet for a purpose, or an override for one collection (`ref: { kind: \"collection\", chain, contract }`) or game (`ref: { kind: \"game\", experienceId }`). The wallet must be yours, verified, and on a network the purpose accepts.
  result = api_instance.update_wallet_default
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->update_wallet_default: #{e}"
end
```

#### Using the update_wallet_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletResponse>, Integer, Hash)> update_wallet_default_with_http_info

```ruby
begin
  # Set the default wallet for a purpose, or an override for one collection (`ref: { kind: \"collection\", chain, contract }`) or game (`ref: { kind: \"game\", experienceId }`). The wallet must be yours, verified, and on a network the purpose accepts.
  data, status_code, headers = api_instance.update_wallet_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WalletApi->update_wallet_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

