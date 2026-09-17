# Crossly::InventoryApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_inventory**](InventoryApi.md#create_inventory) | **POST** /v1/inventory | Create a new inventory item. |
| [**create_inventory_bulk_archive**](InventoryApi.md#create_inventory_bulk_archive) | **POST** /v1/inventory/bulk-archive | Bulk archive inventory items (soft). |
| [**create_inventory_bulk_delete**](InventoryApi.md#create_inventory_bulk_delete) | **POST** /v1/inventory/bulk-delete | Bulk delete inventory items (delinks listings). |
| [**create_inventory_bulk_label**](InventoryApi.md#create_inventory_bulk_label) | **POST** /v1/inventory/bulk-labels | Bulk add/remove labels on inventory items. |
| [**create_inventory_bulk_quantity**](InventoryApi.md#create_inventory_bulk_quantity) | **POST** /v1/inventory/bulk-quantity | Set / add / subtract stock across many items, syncing live listings. |
| [**create_inventory_csv_export**](InventoryApi.md#create_inventory_csv_export) | **POST** /v1/inventory/csv/export | Export inventory as CSV. Round-trips back through csv/import. |
| [**create_inventory_csv_import**](InventoryApi.md#create_inventory_csv_import) | **POST** /v1/inventory/csv/import | Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview. |
| [**create_inventory_label_rename**](InventoryApi.md#create_inventory_label_rename) | **POST** /v1/inventory/labels/rename | Rename a label across every inventory item. |
| [**create_inventory_unit_identifier**](InventoryApi.md#create_inventory_unit_identifier) | **POST** /v1/inventory/{id}/units/identifiers | Record a serial, IMEI, or licence key against an inventory item. |
| [**create_inventory_unit_lookup**](InventoryApi.md#create_inventory_unit_lookup) | **POST** /v1/inventory/units/lookup | Find a unit by identifier. |
| [**delete_inventory**](InventoryApi.md#delete_inventory) | **DELETE** /v1/inventory/{id} | Soft-archive an inventory item. |
| [**get_inventory**](InventoryApi.md#get_inventory) | **GET** /v1/inventory/{id} | Get one inventory item with platform listings. |
| [**get_inventory_facet**](InventoryApi.md#get_inventory_facet) | **GET** /v1/inventory/facets | Distinct brands + categories across this user&#39;s inventory. |
| [**get_inventory_label**](InventoryApi.md#get_inventory_label) | **GET** /v1/inventory/labels | List every distinct label across this user&#39;s inventory. |
| [**get_inventory_label_stat**](InventoryApi.md#get_inventory_label_stat) | **GET** /v1/inventory/labels/stats | List distinct labels with usage counts + colors. |
| [**get_inventory_sku_exist**](InventoryApi.md#get_inventory_sku_exist) | **GET** /v1/inventory/sku-exists | Check whether a SKU is already in use on this user&#39;s inventory. |
| [**get_spatial_public**](InventoryApi.md#get_spatial_public) | **GET** /v1/spatial/public/{slug} | A shared room, as a visitor sees it. |
| [**get_spatial_scene**](InventoryApi.md#get_spatial_scene) | **GET** /v1/spatial/scenes/{id} | A solved room: every item, where it sits, and why. |
| [**list_inventory**](InventoryApi.md#list_inventory) | **GET** /v1/inventory | List inventory items. |
| [**list_inventory_activity**](InventoryApi.md#list_inventory_activity) | **GET** /v1/inventory/{id}/activity | Activity log for an inventory item (created/sold/edited/etc.). |
| [**list_inventory_ids**](InventoryApi.md#list_inventory_ids) | **GET** /v1/inventory/ids | Filter inventory → return matching id list. |
| [**list_inventory_units**](InventoryApi.md#list_inventory_units) | **GET** /v1/inventory/{id}/units | List the individually identified units of an inventory item. |
| [**list_spatial_public**](InventoryApi.md#list_spatial_public) | **GET** /v1/spatial/public | Public rooms anyone can walk into. |
| [**list_spatial_public_offers**](InventoryApi.md#list_spatial_public_offers) | **GET** /v1/spatial/public/{slug}/offers | What is for sale in a shared room. |
| [**list_spatial_scene_movements**](InventoryApi.md#list_spatial_scene_movements) | **GET** /v1/spatial/scenes/{id}/movements | Stock movements in a room over a time window. |
| [**list_spatial_scenes**](InventoryApi.md#list_spatial_scenes) | **GET** /v1/spatial/scenes | The rooms this account has. |
| [**update_inventory**](InventoryApi.md#update_inventory) | **PATCH** /v1/inventory/{id} | Update an inventory item (partial). |


## create_inventory

> <CreateInventoryResponse> create_inventory

Create a new inventory item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Create a new inventory item.
  result = api_instance.create_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory: #{e}"
end
```

#### Using the create_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryResponse>, Integer, Hash)> create_inventory_with_http_info

```ruby
begin
  # Create a new inventory item.
  data, status_code, headers = api_instance.create_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryResponse**](CreateInventoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_bulk_archive

> <CreateInventoryBulkArchiveResponse> create_inventory_bulk_archive

Bulk archive inventory items (soft).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Bulk archive inventory items (soft).
  result = api_instance.create_inventory_bulk_archive
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_archive: #{e}"
end
```

#### Using the create_inventory_bulk_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryBulkArchiveResponse>, Integer, Hash)> create_inventory_bulk_archive_with_http_info

```ruby
begin
  # Bulk archive inventory items (soft).
  data, status_code, headers = api_instance.create_inventory_bulk_archive_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryBulkArchiveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_archive_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryBulkArchiveResponse**](CreateInventoryBulkArchiveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_bulk_delete

> <CreateInventoryBulkDeleteResponse> create_inventory_bulk_delete

Bulk delete inventory items (delinks listings).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Bulk delete inventory items (delinks listings).
  result = api_instance.create_inventory_bulk_delete
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_delete: #{e}"
end
```

#### Using the create_inventory_bulk_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryBulkDeleteResponse>, Integer, Hash)> create_inventory_bulk_delete_with_http_info

```ruby
begin
  # Bulk delete inventory items (delinks listings).
  data, status_code, headers = api_instance.create_inventory_bulk_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryBulkDeleteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryBulkDeleteResponse**](CreateInventoryBulkDeleteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_bulk_label

> <CreateInventoryBulkLabelResponse> create_inventory_bulk_label

Bulk add/remove labels on inventory items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Bulk add/remove labels on inventory items.
  result = api_instance.create_inventory_bulk_label
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_label: #{e}"
end
```

#### Using the create_inventory_bulk_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryBulkLabelResponse>, Integer, Hash)> create_inventory_bulk_label_with_http_info

```ruby
begin
  # Bulk add/remove labels on inventory items.
  data, status_code, headers = api_instance.create_inventory_bulk_label_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryBulkLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_label_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryBulkLabelResponse**](CreateInventoryBulkLabelResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_bulk_quantity

> <CreateInventoryBulkQuantityResponse> create_inventory_bulk_quantity

Set / add / subtract stock across many items, syncing live listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Set / add / subtract stock across many items, syncing live listings.
  result = api_instance.create_inventory_bulk_quantity
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_quantity: #{e}"
end
```

#### Using the create_inventory_bulk_quantity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryBulkQuantityResponse>, Integer, Hash)> create_inventory_bulk_quantity_with_http_info

```ruby
begin
  # Set / add / subtract stock across many items, syncing live listings.
  data, status_code, headers = api_instance.create_inventory_bulk_quantity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryBulkQuantityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_bulk_quantity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryBulkQuantityResponse**](CreateInventoryBulkQuantityResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_csv_export

> String create_inventory_csv_export

Export inventory as CSV. Round-trips back through csv/import.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Export inventory as CSV. Round-trips back through csv/import.
  result = api_instance.create_inventory_csv_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_csv_export: #{e}"
end
```

#### Using the create_inventory_csv_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_inventory_csv_export_with_http_info

```ruby
begin
  # Export inventory as CSV. Round-trips back through csv/import.
  data, status_code, headers = api_instance.create_inventory_csv_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_csv_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_csv_import

> <CreateInventoryCsvImportResponse> create_inventory_csv_import

Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.
  result = api_instance.create_inventory_csv_import
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_csv_import: #{e}"
end
```

#### Using the create_inventory_csv_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryCsvImportResponse>, Integer, Hash)> create_inventory_csv_import_with_http_info

```ruby
begin
  # Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.
  data, status_code, headers = api_instance.create_inventory_csv_import_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryCsvImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_csv_import_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryCsvImportResponse**](CreateInventoryCsvImportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_label_rename

> <CreateInventoryLabelRenameResponse> create_inventory_label_rename

Rename a label across every inventory item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Rename a label across every inventory item.
  result = api_instance.create_inventory_label_rename
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_label_rename: #{e}"
end
```

#### Using the create_inventory_label_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryLabelRenameResponse>, Integer, Hash)> create_inventory_label_rename_with_http_info

```ruby
begin
  # Rename a label across every inventory item.
  data, status_code, headers = api_instance.create_inventory_label_rename_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryLabelRenameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_label_rename_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryLabelRenameResponse**](CreateInventoryLabelRenameResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_unit_identifier

> <CreateInventoryUnitIdentifierResponse> create_inventory_unit_identifier(id)

Record a serial, IMEI, or licence key against an inventory item.

Creates the unit lazily if no `unitId` is given. Recording BEFORE the item sells is what makes the identifier usable as evidence on a return — one first recorded after a dispute opens is graded `weak` and says so.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = 'id_example' # String | 

begin
  # Record a serial, IMEI, or licence key against an inventory item.
  result = api_instance.create_inventory_unit_identifier(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_unit_identifier: #{e}"
end
```

#### Using the create_inventory_unit_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryUnitIdentifierResponse>, Integer, Hash)> create_inventory_unit_identifier_with_http_info(id)

```ruby
begin
  # Record a serial, IMEI, or licence key against an inventory item.
  data, status_code, headers = api_instance.create_inventory_unit_identifier_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryUnitIdentifierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_unit_identifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateInventoryUnitIdentifierResponse**](CreateInventoryUnitIdentifierResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inventory_unit_lookup

> <CreateInventoryUnitLookupResponse> create_inventory_unit_lookup

Find a unit by identifier.

\"Have I ever seen this serial?\" — for when something arrives back and nobody knows which order it belongs to. Scoped to the caller, so it can never be used to probe another seller's stock.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Find a unit by identifier.
  result = api_instance.create_inventory_unit_lookup
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_unit_lookup: #{e}"
end
```

#### Using the create_inventory_unit_lookup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInventoryUnitLookupResponse>, Integer, Hash)> create_inventory_unit_lookup_with_http_info

```ruby
begin
  # Find a unit by identifier.
  data, status_code, headers = api_instance.create_inventory_unit_lookup_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInventoryUnitLookupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->create_inventory_unit_lookup_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateInventoryUnitLookupResponse**](CreateInventoryUnitLookupResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_inventory

> <DeleteInventoryResponse> delete_inventory(id)

Soft-archive an inventory item.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Soft-archive an inventory item.
  result = api_instance.delete_inventory(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->delete_inventory: #{e}"
end
```

#### Using the delete_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteInventoryResponse>, Integer, Hash)> delete_inventory_with_http_info(id)

```ruby
begin
  # Soft-archive an inventory item.
  data, status_code, headers = api_instance.delete_inventory_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->delete_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteInventoryResponse**](DeleteInventoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory

> <GetInventoryResponse> get_inventory(id)

Get one inventory item with platform listings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one inventory item with platform listings.
  result = api_instance.get_inventory(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory: #{e}"
end
```

#### Using the get_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInventoryResponse>, Integer, Hash)> get_inventory_with_http_info(id)

```ruby
begin
  # Get one inventory item with platform listings.
  data, status_code, headers = api_instance.get_inventory_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetInventoryResponse**](GetInventoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_facet

> <GetInventoryFacetResponse> get_inventory_facet

Distinct brands + categories across this user's inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Distinct brands + categories across this user's inventory.
  result = api_instance.get_inventory_facet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_facet: #{e}"
end
```

#### Using the get_inventory_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInventoryFacetResponse>, Integer, Hash)> get_inventory_facet_with_http_info

```ruby
begin
  # Distinct brands + categories across this user's inventory.
  data, status_code, headers = api_instance.get_inventory_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInventoryFacetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetInventoryFacetResponse**](GetInventoryFacetResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_label

> <GetInventoryLabelResponse> get_inventory_label

List every distinct label across this user's inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # List every distinct label across this user's inventory.
  result = api_instance.get_inventory_label
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_label: #{e}"
end
```

#### Using the get_inventory_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInventoryLabelResponse>, Integer, Hash)> get_inventory_label_with_http_info

```ruby
begin
  # List every distinct label across this user's inventory.
  data, status_code, headers = api_instance.get_inventory_label_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInventoryLabelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_label_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetInventoryLabelResponse**](GetInventoryLabelResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_label_stat

> <GetInventoryLabelStatResponse> get_inventory_label_stat

List distinct labels with usage counts + colors.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # List distinct labels with usage counts + colors.
  result = api_instance.get_inventory_label_stat
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_label_stat: #{e}"
end
```

#### Using the get_inventory_label_stat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInventoryLabelStatResponse>, Integer, Hash)> get_inventory_label_stat_with_http_info

```ruby
begin
  # List distinct labels with usage counts + colors.
  data, status_code, headers = api_instance.get_inventory_label_stat_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInventoryLabelStatResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_label_stat_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetInventoryLabelStatResponse**](GetInventoryLabelStatResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_sku_exist

> <GetInventorySkuExistResponse> get_inventory_sku_exist(sku)

Check whether a SKU is already in use on this user's inventory.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
sku = 'sku_example' # String | 

begin
  # Check whether a SKU is already in use on this user's inventory.
  result = api_instance.get_inventory_sku_exist(sku)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_sku_exist: #{e}"
end
```

#### Using the get_inventory_sku_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInventorySkuExistResponse>, Integer, Hash)> get_inventory_sku_exist_with_http_info(sku)

```ruby
begin
  # Check whether a SKU is already in use on this user's inventory.
  data, status_code, headers = api_instance.get_inventory_sku_exist_with_http_info(sku)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInventorySkuExistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_inventory_sku_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  |  |

### Return type

[**GetInventorySkuExistResponse**](GetInventorySkuExistResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_public

> <GetSpatialPublicResponse> get_spatial_public(slug)

A shared room, as a visitor sees it.

The room behind a share link: container geometry in METRES matching the real physical object, the solved arrangement, and one row per object on the shelves. REDACTED relative to the owner's view — no cost, no storage location, no listing status — so do not expect the fields /v1/spatial/scenes/{id} returns. Each placement carries `pinned`: true means a HUMAN put it there and it will not move; false means a layout SOLVER chose, and it may choose differently once the stock changes, so an unpinned placement is never a statement about where something physically is. `solved.overflow` lists what did not fit — a non-empty array means the room is INCOMPLETE and `stats.itemCount` exceeds what is on screen. Resolves rooms shared as `unlisted` as well as `public`: holding the link is the permission.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
slug = 'slug_example' # String | 

begin
  # A shared room, as a visitor sees it.
  result = api_instance.get_spatial_public(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_spatial_public: #{e}"
end
```

#### Using the get_spatial_public_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialPublicResponse>, Integer, Hash)> get_spatial_public_with_http_info(slug)

```ruby
begin
  # A shared room, as a visitor sees it.
  data, status_code, headers = api_instance.get_spatial_public_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialPublicResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_spatial_public_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

[**GetSpatialPublicResponse**](GetSpatialPublicResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_scene

> <GetSpatialSceneResponse> get_spatial_scene(id)

A solved room: every item, where it sits, and why.

Returns the space profile (container geometry in METRES, matching the real physical object), the solved placements, and the items. Placements carry a `pinned` flag: true means a human put it there and the layout solver will not move it; false means the solver chose, and it may choose differently once the stock changes. `overflow` lists anything that did not fit — it is reported, never silently dropped.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = 'id_example' # String | 

begin
  # A solved room: every item, where it sits, and why.
  result = api_instance.get_spatial_scene(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_spatial_scene: #{e}"
end
```

#### Using the get_spatial_scene_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialSceneResponse>, Integer, Hash)> get_spatial_scene_with_http_info(id)

```ruby
begin
  # A solved room: every item, where it sits, and why.
  data, status_code, headers = api_instance.get_spatial_scene_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialSceneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->get_spatial_scene_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetSpatialSceneResponse**](GetSpatialSceneResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inventory

> <V1List> list_inventory(opts)

List inventory items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  search: 'search_example', # String | 
  status: 'status_example' # String | 
}

begin
  # List inventory items.
  result = api_instance.list_inventory(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory: #{e}"
end
```

#### Using the list_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_inventory_with_http_info(opts)

```ruby
begin
  # List inventory items.
  data, status_code, headers = api_instance.list_inventory_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **search** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inventory_activity

> <V1List> list_inventory_activity(id, opts)

Activity log for an inventory item (created/sold/edited/etc.).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  limit: 56 # Integer | 
}

begin
  # Activity log for an inventory item (created/sold/edited/etc.).
  result = api_instance.list_inventory_activity(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_activity: #{e}"
end
```

#### Using the list_inventory_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_inventory_activity_with_http_info(id, opts)

```ruby
begin
  # Activity log for an inventory item (created/sold/edited/etc.).
  data, status_code, headers = api_instance.list_inventory_activity_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inventory_ids

> <V1List> list_inventory_ids

Filter inventory → return matching id list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Filter inventory → return matching id list.
  result = api_instance.list_inventory_ids
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_ids: #{e}"
end
```

#### Using the list_inventory_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_inventory_ids_with_http_info

```ruby
begin
  # Filter inventory → return matching id list.
  data, status_code, headers = api_instance.list_inventory_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_ids_with_http_info: #{e}"
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


## list_inventory_units

> <V1List> list_inventory_units(id)

List the individually identified units of an inventory item.

Each identifier carries a `strength` describing what it proves: `strong` was recorded before the item sold, `good` at packing, `weak` only after it shipped. The grade is derived from when it was recorded, never from the value itself.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = 'id_example' # String | 

begin
  # List the individually identified units of an inventory item.
  result = api_instance.list_inventory_units(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_units: #{e}"
end
```

#### Using the list_inventory_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_inventory_units_with_http_info(id)

```ruby
begin
  # List the individually identified units of an inventory item.
  data, status_code, headers = api_instance.list_inventory_units_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_inventory_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_public

> <V1List> list_spatial_public

Public rooms anyone can walk into.

The directory behind world-hopping. A room becomes public when its owner shares it; this lists those, newest first, with enough to draw a doorway AND enough to choose one — name, slug, category, itemCount, up to four previewImages, forSaleCount, a priceFromCents/priceToCents band and updatedAt. The band is the cheapest and dearest thing for sale in the room, never a quote for one object: /api/public/spatial/{slug}/offers is the authority on that. Fetch the room itself from /api/public/spatial/{slug}. Rooms with no items are omitted: an empty room is not a destination.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # Public rooms anyone can walk into.
  result = api_instance.list_spatial_public
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_public: #{e}"
end
```

#### Using the list_spatial_public_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_spatial_public_with_http_info

```ruby
begin
  # Public rooms anyone can walk into.
  data, status_code, headers = api_instance.list_spatial_public_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_public_with_http_info: #{e}"
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


## list_spatial_public_offers

> <V1List> list_spatial_public_offers(slug)

What is for sale in a shared room.

Price, stock, condition and grade for everything in the room its owner is actually selling. Correlate to the room by `itemId`, which is the SAME id the scene payload publishes per item — never by title. An item in the room with no row here is not for sale; an empty array means the owner is showing the collection rather than selling it, which is a different answer from a 404 (no such shared room). SEPARATE CALL ON PURPOSE: the room's geometry is stable for minutes, a price is not — it changes whenever the seller edits a listing. Re-read this before quoting, and do not cache a price alongside a cached room. `priceCents` is CENTS. `available` is remaining stock, or null when the listing declares none; null is unknown, not zero. Where an item sits inside more than one active listing, the offer quoted is the one for that item alone rather than a bundle it belongs to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
slug = 'slug_example' # String | 

begin
  # What is for sale in a shared room.
  result = api_instance.list_spatial_public_offers(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_public_offers: #{e}"
end
```

#### Using the list_spatial_public_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_spatial_public_offers_with_http_info(slug)

```ruby
begin
  # What is for sale in a shared room.
  data, status_code, headers = api_instance.list_spatial_public_offers_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_public_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_scene_movements

> <V1List> list_spatial_scene_movements(id)

Stock movements in a room over a time window.

One row per physical transition: which item, from which node, to which node, when, and of what kind (placed/moved/picked/shipped/received/removed). Nodes are referenced by id; the `fromCode`/`toCode` strings are display snapshots of the location code AT THE TIME and are not stable identifiers — correlate on the node ids. `since`/`until` are ISO timestamps, defaulting to the last seven days and clamped to 90. Movements are NOT attributed to individual team members on this surface: a token has no team role, so there is no honest way to decide whether its holder may see who did the work.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = 'id_example' # String | 

begin
  # Stock movements in a room over a time window.
  result = api_instance.list_spatial_scene_movements(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_scene_movements: #{e}"
end
```

#### Using the list_spatial_scene_movements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_spatial_scene_movements_with_http_info(id)

```ruby
begin
  # Stock movements in a room over a time window.
  data, status_code, headers = api_instance.list_spatial_scene_movements_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_scene_movements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_scenes

> <V1List> list_spatial_scenes

The rooms this account has.

One per market category the seller holds catalog-resolved stock in, plus a warehouse. Rooms are created on first read rather than requiring setup, so this call is safe to treat as the entry point.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new

begin
  # The rooms this account has.
  result = api_instance.list_spatial_scenes
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_scenes: #{e}"
end
```

#### Using the list_spatial_scenes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_spatial_scenes_with_http_info

```ruby
begin
  # The rooms this account has.
  data, status_code, headers = api_instance.list_spatial_scenes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->list_spatial_scenes_with_http_info: #{e}"
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


## update_inventory

> <UpdateInventoryResponse> update_inventory(id)

Update an inventory item (partial).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InventoryApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update an inventory item (partial).
  result = api_instance.update_inventory(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->update_inventory: #{e}"
end
```

#### Using the update_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInventoryResponse>, Integer, Hash)> update_inventory_with_http_info(id)

```ruby
begin
  # Update an inventory item (partial).
  data, status_code, headers = api_instance.update_inventory_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InventoryApi->update_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateInventoryResponse**](UpdateInventoryResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

