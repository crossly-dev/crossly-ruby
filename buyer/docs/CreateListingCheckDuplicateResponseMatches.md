# CrosslyBuyer::CreateListingCheckDuplicateResponseMatches

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suggested** | **String** | What we&#39;d offer to do about this match. A suggestion for which button to  feature — never a decision. All three actions stay available. |  |
| **variation_group_id** | **String** | The variation group to ADD to, when the match already belongs to one.  Null means there is no group yet and choosing &#x60;variation&#x60; creates one from  the match plus the new listing. Without this the UI has to guess, and  guessing wrong means either a second group beside the first or a silent  no-op. | [optional] |
| **listing_id** | **String** | The seller&#39;s existing listing this scan probably duplicates (null if the  match landed only on an inventory item with no listing row). | [optional] |
| **inventory_item_id** | **String** | The inventory item behind that listing, when linked. Drives the  \&quot;View inventory\&quot; button. | [optional] |
| **title** | **String** |  |  |
| **image_url** | **String** |  | [optional] |
| **match_type** | **String** |  |  |
| **score** | **Float** | 0–1 confidence. Image matches report 1; title matches the similarity. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateListingCheckDuplicateResponseMatches.new(
  suggested: null,
  variation_group_id: null,
  listing_id: null,
  inventory_item_id: null,
  title: null,
  image_url: null,
  match_type: null,
  score: null
)
```

