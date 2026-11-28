# Crossly::InboxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_inbox_ai_suggest**](InboxApi.md#create_inbox_ai_suggest) | **POST** /v1/inbox/ai-suggest | AI reply suggestion for a conversation. |
| [**create_inbox_canned_response**](InboxApi.md#create_inbox_canned_response) | **POST** /v1/inbox/canned-responses | Create a canned response (added to the end of the list). |
| [**create_inbox_conversation_bulk**](InboxApi.md#create_inbox_conversation_bulk) | **POST** /v1/inbox/conversations/bulk | Bulk mark read / mark unread / soft-delete conversations. |
| [**create_inbox_conversation_bulk_ai_respond**](InboxApi.md#create_inbox_conversation_bulk_ai_respond) | **POST** /v1/inbox/conversations/bulk-ai-respond | AI reply suggestion for multiple conversations — draft or send. |
| [**create_inbox_conversation_offer_action**](InboxApi.md#create_inbox_conversation_offer_action) | **POST** /v1/inbox/conversations/{id}/offer-action | Accept / counter / decline an active offer on a conversation. |
| [**create_inbox_message_triage**](InboxApi.md#create_inbox_message_triage) | **POST** /v1/inbox/messages/{id}/triage | Manually re-triage a buyer message. |
| [**create_inbox_offer**](InboxApi.md#create_inbox_offer) | **POST** /v1/inbox/{id}/offer | Accept, counter, or decline an offer on a conversation. |
| [**create_inbox_reply**](InboxApi.md#create_inbox_reply) | **POST** /v1/inbox/{id}/reply | Send a reply to a conversation thread. |
| [**create_inbox_send_offer**](InboxApi.md#create_inbox_send_offer) | **POST** /v1/inbox/{id}/send-offer | Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation&#39;s canSendOffer is true (Grailed today). &#x60;amount&#x60; is in the listing&#39;s currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus &#39;sending&#39; until the platform confirms. |
| [**create_video_request_answer**](InboxApi.md#create_video_request_answer) | **POST** /v1/video-requests/{id}/answer | Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing. |
| [**create_video_request_decline**](InboxApi.md#create_video_request_decline) | **POST** /v1/video-requests/{id}/decline | Decline a video request, with an optional note to the buyer. |
| [**create_video_request_upload_url**](InboxApi.md#create_video_request_upload_url) | **POST** /v1/video-requests/upload-url | A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl. |
| [**delete_inbox_canned_response**](InboxApi.md#delete_inbox_canned_response) | **DELETE** /v1/inbox/canned-responses/{id} | Delete a canned response. |
| [**get_inbox**](InboxApi.md#get_inbox) | **GET** /v1/inbox/{id} | Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus. |
| [**get_inbox_canned_response**](InboxApi.md#get_inbox_canned_response) | **GET** /v1/inbox/canned-responses | List canned responses in the seller&#39;s order. |
| [**get_inbox_conversation_message**](InboxApi.md#get_inbox_conversation_message) | **GET** /v1/inbox/conversations/{id}/messages | Paginated messages for a conversation. |
| [**get_inbox_conversation_unread_count**](InboxApi.md#get_inbox_conversation_unread_count) | **GET** /v1/inbox/conversations/unread-count | Unread conversation count (threads only; /v1/inbox/counts adds offers). |
| [**get_inbox_count**](InboxApi.md#get_inbox_count) | **GET** /v1/inbox/counts | Inbox badges: unread and needs-reply, split into conversations and offers. |
| [**list_inbox**](InboxApi.md#list_inbox) | **GET** /v1/inbox | List conversations. &#x60;filter&#x60; narrows to the rows GET /v1/inbox/counts counts. |
| [**list_video_requests**](InboxApi.md#list_video_requests) | **GET** /v1/video-requests | Buyers asking for a video of your items. status: open (default), answered, declined or all. |
| [**update_inbox_canned_response**](InboxApi.md#update_inbox_canned_response) | **PUT** /v1/inbox/canned-responses/{id} | Update a canned response. |
| [**update_inbox_canned_response_order**](InboxApi.md#update_inbox_canned_response_order) | **PUT** /v1/inbox/canned-responses/order | Reorder canned responses. |
| [**update_inbox_conversation**](InboxApi.md#update_inbox_conversation) | **PATCH** /v1/inbox/conversations/{id} | Mark read / change status / close conversation. |


## create_inbox_ai_suggest

> <CreateInboxAiSuggestResponse> create_inbox_ai_suggest(create_inbox_ai_suggest_request)

AI reply suggestion for a conversation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
create_inbox_ai_suggest_request = Crossly::CreateInboxAiSuggestRequest.new({conversation_id: 'conversation_id_example'}) # CreateInboxAiSuggestRequest | 

begin
  # AI reply suggestion for a conversation.
  result = api_instance.create_inbox_ai_suggest(create_inbox_ai_suggest_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_ai_suggest: #{e}"
end
```

#### Using the create_inbox_ai_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxAiSuggestResponse>, Integer, Hash)> create_inbox_ai_suggest_with_http_info(create_inbox_ai_suggest_request)

```ruby
begin
  # AI reply suggestion for a conversation.
  data, status_code, headers = api_instance.create_inbox_ai_suggest_with_http_info(create_inbox_ai_suggest_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxAiSuggestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_ai_suggest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox_ai_suggest_request** | **CreateInboxAiSuggestRequest** |  |  |

### Return type

**CreateInboxAiSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_canned_response

> <CreateInboxCannedResponseResponse> create_inbox_canned_response(create_inbox_canned_response_request)

Create a canned response (added to the end of the list).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
create_inbox_canned_response_request = Crossly::CreateInboxCannedResponseRequest.new({name: 'name_example', body: 'body_example'}) # CreateInboxCannedResponseRequest | 

begin
  # Create a canned response (added to the end of the list).
  result = api_instance.create_inbox_canned_response(create_inbox_canned_response_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_canned_response: #{e}"
end
```

#### Using the create_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxCannedResponseResponse>, Integer, Hash)> create_inbox_canned_response_with_http_info(create_inbox_canned_response_request)

```ruby
begin
  # Create a canned response (added to the end of the list).
  data, status_code, headers = api_instance.create_inbox_canned_response_with_http_info(create_inbox_canned_response_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxCannedResponseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox_canned_response_request** | **CreateInboxCannedResponseRequest** |  |  |

### Return type

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_conversation_bulk

> <CreateInboxConversationBulkResponse> create_inbox_conversation_bulk(create_inbox_conversation_bulk_request)

Bulk mark read / mark unread / soft-delete conversations.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
create_inbox_conversation_bulk_request = Crossly::CreateInboxConversationBulkRequest.new({conversation_ids: ['conversation_ids_example'], action: 'delete'}) # CreateInboxConversationBulkRequest | 

begin
  # Bulk mark read / mark unread / soft-delete conversations.
  result = api_instance.create_inbox_conversation_bulk(create_inbox_conversation_bulk_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk: #{e}"
end
```

#### Using the create_inbox_conversation_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversationBulkResponse>, Integer, Hash)> create_inbox_conversation_bulk_with_http_info(create_inbox_conversation_bulk_request)

```ruby
begin
  # Bulk mark read / mark unread / soft-delete conversations.
  data, status_code, headers = api_instance.create_inbox_conversation_bulk_with_http_info(create_inbox_conversation_bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversationBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox_conversation_bulk_request** | **CreateInboxConversationBulkRequest** |  |  |

### Return type

**CreateInboxConversationBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_conversation_bulk_ai_respond

> <CreateInboxConversationBulkAiRespondResponse> create_inbox_conversation_bulk_ai_respond(create_inbox_conversation_bulk_ai_respond_request)

AI reply suggestion for multiple conversations — draft or send.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
create_inbox_conversation_bulk_ai_respond_request = Crossly::CreateInboxConversationBulkAiRespondRequest.new({conversation_ids: ['conversation_ids_example'], mode: 'draft'}) # CreateInboxConversationBulkAiRespondRequest | 

begin
  # AI reply suggestion for multiple conversations — draft or send.
  result = api_instance.create_inbox_conversation_bulk_ai_respond(create_inbox_conversation_bulk_ai_respond_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_ai_respond: #{e}"
end
```

#### Using the create_inbox_conversation_bulk_ai_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversationBulkAiRespondResponse>, Integer, Hash)> create_inbox_conversation_bulk_ai_respond_with_http_info(create_inbox_conversation_bulk_ai_respond_request)

```ruby
begin
  # AI reply suggestion for multiple conversations — draft or send.
  data, status_code, headers = api_instance.create_inbox_conversation_bulk_ai_respond_with_http_info(create_inbox_conversation_bulk_ai_respond_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversationBulkAiRespondResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_ai_respond_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox_conversation_bulk_ai_respond_request** | **CreateInboxConversationBulkAiRespondRequest** |  |  |

### Return type

**CreateInboxConversationBulkAiRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_conversation_offer_action

> <UpdateInboxConversationResponse> create_inbox_conversation_offer_action(id, create_inbox_conversation_offer_action_request)

Accept / counter / decline an active offer on a conversation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_inbox_conversation_offer_action_request = Crossly::CreateInboxConversationOfferActionRequest.new({action: 'accept'}) # CreateInboxConversationOfferActionRequest | 

begin
  # Accept / counter / decline an active offer on a conversation.
  result = api_instance.create_inbox_conversation_offer_action(id, create_inbox_conversation_offer_action_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_offer_action: #{e}"
end
```

#### Using the create_inbox_conversation_offer_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInboxConversationResponse>, Integer, Hash)> create_inbox_conversation_offer_action_with_http_info(id, create_inbox_conversation_offer_action_request)

```ruby
begin
  # Accept / counter / decline an active offer on a conversation.
  data, status_code, headers = api_instance.create_inbox_conversation_offer_action_with_http_info(id, create_inbox_conversation_offer_action_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInboxConversationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_offer_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_inbox_conversation_offer_action_request** | **CreateInboxConversationOfferActionRequest** |  |  |

### Return type

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_message_triage

> <CreateInboxMessageTriageResponse> create_inbox_message_triage(id)

Manually re-triage a buyer message.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Manually re-triage a buyer message.
  result = api_instance.create_inbox_message_triage(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_message_triage: #{e}"
end
```

#### Using the create_inbox_message_triage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxMessageTriageResponse>, Integer, Hash)> create_inbox_message_triage_with_http_info(id)

```ruby
begin
  # Manually re-triage a buyer message.
  data, status_code, headers = api_instance.create_inbox_message_triage_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxMessageTriageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_message_triage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateInboxMessageTriageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_offer

> <CreateInboxOfferResponse> create_inbox_offer(id, create_inbox_offer_request)

Accept, counter, or decline an offer on a conversation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_inbox_offer_request = Crossly::CreateInboxOfferRequest.new({action: 'accept'}) # CreateInboxOfferRequest | 

begin
  # Accept, counter, or decline an offer on a conversation.
  result = api_instance.create_inbox_offer(id, create_inbox_offer_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_offer: #{e}"
end
```

#### Using the create_inbox_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxOfferResponse>, Integer, Hash)> create_inbox_offer_with_http_info(id, create_inbox_offer_request)

```ruby
begin
  # Accept, counter, or decline an offer on a conversation.
  data, status_code, headers = api_instance.create_inbox_offer_with_http_info(id, create_inbox_offer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_inbox_offer_request** | **CreateInboxOfferRequest** |  |  |

### Return type

**CreateInboxOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_reply

> <CreateInboxReplyResponse> create_inbox_reply(id, body_request)

Send a reply to a conversation thread.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
body_request = Crossly::BodyRequest.new({body: 'body_example'}) # BodyRequest | 

begin
  # Send a reply to a conversation thread.
  result = api_instance.create_inbox_reply(id, body_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_reply: #{e}"
end
```

#### Using the create_inbox_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxReplyResponse>, Integer, Hash)> create_inbox_reply_with_http_info(id, body_request)

```ruby
begin
  # Send a reply to a conversation thread.
  data, status_code, headers = api_instance.create_inbox_reply_with_http_info(id, body_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxReplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body_request** | **BodyRequest** |  |  |

### Return type

**CreateInboxReplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_send_offer

> <CreateInboxSendOfferResponse> create_inbox_send_offer(id, create_inbox_send_offer_request)

Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation's canSendOffer is true (Grailed today). `amount` is in the listing's currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus 'sending' until the platform confirms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_inbox_send_offer_request = Crossly::CreateInboxSendOfferRequest.new({amount: 3.56}) # CreateInboxSendOfferRequest | 

begin
  # Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation's canSendOffer is true (Grailed today). `amount` is in the listing's currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus 'sending' until the platform confirms.
  result = api_instance.create_inbox_send_offer(id, create_inbox_send_offer_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_send_offer: #{e}"
end
```

#### Using the create_inbox_send_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxSendOfferResponse>, Integer, Hash)> create_inbox_send_offer_with_http_info(id, create_inbox_send_offer_request)

```ruby
begin
  # Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation's canSendOffer is true (Grailed today). `amount` is in the listing's currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus 'sending' until the platform confirms.
  data, status_code, headers = api_instance.create_inbox_send_offer_with_http_info(id, create_inbox_send_offer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxSendOfferResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_send_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_inbox_send_offer_request** | **CreateInboxSendOfferRequest** |  |  |

### Return type

**CreateInboxSendOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_video_request_answer

> <CreateVideoRequestAnswerResponse> create_video_request_answer(id, create_video_request_answer_request)

Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = 'id_example' # String | 
create_video_request_answer_request = Crossly::CreateVideoRequestAnswerRequest.new({video_url: 'video_url_example'}) # CreateVideoRequestAnswerRequest | 

begin
  # Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
  result = api_instance.create_video_request_answer(id, create_video_request_answer_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_answer: #{e}"
end
```

#### Using the create_video_request_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestAnswerResponse>, Integer, Hash)> create_video_request_answer_with_http_info(id, create_video_request_answer_request)

```ruby
begin
  # Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
  data, status_code, headers = api_instance.create_video_request_answer_with_http_info(id, create_video_request_answer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoRequestAnswerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_video_request_answer_request** | **CreateVideoRequestAnswerRequest** |  |  |

### Return type

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_video_request_decline

> <CreateVideoRequestAnswerResponse> create_video_request_decline(id, opts)

Decline a video request, with an optional note to the buyer.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = 'id_example' # String | 
opts = {
  create_video_request_decline_request: Crossly::CreateVideoRequestDeclineRequest.new # CreateVideoRequestDeclineRequest | 
}

begin
  # Decline a video request, with an optional note to the buyer.
  result = api_instance.create_video_request_decline(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_decline: #{e}"
end
```

#### Using the create_video_request_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestAnswerResponse>, Integer, Hash)> create_video_request_decline_with_http_info(id, opts)

```ruby
begin
  # Decline a video request, with an optional note to the buyer.
  data, status_code, headers = api_instance.create_video_request_decline_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoRequestAnswerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_video_request_decline_request** | **CreateVideoRequestDeclineRequest** |  | [optional] |

### Return type

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_video_request_upload_url

> <CreateVideoRequestUploadUrlResponse> create_video_request_upload_url(create_funding_invoice_file_request)

A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
create_funding_invoice_file_request = Crossly::CreateFundingInvoiceFileRequest.new({file_name: 'file_name_example', content_type: 'content_type_example', content_length: 3.56}) # CreateFundingInvoiceFileRequest | 

begin
  # A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
  result = api_instance.create_video_request_upload_url(create_funding_invoice_file_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_upload_url: #{e}"
end
```

#### Using the create_video_request_upload_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestUploadUrlResponse>, Integer, Hash)> create_video_request_upload_url_with_http_info(create_funding_invoice_file_request)

```ruby
begin
  # A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
  data, status_code, headers = api_instance.create_video_request_upload_url_with_http_info(create_funding_invoice_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoRequestUploadUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_upload_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_funding_invoice_file_request** | **CreateFundingInvoiceFileRequest** |  |  |

### Return type

**CreateVideoRequestUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_inbox_canned_response

> delete_inbox_canned_response(id)

Delete a canned response.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a canned response.
  api_instance.delete_inbox_canned_response(id)
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->delete_inbox_canned_response: #{e}"
end
```

#### Using the delete_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_inbox_canned_response_with_http_info(id)

```ruby
begin
  # Delete a canned response.
  data, status_code, headers = api_instance.delete_inbox_canned_response_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->delete_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox

> <GetInboxResponse> get_inbox(id)

Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.
  result = api_instance.get_inbox(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox: #{e}"
end
```

#### Using the get_inbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxResponse>, Integer, Hash)> get_inbox_with_http_info(id)

```ruby
begin
  # Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.
  data, status_code, headers = api_instance.get_inbox_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_canned_response

> <GetInboxCannedResponseResponse> get_inbox_canned_response

List canned responses in the seller's order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new

begin
  # List canned responses in the seller's order.
  result = api_instance.get_inbox_canned_response
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_canned_response: #{e}"
end
```

#### Using the get_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxCannedResponseResponse>, Integer, Hash)> get_inbox_canned_response_with_http_info

```ruby
begin
  # List canned responses in the seller's order.
  data, status_code, headers = api_instance.get_inbox_canned_response_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxCannedResponseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_conversation_message

> <GetInboxConversationMessageResponse> get_inbox_conversation_message(id)

Paginated messages for a conversation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Paginated messages for a conversation.
  result = api_instance.get_inbox_conversation_message(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_conversation_message: #{e}"
end
```

#### Using the get_inbox_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxConversationMessageResponse>, Integer, Hash)> get_inbox_conversation_message_with_http_info(id)

```ruby
begin
  # Paginated messages for a conversation.
  data, status_code, headers = api_instance.get_inbox_conversation_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxConversationMessageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_conversation_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetInboxConversationMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_conversation_unread_count

> <CreateWeb3LaunchArtResponse> get_inbox_conversation_unread_count

Unread conversation count (threads only; /v1/inbox/counts adds offers).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new

begin
  # Unread conversation count (threads only; /v1/inbox/counts adds offers).
  result = api_instance.get_inbox_conversation_unread_count
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_conversation_unread_count: #{e}"
end
```

#### Using the get_inbox_conversation_unread_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchArtResponse>, Integer, Hash)> get_inbox_conversation_unread_count_with_http_info

```ruby
begin
  # Unread conversation count (threads only; /v1/inbox/counts adds offers).
  data, status_code, headers = api_instance.get_inbox_conversation_unread_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchArtResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_conversation_unread_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3LaunchArtResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_count

> <GetInboxCountResponse> get_inbox_count

Inbox badges: unread and needs-reply, split into conversations and offers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new

begin
  # Inbox badges: unread and needs-reply, split into conversations and offers.
  result = api_instance.get_inbox_count
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_count: #{e}"
end
```

#### Using the get_inbox_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxCountResponse>, Integer, Hash)> get_inbox_count_with_http_info

```ruby
begin
  # Inbox badges: unread and needs-reply, split into conversations and offers.
  data, status_code, headers = api_instance.get_inbox_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxCountResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->get_inbox_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetInboxCountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox

> <ListInboxResponse> list_inbox(opts)

List conversations. `filter` narrows to the rows GET /v1/inbox/counts counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  filter: 'unread' # String | unread | needs_reply (services/inbox/attention.ts). Omit for all.
}

begin
  # List conversations. `filter` narrows to the rows GET /v1/inbox/counts counts.
  result = api_instance.list_inbox(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_inbox: #{e}"
end
```

#### Using the list_inbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxResponse>, Integer, Hash)> list_inbox_with_http_info(opts)

```ruby
begin
  # List conversations. `filter` narrows to the rows GET /v1/inbox/counts counts.
  data, status_code, headers = api_instance.list_inbox_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_inbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **filter** | **String** | unread | needs_reply (services/inbox/attention.ts). Omit for all. | [optional] |

### Return type

**ListInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_video_requests

> <ListVideoRequestsResponse> list_video_requests(opts)

Buyers asking for a video of your items. status: open (default), answered, declined or all.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
opts = {
  status: 'all' # String | 
}

begin
  # Buyers asking for a video of your items. status: open (default), answered, declined or all.
  result = api_instance.list_video_requests(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_video_requests: #{e}"
end
```

#### Using the list_video_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVideoRequestsResponse>, Integer, Hash)> list_video_requests_with_http_info(opts)

```ruby
begin
  # Buyers asking for a video of your items. status: open (default), answered, declined or all.
  data, status_code, headers = api_instance.list_video_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVideoRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_video_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |

### Return type

**ListVideoRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inbox_canned_response

> <CreateInboxCannedResponseResponse> update_inbox_canned_response(id, update_inbox_canned_response_request)

Update a canned response.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_inbox_canned_response_request = Crossly::UpdateInboxCannedResponseRequest.new # UpdateInboxCannedResponseRequest | 

begin
  # Update a canned response.
  result = api_instance.update_inbox_canned_response(id, update_inbox_canned_response_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_canned_response: #{e}"
end
```

#### Using the update_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxCannedResponseResponse>, Integer, Hash)> update_inbox_canned_response_with_http_info(id, update_inbox_canned_response_request)

```ruby
begin
  # Update a canned response.
  data, status_code, headers = api_instance.update_inbox_canned_response_with_http_info(id, update_inbox_canned_response_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxCannedResponseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_inbox_canned_response_request** | **UpdateInboxCannedResponseRequest** |  |  |

### Return type

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inbox_canned_response_order

> <GetInboxCannedResponseResponse> update_inbox_canned_response_order(update_inbox_canned_response_order_request)

Reorder canned responses.

Pass EVERY canned response id in the new order (first = top of the picker). A list with an unknown, missing or repeated id is refused with a validation error and nothing changes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
update_inbox_canned_response_order_request = Crossly::UpdateInboxCannedResponseOrderRequest.new({ids: ['ids_example']}) # UpdateInboxCannedResponseOrderRequest | 

begin
  # Reorder canned responses.
  result = api_instance.update_inbox_canned_response_order(update_inbox_canned_response_order_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_canned_response_order: #{e}"
end
```

#### Using the update_inbox_canned_response_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxCannedResponseResponse>, Integer, Hash)> update_inbox_canned_response_order_with_http_info(update_inbox_canned_response_order_request)

```ruby
begin
  # Reorder canned responses.
  data, status_code, headers = api_instance.update_inbox_canned_response_order_with_http_info(update_inbox_canned_response_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxCannedResponseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_canned_response_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_inbox_canned_response_order_request** | **UpdateInboxCannedResponseOrderRequest** |  |  |

### Return type

**GetInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inbox_conversation

> <UpdateInboxConversationResponse> update_inbox_conversation(id, update_inbox_conversation_request)

Mark read / change status / close conversation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::InboxApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_inbox_conversation_request = Crossly::UpdateInboxConversationRequest.new # UpdateInboxConversationRequest | 

begin
  # Mark read / change status / close conversation.
  result = api_instance.update_inbox_conversation(id, update_inbox_conversation_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_conversation: #{e}"
end
```

#### Using the update_inbox_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInboxConversationResponse>, Integer, Hash)> update_inbox_conversation_with_http_info(id, update_inbox_conversation_request)

```ruby
begin
  # Mark read / change status / close conversation.
  data, status_code, headers = api_instance.update_inbox_conversation_with_http_info(id, update_inbox_conversation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInboxConversationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_inbox_conversation_request** | **UpdateInboxConversationRequest** |  |  |

### Return type

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

