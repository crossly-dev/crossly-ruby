# CrosslyBuyer::ListInventoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **brand** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **sku** | **String** |  | [optional] |
| **quantity** | **Float** |  |  |
| **quantity_available** | **Float** |  |  |
| **quantity_reserved** | **Float** |  |  |
| **quantity_sold** | **Float** |  |  |
| **original_price** | **String** |  | [optional] |
| **condition** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **material** | **String** |  | [optional] |
| **style** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **size_system** | **String** |  | [optional] |
| **color** | **Array&lt;String&gt;** |  |  |
| **default_title** | **String** |  |  |
| **images** | **Array&lt;String&gt;** |  |  |
| **video_url** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  |  |
| **labels** | **Array&lt;String&gt;** |  |  |
| **notes** | **String** |  | [optional] |
| **custom_label** | **String** |  | [optional] |
| **warehouse_location** | **String** |  | [optional] |
| **storage_bin** | **String** |  | [optional] |
| **storage_note** | **String** |  | [optional] |
| **market_sku_id** | **String** |  | [optional] |
| **market_variant_id** | **String** |  | [optional] |
| **first_listed_at** | **Time** |  | [optional] |
| **include_tax_in_landed** | **Boolean** |  |  |
| **cost_basis_cents** | **Float** |  | [optional] |
| **price_floor_cents** | **Float** |  | [optional] |
| **floor_is_net** | **Boolean** |  |  |
| **acquired_at** | **Time** |  | [optional] |
| **acquired_source** | **String** |  | [optional] |
| **weight_lb** | **String** |  | [optional] |
| **weight_oz** | **String** |  | [optional] |
| **dimension_lin** | **String** |  | [optional] |
| **dimension_win** | **String** |  | [optional] |
| **dimension_hin** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **source** | **String** |  |  |
| **category** | [**ListInventoryItemCategory**](ListInventoryItemCategory.md) |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListInventoryItem.new(
  id: null,
  brand: null,
  created_at: null,
  updated_at: null,
  user_id: null,
  sku: null,
  quantity: null,
  quantity_available: null,
  quantity_reserved: null,
  quantity_sold: null,
  original_price: null,
  condition: null,
  size: null,
  material: null,
  style: null,
  pattern: null,
  department: null,
  gender: null,
  item_type: null,
  size_system: null,
  color: null,
  default_title: null,
  images: null,
  video_url: null,
  tags: null,
  labels: null,
  notes: null,
  custom_label: null,
  warehouse_location: null,
  storage_bin: null,
  storage_note: null,
  market_sku_id: null,
  market_variant_id: null,
  first_listed_at: null,
  include_tax_in_landed: null,
  cost_basis_cents: null,
  price_floor_cents: null,
  floor_is_net: null,
  acquired_at: null,
  acquired_source: null,
  weight_lb: null,
  weight_oz: null,
  dimension_lin: null,
  dimension_win: null,
  dimension_hin: null,
  status: null,
  source: null,
  category: null
)
```

