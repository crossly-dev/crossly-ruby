# Crossly::AutomationApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automation_rule**](AutomationApi.md#create_automation_rule) | **POST** /v1/automation/rules | Create an automation rule. |
| [**create_automation_rule_import**](AutomationApi.md#create_automation_rule_import) | **POST** /v1/automation/rules/import | Import one or more rules from recipe JSON (single or bundle). |
| [**create_automation_rule_run_now**](AutomationApi.md#create_automation_rule_run_now) | **POST** /v1/automation/rules/{id}/run-now | Fire an automation rule immediately. |
| [**create_automation_rule_toggle**](AutomationApi.md#create_automation_rule_toggle) | **POST** /v1/automation/rules/{id}/toggle | Flip an automation rule between active and inactive. |
| [**create_automation_rule_validate_recipe**](AutomationApi.md#create_automation_rule_validate_recipe) | **POST** /v1/automation/rules/validate-recipe | Dry-run validate one or more recipes against the live catalog. |
| [**delete_automation_rule**](AutomationApi.md#delete_automation_rule) | **DELETE** /v1/automation/rules/{id} | Delete an automation rule. |
| [**get_automation_catalog**](AutomationApi.md#get_automation_catalog) | **GET** /v1/automation/catalog | Supported triggerType / actionType / conditionType values for automation rules. |
| [**get_automation_rule**](AutomationApi.md#get_automation_rule) | **GET** /v1/automation/rules/{id} | Get a single automation rule. |
| [**get_automation_rule_export**](AutomationApi.md#get_automation_rule_export) | **GET** /v1/automation/rules/export | Export the user&#39;s full rule library as a portable recipe bundle. |
| [**get_automation_rule_export_by_id**](AutomationApi.md#get_automation_rule_export_by_id) | **GET** /v1/automation/rules/{id}/export | Export a single automation rule as a portable recipe. |
| [**list_automation_rules**](AutomationApi.md#list_automation_rules) | **GET** /v1/automation/rules | List automation rules. |
| [**list_automation_runs**](AutomationApi.md#list_automation_runs) | **GET** /v1/automation/runs | Per-fire history for automation rules and workflow chain runs. |
| [**update_automation_rule**](AutomationApi.md#update_automation_rule) | **PUT** /v1/automation/rules/{id} | Update an automation rule (full replace). |


## create_automation_rule

> <CreateAutomationRuleResponse> create_automation_rule

Create an automation rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new

begin
  # Create an automation rule.
  result = api_instance.create_automation_rule
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule: #{e}"
end
```

#### Using the create_automation_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationRuleResponse>, Integer, Hash)> create_automation_rule_with_http_info

```ruby
begin
  # Create an automation rule.
  data, status_code, headers = api_instance.create_automation_rule_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAutomationRuleResponse**](CreateAutomationRuleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_automation_rule_import

> <CreateAutomationRuleImportResponse> create_automation_rule_import(opts)

Import one or more rules from recipe JSON (single or bundle).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
opts = {
  activate: true # Boolean | 
}

begin
  # Import one or more rules from recipe JSON (single or bundle).
  result = api_instance.create_automation_rule_import(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_import: #{e}"
end
```

#### Using the create_automation_rule_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationRuleImportResponse>, Integer, Hash)> create_automation_rule_import_with_http_info(opts)

```ruby
begin
  # Import one or more rules from recipe JSON (single or bundle).
  data, status_code, headers = api_instance.create_automation_rule_import_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationRuleImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activate** | **Boolean** |  | [optional][default to false] |

### Return type

[**CreateAutomationRuleImportResponse**](CreateAutomationRuleImportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_automation_rule_run_now

> <CreateAutomationRuleRunNowResponse> create_automation_rule_run_now(id)

Fire an automation rule immediately.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Fire an automation rule immediately.
  result = api_instance.create_automation_rule_run_now(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_run_now: #{e}"
end
```

#### Using the create_automation_rule_run_now_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationRuleRunNowResponse>, Integer, Hash)> create_automation_rule_run_now_with_http_info(id)

```ruby
begin
  # Fire an automation rule immediately.
  data, status_code, headers = api_instance.create_automation_rule_run_now_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationRuleRunNowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_run_now_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateAutomationRuleRunNowResponse**](CreateAutomationRuleRunNowResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_automation_rule_toggle

> <CreateAutomationRuleToggleResponse> create_automation_rule_toggle(id)

Flip an automation rule between active and inactive.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Flip an automation rule between active and inactive.
  result = api_instance.create_automation_rule_toggle(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_toggle: #{e}"
end
```

#### Using the create_automation_rule_toggle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationRuleToggleResponse>, Integer, Hash)> create_automation_rule_toggle_with_http_info(id)

```ruby
begin
  # Flip an automation rule between active and inactive.
  data, status_code, headers = api_instance.create_automation_rule_toggle_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationRuleToggleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_toggle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**CreateAutomationRuleToggleResponse**](CreateAutomationRuleToggleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_automation_rule_validate_recipe

> <CreateAutomationRuleValidateRecipeResponse> create_automation_rule_validate_recipe

Dry-run validate one or more recipes against the live catalog.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new

begin
  # Dry-run validate one or more recipes against the live catalog.
  result = api_instance.create_automation_rule_validate_recipe
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_validate_recipe: #{e}"
end
```

#### Using the create_automation_rule_validate_recipe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationRuleValidateRecipeResponse>, Integer, Hash)> create_automation_rule_validate_recipe_with_http_info

```ruby
begin
  # Dry-run validate one or more recipes against the live catalog.
  data, status_code, headers = api_instance.create_automation_rule_validate_recipe_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationRuleValidateRecipeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->create_automation_rule_validate_recipe_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateAutomationRuleValidateRecipeResponse**](CreateAutomationRuleValidateRecipeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_automation_rule

> <DeleteAutomationRuleResponse> delete_automation_rule(id)

Delete an automation rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete an automation rule.
  result = api_instance.delete_automation_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->delete_automation_rule: #{e}"
end
```

#### Using the delete_automation_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAutomationRuleResponse>, Integer, Hash)> delete_automation_rule_with_http_info(id)

```ruby
begin
  # Delete an automation rule.
  data, status_code, headers = api_instance.delete_automation_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAutomationRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->delete_automation_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteAutomationRuleResponse**](DeleteAutomationRuleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_catalog

> <GetAutomationCatalogResponse> get_automation_catalog

Supported triggerType / actionType / conditionType values for automation rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new

begin
  # Supported triggerType / actionType / conditionType values for automation rules.
  result = api_instance.get_automation_catalog
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_catalog: #{e}"
end
```

#### Using the get_automation_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationCatalogResponse>, Integer, Hash)> get_automation_catalog_with_http_info

```ruby
begin
  # Supported triggerType / actionType / conditionType values for automation rules.
  data, status_code, headers = api_instance.get_automation_catalog_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationCatalogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_catalog_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAutomationCatalogResponse**](GetAutomationCatalogResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_rule

> <GetAutomationRuleResponse> get_automation_rule(id)

Get a single automation rule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get a single automation rule.
  result = api_instance.get_automation_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule: #{e}"
end
```

#### Using the get_automation_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationRuleResponse>, Integer, Hash)> get_automation_rule_with_http_info(id)

```ruby
begin
  # Get a single automation rule.
  data, status_code, headers = api_instance.get_automation_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetAutomationRuleResponse**](GetAutomationRuleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_rule_export

> <GetAutomationRuleExportResponse> get_automation_rule_export

Export the user's full rule library as a portable recipe bundle.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new

begin
  # Export the user's full rule library as a portable recipe bundle.
  result = api_instance.get_automation_rule_export
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule_export: #{e}"
end
```

#### Using the get_automation_rule_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationRuleExportResponse>, Integer, Hash)> get_automation_rule_export_with_http_info

```ruby
begin
  # Export the user's full rule library as a portable recipe bundle.
  data, status_code, headers = api_instance.get_automation_rule_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationRuleExportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAutomationRuleExportResponse**](GetAutomationRuleExportResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_rule_export_by_id

> <GetAutomationRuleExportByIdResponse> get_automation_rule_export_by_id(id)

Export a single automation rule as a portable recipe.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Export a single automation rule as a portable recipe.
  result = api_instance.get_automation_rule_export_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule_export_by_id: #{e}"
end
```

#### Using the get_automation_rule_export_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationRuleExportByIdResponse>, Integer, Hash)> get_automation_rule_export_by_id_with_http_info(id)

```ruby
begin
  # Export a single automation rule as a portable recipe.
  data, status_code, headers = api_instance.get_automation_rule_export_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationRuleExportByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->get_automation_rule_export_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetAutomationRuleExportByIdResponse**](GetAutomationRuleExportByIdResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_rules

> <V1List> list_automation_rules

List automation rules.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new

begin
  # List automation rules.
  result = api_instance.list_automation_rules
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->list_automation_rules: #{e}"
end
```

#### Using the list_automation_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_automation_rules_with_http_info

```ruby
begin
  # List automation rules.
  data, status_code, headers = api_instance.list_automation_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->list_automation_rules_with_http_info: #{e}"
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


## list_automation_runs

> <V1List> list_automation_runs(opts)

Per-fire history for automation rules and workflow chain runs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
opts = {
  rule_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  chain_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  limit: 56 # Integer | 
}

begin
  # Per-fire history for automation rules and workflow chain runs.
  result = api_instance.list_automation_runs(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->list_automation_runs: #{e}"
end
```

#### Using the list_automation_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1List>, Integer, Hash)> list_automation_runs_with_http_info(opts)

```ruby
begin
  # Per-fire history for automation rules and workflow chain runs.
  data, status_code, headers = api_instance.list_automation_runs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1List>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->list_automation_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  | [optional] |
| **chain_id** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_automation_rule

> <UpdateAutomationRuleResponse> update_automation_rule(id)

Update an automation rule (full replace).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AutomationApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Update an automation rule (full replace).
  result = api_instance.update_automation_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->update_automation_rule: #{e}"
end
```

#### Using the update_automation_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAutomationRuleResponse>, Integer, Hash)> update_automation_rule_with_http_info(id)

```ruby
begin
  # Update an automation rule (full replace).
  data, status_code, headers = api_instance.update_automation_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAutomationRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AutomationApi->update_automation_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UpdateAutomationRuleResponse**](UpdateAutomationRuleResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

