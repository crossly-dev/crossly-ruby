# CrosslyBuyer::CreateListingImportByUrlResponseListing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |
| **title** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **condition** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **color** | **Array&lt;String&gt;** | Color(s) the platform&#39;s own response exposes (e.g. Poshmark&#39;s  &#x60;colors&#x60; array). Only set when actually present in the scrape. | [optional] |
| **sku** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **category** | **Array&lt;String&gt;** | The platform&#39;s OWN category, as a top-down path (e.g. Poshmark&#39;s  [\&quot;Kids\&quot;, \&quot;Toys\&quot;, \&quot;Dolls &amp; Accessories\&quot;] from department → category →  feature). Only set when the platform&#39;s list/scrape response actually  carries this — never guessed. Mapped onto Crossly&#39;s category.main/  sub/sub2 (listings) or categoryMain/categorySub (inventory_items) at  create/enrich time. | [optional] |
| **category_id** | **String** | The platform&#39;s raw numeric category id, same space as  overrides.&lt;platform&gt;.categoryId — distinct from &#x60;category&#x60;&#39;s  human-readable path. Only set by platforms whose id space is directly  comparable to what we publish (currently eBay&#39;s drift-check second  call — see diff-fields/second-call.ts&#39;s ebayRemoteFields). eBay&#39;s own  CategoryName wording/depth is a different vocabulary from Crossly&#39;s  master taxonomy breadcrumb and will essentially never string-match  it, so drift-detection compares ids instead of names. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag-like strings the platform&#39;s own response exposes (e.g. Poshmark&#39;s  marketing \&quot;experience\&quot; tags). Distinct from a full search-tag  generator — just whatever real tag data the scrape already carries. | [optional] |
| **material** | **String** | Structured item aspects — the same shape the listing form&#39;s Item  Details section captures (and templates already persist), now sourced  from the platform&#39;s own data instead of only manual entry. Only set  when the platform&#39;s response genuinely carries a semantically-matching  field (eBay item specifics, Facebook attributes, Poshmark catalog,  Depop&#39;s detail-call ride-along) — never derived or guessed. | [optional] |
| **style** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **size_system** | **String** |  | [optional] |
| **item_specifics** | **Object** | Category-specific facets from a per-item DETAIL call (e.g. Facebook&#39;s  Age Range/Character/Age Group), keyed the same way eBay item-specifics  are: aspect name -&gt; value array. Only set by platforms with a genuine  per-item attribute source — costs one extra call per listing, so  populated by a dedicated enrichment pass, not the main list mapper.  Maps onto listings.itemSpecifics; inventory_items has no equivalent  column. | [optional] |
| **listed_at** | **Time** | When the listing was first published on the platform. Used by  the Advanced filter&#39;s listedAfter / listedBefore knobs. Optional  because not every platform returns it on the listing endpoint. | [optional] |
| **quantity** | **Float** | Units this platform reports. Only meaningful for platforms  &#x60;PLATFORM_QUANTITY_SYNC&#x60; marks &#39;native&#39; — relist platforms show one item  and say 1 forever, so they leave this undefined rather than voting with  a number they cannot actually express. See &#x60;_quantity.ts&#x60;. | [optional] |
| **account_slot** | **Float** | Which of the user&#39;s connected accounts on this platform this listing  was scraped from — stamped by fetchCookieListings as it loops each  connected account (see listActiveForPlatform in  user-platform-accounts/read.ts). Undefined for API-track platforms  (single connection, no multi-account concept) and for any cookie path  that hasn&#39;t been threaded yet; importOne treats undefined as slot 1,  matching the historical single-account default. | [optional] |
| **weight_oz** | **Float** | Total item weight in ounces (already summed, not split lb+oz —  the write path converts to the DB&#39;s weightLb+weightOz split). | [optional] |
| **dimension_lin** | **Float** |  | [optional] |
| **dimension_win** | **Float** |  | [optional] |
| **dimension_hin** | **Float** |  | [optional] |
| **handling_time_days** | **Float** | Max days the platform&#39;s own listing commits to ship within (eBay&#39;s  DispatchTimeMax, Etsy&#39;s processing_max). | [optional] |
| **best_offer_auto_accept_cents** | **Float** |  | [optional] |
| **best_offer_auto_decline_cents** | **Float** |  | [optional] |
| **item_location** | **String** | Free text as the platform itself expresses it (e.g. eBay&#39;s &#x60;Location&#x60;  is a single seller-typed string like \&quot;Austin, TX\&quot;, not a structured  address) — never parsed into city/state. | [optional] |
| **item_location_zip** | **String** |  | [optional] |
| **item_location_country** | **String** |  | [optional] |
| **declared_shipping_cost** | **Float** | What the platform&#39;s OWN listing declares shipping costs — reference  only, distinct from a realized post-sale shipping cost. | [optional] |
| **return_policy_text** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateListingImportByUrlResponseListing.new(
  platform_listing_id: null,
  title: null,
  description: null,
  price: null,
  images: null,
  brand: null,
  condition: null,
  size: null,
  color: null,
  sku: null,
  url: null,
  category: null,
  category_id: null,
  tags: null,
  material: null,
  style: null,
  pattern: null,
  department: null,
  gender: null,
  item_type: null,
  size_system: null,
  item_specifics: null,
  listed_at: null,
  quantity: null,
  account_slot: null,
  weight_oz: null,
  dimension_lin: null,
  dimension_win: null,
  dimension_hin: null,
  handling_time_days: null,
  best_offer_auto_accept_cents: null,
  best_offer_auto_decline_cents: null,
  item_location: null,
  item_location_zip: null,
  item_location_country: null,
  declared_shipping_cost: null,
  return_policy_text: null
)
```

