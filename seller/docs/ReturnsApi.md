# Crossly::ReturnsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policy_return_received**](ReturnsApi.md#create_policy_return_received) | **POST** /v1/policy-returns/{id}/received | Mark a return received: refunds the buyer, less the restocking or try fee you keep. |
| [**create_return**](ReturnsApi.md#create_return) | **POST** /v1/returns | Open a return record on an order (rejects if another open return exists). |
| [**create_return_accept**](ReturnsApi.md#create_return_accept) | **POST** /v1/returns/{id}/accept | Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform. |
| [**create_return_decline**](ReturnsApi.md#create_return_decline) | **POST** /v1/returns/{id}/decline | Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued. |
| [**get_return**](ReturnsApi.md#get_return) | **GET** /v1/returns/{id} | Get one return record. |
| [**list_policy_returns**](ReturnsApi.md#list_policy_returns) | **GET** /v1/policy-returns | Returns Crossly buyers opened under your return policy or try at home; filter by orderId. |
| [**list_returns**](ReturnsApi.md#list_returns) | **GET** /v1/returns | List returns. Default: your return records (the physical-return workflow), status&#x3D;open|closed|&lt;exact&gt;. source&#x3D;request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline. |
| [**update_return**](ReturnsApi.md#update_return) | **PATCH** /v1/returns/{id} | Transition return status (received/inspected/restocked) and bump inventory on restock. |
| [**update_return_assignee**](ReturnsApi.md#update_return_assignee) | **PATCH** /v1/returns/assignee | Assign many returns to a teammate, round robin across several, or unassign them (null). |
| [**update_return_assignee_by_id**](ReturnsApi.md#update_return_assignee_by_id) | **PATCH** /v1/returns/{id}/assignee | Assign one return to a teammate, or unassign it (null). |


## create_policy_return_received

> <CreatePolicyReturnReceivedResponse> create_policy_return_received(id)

Mark a return received: refunds the buyer, less the restocking or try fee you keep.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = 'id_example' # String | 

begin
  # Mark a return received: refunds the buyer, less the restocking or try fee you keep.
  result = api_instance.create_policy_return_received(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_policy_return_received: #{e}"
end
```

#### Using the create_policy_return_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePolicyReturnReceivedResponse>, Integer, Hash)> create_policy_return_received_with_http_info(id)

```ruby
begin
  # Mark a return received: refunds the buyer, less the restocking or try fee you keep.
  data, status_code, headers = api_instance.create_policy_return_received_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePolicyReturnReceivedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_policy_return_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatePolicyReturnReceivedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_return

> <GetReturnResponse> create_return(order_id_reason_request)

Open a return record on an order (rejects if another open return exists).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
order_id_reason_request = Crossly::OrderIdReasonRequest.new({order_id: 'order_id_example'}) # OrderIdReasonRequest | 

begin
  # Open a return record on an order (rejects if another open return exists).
  result = api_instance.create_return(order_id_reason_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return: #{e}"
end
```

#### Using the create_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReturnResponse>, Integer, Hash)> create_return_with_http_info(order_id_reason_request)

```ruby
begin
  # Open a return record on an order (rejects if another open return exists).
  data, status_code, headers = api_instance.create_return_with_http_info(order_id_reason_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id_reason_request** | **OrderIdReasonRequest** |  |  |

### Return type

**GetReturnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_return_accept

> <CreateReturnAcceptResponse> create_return_accept(id, opts)

Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  create_return_accept_request: Crossly::CreateReturnAcceptRequest.new # CreateReturnAcceptRequest | 
}

begin
  # Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.
  result = api_instance.create_return_accept(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_accept: #{e}"
end
```

#### Using the create_return_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReturnAcceptResponse>, Integer, Hash)> create_return_accept_with_http_info(id, opts)

```ruby
begin
  # Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.
  data, status_code, headers = api_instance.create_return_accept_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReturnAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_return_accept_request** | **CreateReturnAcceptRequest** |  | [optional] |

### Return type

**CreateReturnAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_return_decline

> <ListReturnsItem> create_return_decline(id, create_return_decline_request)

Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_return_decline_request = Crossly::CreateReturnDeclineRequest.new({reason: 'reason_example'}) # CreateReturnDeclineRequest | 

begin
  # Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.
  result = api_instance.create_return_decline(id, create_return_decline_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_decline: #{e}"
end
```

#### Using the create_return_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReturnsItem>, Integer, Hash)> create_return_decline_with_http_info(id, create_return_decline_request)

```ruby
begin
  # Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.
  data, status_code, headers = api_instance.create_return_decline_with_http_info(id, create_return_decline_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReturnsItem>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->create_return_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_return_decline_request** | **CreateReturnDeclineRequest** |  |  |

### Return type

**ListReturnsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_return

> <GetReturnResponse> get_return(id)

Get one return record.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one return record.
  result = api_instance.get_return(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->get_return: #{e}"
end
```

#### Using the get_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReturnResponse>, Integer, Hash)> get_return_with_http_info(id)

```ruby
begin
  # Get one return record.
  data, status_code, headers = api_instance.get_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->get_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetReturnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policy_returns

> <ListPolicyReturnsResponse> list_policy_returns(opts)

Returns Crossly buyers opened under your return policy or try at home; filter by orderId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
opts = {
  order_id: 'order_id_example' # String | 
}

begin
  # Returns Crossly buyers opened under your return policy or try at home; filter by orderId.
  result = api_instance.list_policy_returns(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_policy_returns: #{e}"
end
```

#### Using the list_policy_returns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPolicyReturnsResponse>, Integer, Hash)> list_policy_returns_with_http_info(opts)

```ruby
begin
  # Returns Crossly buyers opened under your return policy or try at home; filter by orderId.
  data, status_code, headers = api_instance.list_policy_returns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPolicyReturnsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_policy_returns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  | [optional] |

### Return type

**ListPolicyReturnsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_returns

> <ListReturnsResponse> list_returns(opts)

List returns. Default: your return records (the physical-return workflow), status=open|closed|<exact>. source=request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
opts = {
  assignee: 'assignee_example' # String | Work assignment: 'me' (your own seat), 'none' (unassigned), 'any' (assigned to someone) or a team member id.
}

begin
  # List returns. Default: your return records (the physical-return workflow), status=open|closed|<exact>. source=request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.
  result = api_instance.list_returns(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_returns: #{e}"
end
```

#### Using the list_returns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReturnsResponse>, Integer, Hash)> list_returns_with_http_info(opts)

```ruby
begin
  # List returns. Default: your return records (the physical-return workflow), status=open|closed|<exact>. source=request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.
  data, status_code, headers = api_instance.list_returns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReturnsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->list_returns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee** | **String** | Work assignment: &#39;me&#39; (your own seat), &#39;none&#39; (unassigned), &#39;any&#39; (assigned to someone) or a team member id. | [optional] |

### Return type

**ListReturnsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_return

> <GetReturnResponse> update_return(id, update_return_request)

Transition return status (received/inspected/restocked) and bump inventory on restock.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_return_request = Crossly::UpdateReturnRequest.new # UpdateReturnRequest | 

begin
  # Transition return status (received/inspected/restocked) and bump inventory on restock.
  result = api_instance.update_return(id, update_return_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return: #{e}"
end
```

#### Using the update_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReturnResponse>, Integer, Hash)> update_return_with_http_info(id, update_return_request)

```ruby
begin
  # Transition return status (received/inspected/restocked) and bump inventory on restock.
  data, status_code, headers = api_instance.update_return_with_http_info(id, update_return_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReturnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_return_request** | **UpdateReturnRequest** |  |  |

### Return type

**GetReturnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_return_assignee

> <UpdateOrderAssigneeResponse> update_return_assignee

Assign many returns to a teammate, round robin across several, or unassign them (null).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new

begin
  # Assign many returns to a teammate, round robin across several, or unassign them (null).
  result = api_instance.update_return_assignee
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_assignee: #{e}"
end
```

#### Using the update_return_assignee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderAssigneeResponse>, Integer, Hash)> update_return_assignee_with_http_info

```ruby
begin
  # Assign many returns to a teammate, round robin across several, or unassign them (null).
  data, status_code, headers = api_instance.update_return_assignee_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderAssigneeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_assignee_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateOrderAssigneeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_return_assignee_by_id

> <UpdateOrderAssigneeByIdResponse> update_return_assignee_by_id(id)

Assign one return to a teammate, or unassign it (null).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ReturnsApi.new
id = 'id_example' # String | 

begin
  # Assign one return to a teammate, or unassign it (null).
  result = api_instance.update_return_assignee_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_assignee_by_id: #{e}"
end
```

#### Using the update_return_assignee_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderAssigneeByIdResponse>, Integer, Hash)> update_return_assignee_by_id_with_http_info(id)

```ruby
begin
  # Assign one return to a teammate, or unassign it (null).
  data, status_code, headers = api_instance.update_return_assignee_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderAssigneeByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ReturnsApi->update_return_assignee_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateOrderAssigneeByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

