# Crossly::CrosslyWalletApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tcg_nft_reconcile**](CrosslyWalletApi.md#create_tcg_nft_reconcile) | **POST** /v1/tcg/nfts/reconcile | Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join). |
| [**create_wallet_crossly**](CrosslyWalletApi.md#create_wallet_crossly) | **POST** /v1/wallet/crossly | Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent. |
| [**get_wallet_crossly**](CrosslyWalletApi.md#get_wallet_crossly) | **GET** /v1/wallet/crossly | Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status. |
| [**list_tcg_nfts**](CrosslyWalletApi.md#list_tcg_nfts) | **GET** /v1/tcg/{game}/nfts | Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter). |


## create_tcg_nft_reconcile

> <CreateTcgNftReconcileResponse> create_tcg_nft_reconcile

Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CrosslyWalletApi.new

begin
  # Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).
  result = api_instance.create_tcg_nft_reconcile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->create_tcg_nft_reconcile: #{e}"
end
```

#### Using the create_tcg_nft_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTcgNftReconcileResponse>, Integer, Hash)> create_tcg_nft_reconcile_with_http_info

```ruby
begin
  # Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).
  data, status_code, headers = api_instance.create_tcg_nft_reconcile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTcgNftReconcileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->create_tcg_nft_reconcile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateTcgNftReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wallet_crossly

> <GetWalletCrosslyResponse> create_wallet_crossly

Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CrosslyWalletApi.new

begin
  # Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.
  result = api_instance.create_wallet_crossly
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->create_wallet_crossly: #{e}"
end
```

#### Using the create_wallet_crossly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWalletCrosslyResponse>, Integer, Hash)> create_wallet_crossly_with_http_info

```ruby
begin
  # Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.
  data, status_code, headers = api_instance.create_wallet_crossly_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWalletCrosslyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->create_wallet_crossly_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWalletCrosslyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet_crossly

> <GetWalletCrosslyResponse> get_wallet_crossly

Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CrosslyWalletApi.new

begin
  # Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.
  result = api_instance.get_wallet_crossly
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->get_wallet_crossly: #{e}"
end
```

#### Using the get_wallet_crossly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWalletCrosslyResponse>, Integer, Hash)> get_wallet_crossly_with_http_info

```ruby
begin
  # Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.
  data, status_code, headers = api_instance.get_wallet_crossly_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWalletCrosslyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->get_wallet_crossly_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWalletCrosslyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tcg_nfts

> <ListTcgNftsResponse> list_tcg_nfts(game)

Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::CrosslyWalletApi.new
game = 'game_example' # String | 

begin
  # Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).
  result = api_instance.list_tcg_nfts(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->list_tcg_nfts: #{e}"
end
```

#### Using the list_tcg_nfts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTcgNftsResponse>, Integer, Hash)> list_tcg_nfts_with_http_info(game)

```ruby
begin
  # Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).
  data, status_code, headers = api_instance.list_tcg_nfts_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTcgNftsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling CrosslyWalletApi->list_tcg_nfts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**ListTcgNftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

