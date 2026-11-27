# Crossly::WorkflowsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow**](WorkflowsApi.md#create_workflow) | **POST** /v1/workflows | Create a workflow: from blank ({ name, graph? }), from a template ({ from: \&quot;template\&quot;, templateId, setup?, activate? }) or from an export document ({ from: \&quot;import\&quot;, document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues. |
| [**create_workflow_activate**](WorkflowsApi.md#create_workflow_activate) | **POST** /v1/workflows/{id}/activate | Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues). |
| [**create_workflow_approval_decide**](WorkflowsApi.md#create_workflow_approval_decide) | **POST** /v1/workflow-approvals/{id}/decide | Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout). |
| [**create_workflow_chain**](WorkflowsApi.md#create_workflow_chain) | **POST** /v1/workflow-chains | Create a multi-step workflow chain. |
| [**create_workflow_chain_run_now**](WorkflowsApi.md#create_workflow_chain_run_now) | **POST** /v1/workflow-chains/{id}/run-now | Enqueue an ad-hoc run of a workflow chain. |
| [**create_workflow_chain_toggle**](WorkflowsApi.md#create_workflow_chain_toggle) | **POST** /v1/workflow-chains/{id}/toggle | Flip a workflow chain between active and inactive. |
| [**create_workflow_deactivate**](WorkflowsApi.md#create_workflow_deactivate) | **POST** /v1/workflows/{id}/deactivate | Pause a workflow: its triggers stop firing. Runs already started finish. |
| [**create_workflow_duplicate**](WorkflowsApi.md#create_workflow_duplicate) | **POST** /v1/workflows/{id}/duplicate | Copy a workflow (graph, description, tags) into a new paused workflow. |
| [**create_workflow_expression_preview**](WorkflowsApi.md#create_workflow_expression_preview) | **POST** /v1/workflows/expressions/preview | Resolve one param value (\&quot;{{ $json.priceCents * 0.9 }}\&quot;) with the engine&#39;s evaluator against an item, the trigger item, earlier nodes&#39; items or a stored run. A bad expression is an answer (ok&#x3D;false with the message), not an HTTP error. Changes nothing. |
| [**create_workflow_import**](WorkflowsApi.md#create_workflow_import) | **POST** /v1/workflows/import | Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped. |
| [**create_workflow_run**](WorkflowsApi.md#create_workflow_run) | **POST** /v1/workflows/{id}/run | Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise). |
| [**create_workflow_run_cancel**](WorkflowsApi.md#create_workflow_run_cancel) | **POST** /v1/workflow-runs/{runId}/cancel | Cancel a queued, running or waiting run. 409 when it already finished. |
| [**create_workflow_run_on**](WorkflowsApi.md#create_workflow_run_on) | **POST** /v1/workflows/run-on | \&quot;Run workflow on…\&quot;: the same as POST /v1/workflows/{id}/run with the workflow named in the body. |
| [**create_workflow_run_retry**](WorkflowsApi.md#create_workflow_run_retry) | **POST** /v1/workflow-runs/{runId}/retry | Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run&#39;s checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed. |
| [**create_workflow_sale_end**](WorkflowsApi.md#create_workflow_sale_end) | **POST** /v1/workflows/sales/{saleEventId}/end | End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted &#x3D; how many listings were restored). 404 for a sale that is not yours. |
| [**create_workflow_template_use**](WorkflowsApi.md#create_workflow_template_use) | **POST** /v1/workflows/templates/{id}/use | Create a workflow from a template, filling its setup fields; activate&#x3D;true activates it when it validates. |
| [**create_workflow_test**](WorkflowsApi.md#create_workflow_test) | **POST** /v1/workflows/{id}/test | Test a workflow (the saved graph, or a draft graph you pass). mode&#x3D;test runs it for real, using pinned data where a node has it; mode&#x3D;dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample. |
| [**create_workflow_validate**](WorkflowsApi.md#create_workflow_validate) | **POST** /v1/workflows/validate | Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking&#x3D;true means activation would be refused. |
| [**create_workflow_version_restore**](WorkflowsApi.md#create_workflow_version_restore) | **POST** /v1/workflows/{id}/versions/{v}/restore | Restore an earlier version&#39;s graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }. |
| [**create_workflow_webhook_rotate**](WorkflowsApi.md#create_workflow_webhook_rotate) | **POST** /v1/workflows/{id}/webhooks/{nodeId}/rotate | Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret&#x3D;true, are returned ONCE: store them now. |
| [**delete_workflow**](WorkflowsApi.md#delete_workflow) | **DELETE** /v1/workflows/{id} | Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable. |
| [**delete_workflow_chain**](WorkflowsApi.md#delete_workflow_chain) | **DELETE** /v1/workflow-chains/{id} | Delete a workflow chain (cascades steps + runs). |
| [**get_workflow**](WorkflowsApi.md#get_workflow) | **GET** /v1/workflows/{id} | Get one workflow with its full graph and current version. |
| [**get_workflow_catalog**](WorkflowsApi.md#get_workflow_catalog) | **GET** /v1/workflows/catalog | Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys. |
| [**get_workflow_chain**](WorkflowsApi.md#get_workflow_chain) | **GET** /v1/workflow-chains/{id} | Get one workflow chain with its steps. |
| [**get_workflow_export**](WorkflowsApi.md#get_workflow_export) | **GET** /v1/workflows/{id}/export | Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData&#x3D;true. |
| [**get_workflow_run**](WorkflowsApi.md#get_workflow_run) | **GET** /v1/workflow-runs/{runId} | One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}. |
| [**get_workflow_run_node**](WorkflowsApi.md#get_workflow_run_node) | **GET** /v1/workflow-runs/{runId}/nodes/{nodeId} | Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated&#x3D;true when cut). Data older than the retention window, or not kept by settings.saveSuccessData&#x3D;false, is pruned: that execution has input/output null and pruned&#x3D;true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list). |
| [**list_workflow_approvals**](WorkflowsApi.md#list_workflow_approvals) | **GET** /v1/workflow-approvals | Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide. |
| [**list_workflow_chains**](WorkflowsApi.md#list_workflow_chains) | **GET** /v1/workflow-chains | List workflow chains with their step graph. |
| [**list_workflow_runs**](WorkflowsApi.md#list_workflow_runs) | **GET** /v1/workflows/{id}/runs | Run history of one workflow, newest first, with per-node status and item counts. |
| [**list_workflow_runs2**](WorkflowsApi.md#list_workflow_runs2) | **GET** /v1/workflow-runs | Runs of every workflow, newest first. Filter by workflow, status, mode and time. |
| [**list_workflow_sale_active**](WorkflowsApi.md#list_workflow_sale_active) | **GET** /v1/workflows/sales/active | Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to. |
| [**list_workflow_templates**](WorkflowsApi.md#list_workflow_templates) | **GET** /v1/workflows/templates | Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \&quot;use\&quot; call asks for. |
| [**list_workflow_versions**](WorkflowsApi.md#list_workflow_versions) | **GET** /v1/workflows/{id}/versions | The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore). |
| [**list_workflows**](WorkflowsApi.md#list_workflows) | **GET** /v1/workflows | List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it). |
| [**update_workflow**](WorkflowsApi.md#update_workflow) | **PUT** /v1/workflows/{id} | Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues). |
| [**update_workflow_chain**](WorkflowsApi.md#update_workflow_chain) | **PUT** /v1/workflow-chains/{id} | Replace a workflow chain wholesale. |


## create_workflow

> <CreateWorkflowResponse> create_workflow(create_workflow_request)

Create a workflow: from blank ({ name, graph? }), from a template ({ from: \"template\", templateId, setup?, activate? }) or from an export document ({ from: \"import\", document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.

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
create_workflow_request = Crossly::CreateWorkflowRequest.new # CreateWorkflowRequest | 

begin
  # Create a workflow: from blank ({ name, graph? }), from a template ({ from: \"template\", templateId, setup?, activate? }) or from an export document ({ from: \"import\", document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.
  result = api_instance.create_workflow(create_workflow_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow: #{e}"
end
```

#### Using the create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowResponse>, Integer, Hash)> create_workflow_with_http_info(create_workflow_request)

```ruby
begin
  # Create a workflow: from blank ({ name, graph? }), from a template ({ from: \"template\", templateId, setup?, activate? }) or from an export document ({ from: \"import\", document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.
  data, status_code, headers = api_instance.create_workflow_with_http_info(create_workflow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_request** | **CreateWorkflowRequest** |  |  |

### Return type

**CreateWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_activate

> <WorkflowResponse> create_workflow_activate(id)

Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.

begin
  # Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).
  result = api_instance.create_workflow_activate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_activate: #{e}"
end
```

#### Using the create_workflow_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowResponse>, Integer, Hash)> create_workflow_activate_with_http_info(id)

```ruby
begin
  # Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).
  data, status_code, headers = api_instance.create_workflow_activate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_approval_decide

> <CreateWorkflowApprovalDecideResponse> create_workflow_approval_decide(id, create_workflow_approval_decide_request)

Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approval id from GET /v1/workflow-approvals.
create_workflow_approval_decide_request = Crossly::CreateWorkflowApprovalDecideRequest.new({decision: 'approved'}) # CreateWorkflowApprovalDecideRequest | 

begin
  # Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).
  result = api_instance.create_workflow_approval_decide(id, create_workflow_approval_decide_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_approval_decide: #{e}"
end
```

#### Using the create_workflow_approval_decide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowApprovalDecideResponse>, Integer, Hash)> create_workflow_approval_decide_with_http_info(id, create_workflow_approval_decide_request)

```ruby
begin
  # Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).
  data, status_code, headers = api_instance.create_workflow_approval_decide_with_http_info(id, create_workflow_approval_decide_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowApprovalDecideResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_approval_decide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Approval id from GET /v1/workflow-approvals. |  |
| **create_workflow_approval_decide_request** | **CreateWorkflowApprovalDecideRequest** |  |  |

### Return type

**CreateWorkflowApprovalDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_chain

> <IdResponse> create_workflow_chain

Create a multi-step workflow chain.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

> <Array(<IdResponse>, Integer, Hash)> create_workflow_chain_with_http_info

```ruby
begin
  # Create a multi-step workflow chain.
  data, status_code, headers = api_instance.create_workflow_chain_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_chain_run_now

> <CreateWorkflowChainRunNowResponse> create_workflow_chain_run_now(id)

Enqueue an ad-hoc run of a workflow chain.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

**CreateWorkflowChainRunNowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_chain_toggle

> <CreateWorkflowChainToggleResponse> create_workflow_chain_toggle(id)

Flip a workflow chain between active and inactive.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

**CreateWorkflowChainToggleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_deactivate

> <WorkflowResponse> create_workflow_deactivate(id)

Pause a workflow: its triggers stop firing. Runs already started finish.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.

begin
  # Pause a workflow: its triggers stop firing. Runs already started finish.
  result = api_instance.create_workflow_deactivate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_deactivate: #{e}"
end
```

#### Using the create_workflow_deactivate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowResponse>, Integer, Hash)> create_workflow_deactivate_with_http_info(id)

```ruby
begin
  # Pause a workflow: its triggers stop firing. Runs already started finish.
  data, status_code, headers = api_instance.create_workflow_deactivate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_deactivate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_duplicate

> <CreateWorkflowDuplicateResponse> create_workflow_duplicate(id, create_workflow_duplicate_request)

Copy a workflow (graph, description, tags) into a new paused workflow.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
create_workflow_duplicate_request = Crossly::CreateWorkflowDuplicateRequest.new # CreateWorkflowDuplicateRequest | 

begin
  # Copy a workflow (graph, description, tags) into a new paused workflow.
  result = api_instance.create_workflow_duplicate(id, create_workflow_duplicate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_duplicate: #{e}"
end
```

#### Using the create_workflow_duplicate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowDuplicateResponse>, Integer, Hash)> create_workflow_duplicate_with_http_info(id, create_workflow_duplicate_request)

```ruby
begin
  # Copy a workflow (graph, description, tags) into a new paused workflow.
  data, status_code, headers = api_instance.create_workflow_duplicate_with_http_info(id, create_workflow_duplicate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowDuplicateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_duplicate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **create_workflow_duplicate_request** | **CreateWorkflowDuplicateRequest** |  |  |

### Return type

**CreateWorkflowDuplicateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_expression_preview

> <CreateWorkflowExpressionPreviewResponse> create_workflow_expression_preview(create_workflow_expression_preview_request)

Resolve one param value (\"{{ $json.priceCents * 0.9 }}\") with the engine's evaluator against an item, the trigger item, earlier nodes' items or a stored run. A bad expression is an answer (ok=false with the message), not an HTTP error. Changes nothing.

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
create_workflow_expression_preview_request = Crossly::CreateWorkflowExpressionPreviewRequest.new # CreateWorkflowExpressionPreviewRequest | 

begin
  # Resolve one param value (\"{{ $json.priceCents * 0.9 }}\") with the engine's evaluator against an item, the trigger item, earlier nodes' items or a stored run. A bad expression is an answer (ok=false with the message), not an HTTP error. Changes nothing.
  result = api_instance.create_workflow_expression_preview(create_workflow_expression_preview_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_expression_preview: #{e}"
end
```

#### Using the create_workflow_expression_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowExpressionPreviewResponse>, Integer, Hash)> create_workflow_expression_preview_with_http_info(create_workflow_expression_preview_request)

```ruby
begin
  # Resolve one param value (\"{{ $json.priceCents * 0.9 }}\") with the engine's evaluator against an item, the trigger item, earlier nodes' items or a stored run. A bad expression is an answer (ok=false with the message), not an HTTP error. Changes nothing.
  data, status_code, headers = api_instance.create_workflow_expression_preview_with_http_info(create_workflow_expression_preview_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowExpressionPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_expression_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_expression_preview_request** | **CreateWorkflowExpressionPreviewRequest** |  |  |

### Return type

**CreateWorkflowExpressionPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_import

> <CreateWorkflowImportResponse> create_workflow_import(request_body)

Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.

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
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.
  result = api_instance.create_workflow_import(request_body)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_import: #{e}"
end
```

#### Using the create_workflow_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowImportResponse>, Integer, Hash)> create_workflow_import_with_http_info(request_body)

```ruby
begin
  # Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.
  data, status_code, headers = api_instance.create_workflow_import_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | **Hash&lt;String, Object&gt;** |  |  |

### Return type

**CreateWorkflowImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_run

> <CreateWorkflowRunResponse> create_workflow_run(id, create_workflow_run_request)

Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
create_workflow_run_request = Crossly::CreateWorkflowRunRequest.new # CreateWorkflowRunRequest | 

begin
  # Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).
  result = api_instance.create_workflow_run(id, create_workflow_run_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run: #{e}"
end
```

#### Using the create_workflow_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowRunResponse>, Integer, Hash)> create_workflow_run_with_http_info(id, create_workflow_run_request)

```ruby
begin
  # Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).
  data, status_code, headers = api_instance.create_workflow_run_with_http_info(id, create_workflow_run_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **create_workflow_run_request** | **CreateWorkflowRunRequest** |  |  |

### Return type

**CreateWorkflowRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_run_cancel

> <CreateWorkflowRunCancelResponse> create_workflow_run_cancel(run_id)

Cancel a queued, running or waiting run. 409 when it already finished.

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
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow run id.

begin
  # Cancel a queued, running or waiting run. 409 when it already finished.
  result = api_instance.create_workflow_run_cancel(run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_cancel: #{e}"
end
```

#### Using the create_workflow_run_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowRunCancelResponse>, Integer, Hash)> create_workflow_run_cancel_with_http_info(run_id)

```ruby
begin
  # Cancel a queued, running or waiting run. 409 when it already finished.
  data, status_code, headers = api_instance.create_workflow_run_cancel_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowRunCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | Workflow run id. |  |

### Return type

**CreateWorkflowRunCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_run_on

> <CreateWorkflowRunOnResponse> create_workflow_run_on(create_workflow_run_on_request)

\"Run workflow on…\": the same as POST /v1/workflows/{id}/run with the workflow named in the body.

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
create_workflow_run_on_request = Crossly::CreateWorkflowRunOnRequest.new({workflow_id: 'workflow_id_example'}) # CreateWorkflowRunOnRequest | 

begin
  # \"Run workflow on…\": the same as POST /v1/workflows/{id}/run with the workflow named in the body.
  result = api_instance.create_workflow_run_on(create_workflow_run_on_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_on: #{e}"
end
```

#### Using the create_workflow_run_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowRunOnResponse>, Integer, Hash)> create_workflow_run_on_with_http_info(create_workflow_run_on_request)

```ruby
begin
  # \"Run workflow on…\": the same as POST /v1/workflows/{id}/run with the workflow named in the body.
  data, status_code, headers = api_instance.create_workflow_run_on_with_http_info(create_workflow_run_on_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowRunOnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_run_on_request** | **CreateWorkflowRunOnRequest** |  |  |

### Return type

**CreateWorkflowRunOnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_run_retry

> <CreateWorkflowRunRetryResponse> create_workflow_run_retry(run_id)

Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run's checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.

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
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow run id.

begin
  # Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run's checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.
  result = api_instance.create_workflow_run_retry(run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_retry: #{e}"
end
```

#### Using the create_workflow_run_retry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowRunRetryResponse>, Integer, Hash)> create_workflow_run_retry_with_http_info(run_id)

```ruby
begin
  # Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run's checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.
  data, status_code, headers = api_instance.create_workflow_run_retry_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowRunRetryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_run_retry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | Workflow run id. |  |

### Return type

**CreateWorkflowRunRetryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_sale_end

> <CreateWorkflowSaleEndResponse> create_workflow_sale_end(sale_event_id)

End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted = how many listings were restored). 404 for a sale that is not yours.

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
sale_event_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Sale id from GET /v1/workflows/sales/active.

begin
  # End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted = how many listings were restored). 404 for a sale that is not yours.
  result = api_instance.create_workflow_sale_end(sale_event_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_sale_end: #{e}"
end
```

#### Using the create_workflow_sale_end_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowSaleEndResponse>, Integer, Hash)> create_workflow_sale_end_with_http_info(sale_event_id)

```ruby
begin
  # End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted = how many listings were restored). 404 for a sale that is not yours.
  data, status_code, headers = api_instance.create_workflow_sale_end_with_http_info(sale_event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowSaleEndResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_sale_end_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_event_id** | **String** | Sale id from GET /v1/workflows/sales/active. |  |

### Return type

**CreateWorkflowSaleEndResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_template_use

> <CreateWorkflowResponse> create_workflow_template_use(id, create_workflow_template_use_request)

Create a workflow from a template, filling its setup fields; activate=true activates it when it validates.

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
id = 'id_example' # String | Template id from GET /v1/workflows/templates.
create_workflow_template_use_request = Crossly::CreateWorkflowTemplateUseRequest.new # CreateWorkflowTemplateUseRequest | 

begin
  # Create a workflow from a template, filling its setup fields; activate=true activates it when it validates.
  result = api_instance.create_workflow_template_use(id, create_workflow_template_use_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_template_use: #{e}"
end
```

#### Using the create_workflow_template_use_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowResponse>, Integer, Hash)> create_workflow_template_use_with_http_info(id, create_workflow_template_use_request)

```ruby
begin
  # Create a workflow from a template, filling its setup fields; activate=true activates it when it validates.
  data, status_code, headers = api_instance.create_workflow_template_use_with_http_info(id, create_workflow_template_use_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_template_use_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template id from GET /v1/workflows/templates. |  |
| **create_workflow_template_use_request** | **CreateWorkflowTemplateUseRequest** |  |  |

### Return type

**CreateWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_test

> <CreateWorkflowTestResponse> create_workflow_test(id, create_workflow_test_request)

Test a workflow (the saved graph, or a draft graph you pass). mode=test runs it for real, using pinned data where a node has it; mode=dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
create_workflow_test_request = Crossly::CreateWorkflowTestRequest.new # CreateWorkflowTestRequest | 

begin
  # Test a workflow (the saved graph, or a draft graph you pass). mode=test runs it for real, using pinned data where a node has it; mode=dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.
  result = api_instance.create_workflow_test(id, create_workflow_test_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_test: #{e}"
end
```

#### Using the create_workflow_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowTestResponse>, Integer, Hash)> create_workflow_test_with_http_info(id, create_workflow_test_request)

```ruby
begin
  # Test a workflow (the saved graph, or a draft graph you pass). mode=test runs it for real, using pinned data where a node has it; mode=dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.
  data, status_code, headers = api_instance.create_workflow_test_with_http_info(id, create_workflow_test_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **create_workflow_test_request** | **CreateWorkflowTestRequest** |  |  |

### Return type

**CreateWorkflowTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_validate

> <CreateWorkflowValidateResponse> create_workflow_validate(create_workflow_validate_request)

Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking=true means activation would be refused.

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
create_workflow_validate_request = Crossly::CreateWorkflowValidateRequest.new({graph: { key: 3.56}}) # CreateWorkflowValidateRequest | 

begin
  # Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking=true means activation would be refused.
  result = api_instance.create_workflow_validate(create_workflow_validate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_validate: #{e}"
end
```

#### Using the create_workflow_validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowValidateResponse>, Integer, Hash)> create_workflow_validate_with_http_info(create_workflow_validate_request)

```ruby
begin
  # Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking=true means activation would be refused.
  data, status_code, headers = api_instance.create_workflow_validate_with_http_info(create_workflow_validate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowValidateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_validate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_validate_request** | **CreateWorkflowValidateRequest** |  |  |

### Return type

**CreateWorkflowValidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow_version_restore

> <WorkflowResponse> create_workflow_version_restore(id, v)

Restore an earlier version's graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
v = 56 # Integer | The version number to restore.

begin
  # Restore an earlier version's graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.
  result = api_instance.create_workflow_version_restore(id, v)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_version_restore: #{e}"
end
```

#### Using the create_workflow_version_restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowResponse>, Integer, Hash)> create_workflow_version_restore_with_http_info(id, v)

```ruby
begin
  # Restore an earlier version's graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.
  data, status_code, headers = api_instance.create_workflow_version_restore_with_http_info(id, v)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_version_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **v** | **Integer** | The version number to restore. |  |

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow_webhook_rotate

> <CreateWorkflowWebhookRotateResponse> create_workflow_webhook_rotate(id, node_id, create_workflow_webhook_rotate_request)

Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret=true, are returned ONCE: store them now.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
node_id = 'node_id_example' # String | The on.webhook trigger node id.
create_workflow_webhook_rotate_request = Crossly::CreateWorkflowWebhookRotateRequest.new # CreateWorkflowWebhookRotateRequest | 

begin
  # Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret=true, are returned ONCE: store them now.
  result = api_instance.create_workflow_webhook_rotate(id, node_id, create_workflow_webhook_rotate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_webhook_rotate: #{e}"
end
```

#### Using the create_workflow_webhook_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflowWebhookRotateResponse>, Integer, Hash)> create_workflow_webhook_rotate_with_http_info(id, node_id, create_workflow_webhook_rotate_request)

```ruby
begin
  # Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret=true, are returned ONCE: store them now.
  data, status_code, headers = api_instance.create_workflow_webhook_rotate_with_http_info(id, node_id, create_workflow_webhook_rotate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflowWebhookRotateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_webhook_rotate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **node_id** | **String** | The on.webhook trigger node id. |  |
| **create_workflow_webhook_rotate_request** | **CreateWorkflowWebhookRotateRequest** |  |  |

### Return type

**CreateWorkflowWebhookRotateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workflow

> <DeleteWorkflowResponse> delete_workflow(id)

Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.

begin
  # Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.
  result = api_instance.delete_workflow(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow: #{e}"
end
```

#### Using the delete_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorkflowResponse>, Integer, Hash)> delete_workflow_with_http_info(id)

```ruby
begin
  # Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.
  data, status_code, headers = api_instance.delete_workflow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |

### Return type

**DeleteWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_workflow_chain

> <OkResponse> delete_workflow_chain(id)

Delete a workflow chain (cascades steps + runs).

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

> <Array(<OkResponse>, Integer, Hash)> delete_workflow_chain_with_http_info(id)

```ruby
begin
  # Delete a workflow chain (cascades steps + runs).
  data, status_code, headers = api_instance.delete_workflow_chain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow

> <GetWorkflowResponse> get_workflow(id)

Get one workflow with its full graph and current version.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.

begin
  # Get one workflow with its full graph and current version.
  result = api_instance.get_workflow(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow: #{e}"
end
```

#### Using the get_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowResponse>, Integer, Hash)> get_workflow_with_http_info(id)

```ruby
begin
  # Get one workflow with its full graph and current version.
  data, status_code, headers = api_instance.get_workflow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |

### Return type

**GetWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_catalog

> <GetWorkflowCatalogResponse> get_workflow_catalog

Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.

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
  # Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.
  result = api_instance.get_workflow_catalog
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_catalog: #{e}"
end
```

#### Using the get_workflow_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowCatalogResponse>, Integer, Hash)> get_workflow_catalog_with_http_info

```ruby
begin
  # Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.
  data, status_code, headers = api_instance.get_workflow_catalog_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowCatalogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_catalog_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorkflowCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_chain

> <GetWorkflowChainResponse> get_workflow_chain(id)

Get one workflow chain with its steps.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

**GetWorkflowChainResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_export

> <GetWorkflowExportResponse> get_workflow_export(id, opts)

Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData=true.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
opts = {
  pinned_data: 'true' # String | Keep the nodes' pinned test data.
}

begin
  # Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData=true.
  result = api_instance.get_workflow_export(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_export: #{e}"
end
```

#### Using the get_workflow_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowExportResponse>, Integer, Hash)> get_workflow_export_with_http_info(id, opts)

```ruby
begin
  # Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData=true.
  data, status_code, headers = api_instance.get_workflow_export_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowExportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **pinned_data** | **String** | Keep the nodes&#39; pinned test data. | [optional] |

### Return type

**GetWorkflowExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_run

> <GetWorkflowRunResponse> get_workflow_run(run_id)

One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.

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
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow run id.

begin
  # One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.
  result = api_instance.get_workflow_run(run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_run: #{e}"
end
```

#### Using the get_workflow_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowRunResponse>, Integer, Hash)> get_workflow_run_with_http_info(run_id)

```ruby
begin
  # One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.
  data, status_code, headers = api_instance.get_workflow_run_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | Workflow run id. |  |

### Return type

**GetWorkflowRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_run_node

> <GetWorkflowRunNodeResponse> get_workflow_run_node(run_id, node_id)

Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated=true when cut). Data older than the retention window, or not kept by settings.saveSuccessData=false, is pruned: that execution has input/output null and pruned=true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).

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
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow run id.
node_id = 'node_id_example' # String | Node id within the run's graph.

begin
  # Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated=true when cut). Data older than the retention window, or not kept by settings.saveSuccessData=false, is pruned: that execution has input/output null and pruned=true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).
  result = api_instance.get_workflow_run_node(run_id, node_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_run_node: #{e}"
end
```

#### Using the get_workflow_run_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowRunNodeResponse>, Integer, Hash)> get_workflow_run_node_with_http_info(run_id, node_id)

```ruby
begin
  # Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated=true when cut). Data older than the retention window, or not kept by settings.saveSuccessData=false, is pruned: that execution has input/output null and pruned=true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).
  data, status_code, headers = api_instance.get_workflow_run_node_with_http_info(run_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowRunNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_run_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | Workflow run id. |  |
| **node_id** | **String** | Node id within the run&#39;s graph. |  |

### Return type

**GetWorkflowRunNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_approvals

> <ListWorkflowApprovalsResponse> list_workflow_approvals(opts)

Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.

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
opts = {
  status: 'status_example', # String | Comma-separated: pending, approved, rejected, expired. Default pending.
  workflow_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Only approvals of this workflow.
  page: 56, # Integer | 1-indexed page.
  limit: 56 # Integer | Rows per page (1-100).
}

begin
  # Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.
  result = api_instance.list_workflow_approvals(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_approvals: #{e}"
end
```

#### Using the list_workflow_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowApprovalsResponse>, Integer, Hash)> list_workflow_approvals_with_http_info(opts)

```ruby
begin
  # Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.
  data, status_code, headers = api_instance.list_workflow_approvals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowApprovalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_approvals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Comma-separated: pending, approved, rejected, expired. Default pending. | [optional] |
| **workflow_id** | **String** | Only approvals of this workflow. | [optional] |
| **page** | **Integer** | 1-indexed page. | [optional][default to 1] |
| **limit** | **Integer** | Rows per page (1-100). | [optional][default to 25] |

### Return type

**ListWorkflowApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_chains

> <ListWorkflowChainsResponse> list_workflow_chains

List workflow chains with their step graph.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

> <Array(<ListWorkflowChainsResponse>, Integer, Hash)> list_workflow_chains_with_http_info

```ruby
begin
  # List workflow chains with their step graph.
  data, status_code, headers = api_instance.list_workflow_chains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowChainsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_chains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorkflowChainsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_runs

> <ListWorkflowRunsResponse> list_workflow_runs(id, opts)

Run history of one workflow, newest first, with per-node status and item counts.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
opts = {
  status: 'status_example', # String | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled.
  mode: 'live', # String | live (triggers), test (editor test run) or dry (safe test: no writes).
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Runs queued at or after this time (ISO 8601).
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Runs queued at or before this time (ISO 8601).
  page: 56, # Integer | 1-indexed page.
  limit: 56 # Integer | Rows per page (1-100).
}

begin
  # Run history of one workflow, newest first, with per-node status and item counts.
  result = api_instance.list_workflow_runs(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_runs: #{e}"
end
```

#### Using the list_workflow_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowRunsResponse>, Integer, Hash)> list_workflow_runs_with_http_info(id, opts)

```ruby
begin
  # Run history of one workflow, newest first, with per-node status and item counts.
  data, status_code, headers = api_instance.list_workflow_runs_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowRunsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **status** | **String** | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. | [optional] |
| **mode** | **String** | live (triggers), test (editor test run) or dry (safe test: no writes). | [optional] |
| **since** | **Time** | Runs queued at or after this time (ISO 8601). | [optional] |
| **_until** | **Time** | Runs queued at or before this time (ISO 8601). | [optional] |
| **page** | **Integer** | 1-indexed page. | [optional][default to 1] |
| **limit** | **Integer** | Rows per page (1-100). | [optional][default to 25] |

### Return type

**ListWorkflowRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_runs2

> <ListWorkflowRunsResponse> list_workflow_runs2(opts)

Runs of every workflow, newest first. Filter by workflow, status, mode and time.

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
opts = {
  workflow_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Only runs of this workflow.
  status: 'status_example', # String | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled.
  mode: 'live', # String | live (triggers), test (editor test run) or dry (safe test: no writes).
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Runs queued at or after this time (ISO 8601).
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Runs queued at or before this time (ISO 8601).
  page: 56, # Integer | 1-indexed page.
  limit: 56 # Integer | Rows per page (1-100).
}

begin
  # Runs of every workflow, newest first. Filter by workflow, status, mode and time.
  result = api_instance.list_workflow_runs2(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_runs2: #{e}"
end
```

#### Using the list_workflow_runs2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowRunsResponse>, Integer, Hash)> list_workflow_runs2_with_http_info(opts)

```ruby
begin
  # Runs of every workflow, newest first. Filter by workflow, status, mode and time.
  data, status_code, headers = api_instance.list_workflow_runs2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowRunsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_runs2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** | Only runs of this workflow. | [optional] |
| **status** | **String** | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. | [optional] |
| **mode** | **String** | live (triggers), test (editor test run) or dry (safe test: no writes). | [optional] |
| **since** | **Time** | Runs queued at or after this time (ISO 8601). | [optional] |
| **_until** | **Time** | Runs queued at or before this time (ISO 8601). | [optional] |
| **page** | **Integer** | 1-indexed page. | [optional][default to 1] |
| **limit** | **Integer** | Rows per page (1-100). | [optional][default to 25] |

### Return type

**ListWorkflowRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_sale_active

> <ListWorkflowSaleActiveResponse> list_workflow_sale_active

Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.

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
  # Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.
  result = api_instance.list_workflow_sale_active
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_sale_active: #{e}"
end
```

#### Using the list_workflow_sale_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowSaleActiveResponse>, Integer, Hash)> list_workflow_sale_active_with_http_info

```ruby
begin
  # Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.
  data, status_code, headers = api_instance.list_workflow_sale_active_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowSaleActiveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_sale_active_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorkflowSaleActiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_templates

> <ListWorkflowTemplatesResponse> list_workflow_templates(opts)

Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \"use\" call asks for.

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
opts = {
  category: 'category_example', # String | Exact template category, e.g. \"Sales & markdowns\".
  q: 'q_example' # String | Matches name, description, category or tags.
}

begin
  # Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \"use\" call asks for.
  result = api_instance.list_workflow_templates(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_templates: #{e}"
end
```

#### Using the list_workflow_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowTemplatesResponse>, Integer, Hash)> list_workflow_templates_with_http_info(opts)

```ruby
begin
  # Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \"use\" call asks for.
  data, status_code, headers = api_instance.list_workflow_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowTemplatesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Exact template category, e.g. \&quot;Sales &amp; markdowns\&quot;. | [optional] |
| **q** | **String** | Matches name, description, category or tags. | [optional] |

### Return type

**ListWorkflowTemplatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_versions

> <ListWorkflowVersionsResponse> list_workflow_versions(id)

The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.

begin
  # The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).
  result = api_instance.list_workflow_versions(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions: #{e}"
end
```

#### Using the list_workflow_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowVersionsResponse>, Integer, Hash)> list_workflow_versions_with_http_info(id)

```ruby
begin
  # The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).
  data, status_code, headers = api_instance.list_workflow_versions_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowVersionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |

### Return type

**ListWorkflowVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflows

> <ListWorkflowsResponse> list_workflows(opts)

List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).

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
opts = {
  active: 'true', # String | Only active (true) or paused (false) workflows.
  tag: 'tag_example', # String | Only workflows carrying this tag.
  trigger: 'trigger_example', # String | Only workflows started by this trigger node type, e.g. on.listing.sold.
  q: 'q_example', # String | Name contains (case-insensitive).
  legacy_ref: 'legacy_ref_example' # String | The workflow an old automation became: rule:<id>, chain:<id> or sale_event:<id>.
}

begin
  # List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).
  result = api_instance.list_workflows(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows: #{e}"
end
```

#### Using the list_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowsResponse>, Integer, Hash)> list_workflows_with_http_info(opts)

```ruby
begin
  # List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).
  data, status_code, headers = api_instance.list_workflows_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **String** | Only active (true) or paused (false) workflows. | [optional] |
| **tag** | **String** | Only workflows carrying this tag. | [optional] |
| **trigger** | **String** | Only workflows started by this trigger node type, e.g. on.listing.sold. | [optional] |
| **q** | **String** | Name contains (case-insensitive). | [optional] |
| **legacy_ref** | **String** | The workflow an old automation became: rule:&lt;id&gt;, chain:&lt;id&gt; or sale_event:&lt;id&gt;. | [optional] |

### Return type

**ListWorkflowsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_workflow

> <WorkflowResponse> update_workflow(id, update_workflow_request)

Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workflow id.
update_workflow_request = Crossly::UpdateWorkflowRequest.new({version: 37}) # UpdateWorkflowRequest | 

begin
  # Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).
  result = api_instance.update_workflow(id, update_workflow_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow: #{e}"
end
```

#### Using the update_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowResponse>, Integer, Hash)> update_workflow_with_http_info(id, update_workflow_request)

```ruby
begin
  # Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).
  data, status_code, headers = api_instance.update_workflow_with_http_info(id, update_workflow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow id. |  |
| **update_workflow_request** | **UpdateWorkflowRequest** |  |  |

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_workflow_chain

> <OkResponse> update_workflow_chain(id)

Replace a workflow chain wholesale.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

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

> <Array(<OkResponse>, Integer, Hash)> update_workflow_chain_with_http_info(id)

```ruby
begin
  # Replace a workflow chain wholesale.
  data, status_code, headers = api_instance.update_workflow_chain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

