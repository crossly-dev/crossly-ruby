# Crossly::ConversationsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_conversation_message**](ConversationsApi.md#create_conversation_message) | **POST** /v1/conversations/{id}/messages | Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus &#39;sending&#39;; it settles to &#39;sent&#39; or &#39;failed&#39;. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire). |
| [**list_conversation_messages**](ConversationsApi.md#list_conversation_messages) | **GET** /v1/conversations/{id}/messages | A conversation&#39;s messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it. |
| [**list_conversations**](ConversationsApi.md#list_conversations) | **GET** /v1/conversations | List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook. |


## create_conversation_message

> <CreateConversationMessageResponse> create_conversation_message(id, create_conversation_message_request)

Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus 'sending'; it settles to 'sent' or 'failed'. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConversationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_conversation_message_request = Crossly::CreateConversationMessageRequest.new({body: 'body_example'}) # CreateConversationMessageRequest | 

begin
  # Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus 'sending'; it settles to 'sent' or 'failed'. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).
  result = api_instance.create_conversation_message(id, create_conversation_message_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation_message: #{e}"
end
```

#### Using the create_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversationMessageResponse>, Integer, Hash)> create_conversation_message_with_http_info(id, create_conversation_message_request)

```ruby
begin
  # Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus 'sending'; it settles to 'sent' or 'failed'. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).
  data, status_code, headers = api_instance.create_conversation_message_with_http_info(id, create_conversation_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversationMessageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_conversation_message_request** | **CreateConversationMessageRequest** |  |  |

### Return type

**CreateConversationMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_conversation_messages

> <ListConversationMessagesResponse> list_conversation_messages(id, opts)

A conversation's messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConversationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  since: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # A conversation's messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.
  result = api_instance.list_conversation_messages(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_messages: #{e}"
end
```

#### Using the list_conversation_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationMessagesResponse>, Integer, Hash)> list_conversation_messages_with_http_info(id, opts)

```ruby
begin
  # A conversation's messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.
  data, status_code, headers = api_instance.list_conversation_messages_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationMessagesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **since** | **Time** |  | [optional] |

### Return type

**ListConversationMessagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversations

> <ListConversationsResponse> list_conversations(opts)

List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ConversationsApi.new
opts = {
  page: 56, # Integer | 
  limit: 56, # Integer | 
  order_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  listing_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  platform: 'platform_example', # String | 
  updated_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  search: 'search_example' # String | Contains-match (case-insensitive) on the buyer username or the thread subject.
}

begin
  # List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.
  result = api_instance.list_conversations(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->list_conversations: #{e}"
end
```

#### Using the list_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationsResponse>, Integer, Hash)> list_conversations_with_http_info(opts)

```ruby
begin
  # List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.
  data, status_code, headers = api_instance.list_conversations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ConversationsApi->list_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **order_id** | **String** |  | [optional] |
| **listing_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **updated_since** | **Time** |  | [optional] |
| **search** | **String** | Contains-match (case-insensitive) on the buyer username or the thread subject. | [optional] |

### Return type

**ListConversationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

