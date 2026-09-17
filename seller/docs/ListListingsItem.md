# Crossly::ListListingsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **brand** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **sku** | **String** |  | [optional] |
| **quantity** | **Float** |  |  |
| **quantity_available** | **Float** |  |  |
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
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  |  |
| **price_floor_cents** | **Float** |  | [optional] |
| **floor_is_net** | **Boolean** |  |  |
| **weight_lb** | **String** |  | [optional] |
| **weight_oz** | **String** |  | [optional] |
| **dimension_lin** | **String** |  | [optional] |
| **dimension_win** | **String** |  | [optional] |
| **dimension_hin** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **source** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **price** | **String** |  | [optional] |
| **grade_key** | **String** |  | [optional] |
| **grading** | [**ListListingsItemGrading**](ListListingsItemGrading.md) |  | [optional] |
| **publish_at** | **Time** |  | [optional] |
| **scheduled_platforms** | **Array&lt;String&gt;** |  | [optional] |
| **parent_listing_id** | **String** |  | [optional] |
| **is_bundle** | **Boolean** |  |  |
| **automation_assigned_rule_ids** | **Array&lt;String&gt;** |  |  |
| **automation_blocked_rule_ids** | **Array&lt;String&gt;** |  |  |
| **automation_assigned_chain_ids** | **Array&lt;String&gt;** |  |  |
| **automation_blocked_chain_ids** | **Array&lt;String&gt;** |  |  |
| **hs_code** | **String** |  | [optional] |
| **country_of_origin** | **String** |  | [optional] |
| **delisted_at** | **Time** |  | [optional] |
| **sold_at** | **Time** |  | [optional] |
| **duplicate_of_listing_id** | **String** |  | [optional] |
| **client_draft_id** | **String** |  | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::ListListingsItem.new(
  id: null,
  brand: null,
  name: null,
  created_at: null,
  updated_at: null,
  user_id: null,
  sku: null,
  quantity: null,
  quantity_available: null,
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
  images: null,
  video_url: null,
  tags: null,
  price_floor_cents: null,
  floor_is_net: null,
  weight_lb: null,
  weight_oz: null,
  dimension_lin: null,
  dimension_win: null,
  dimension_hin: null,
  status: null,
  source: null,
  description: null,
  title: null,
  description_html: null,
  price: null,
  grade_key: null,
  grading: null,
  publish_at: null,
  scheduled_platforms: null,
  parent_listing_id: null,
  is_bundle: null,
  automation_assigned_rule_ids: null,
  automation_blocked_rule_ids: null,
  automation_assigned_chain_ids: null,
  automation_blocked_chain_ids: null,
  hs_code: null,
  country_of_origin: null,
  delisted_at: null,
  sold_at: null,
  duplicate_of_listing_id: null,
  client_draft_id: null
)
```

