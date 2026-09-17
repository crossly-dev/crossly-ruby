# CrosslyBuyer::UpdateMeTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **scope** | **String** |  |  |
| **name** | **String** |  |  |
| **notes** | **String** | Optional short blurb the seller can attach to remember what it&#39;s for. | [optional] |
| **description** | **String** | Primary description body. For scope&#x3D;&#39;description&#39; this is the  snippet body; for scope&#x3D;&#39;listing&#39; this is the default description  the seller wants pre-filled. | [optional] |
| **description_variants** | **Array&lt;String&gt;** | A/B variants for description. Populated for scope&#x3D;&#39;listing&#39;;  typically null for scope&#x3D;&#39;description&#39; (a snippet is one string). | [optional] |
| **title** | **String** |  | [optional] |
| **title_variants** | **Array&lt;String&gt;** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **condition** | **String** | Master condition enum — new/like_new/good/fair/poor. | [optional] |
| **color** | **String** |  | [optional] |
| **material** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **size_system** | **String** |  | [optional] |
| **weight_oz** | **Float** |  | [optional] |
| **department** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **style** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **default_for_category** | **String** | When set, form&#39;s category picker prompts \&quot;Use your default for  this category\&quot; on match. | [optional] |
| **is_default** | **Boolean** |  |  |
| **share_token** | **String** | URL-safe random token. Populated by POST /me/templates/:id/share;  the /public/templates/:token route surfaces a read-only view any  visitor can browse + import. | [optional] |
| **sort_order** | **Float** | Snippet ordering — kept for scope&#x3D;&#39;description&#39; back-compat with  the description_templates.sort_order behavior. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::UpdateMeTemplateResponse.new(
  id: null,
  user_id: null,
  scope: null,
  name: null,
  notes: null,
  description: null,
  description_variants: null,
  title: null,
  title_variants: null,
  brand: null,
  condition: null,
  color: null,
  material: null,
  size: null,
  size_system: null,
  weight_oz: null,
  department: null,
  gender: null,
  style: null,
  pattern: null,
  item_type: null,
  tags: null,
  default_for_category: null,
  is_default: null,
  share_token: null,
  sort_order: null,
  created_at: null,
  updated_at: null
)
```

