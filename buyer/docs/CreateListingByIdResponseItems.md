# CrosslyBuyer::CreateListingByIdResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effective_title** | **String** |  |  |
| **effective_price** | **String** |  | [optional] |
| **effective_description** | **String** |  | [optional] |
| **effective_images** | **Array&lt;String&gt;** |  |  |
| **effective_brand** | **String** |  | [optional] |
| **effective_condition** | **String** |  | [optional] |
| **effective_size** | **String** |  | [optional] |
| **effective_sku** | **String** |  | [optional] |
| **effective_color** | **Array&lt;String&gt;** |  |  |
| **effective_tags** | **Array&lt;String&gt;** |  |  |
| **platform_listings** | **Array&lt;Object&gt;** |  |  |
| **inventory_item_id** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **price** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **video_url** | **String** | Optional single product video (R2/CDN URL). Shown on the Crossly buyer page. | [optional] |
| **status** | **String** |  |  |
| **condition** | **String** |  | [optional] |
| **grade_key** | **String** | Third-party grading, when the item is slabbed. Migration 0277.    Separate from &#x60;condition&#x60; on purpose and never derived from it: a grade  is a claim about what a GRADING COMPANY certified, and inferring \&quot;PSA 10\&quot;  from a coarse condition would be a false authenticity claim. It is also  never filled from our own AI estimate (&#x60;bulk_market_items.grade&#x60;), which  carries an explicit \&quot;not a professional grade\&quot; disclaimer.    &#x60;gradeKey&#x60; is the canonical form from &#x60;gradeKey()&#x60; in  shared/constants/graders.ts; &#x60;grading&#x60; holds the full GradingInfo  including the cert number and whether a cert lookup verified it. | [optional] |
| **grading** | [**ListListingsItemGrading**](ListListingsItemGrading.md) |  | [optional] |
| **brand** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **material** | **String** | Migration 0179 — see the matching fields on inventory_items above. | [optional] |
| **style** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **size_system** | **String** |  | [optional] |
| **color** | **Array&lt;String&gt;** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **sku** | **String** |  | [optional] |
| **quantity** | **Float** |  |  |
| **quantity_available** | **Float** |  |  |
| **weight_lb** | **String** |  | [optional] |
| **weight_oz** | **String** |  | [optional] |
| **dimension_lin** | **String** |  | [optional] |
| **dimension_win** | **String** |  | [optional] |
| **dimension_hin** | **String** |  | [optional] |
| **publish_at** | **Time** | Scheduled go-live time. When set on a draft, the listing-scheduler  worker waits until this passes then dispatches the crosspost to  scheduledPlatforms and flips status from &#39;draft&#39; to &#39;active&#39;. | [optional] |
| **scheduled_platforms** | **Array&lt;String&gt;** | Which platforms to publish to when publishAt fires. JSON array of  platform ids. Null/empty &#x3D; scheduler skips (listing won&#39;t auto-  publish, even after publishAt — gives the seller an escape hatch). | [optional] |
| **parent_listing_id** | **String** | Parent listing when this row is a CHILD in a listing chain. Null &#x3D;  standalone. What being a child means depends on the parent&#39;s  &#x60;groupKind&#x60; — see it. | [optional] |
| **is_bundle** | **Boolean** |  |  |
| **automation_assigned_rule_ids** | **Array&lt;String&gt;** | Per-listing automation overrides. See migration 0098.     automationAssignedRuleIds  — force-include for these rules   automationBlockedRuleIds   — exempt from these rules   automationAssignedChainIds — force-include for these workflow chains   automationBlockedChainIds  — exempt from these workflow chains |  |
| **automation_blocked_rule_ids** | **Array&lt;String&gt;** |  |  |
| **automation_assigned_chain_ids** | **Array&lt;String&gt;** |  |  |
| **automation_blocked_chain_ids** | **Array&lt;String&gt;** |  |  |
| **hs_code** | **String** | Harmonised System customs code — international shipping declarations. | [optional] |
| **country_of_origin** | **String** | Customs country of origin. Distinct from the seller&#39;s location. | [optional] |
| **price_floor_cents** | **Float** | Never let a repricing rule go below this. On the ITEM because it is a  fact about the thing owned, not about any one rule — \&quot;this jacket never  goes below $45\&quot; should apply to every rule, and before this it was  expressible only as one rule per jacket. Listings inherit when null. | [optional] |
| **floor_is_net** | **Boolean** | When true the floor is a TAKE-HOME target, converted to a per-platform  gross at reprice time. A gross floor is four different promises across  four platforms; this is the one number a seller actually cares about. |  |
| **delisted_at** | **Time** |  | [optional] |
| **sold_at** | **Time** |  | [optional] |
| **source** | **String** | Mirrors inventory_items.source. &#39;manual&#39; for every seller-created  listing; external-stub.ts sets &#39;external_sale&#39; on the synthetic  listing it fabricates for a sale detected on a platform id Crossly  never listed — those rows have no real photos/description of their  own (everything is lifted from the platform&#39;s sale payload) and are  otherwise indistinguishable from a real listing in the UI. |  |
| **duplicate_of_listing_id** | **String** | Set when import&#39;s bin-packing (see _import-one.ts) created THIS  listing to hold a same-platform straggler it couldn&#39;t fit onto an  existing candidate listing for the same physical item — points at  the primary/first candidate. Purely informational: this listing  is a real, independently listable/delistable row, not a shadow.  Null for every ordinarily-created listing. | [optional] |
| **client_draft_id** | **String** | UUID minted on a seller&#39;s machine for a draft written offline.    The idempotency key for desktop sync. The failure it guards is a POST  that succeeds server-side whose reply is lost — the client cannot tell  that from a failure, retries, and one item becomes two live listings  against one piece of stock. Unique per user (partial index, migration  0268); null for every listing that did not come from an offline draft. | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateListingByIdResponseItems.new(
  effective_title: null,
  effective_price: null,
  effective_description: null,
  effective_images: null,
  effective_brand: null,
  effective_condition: null,
  effective_size: null,
  effective_sku: null,
  effective_color: null,
  effective_tags: null,
  platform_listings: null,
  inventory_item_id: null,
  id: null,
  user_id: null,
  name: null,
  title: null,
  description: null,
  description_html: null,
  price: null,
  images: null,
  video_url: null,
  status: null,
  condition: null,
  grade_key: null,
  grading: null,
  brand: null,
  size: null,
  material: null,
  style: null,
  pattern: null,
  department: null,
  gender: null,
  item_type: null,
  size_system: null,
  color: null,
  tags: null,
  sku: null,
  quantity: null,
  quantity_available: null,
  weight_lb: null,
  weight_oz: null,
  dimension_lin: null,
  dimension_win: null,
  dimension_hin: null,
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
  price_floor_cents: null,
  floor_is_net: null,
  delisted_at: null,
  sold_at: null,
  source: null,
  duplicate_of_listing_id: null,
  client_draft_id: null,
  created_at: null,
  updated_at: null
)
```

