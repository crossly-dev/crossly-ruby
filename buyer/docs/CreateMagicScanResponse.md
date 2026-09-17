# CrosslyBuyer::CreateMagicScanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **ebay_match** | [**CreateMagicScanResponseEbayMatch**](CreateMagicScanResponseEbayMatch.md) |  | [optional] |
| **top_hits** | [**Array&lt;CreateMagicScanResponseTopHits&gt;**](CreateMagicScanResponseTopHits.md) | Unified top-10-globally list, ranked by CLIP visual similarity to  the seller&#39;s source photo. Each hit carries its origin platform. |  |
| **ebay_hits** | [**Array&lt;CreateMagicScanResponseEbayHits&gt;**](CreateMagicScanResponseEbayHits.md) | Legacy compat — UI&#39;s existing render. ebayHits now &#x3D;&#x3D; visually-  validated eBay subset; otherMatches is re-grouped from topHits. |  |
| **other_matches** | **Object** |  |  |
| **image_urls** | **Array&lt;String&gt;** | Every photo the seller uploaded for this scan, primary first. |  |
| **vision_aspects** | **Object** | Vision-LLM aspects extracted across all photos. Populated only  when the seller has magic-list-vision-aspects enabled + a vision  provider configured. Empty otherwise. |  |
| **possible_duplicates** | [**Array&lt;CreateMagicScanResponsePossibleDuplicates&gt;**](CreateMagicScanResponsePossibleDuplicates.md) | The seller&#39;s OWN listings/inventory that this scan probably duplicates  (image + fuzzy-title self-dedup). Empty when nothing matched. Drives the  \&quot;you may already have this\&quot; prompt. |  |
| **cached** | **Boolean** |  |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateMagicScanResponse.new(
  run_id: null,
  ebay_match: null,
  top_hits: null,
  ebay_hits: null,
  other_matches: null,
  image_urls: null,
  vision_aspects: null,
  possible_duplicates: null,
  cached: null
)
```

