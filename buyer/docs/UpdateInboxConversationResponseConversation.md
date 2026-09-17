# CrosslyBuyer::UpdateInboxConversationResponseConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **status** | **String** |  |  |
| **platform** | **String** |  |  |
| **listing_id** | **String** |  | [optional] |
| **account_slot** | **Float** |  |  |
| **inventory_item_id** | **String** |  | [optional] |
| **buyer_username** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **platform_conversation_id** | **String** |  |  |
| **buyer_platform_id** | **String** |  | [optional] |
| **is_read** | **Boolean** |  |  |
| **is_hidden** | **Boolean** |  |  |
| **has_offer** | **Boolean** |  |  |
| **offer_amount** | **String** |  | [optional] |
| **offer_status** | **String** |  | [optional] |
| **platform_conversation_url** | **String** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::UpdateInboxConversationResponseConversation.new(
  id: null,
  created_at: null,
  user_id: null,
  status: null,
  platform: null,
  listing_id: null,
  account_slot: null,
  inventory_item_id: null,
  buyer_username: null,
  subject: null,
  platform_conversation_id: null,
  buyer_platform_id: null,
  is_read: null,
  is_hidden: null,
  has_offer: null,
  offer_amount: null,
  offer_status: null,
  platform_conversation_url: null,
  last_message_at: null
)
```

