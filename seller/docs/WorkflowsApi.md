# Crossly::WorkflowsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_chain**](WorkflowsApi.md#create_workflow_chain) | **POST** /v1/workflow-chains | Create a multi-step workflow chain. |
| [**create_workflow_chain_run_now**](WorkflowsApi.md#create_workflow_chain_run_now) | **POST** /v1/workflow-chains/{id}/run-now | Enqueue an ad-hoc run of a workflow chain. |
| [**create_workflow_chain_toggle**](WorkflowsApi.md#create_workflow_chain_toggle) | **POST** /v1/workflow-chains/{id}/toggle | Flip a workflow chain between active and inactive. |
| [**delete_workflow_chain**](WorkflowsApi.md#delete_workflow_chain) | **DELETE** /v1/workflow-chains/{id} | Delete a workflow chain (cascades steps + runs). |
| [**get_workflow_chain**](WorkflowsApi.md#get_workflow_chain) | **GET** /v1/workflow-chains/{id} | Get one workflow chain with its steps. |
| [**list_workflow_chains**](WorkflowsApi.md#list_workflow_chains) | **GET** /v1/workflow-chains | List workflow chains with their step graph. |
| [**update_workflow_chain**](WorkflowsApi.md#update_workflow_chain) | **PUT** /v1/workflow-chains/{id} | Replace a workflow chain wholesale. |


## create_workflow_chain

> <CreateWorkflowChainResponse> create_workflow_chain

Create a multi-step workflow chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new

begin
  # Create a multi-step workflow chain.
  result = api_instance.create_workflow_chain
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain: #{e}"
end
```

#### Using the create_workflow_chain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowChainResponse>, Integer, Hash)> create_workflow_chain_with_http_info

```ruby
begin
  # Create a multi-step workflow chain.
  data, status_code, headers = api_instance.create_workflow_chain_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowChainResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateWorkflowChainResponse**](CreateWorkflowChainResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_chain_run_now

> <CreateWorkflowChainRunNowResponse> create_workflow_chain_run_now(id)

Enqueue an ad-hoc run of a workflow chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Enqueue an ad-hoc run of a workflow chain.
  result = api_instance.create_workflow_chain_run_now(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_run_now: #{e}"
end
```

#### Using the create_workflow_chain_run_now_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowChainRunNowResponse>, Integer, Hash)> create_workflow_chain_run_now_with_http_info(id)

```ruby
begin
  # Enqueue an ad-hoc run of a workflow chain.
  data, status_code, headers = api_instance.create_workflow_chain_run_now_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowChainRunNowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_run_now_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateWorkflowChainRunNowResponse**](CreateWorkflowChainRunNowResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_chain_toggle

> <CreateWorkflowChainToggleResponse> create_workflow_chain_toggle(id)

Flip a workflow chain between active and inactive.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Flip a workflow chain between active and inactive.
  result = api_instance.create_workflow_chain_toggle(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_toggle: #{e}"
end
```

#### Using the create_workflow_chain_toggle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowChainToggleResponse>, Integer, Hash)> create_workflow_chain_toggle_with_http_info(id)

```ruby
begin
  # Flip a workflow chain between active and inactive.
  data, status_code, headers = api_instance.create_workflow_chain_toggle_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowChainToggleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_toggle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateWorkflowChainToggleResponse**](CreateWorkflowChainToggleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_workflow_chain

> <DeleteWorkflowChainResponse> delete_workflow_chain(id)

Delete a workflow chain (cascades steps + runs).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a workflow chain (cascades steps + runs).
  result = api_instance.delete_workflow_chain(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_chain: #{e}"
end
```

#### Using the delete_workflow_chain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorkflowChainResponse>, Integer, Hash)> delete_workflow_chain_with_http_info(id)

```ruby
begin
  # Delete a workflow chain (cascades steps + runs).
  data, status_code, headers = api_instance.delete_workflow_chain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorkflowChainResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteWorkflowChainResponse**](DeleteWorkflowChainResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_chain

> <GetWorkflowChainResponse> get_workflow_chain(id)

Get one workflow chain with its steps.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get one workflow chain with its steps.
  result = api_instance.get_workflow_chain(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_chain: #{e}"
end
```

#### Using the get_workflow_chain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowChainResponse>, Integer, Hash)> get_workflow_chain_with_http_info(id)

```ruby
begin
  # Get one workflow chain with its steps.
  data, status_code, headers = api_instance.get_workflow_chain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowChainResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetWorkflowChainResponse**](GetWorkflowChainResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_chains

> <V1List> list_workflow_chains

List workflow chains with their step graph.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new

begin
  # List workflow chains with their step graph.
  result = api_instance.list_workflow_chains
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_chains: #{e}"
end
```

#### Using the list_workflow_chains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_workflow_chains_with_http_info

```ruby
begin
  # List workflow chains with their step graph.
  data, status_code, headers = api_instance.list_workflow_chains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_chains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_workflow_chain

> <UpdateWorkflowChainResponse> update_workflow_chain(id)

Replace a workflow chain wholesale.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorkflowsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Replace a workflow chain wholesale.
  result = api_instance.update_workflow_chain(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_chain: #{e}"
end
```

#### Using the update_workflow_chain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorkflowChainResponse>, Integer, Hash)> update_workflow_chain_with_http_info(id)

```ruby
begin
  # Replace a workflow chain wholesale.
  data, status_code, headers = api_instance.update_workflow_chain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorkflowChainResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateWorkflowChainResponse**](UpdateWorkflowChainResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

