# Crossly::GetMarketProductResponseProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **brand** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **retail_cents** | **Float** |  | [optional] |
| **category_slug** | **String** |  |  |
| **external_id** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **model** | **String** |  | [optional] |
| **colorway** | **String** |  | [optional] |
| **style_code** | **String** |  | [optional] |
| **release_date** | **String** |  | [optional] |
| **submitted_by_user_id** | **String** |  | [optional] |
| **approved_by_user_id** | **String** |  | [optional] |
| **approved_at** | **Time** |  | [optional] |
| **rejection_reason** | **String** |  | [optional] |
| **proposed_variants** | [**Array&lt;GetMarketProductResponseProductProposedVariants&gt;**](GetMarketProductResponseProductProposedVariants.md) |  |  |
| **verification** | **Object** |  |  |
| **ai_verdict** | **Object** |  | [optional] |
| **submission_source** | **String** |  | [optional] |
| **duplicate_of_sku_id** | **String** |  | [optional] |
| **preferred_provider_slug** | **String** |  | [optional] |
| **allow_pre_bid** | **Boolean** |  |  |
| **pre_bid_opens_at** | **Time** |  | [optional] |
| **featured** | **Boolean** |  |  |
| **external_source** | **String** |  | [optional] |
| **external_synced_at** | **Time** |  | [optional] |
| **graded_grade_keys** | **Array&lt;String&gt;** |  |  |
| **lowest_ask_cents** | **Float** |  | [optional] |
| **highest_bid_cents** | **Float** |  | [optional] |
| **last_sale_cents** | **Float** |  | [optional] |
| **trades_count** | **Float** |  |  |

## Example

```ruby
require 'crossly'

instance = Crossly::GetMarketProductResponseProduct.new(
  id: null,
  brand: null,
  name: null,
  created_at: null,
  status: null,
  retail_cents: null,
  category_slug: null,
  external_id: null,
  image_url: null,
  model: null,
  colorway: null,
  style_code: null,
  release_date: null,
  submitted_by_user_id: null,
  approved_by_user_id: null,
  approved_at: null,
  rejection_reason: null,
  proposed_variants: null,
  verification: null,
  ai_verdict: null,
  submission_source: null,
  duplicate_of_sku_id: null,
  preferred_provider_slug: null,
  allow_pre_bid: null,
  pre_bid_opens_at: null,
  featured: null,
  external_source: null,
  external_synced_at: null,
  graded_grade_keys: null,
  lowest_ask_cents: null,
  highest_bid_cents: null,
  last_sale_cents: null,
  trades_count: null
)
```

