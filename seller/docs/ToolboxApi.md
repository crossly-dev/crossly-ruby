# Crossly::ToolboxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_toolbox_asset**](ToolboxApi.md#create_toolbox_asset) | **POST** /v1/toolbox/assets | Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity. |
| [**create_toolbox_asset_purchase**](ToolboxApi.md#create_toolbox_asset_purchase) | **POST** /v1/toolbox/assets/{assetId}/purchase | Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences. |
| [**create_toolbox_asset_retire**](ToolboxApi.md#create_toolbox_asset_retire) | **POST** /v1/toolbox/assets/{assetId}/retire | Take an asset off the store for good. Licences already sold keep working. |
| [**create_toolbox_asset_use**](ToolboxApi.md#create_toolbox_asset_use) | **POST** /v1/toolbox/assets/{assetId}/use | Get the asset&#39;s nodes stamped with its id for a place you can edit; insert:true also inserts them into the place&#39;s live session. Paid assets need the experience owner&#39;s licence. |
| [**create_toolbox_asset_version**](ToolboxApi.md#create_toolbox_asset_version) | **POST** /v1/toolbox/assets/{assetId}/versions | A new version (reviewed); the live one keeps serving until it is approved. |
| [**create_toolbox_purchase_refund**](ToolboxApi.md#create_toolbox_purchase_refund) | **POST** /v1/toolbox/purchases/{purchaseId}/refund | Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author&#39;s share is reversed. |
| [**delete_toolbox_asset_rating_mine**](ToolboxApi.md#delete_toolbox_asset_rating_mine) | **DELETE** /v1/toolbox/assets/{assetId}/ratings/mine | Remove your rating of an asset. |
| [**get_toolbox_asset**](ToolboxApi.md#get_toolbox_asset) | **GET** /v1/toolbox/assets/{assetId} | One asset: versions, credits (assets it includes), licence, contents, your purchase. |
| [**get_toolbox_asset_rating**](ToolboxApi.md#get_toolbox_asset_rating) | **GET** /v1/toolbox/assets/{assetId}/ratings | Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it. |
| [**get_toolbox_purchase**](ToolboxApi.md#get_toolbox_purchase) | **GET** /v1/toolbox/purchases/{purchaseId} | A purchase: status, price, tax, refundable until. |
| [**list_toolbox_assets**](ToolboxApi.md#list_toolbox_assets) | **GET** /v1/toolbox/assets | Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; &#x60;owned&#x60; says whether you may insert it now. |
| [**list_toolbox_library**](ToolboxApi.md#list_toolbox_library) | **GET** /v1/toolbox/library | Assets you may insert: licences you bought, your own, free ones you used. |
| [**list_toolbox_mine**](ToolboxApi.md#list_toolbox_mine) | **GET** /v1/toolbox/mine | Your published assets: review state, reviewer note, what each earned you. |
| [**list_toolbox_sales**](ToolboxApi.md#list_toolbox_sales) | **GET** /v1/toolbox/sales | Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought. |
| [**update_toolbox_asset**](ToolboxApi.md#update_toolbox_asset) | **PATCH** /v1/toolbox/assets/{assetId} | Edit name, description, tags, thumbnail or price. |
| [**update_toolbox_asset_rating_mine**](ToolboxApi.md#update_toolbox_asset_rating_mine) | **PUT** /v1/toolbox/assets/{assetId}/ratings/mine | Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own. |


## create_toolbox_asset

> <ToolboxAssetResponse> create_toolbox_asset

Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new

begin
  # Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.
  result = api_instance.create_toolbox_asset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset: #{e}"
end
```

#### Using the create_toolbox_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToolboxAssetResponse>, Integer, Hash)> create_toolbox_asset_with_http_info

```ruby
begin
  # Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.
  data, status_code, headers = api_instance.create_toolbox_asset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToolboxAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_toolbox_asset_purchase

> <GetToolboxPurchaseResponse> create_toolbox_asset_purchase(asset_id)

Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.
  result = api_instance.create_toolbox_asset_purchase(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_purchase: #{e}"
end
```

#### Using the create_toolbox_asset_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetToolboxPurchaseResponse>, Integer, Hash)> create_toolbox_asset_purchase_with_http_info(asset_id)

```ruby
begin
  # Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.
  data, status_code, headers = api_instance.create_toolbox_asset_purchase_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetToolboxPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**GetToolboxPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_toolbox_asset_retire

> <ToolboxAssetResponse> create_toolbox_asset_retire(asset_id)

Take an asset off the store for good. Licences already sold keep working.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Take an asset off the store for good. Licences already sold keep working.
  result = api_instance.create_toolbox_asset_retire(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_retire: #{e}"
end
```

#### Using the create_toolbox_asset_retire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToolboxAssetResponse>, Integer, Hash)> create_toolbox_asset_retire_with_http_info(asset_id)

```ruby
begin
  # Take an asset off the store for good. Licences already sold keep working.
  data, status_code, headers = api_instance.create_toolbox_asset_retire_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToolboxAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_retire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_toolbox_asset_use

> <CreateToolboxAssetUseResponse> create_toolbox_asset_use(asset_id)

Get the asset's nodes stamped with its id for a place you can edit; insert:true also inserts them into the place's live session. Paid assets need the experience owner's licence.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Get the asset's nodes stamped with its id for a place you can edit; insert:true also inserts them into the place's live session. Paid assets need the experience owner's licence.
  result = api_instance.create_toolbox_asset_use(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_use: #{e}"
end
```

#### Using the create_toolbox_asset_use_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateToolboxAssetUseResponse>, Integer, Hash)> create_toolbox_asset_use_with_http_info(asset_id)

```ruby
begin
  # Get the asset's nodes stamped with its id for a place you can edit; insert:true also inserts them into the place's live session. Paid assets need the experience owner's licence.
  data, status_code, headers = api_instance.create_toolbox_asset_use_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateToolboxAssetUseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_use_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**CreateToolboxAssetUseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_toolbox_asset_version

> <ToolboxAssetResponse> create_toolbox_asset_version(asset_id)

A new version (reviewed); the live one keeps serving until it is approved.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # A new version (reviewed); the live one keeps serving until it is approved.
  result = api_instance.create_toolbox_asset_version(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_version: #{e}"
end
```

#### Using the create_toolbox_asset_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToolboxAssetResponse>, Integer, Hash)> create_toolbox_asset_version_with_http_info(asset_id)

```ruby
begin
  # A new version (reviewed); the live one keeps serving until it is approved.
  data, status_code, headers = api_instance.create_toolbox_asset_version_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToolboxAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_asset_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_toolbox_purchase_refund

> <CreateWorldMeReceiptRefundResponse> create_toolbox_purchase_refund(purchase_id)

Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author's share is reversed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
purchase_id = 'purchase_id_example' # String | 

begin
  # Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author's share is reversed.
  result = api_instance.create_toolbox_purchase_refund(purchase_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_purchase_refund: #{e}"
end
```

#### Using the create_toolbox_purchase_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMeReceiptRefundResponse>, Integer, Hash)> create_toolbox_purchase_refund_with_http_info(purchase_id)

```ruby
begin
  # Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author's share is reversed.
  data, status_code, headers = api_instance.create_toolbox_purchase_refund_with_http_info(purchase_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMeReceiptRefundResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->create_toolbox_purchase_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_id** | **String** |  |  |

### Return type

**CreateWorldMeReceiptRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_toolbox_asset_rating_mine

> <DeleteSpatialSceneGrantResponse> delete_toolbox_asset_rating_mine(asset_id)

Remove your rating of an asset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Remove your rating of an asset.
  result = api_instance.delete_toolbox_asset_rating_mine(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->delete_toolbox_asset_rating_mine: #{e}"
end
```

#### Using the delete_toolbox_asset_rating_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_toolbox_asset_rating_mine_with_http_info(asset_id)

```ruby
begin
  # Remove your rating of an asset.
  data, status_code, headers = api_instance.delete_toolbox_asset_rating_mine_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->delete_toolbox_asset_rating_mine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_toolbox_asset

> <GetToolboxAssetResponse> get_toolbox_asset(asset_id)

One asset: versions, credits (assets it includes), licence, contents, your purchase.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # One asset: versions, credits (assets it includes), licence, contents, your purchase.
  result = api_instance.get_toolbox_asset(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_asset: #{e}"
end
```

#### Using the get_toolbox_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetToolboxAssetResponse>, Integer, Hash)> get_toolbox_asset_with_http_info(asset_id)

```ruby
begin
  # One asset: versions, credits (assets it includes), licence, contents, your purchase.
  data, status_code, headers = api_instance.get_toolbox_asset_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetToolboxAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**GetToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_toolbox_asset_rating

> <GetToolboxAssetRatingResponse> get_toolbox_asset_rating(asset_id)

Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.
  result = api_instance.get_toolbox_asset_rating(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_asset_rating: #{e}"
end
```

#### Using the get_toolbox_asset_rating_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetToolboxAssetRatingResponse>, Integer, Hash)> get_toolbox_asset_rating_with_http_info(asset_id)

```ruby
begin
  # Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.
  data, status_code, headers = api_instance.get_toolbox_asset_rating_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetToolboxAssetRatingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_asset_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**GetToolboxAssetRatingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_toolbox_purchase

> <GetToolboxPurchaseResponse> get_toolbox_purchase(purchase_id)

A purchase: status, price, tax, refundable until.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
purchase_id = 'purchase_id_example' # String | 

begin
  # A purchase: status, price, tax, refundable until.
  result = api_instance.get_toolbox_purchase(purchase_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_purchase: #{e}"
end
```

#### Using the get_toolbox_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetToolboxPurchaseResponse>, Integer, Hash)> get_toolbox_purchase_with_http_info(purchase_id)

```ruby
begin
  # A purchase: status, price, tax, refundable until.
  data, status_code, headers = api_instance.get_toolbox_purchase_with_http_info(purchase_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetToolboxPurchaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->get_toolbox_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_id** | **String** |  |  |

### Return type

**GetToolboxPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_toolbox_assets

> <ListToolboxAssetsResponse> list_toolbox_assets

Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; `owned` says whether you may insert it now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new

begin
  # Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; `owned` says whether you may insert it now.
  result = api_instance.list_toolbox_assets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_assets: #{e}"
end
```

#### Using the list_toolbox_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListToolboxAssetsResponse>, Integer, Hash)> list_toolbox_assets_with_http_info

```ruby
begin
  # Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; `owned` says whether you may insert it now.
  data, status_code, headers = api_instance.list_toolbox_assets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListToolboxAssetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_assets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListToolboxAssetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_toolbox_library

> <ListToolboxLibraryResponse> list_toolbox_library

Assets you may insert: licences you bought, your own, free ones you used.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new

begin
  # Assets you may insert: licences you bought, your own, free ones you used.
  result = api_instance.list_toolbox_library
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_library: #{e}"
end
```

#### Using the list_toolbox_library_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListToolboxLibraryResponse>, Integer, Hash)> list_toolbox_library_with_http_info

```ruby
begin
  # Assets you may insert: licences you bought, your own, free ones you used.
  data, status_code, headers = api_instance.list_toolbox_library_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListToolboxLibraryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_library_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListToolboxLibraryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_toolbox_mine

> <ListToolboxMineResponse> list_toolbox_mine

Your published assets: review state, reviewer note, what each earned you.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new

begin
  # Your published assets: review state, reviewer note, what each earned you.
  result = api_instance.list_toolbox_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_mine: #{e}"
end
```

#### Using the list_toolbox_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListToolboxMineResponse>, Integer, Hash)> list_toolbox_mine_with_http_info

```ruby
begin
  # Your published assets: review state, reviewer note, what each earned you.
  data, status_code, headers = api_instance.list_toolbox_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListToolboxMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListToolboxMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_toolbox_sales

> <ListToolboxSalesResponse> list_toolbox_sales

Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new

begin
  # Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.
  result = api_instance.list_toolbox_sales
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_sales: #{e}"
end
```

#### Using the list_toolbox_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListToolboxSalesResponse>, Integer, Hash)> list_toolbox_sales_with_http_info

```ruby
begin
  # Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.
  data, status_code, headers = api_instance.list_toolbox_sales_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListToolboxSalesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->list_toolbox_sales_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListToolboxSalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_toolbox_asset

> <ToolboxAssetResponse> update_toolbox_asset(asset_id)

Edit name, description, tags, thumbnail or price.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Edit name, description, tags, thumbnail or price.
  result = api_instance.update_toolbox_asset(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->update_toolbox_asset: #{e}"
end
```

#### Using the update_toolbox_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToolboxAssetResponse>, Integer, Hash)> update_toolbox_asset_with_http_info(asset_id)

```ruby
begin
  # Edit name, description, tags, thumbnail or price.
  data, status_code, headers = api_instance.update_toolbox_asset_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToolboxAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->update_toolbox_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_toolbox_asset_rating_mine

> <UpdateToolboxAssetRatingMineResponse> update_toolbox_asset_rating_mine(asset_id)

Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ToolboxApi.new
asset_id = 'asset_id_example' # String | 

begin
  # Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.
  result = api_instance.update_toolbox_asset_rating_mine(asset_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->update_toolbox_asset_rating_mine: #{e}"
end
```

#### Using the update_toolbox_asset_rating_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateToolboxAssetRatingMineResponse>, Integer, Hash)> update_toolbox_asset_rating_mine_with_http_info(asset_id)

```ruby
begin
  # Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.
  data, status_code, headers = api_instance.update_toolbox_asset_rating_mine_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateToolboxAssetRatingMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ToolboxApi->update_toolbox_asset_rating_mine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |

### Return type

**UpdateToolboxAssetRatingMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

