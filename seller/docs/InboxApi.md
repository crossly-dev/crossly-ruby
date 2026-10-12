# Crossly::InboxApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_inbox_ai_suggest**](InboxApi.md#create_inbox_ai_suggest) | **POST** /v1/inbox/ai-suggest | AI reply suggestion for a conversation. |
| [**create_inbox_canned_response**](InboxApi.md#create_inbox_canned_response) | **POST** /v1/inbox/canned-responses | Create a canned response. |
| [**create_inbox_conversation_bulk**](InboxApi.md#create_inbox_conversation_bulk) | **POST** /v1/inbox/conversations/bulk | Bulk mark read / mark unread / soft-delete conversations. |
| [**create_inbox_conversation_bulk_ai_respond**](InboxApi.md#create_inbox_conversation_bulk_ai_respond) | **POST** /v1/inbox/conversations/bulk-ai-respond | AI reply suggestion for multiple conversations — draft or send. |
| [**create_inbox_conversation_offer_action**](InboxApi.md#create_inbox_conversation_offer_action) | **POST** /v1/inbox/conversations/{id}/offer-action | Accept / counter / decline an active offer on a conversation. |
| [**create_inbox_message_triage**](InboxApi.md#create_inbox_message_triage) | **POST** /v1/inbox/messages/{id}/triage | Manually re-triage a buyer message. |
| [**create_inbox_offer**](InboxApi.md#create_inbox_offer) | **POST** /v1/inbox/{id}/offer | Accept, counter, or decline an offer on a conversation. |
| [**create_inbox_reply**](InboxApi.md#create_inbox_reply) | **POST** /v1/inbox/{id}/reply | Send a reply to a conversation thread. |
| [**create_video_request_answer**](InboxApi.md#create_video_request_answer) | **POST** /v1/video-requests/{id}/answer | Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing. |
| [**create_video_request_decline**](InboxApi.md#create_video_request_decline) | **POST** /v1/video-requests/{id}/decline | Decline a video request, with an optional note to the buyer. |
| [**create_video_request_upload_url**](InboxApi.md#create_video_request_upload_url) | **POST** /v1/video-requests/upload-url | A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl. |
| [**delete_inbox_canned_response**](InboxApi.md#delete_inbox_canned_response) | **DELETE** /v1/inbox/canned-responses/{id} | Delete a canned response. |
| [**get_inbox**](InboxApi.md#get_inbox) | **GET** /v1/inbox/{id} | Get one conversation with its messages. |
| [**get_inbox_canned_response**](InboxApi.md#get_inbox_canned_response) | **GET** /v1/inbox/canned-responses | List canned responses. |
| [**get_inbox_conversation_message**](InboxApi.md#get_inbox_conversation_message) | **GET** /v1/inbox/conversations/{id}/messages | Paginated messages for a conversation. |
| [**get_inbox_conversation_unread_count**](InboxApi.md#get_inbox_conversation_unread_count) | **GET** /v1/inbox/conversations/unread-count | Sidebar badge: unread conversation count. |
| [**list_inbox**](InboxApi.md#list_inbox) | **GET** /v1/inbox | List conversations. |
| [**list_video_requests**](InboxApi.md#list_video_requests) | **GET** /v1/video-requests | Buyers asking for a video of your items. status: open (default), answered, declined or all. |
| [**update_inbox_canned_response**](InboxApi.md#update_inbox_canned_response) | **PUT** /v1/inbox/canned-responses/{id} | Update a canned response. |
| [**update_inbox_conversation**](InboxApi.md#update_inbox_conversation) | **PATCH** /v1/inbox/conversations/{id} | Mark read / change status / close conversation. |


## create_inbox_ai_suggest

> <CreateInboxAiSuggestResponse> create_inbox_ai_suggest

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

begin
  # AI reply suggestion for a conversation.
  result = api_instance.create_inbox_ai_suggest
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_ai_suggest: #{e}"
end
```

#### Using the create_inbox_ai_suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxAiSuggestResponse>, Integer, Hash)> create_inbox_ai_suggest_with_http_info

```ruby
begin
  # AI reply suggestion for a conversation.
  data, status_code, headers = api_instance.create_inbox_ai_suggest_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxAiSuggestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_ai_suggest_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateInboxAiSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_canned_response

> <CreateInboxCannedResponseResponse> create_inbox_canned_response

Create a canned response.

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
  # Create a canned response.
  result = api_instance.create_inbox_canned_response
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_canned_response: #{e}"
end
```

#### Using the create_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxCannedResponseResponse>, Integer, Hash)> create_inbox_canned_response_with_http_info

```ruby
begin
  # Create a canned response.
  data, status_code, headers = api_instance.create_inbox_canned_response_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxCannedResponseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_conversation_bulk

> <CreateInboxConversationBulkResponse> create_inbox_conversation_bulk

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

begin
  # Bulk mark read / mark unread / soft-delete conversations.
  result = api_instance.create_inbox_conversation_bulk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk: #{e}"
end
```

#### Using the create_inbox_conversation_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversationBulkResponse>, Integer, Hash)> create_inbox_conversation_bulk_with_http_info

```ruby
begin
  # Bulk mark read / mark unread / soft-delete conversations.
  data, status_code, headers = api_instance.create_inbox_conversation_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversationBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateInboxConversationBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_conversation_bulk_ai_respond

> <CreateInboxConversationBulkAiRespondResponse> create_inbox_conversation_bulk_ai_respond

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

begin
  # AI reply suggestion for multiple conversations — draft or send.
  result = api_instance.create_inbox_conversation_bulk_ai_respond
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_ai_respond: #{e}"
end
```

#### Using the create_inbox_conversation_bulk_ai_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversationBulkAiRespondResponse>, Integer, Hash)> create_inbox_conversation_bulk_ai_respond_with_http_info

```ruby
begin
  # AI reply suggestion for multiple conversations — draft or send.
  data, status_code, headers = api_instance.create_inbox_conversation_bulk_ai_respond_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversationBulkAiRespondResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_bulk_ai_respond_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateInboxConversationBulkAiRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_conversation_offer_action

> <UpdateInboxConversationResponse> create_inbox_conversation_offer_action(id)

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

begin
  # Accept / counter / decline an active offer on a conversation.
  result = api_instance.create_inbox_conversation_offer_action(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_conversation_offer_action: #{e}"
end
```

#### Using the create_inbox_conversation_offer_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInboxConversationResponse>, Integer, Hash)> create_inbox_conversation_offer_action_with_http_info(id)

```ruby
begin
  # Accept / counter / decline an active offer on a conversation.
  data, status_code, headers = api_instance.create_inbox_conversation_offer_action_with_http_info(id)
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

### Return type

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
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

> <CreateInboxOfferResponse> create_inbox_offer(id)

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

begin
  # Accept, counter, or decline an offer on a conversation.
  result = api_instance.create_inbox_offer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_offer: #{e}"
end
```

#### Using the create_inbox_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxOfferResponse>, Integer, Hash)> create_inbox_offer_with_http_info(id)

```ruby
begin
  # Accept, counter, or decline an offer on a conversation.
  data, status_code, headers = api_instance.create_inbox_offer_with_http_info(id)
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

### Return type

**CreateInboxOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_inbox_reply

> <CreateInboxReplyResponse> create_inbox_reply(id)

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

begin
  # Send a reply to a conversation thread.
  result = api_instance.create_inbox_reply(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_inbox_reply: #{e}"
end
```

#### Using the create_inbox_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxReplyResponse>, Integer, Hash)> create_inbox_reply_with_http_info(id)

```ruby
begin
  # Send a reply to a conversation thread.
  data, status_code, headers = api_instance.create_inbox_reply_with_http_info(id)
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

### Return type

**CreateInboxReplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_video_request_answer

> <CreateVideoRequestAnswerResponse> create_video_request_answer(id)

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

begin
  # Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
  result = api_instance.create_video_request_answer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_answer: #{e}"
end
```

#### Using the create_video_request_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestAnswerResponse>, Integer, Hash)> create_video_request_answer_with_http_info(id)

```ruby
begin
  # Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
  data, status_code, headers = api_instance.create_video_request_answer_with_http_info(id)
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

### Return type

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_video_request_decline

> <CreateVideoRequestAnswerResponse> create_video_request_decline(id)

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

begin
  # Decline a video request, with an optional note to the buyer.
  result = api_instance.create_video_request_decline(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_decline: #{e}"
end
```

#### Using the create_video_request_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestAnswerResponse>, Integer, Hash)> create_video_request_decline_with_http_info(id)

```ruby
begin
  # Decline a video request, with an optional note to the buyer.
  data, status_code, headers = api_instance.create_video_request_decline_with_http_info(id)
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

### Return type

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_video_request_upload_url

> <CreateVideoRequestUploadUrlResponse> create_video_request_upload_url

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

begin
  # A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
  result = api_instance.create_video_request_upload_url
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_upload_url: #{e}"
end
```

#### Using the create_video_request_upload_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVideoRequestUploadUrlResponse>, Integer, Hash)> create_video_request_upload_url_with_http_info

```ruby
begin
  # A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
  data, status_code, headers = api_instance.create_video_request_upload_url_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVideoRequestUploadUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->create_video_request_upload_url_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateVideoRequestUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_inbox_canned_response

> <CreateOrderDisputeResponse> delete_inbox_canned_response(id)

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
  result = api_instance.delete_inbox_canned_response(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->delete_inbox_canned_response: #{e}"
end
```

#### Using the delete_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderDisputeResponse>, Integer, Hash)> delete_inbox_canned_response_with_http_info(id)

```ruby
begin
  # Delete a canned response.
  data, status_code, headers = api_instance.delete_inbox_canned_response_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderDisputeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->delete_inbox_canned_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateOrderDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox

> <GetInboxResponse> get_inbox(id)

Get one conversation with its messages.

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
  # Get one conversation with its messages.
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
  # Get one conversation with its messages.
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

List canned responses.

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
  # List canned responses.
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
  # List canned responses.
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

Sidebar badge: unread conversation count.

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
  # Sidebar badge: unread conversation count.
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
  # Sidebar badge: unread conversation count.
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


## list_inbox

> <ListInboxResponse> list_inbox(opts)

List conversations.

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
  limit: 56 # Integer | 
}

begin
  # List conversations.
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
  # List conversations.
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

### Return type

**ListInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_video_requests

> <ListVideoRequestsResponse> list_video_requests

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

begin
  # Buyers asking for a video of your items. status: open (default), answered, declined or all.
  result = api_instance.list_video_requests
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_video_requests: #{e}"
end
```

#### Using the list_video_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVideoRequestsResponse>, Integer, Hash)> list_video_requests_with_http_info

```ruby
begin
  # Buyers asking for a video of your items. status: open (default), answered, declined or all.
  data, status_code, headers = api_instance.list_video_requests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVideoRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->list_video_requests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListVideoRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inbox_canned_response

> <CreateInboxCannedResponseResponse> update_inbox_canned_response(id)

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

begin
  # Update a canned response.
  result = api_instance.update_inbox_canned_response(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_canned_response: #{e}"
end
```

#### Using the update_inbox_canned_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxCannedResponseResponse>, Integer, Hash)> update_inbox_canned_response_with_http_info(id)

```ruby
begin
  # Update a canned response.
  data, status_code, headers = api_instance.update_inbox_canned_response_with_http_info(id)
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

### Return type

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inbox_conversation

> <UpdateInboxConversationResponse> update_inbox_conversation(id)

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

begin
  # Mark read / change status / close conversation.
  result = api_instance.update_inbox_conversation(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling InboxApi->update_inbox_conversation: #{e}"
end
```

#### Using the update_inbox_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInboxConversationResponse>, Integer, Hash)> update_inbox_conversation_with_http_info(id)

```ruby
begin
  # Mark read / change status / close conversation.
  data, status_code, headers = api_instance.update_inbox_conversation_with_http_info(id)
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

### Return type

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

