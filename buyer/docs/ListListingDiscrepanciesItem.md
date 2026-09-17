# CrosslyBuyer::ListListingDiscrepanciesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **source** | **String** |  |  |
| **platform** | **String** |  |  |
| **listing_id** | **String** |  |  |
| **account_slot** | **Float** |  |  |
| **last_error** | **String** |  | [optional] |
| **field** | **String** |  |  |
| **our_value** | **String** |  | [optional] |
| **remote_value** | **String** |  | [optional] |
| **first_detected_at** | **Time** |  |  |
| **last_detected_at** | **Time** |  |  |
| **dismissed_at** | **Time** |  | [optional] |
| **dismissed_remote_value** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::ListListingDiscrepanciesItem.new(
  id: null,
  created_at: null,
  updated_at: null,
  user_id: null,
  source: null,
  platform: null,
  listing_id: null,
  account_slot: null,
  last_error: null,
  field: null,
  our_value: null,
  remote_value: null,
  first_detected_at: null,
  last_detected_at: null,
  dismissed_at: null,
  dismissed_remote_value: null
)
```

