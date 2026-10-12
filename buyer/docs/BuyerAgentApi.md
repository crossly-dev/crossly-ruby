# CrosslyBuyer::BuyerAgentApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_agent_session**](BuyerAgentApi.md#create_buyer_agent_session) | **POST** /v1/buyer/agent/sessions | Start a shopping agent conversation. |
| [**create_buyer_agent_session_act**](BuyerAgentApi.md#create_buyer_agent_session_act) | **POST** /v1/buyer/agent/sessions/{id}/act | Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too. |
| [**create_buyer_agent_session_react**](BuyerAgentApi.md#create_buyer_agent_session_react) | **POST** /v1/buyer/agent/sessions/{id}/react | Like or dislike an option; the next search leans toward likes and drops dislikes. |
| [**create_buyer_agent_session_turn**](BuyerAgentApi.md#create_buyer_agent_session_turn) | **POST** /v1/buyer/agent/sessions/{id}/turns | Say something to the agent: what you want, a critique of the options (\&quot;cheaper\&quot;, \&quot;more like #2\&quot;), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options. |
| [**delete_buyer_agent_session**](BuyerAgentApi.md#delete_buyer_agent_session) | **DELETE** /v1/buyer/agent/sessions/{id} | Delete a conversation. |
| [**get_buyer_agent_session**](BuyerAgentApi.md#get_buyer_agent_session) | **GET** /v1/buyer/agent/sessions/{id} | A conversation: its brief and turns, with each turn’s options re-read live. |
| [**list_buyer_agent_sessions**](BuyerAgentApi.md#list_buyer_agent_sessions) | **GET** /v1/buyer/agent/sessions | Your shopping agent conversations, newest first. |


## create_buyer_agent_session

> <CreateBuyerAgentSessionResponse> create_buyer_agent_session

Start a shopping agent conversation.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new

begin
  # Start a shopping agent conversation.
  result = api_instance.create_buyer_agent_session
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session: #{e}"
end
```

#### Using the create_buyer_agent_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAgentSessionResponse>, Integer, Hash)> create_buyer_agent_session_with_http_info

```ruby
begin
  # Start a shopping agent conversation.
  data, status_code, headers = api_instance.create_buyer_agent_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAgentSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_agent_session_act

> <CreateBuyerAgentSessionActResponse> create_buyer_agent_session_act(id)

Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new
id = 'id_example' # String | 

begin
  # Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.
  result = api_instance.create_buyer_agent_session_act(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_act: #{e}"
end
```

#### Using the create_buyer_agent_session_act_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAgentSessionActResponse>, Integer, Hash)> create_buyer_agent_session_act_with_http_info(id)

```ruby
begin
  # Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.
  data, status_code, headers = api_instance.create_buyer_agent_session_act_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAgentSessionActResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_act_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerAgentSessionActResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_agent_session_react

> <DeleteBuyerAgentSessionResponse> create_buyer_agent_session_react(id)

Like or dislike an option; the next search leans toward likes and drops dislikes.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new
id = 'id_example' # String | 

begin
  # Like or dislike an option; the next search leans toward likes and drops dislikes.
  result = api_instance.create_buyer_agent_session_react(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_react: #{e}"
end
```

#### Using the create_buyer_agent_session_react_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBuyerAgentSessionResponse>, Integer, Hash)> create_buyer_agent_session_react_with_http_info(id)

```ruby
begin
  # Like or dislike an option; the next search leans toward likes and drops dislikes.
  data, status_code, headers = api_instance.create_buyer_agent_session_react_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBuyerAgentSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_react_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_agent_session_turn

> <CreateBuyerAgentSessionTurnResponse> create_buyer_agent_session_turn(id)

Say something to the agent: what you want, a critique of the options (\"cheaper\", \"more like #2\"), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new
id = 'id_example' # String | 

begin
  # Say something to the agent: what you want, a critique of the options (\"cheaper\", \"more like #2\"), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.
  result = api_instance.create_buyer_agent_session_turn(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_turn: #{e}"
end
```

#### Using the create_buyer_agent_session_turn_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAgentSessionTurnResponse>, Integer, Hash)> create_buyer_agent_session_turn_with_http_info(id)

```ruby
begin
  # Say something to the agent: what you want, a critique of the options (\"cheaper\", \"more like #2\"), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.
  data, status_code, headers = api_instance.create_buyer_agent_session_turn_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAgentSessionTurnResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->create_buyer_agent_session_turn_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerAgentSessionTurnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_agent_session

> <DeleteBuyerAgentSessionResponse> delete_buyer_agent_session(id)

Delete a conversation.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new
id = 'id_example' # String | 

begin
  # Delete a conversation.
  result = api_instance.delete_buyer_agent_session(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->delete_buyer_agent_session: #{e}"
end
```

#### Using the delete_buyer_agent_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBuyerAgentSessionResponse>, Integer, Hash)> delete_buyer_agent_session_with_http_info(id)

```ruby
begin
  # Delete a conversation.
  data, status_code, headers = api_instance.delete_buyer_agent_session_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBuyerAgentSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->delete_buyer_agent_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_agent_session

> <GetBuyerAgentSessionResponse> get_buyer_agent_session(id)

A conversation: its brief and turns, with each turn’s options re-read live.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new
id = 'id_example' # String | 

begin
  # A conversation: its brief and turns, with each turn’s options re-read live.
  result = api_instance.get_buyer_agent_session(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->get_buyer_agent_session: #{e}"
end
```

#### Using the get_buyer_agent_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerAgentSessionResponse>, Integer, Hash)> get_buyer_agent_session_with_http_info(id)

```ruby
begin
  # A conversation: its brief and turns, with each turn’s options re-read live.
  data, status_code, headers = api_instance.get_buyer_agent_session_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerAgentSessionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->get_buyer_agent_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_agent_sessions

> <ListBuyerAgentSessionsResponse> list_buyer_agent_sessions

Your shopping agent conversations, newest first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerAgentApi.new

begin
  # Your shopping agent conversations, newest first.
  result = api_instance.list_buyer_agent_sessions
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->list_buyer_agent_sessions: #{e}"
end
```

#### Using the list_buyer_agent_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerAgentSessionsResponse>, Integer, Hash)> list_buyer_agent_sessions_with_http_info

```ruby
begin
  # Your shopping agent conversations, newest first.
  data, status_code, headers = api_instance.list_buyer_agent_sessions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerAgentSessionsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerAgentApi->list_buyer_agent_sessions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerAgentSessionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

