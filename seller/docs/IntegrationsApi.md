# Crossly::IntegrationsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_crm_integration**](IntegrationsApi.md#create_crm_integration) | **POST** /v1/crm/integrations | Connect a custom webhook CRM or Mailchimp. HubSpot, Salesforce, Pipedrive and Zoho connect by signing in from the dashboard. |
| [**create_crm_integration_test**](IntegrationsApi.md#create_crm_integration_test) | **POST** /v1/crm/integrations/{id}/test | Send a sample buyer to the CRM and report whether it arrived, in one sanitized line. |
| [**create_design_tool_import**](IntegrationsApi.md#create_design_tool_import) | **POST** /v1/design-tools/import | Import Figma frames or Canva pages as images on the Crossly CDN, for the site editor, share cards, ad creatives, Branding drops or lookbooks. |
| [**create_email_provider**](IntegrationsApi.md#create_email_provider) | **POST** /v1/email-providers | Connect an email sender (16 providers). The key is encrypted; the event webhook URL is returned once. |
| [**create_email_provider_test**](IntegrationsApi.md#create_email_provider_test) | **POST** /v1/email-providers/{id}/test | Send a real test email through the sender; the result is one sanitized line. |
| [**create_email_provider_webhook_url**](IntegrationsApi.md#create_email_provider_webhook_url) | **POST** /v1/email-providers/{id}/webhook-url | Make a new event webhook URL for the sender (the old one stops working). It is returned once. |
| [**create_notification_integration**](IntegrationsApi.md#create_notification_integration) | **POST** /v1/notification-integrations | Deprecated alias: add a Slack/Discord/JSON webhook for automations. Use POST /api/v1/webhooks with kind. |
| [**create_notification_integration_test**](IntegrationsApi.md#create_notification_integration_test) | **POST** /v1/notification-integrations/{id}/test | Deprecated alias: send a test message to a destination. Use POST /api/v1/webhooks/{id}/test. |
| [**create_notify_action**](IntegrationsApi.md#create_notify_action) | **POST** /v1/notify/actions | Decide a notification action from its signed token (an offer, a reprice, a label buy, a workflow approval). Single use; the token must be your own. Errors: expired (410), already decided (409). |
| [**create_print_mail_credential**](IntegrationsApi.md#create_print_mail_credential) | **POST** /v1/print-mail/credentials | Save a Lob or PostGrid key (tested against the provider first), with the return address and your per-piece prices. |
| [**create_print_mail_credential_test**](IntegrationsApi.md#create_print_mail_credential_test) | **POST** /v1/print-mail/credentials/test | Check a Lob or PostGrid key with the provider before saving it. Saves nothing, mails nothing. |
| [**create_print_mail_credential_test_by_id**](IntegrationsApi.md#create_print_mail_credential_test_by_id) | **POST** /v1/print-mail/credentials/{id}/test | Re-check a saved Lob or PostGrid key; the result is one sanitized line. |
| [**delete_crm_integration**](IntegrationsApi.md#delete_crm_integration) | **DELETE** /v1/crm/integrations/{id} | Disconnect a CRM. Buyers stop flowing to it; its delivery log goes with it. |
| [**delete_design_tool**](IntegrationsApi.md#delete_design_tool) | **DELETE** /v1/design-tools/{tool} | Disconnect Figma or Canva for the store. |
| [**delete_email_provider**](IntegrationsApi.md#delete_email_provider) | **DELETE** /v1/email-providers/{id} | Disconnect an email sender. The next newest becomes the default. |
| [**delete_notification_integration**](IntegrationsApi.md#delete_notification_integration) | **DELETE** /v1/notification-integrations/{id} | Deprecated alias: delete a notification destination. Use DELETE /api/v1/webhooks/{id}. |
| [**delete_print_mail_credential**](IntegrationsApi.md#delete_print_mail_credential) | **DELETE** /v1/print-mail/credentials/{id} | Remove a print and mail account. |
| [**get_design_tool**](IntegrationsApi.md#get_design_tool) | **GET** /v1/design-tools/{tool} | Whether Figma or Canva is connected for the store, and as whom. Never the token. |
| [**get_integration**](IntegrationsApi.md#get_integration) | **GET** /v1/integrations | Every connected integration of the store (AI, CRM, email senders, design apps) as uniform rows. |
| [**get_print_mail_estimate**](IntegrationsApi.md#get_print_mail_estimate) | **GET** /v1/print-mail/estimate | Estimate a printed lookbook send: pieces × the seller&#39;s own per-piece price, per format the account&#39;s provider prints. |
| [**list_crm_integration_logs**](IntegrationsApi.md#list_crm_integration_logs) | **GET** /v1/crm/integrations/{id}/logs | A CRM connection&#39;s delivery log, newest first, paged; filter by status. |
| [**list_crm_integrations**](IntegrationsApi.md#list_crm_integrations) | **GET** /v1/crm/integrations | The store&#39;s CRM connections: provider, name, sync settings, health. Secrets are redacted. |
| [**list_notification_integrations**](IntegrationsApi.md#list_notification_integrations) | **GET** /v1/notification-integrations | Deprecated (one release; use GET /api/v1/webhooks): every webhook of the seller as an old-style notification destination (provider slack/discord/webhook, plus kind), and any destination not yet copied to webhooks. |
| [**list_print_mail_credentials**](IntegrationsApi.md#list_print_mail_credentials) | **GET** /v1/print-mail/credentials | The store&#39;s Lob and PostGrid accounts: mode, key as last 4, return address, per-piece prices. |
| [**update_crm_integration**](IntegrationsApi.md#update_crm_integration) | **PATCH** /v1/crm/integrations/{id} | Rename, pause, re-key or change what a CRM receives (sources, opted-in only, field mapping). Blank secrets keep the stored ones. |
| [**update_design_tool**](IntegrationsApi.md#update_design_tool) | **PUT** /v1/design-tools/{tool} | Connect Figma with a personal access token, or save your own Canva Connect app (client id + secret; finish the Canva sign-in in the dashboard). |
| [**update_email_provider**](IntegrationsApi.md#update_email_provider) | **PATCH** /v1/email-providers/{id} | Edit an email sender: label, from address, reply-to, default, settings. Blank secrets keep the stored ones. |
| [**update_notification_integration**](IntegrationsApi.md#update_notification_integration) | **PATCH** /v1/notification-integrations/{id} | Deprecated alias: edit a notification destination. Use PATCH /api/v1/webhooks/{id}. |
| [**update_print_mail_credential**](IntegrationsApi.md#update_print_mail_credential) | **PATCH** /v1/print-mail/credentials/{id} | Change a print and mail account: label, return address, per-piece prices (cents per format). |


## create_crm_integration

> <CreateCrmIntegrationResponse> create_crm_integration(opts)

Connect a custom webhook CRM or Mailchimp. HubSpot, Salesforce, Pipedrive and Zoho connect by signing in from the dashboard.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
opts = {
  create_crm_integration_request: Crossly::CreateCrmIntegrationRequest.new({provider: 'custom', name: 'name_example'}) # CreateCrmIntegrationRequest | 
}

begin
  # Connect a custom webhook CRM or Mailchimp. HubSpot, Salesforce, Pipedrive and Zoho connect by signing in from the dashboard.
  result = api_instance.create_crm_integration(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_crm_integration: #{e}"
end
```

#### Using the create_crm_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmIntegrationResponse>, Integer, Hash)> create_crm_integration_with_http_info(opts)

```ruby
begin
  # Connect a custom webhook CRM or Mailchimp. HubSpot, Salesforce, Pipedrive and Zoho connect by signing in from the dashboard.
  data, status_code, headers = api_instance.create_crm_integration_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_crm_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_crm_integration_request** | **CreateCrmIntegrationRequest** |  | [optional] |

### Return type

**CreateCrmIntegrationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_crm_integration_test

> <CreateCrmIntegrationTestResponse> create_crm_integration_test(id)

Send a sample buyer to the CRM and report whether it arrived, in one sanitized line.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Send a sample buyer to the CRM and report whether it arrived, in one sanitized line.
  result = api_instance.create_crm_integration_test(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_crm_integration_test: #{e}"
end
```

#### Using the create_crm_integration_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmIntegrationTestResponse>, Integer, Hash)> create_crm_integration_test_with_http_info(id)

```ruby
begin
  # Send a sample buyer to the CRM and report whether it arrived, in one sanitized line.
  data, status_code, headers = api_instance.create_crm_integration_test_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmIntegrationTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_crm_integration_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCrmIntegrationTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_design_tool_import

> <CreateDesignToolImportResponse> create_design_tool_import(opts)

Import Figma frames or Canva pages as images on the Crossly CDN, for the site editor, share cards, ad creatives, Branding drops or lookbooks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
opts = {
  create_design_tool_import_request: Crossly::CreateDesignToolImportRequest.new({tool: 'tool_example', use: 'ads'}) # CreateDesignToolImportRequest | 
}

begin
  # Import Figma frames or Canva pages as images on the Crossly CDN, for the site editor, share cards, ad creatives, Branding drops or lookbooks.
  result = api_instance.create_design_tool_import(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_design_tool_import: #{e}"
end
```

#### Using the create_design_tool_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDesignToolImportResponse>, Integer, Hash)> create_design_tool_import_with_http_info(opts)

```ruby
begin
  # Import Figma frames or Canva pages as images on the Crossly CDN, for the site editor, share cards, ad creatives, Branding drops or lookbooks.
  data, status_code, headers = api_instance.create_design_tool_import_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDesignToolImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_design_tool_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_design_tool_import_request** | **CreateDesignToolImportRequest** |  | [optional] |

### Return type

**CreateDesignToolImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_provider

> <CreateEmailProviderResponse> create_email_provider(opts)

Connect an email sender (16 providers). The key is encrypted; the event webhook URL is returned once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
opts = {
  create_email_provider_request: Crossly::CreateEmailProviderRequest.new({provider: 'provider_example', from_email: 'from_email_example'}) # CreateEmailProviderRequest | 
}

begin
  # Connect an email sender (16 providers). The key is encrypted; the event webhook URL is returned once.
  result = api_instance.create_email_provider(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider: #{e}"
end
```

#### Using the create_email_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailProviderResponse>, Integer, Hash)> create_email_provider_with_http_info(opts)

```ruby
begin
  # Connect an email sender (16 providers). The key is encrypted; the event webhook URL is returned once.
  data, status_code, headers = api_instance.create_email_provider_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailProviderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_provider_request** | **CreateEmailProviderRequest** |  | [optional] |

### Return type

**CreateEmailProviderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_provider_test

> <CreateEmailProviderTestResponse> create_email_provider_test(id, opts)

Send a real test email through the sender; the result is one sanitized line.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 
opts = {
  create_email_provider_test_request: Crossly::CreateEmailProviderTestRequest.new({to: 'to_example'}) # CreateEmailProviderTestRequest | 
}

begin
  # Send a real test email through the sender; the result is one sanitized line.
  result = api_instance.create_email_provider_test(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider_test: #{e}"
end
```

#### Using the create_email_provider_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailProviderTestResponse>, Integer, Hash)> create_email_provider_test_with_http_info(id, opts)

```ruby
begin
  # Send a real test email through the sender; the result is one sanitized line.
  data, status_code, headers = api_instance.create_email_provider_test_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailProviderTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_email_provider_test_request** | **CreateEmailProviderTestRequest** |  | [optional] |

### Return type

**CreateEmailProviderTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_provider_webhook_url

> <CreateEmailProviderWebhookUrlResponse> create_email_provider_webhook_url(id)

Make a new event webhook URL for the sender (the old one stops working). It is returned once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Make a new event webhook URL for the sender (the old one stops working). It is returned once.
  result = api_instance.create_email_provider_webhook_url(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider_webhook_url: #{e}"
end
```

#### Using the create_email_provider_webhook_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailProviderWebhookUrlResponse>, Integer, Hash)> create_email_provider_webhook_url_with_http_info(id)

```ruby
begin
  # Make a new event webhook URL for the sender (the old one stops working). It is returned once.
  data, status_code, headers = api_instance.create_email_provider_webhook_url_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailProviderWebhookUrlResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_email_provider_webhook_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateEmailProviderWebhookUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_notification_integration

> <CreateNotificationIntegrationResponse> create_notification_integration(create_notification_integration_request)

Deprecated alias: add a Slack/Discord/JSON webhook for automations. Use POST /api/v1/webhooks with kind.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
create_notification_integration_request = Crossly::CreateNotificationIntegrationRequest.new({provider: 'discord', name: 'name_example'}) # CreateNotificationIntegrationRequest | 

begin
  # Deprecated alias: add a Slack/Discord/JSON webhook for automations. Use POST /api/v1/webhooks with kind.
  result = api_instance.create_notification_integration(create_notification_integration_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration: #{e}"
end
```

#### Using the create_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotificationIntegrationResponse>, Integer, Hash)> create_notification_integration_with_http_info(create_notification_integration_request)

```ruby
begin
  # Deprecated alias: add a Slack/Discord/JSON webhook for automations. Use POST /api/v1/webhooks with kind.
  data, status_code, headers = api_instance.create_notification_integration_with_http_info(create_notification_integration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotificationIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_notification_integration_request** | **CreateNotificationIntegrationRequest** |  |  |

### Return type

**CreateNotificationIntegrationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_notification_integration_test

> <CreateNotificationIntegrationTestResponse> create_notification_integration_test(id)

Deprecated alias: send a test message to a destination. Use POST /api/v1/webhooks/{id}/test.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Deprecated alias: send a test message to a destination. Use POST /api/v1/webhooks/{id}/test.
  result = api_instance.create_notification_integration_test(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_test: #{e}"
end
```

#### Using the create_notification_integration_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotificationIntegrationTestResponse>, Integer, Hash)> create_notification_integration_test_with_http_info(id)

```ruby
begin
  # Deprecated alias: send a test message to a destination. Use POST /api/v1/webhooks/{id}/test.
  data, status_code, headers = api_instance.create_notification_integration_test_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotificationIntegrationTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notification_integration_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateNotificationIntegrationTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_notify_action

> <CreateNotifyActionResponse> create_notify_action(token_object)

Decide a notification action from its signed token (an offer, a reprice, a label buy, a workflow approval). Single use; the token must be your own. Errors: expired (410), already decided (409).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
token_object = Crossly::TokenObject.new({token: 'token_example'}) # TokenObject | 

begin
  # Decide a notification action from its signed token (an offer, a reprice, a label buy, a workflow approval). Single use; the token must be your own. Errors: expired (410), already decided (409).
  result = api_instance.create_notify_action(token_object)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notify_action: #{e}"
end
```

#### Using the create_notify_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateNotifyActionResponse>, Integer, Hash)> create_notify_action_with_http_info(token_object)

```ruby
begin
  # Decide a notification action from its signed token (an offer, a reprice, a label buy, a workflow approval). Single use; the token must be your own. Errors: expired (410), already decided (409).
  data, status_code, headers = api_instance.create_notify_action_with_http_info(token_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateNotifyActionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_notify_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_object** | **TokenObject** |  |  |

### Return type

**CreateNotifyActionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_print_mail_credential

> <CreatePrintMailCredentialResponse> create_print_mail_credential(opts)

Save a Lob or PostGrid key (tested against the provider first), with the return address and your per-piece prices.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
opts = {
  create_print_mail_credential_request: Crossly::CreatePrintMailCredentialRequest.new({provider: 'lob', api_key: 'api_key_example'}) # CreatePrintMailCredentialRequest | 
}

begin
  # Save a Lob or PostGrid key (tested against the provider first), with the return address and your per-piece prices.
  result = api_instance.create_print_mail_credential(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential: #{e}"
end
```

#### Using the create_print_mail_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailCredentialResponse>, Integer, Hash)> create_print_mail_credential_with_http_info(opts)

```ruby
begin
  # Save a Lob or PostGrid key (tested against the provider first), with the return address and your per-piece prices.
  data, status_code, headers = api_instance.create_print_mail_credential_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailCredentialResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_print_mail_credential_request** | **CreatePrintMailCredentialRequest** |  | [optional] |

### Return type

**CreatePrintMailCredentialResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_print_mail_credential_test

> <CreatePrintMailCredentialTestResponse> create_print_mail_credential_test(opts)

Check a Lob or PostGrid key with the provider before saving it. Saves nothing, mails nothing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
opts = {
  create_print_mail_credential_test_request: Crossly::CreatePrintMailCredentialTestRequest.new({provider: 'lob', api_key: 'api_key_example'}) # CreatePrintMailCredentialTestRequest | 
}

begin
  # Check a Lob or PostGrid key with the provider before saving it. Saves nothing, mails nothing.
  result = api_instance.create_print_mail_credential_test(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential_test: #{e}"
end
```

#### Using the create_print_mail_credential_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailCredentialTestResponse>, Integer, Hash)> create_print_mail_credential_test_with_http_info(opts)

```ruby
begin
  # Check a Lob or PostGrid key with the provider before saving it. Saves nothing, mails nothing.
  data, status_code, headers = api_instance.create_print_mail_credential_test_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailCredentialTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_print_mail_credential_test_request** | **CreatePrintMailCredentialTestRequest** |  | [optional] |

### Return type

**CreatePrintMailCredentialTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_print_mail_credential_test_by_id

> <CreatePrintMailCredentialTestByIdResponse> create_print_mail_credential_test_by_id(id)

Re-check a saved Lob or PostGrid key; the result is one sanitized line.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Re-check a saved Lob or PostGrid key; the result is one sanitized line.
  result = api_instance.create_print_mail_credential_test_by_id(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential_test_by_id: #{e}"
end
```

#### Using the create_print_mail_credential_test_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailCredentialTestByIdResponse>, Integer, Hash)> create_print_mail_credential_test_by_id_with_http_info(id)

```ruby
begin
  # Re-check a saved Lob or PostGrid key; the result is one sanitized line.
  data, status_code, headers = api_instance.create_print_mail_credential_test_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailCredentialTestByIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->create_print_mail_credential_test_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatePrintMailCredentialTestByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_crm_integration

> <UpdateGroupBuyResponse> delete_crm_integration(id)

Disconnect a CRM. Buyers stop flowing to it; its delivery log goes with it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Disconnect a CRM. Buyers stop flowing to it; its delivery log goes with it.
  result = api_instance.delete_crm_integration(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_crm_integration: #{e}"
end
```

#### Using the delete_crm_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_crm_integration_with_http_info(id)

```ruby
begin
  # Disconnect a CRM. Buyers stop flowing to it; its delivery log goes with it.
  data, status_code, headers = api_instance.delete_crm_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_crm_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_design_tool

> <UpdateGroupBuyResponse> delete_design_tool(tool)

Disconnect Figma or Canva for the store.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
tool = 'tool_example' # String | 

begin
  # Disconnect Figma or Canva for the store.
  result = api_instance.delete_design_tool(tool)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_design_tool: #{e}"
end
```

#### Using the delete_design_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_design_tool_with_http_info(tool)

```ruby
begin
  # Disconnect Figma or Canva for the store.
  data, status_code, headers = api_instance.delete_design_tool_with_http_info(tool)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_design_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_email_provider

> <UpdateGroupBuyResponse> delete_email_provider(id)

Disconnect an email sender. The next newest becomes the default.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Disconnect an email sender. The next newest becomes the default.
  result = api_instance.delete_email_provider(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_email_provider: #{e}"
end
```

#### Using the delete_email_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_email_provider_with_http_info(id)

```ruby
begin
  # Disconnect an email sender. The next newest becomes the default.
  data, status_code, headers = api_instance.delete_email_provider_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_email_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_notification_integration

> <OkResponse> delete_notification_integration(id)

Deprecated alias: delete a notification destination. Use DELETE /api/v1/webhooks/{id}.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Deprecated alias: delete a notification destination. Use DELETE /api/v1/webhooks/{id}.
  result = api_instance.delete_notification_integration(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_notification_integration: #{e}"
end
```

#### Using the delete_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_notification_integration_with_http_info(id)

```ruby
begin
  # Deprecated alias: delete a notification destination. Use DELETE /api/v1/webhooks/{id}.
  data, status_code, headers = api_instance.delete_notification_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_notification_integration_with_http_info: #{e}"
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


## delete_print_mail_credential

> <UpdateGroupBuyResponse> delete_print_mail_credential(id)

Remove a print and mail account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 

begin
  # Remove a print and mail account.
  result = api_instance.delete_print_mail_credential(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_print_mail_credential: #{e}"
end
```

#### Using the delete_print_mail_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_print_mail_credential_with_http_info(id)

```ruby
begin
  # Remove a print and mail account.
  data, status_code, headers = api_instance.delete_print_mail_credential_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->delete_print_mail_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_design_tool

> <GetDesignToolResponse> get_design_tool(tool)

Whether Figma or Canva is connected for the store, and as whom. Never the token.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
tool = 'tool_example' # String | 

begin
  # Whether Figma or Canva is connected for the store, and as whom. Never the token.
  result = api_instance.get_design_tool(tool)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_design_tool: #{e}"
end
```

#### Using the get_design_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDesignToolResponse>, Integer, Hash)> get_design_tool_with_http_info(tool)

```ruby
begin
  # Whether Figma or Canva is connected for the store, and as whom. Never the token.
  data, status_code, headers = api_instance.get_design_tool_with_http_info(tool)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDesignToolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_design_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool** | **String** |  |  |

### Return type

**GetDesignToolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration

> <GetIntegrationResponse> get_integration

Every connected integration of the store (AI, CRM, email senders, design apps) as uniform rows.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # Every connected integration of the store (AI, CRM, email senders, design apps) as uniform rows.
  result = api_instance.get_integration
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_integration: #{e}"
end
```

#### Using the get_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntegrationResponse>, Integer, Hash)> get_integration_with_http_info

```ruby
begin
  # Every connected integration of the store (AI, CRM, email senders, design apps) as uniform rows.
  data, status_code, headers = api_instance.get_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_integration_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetIntegrationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_print_mail_estimate

> <GetPrintMailEstimateResponse> get_print_mail_estimate(lookbook_id, count, opts)

Estimate a printed lookbook send: pieces × the seller's own per-piece price, per format the account's provider prints.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
lookbook_id = 'lookbook_id_example' # String | 
count = 8.14 # Float | 
opts = {
  credential_id: 'credential_id_example', # String | 
  format: 'postcard_4x6' # String | 
}

begin
  # Estimate a printed lookbook send: pieces × the seller's own per-piece price, per format the account's provider prints.
  result = api_instance.get_print_mail_estimate(lookbook_id, count, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_print_mail_estimate: #{e}"
end
```

#### Using the get_print_mail_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPrintMailEstimateResponse>, Integer, Hash)> get_print_mail_estimate_with_http_info(lookbook_id, count, opts)

```ruby
begin
  # Estimate a printed lookbook send: pieces × the seller's own per-piece price, per format the account's provider prints.
  data, status_code, headers = api_instance.get_print_mail_estimate_with_http_info(lookbook_id, count, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPrintMailEstimateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->get_print_mail_estimate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lookbook_id** | **String** |  |  |
| **count** | **Float** |  |  |
| **credential_id** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |

### Return type

**GetPrintMailEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_crm_integration_logs

> <ListCrmIntegrationLogsResponse> list_crm_integration_logs(id, opts)

A CRM connection's delivery log, newest first, paged; filter by status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 
opts = {
  page: 8.14, # Float | 
  page_size: 8.14, # Float | 
  status: 'pending' # String | 
}

begin
  # A CRM connection's delivery log, newest first, paged; filter by status.
  result = api_instance.list_crm_integration_logs(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_crm_integration_logs: #{e}"
end
```

#### Using the list_crm_integration_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCrmIntegrationLogsResponse>, Integer, Hash)> list_crm_integration_logs_with_http_info(id, opts)

```ruby
begin
  # A CRM connection's delivery log, newest first, paged; filter by status.
  data, status_code, headers = api_instance.list_crm_integration_logs_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCrmIntegrationLogsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_crm_integration_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **page** | **Float** |  | [optional] |
| **page_size** | **Float** |  | [optional] |
| **status** | **String** |  | [optional] |

### Return type

**ListCrmIntegrationLogsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_crm_integrations

> <ListCrmIntegrationsResponse> list_crm_integrations

The store's CRM connections: provider, name, sync settings, health. Secrets are redacted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # The store's CRM connections: provider, name, sync settings, health. Secrets are redacted.
  result = api_instance.list_crm_integrations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_crm_integrations: #{e}"
end
```

#### Using the list_crm_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCrmIntegrationsResponse>, Integer, Hash)> list_crm_integrations_with_http_info

```ruby
begin
  # The store's CRM connections: provider, name, sync settings, health. Secrets are redacted.
  data, status_code, headers = api_instance.list_crm_integrations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCrmIntegrationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_crm_integrations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListCrmIntegrationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_notification_integrations

> <ListNotificationIntegrationsResponse> list_notification_integrations

Deprecated (one release; use GET /api/v1/webhooks): every webhook of the seller as an old-style notification destination (provider slack/discord/webhook, plus kind), and any destination not yet copied to webhooks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # Deprecated (one release; use GET /api/v1/webhooks): every webhook of the seller as an old-style notification destination (provider slack/discord/webhook, plus kind), and any destination not yet copied to webhooks.
  result = api_instance.list_notification_integrations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_notification_integrations: #{e}"
end
```

#### Using the list_notification_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListNotificationIntegrationsResponse>, Integer, Hash)> list_notification_integrations_with_http_info

```ruby
begin
  # Deprecated (one release; use GET /api/v1/webhooks): every webhook of the seller as an old-style notification destination (provider slack/discord/webhook, plus kind), and any destination not yet copied to webhooks.
  data, status_code, headers = api_instance.list_notification_integrations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListNotificationIntegrationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_notification_integrations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListNotificationIntegrationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_print_mail_credentials

> <ListPrintMailCredentialsResponse> list_print_mail_credentials

The store's Lob and PostGrid accounts: mode, key as last 4, return address, per-piece prices.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new

begin
  # The store's Lob and PostGrid accounts: mode, key as last 4, return address, per-piece prices.
  result = api_instance.list_print_mail_credentials
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_print_mail_credentials: #{e}"
end
```

#### Using the list_print_mail_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPrintMailCredentialsResponse>, Integer, Hash)> list_print_mail_credentials_with_http_info

```ruby
begin
  # The store's Lob and PostGrid accounts: mode, key as last 4, return address, per-piece prices.
  data, status_code, headers = api_instance.list_print_mail_credentials_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPrintMailCredentialsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->list_print_mail_credentials_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPrintMailCredentialsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_crm_integration

> <CreateCrmIntegrationResponse> update_crm_integration(id, opts)

Rename, pause, re-key or change what a CRM receives (sources, opted-in only, field mapping). Blank secrets keep the stored ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 
opts = {
  update_crm_integration_request: Crossly::UpdateCrmIntegrationRequest.new # UpdateCrmIntegrationRequest | 
}

begin
  # Rename, pause, re-key or change what a CRM receives (sources, opted-in only, field mapping). Blank secrets keep the stored ones.
  result = api_instance.update_crm_integration(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_crm_integration: #{e}"
end
```

#### Using the update_crm_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmIntegrationResponse>, Integer, Hash)> update_crm_integration_with_http_info(id, opts)

```ruby
begin
  # Rename, pause, re-key or change what a CRM receives (sources, opted-in only, field mapping). Blank secrets keep the stored ones.
  data, status_code, headers = api_instance.update_crm_integration_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmIntegrationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_crm_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_crm_integration_request** | **UpdateCrmIntegrationRequest** |  | [optional] |

### Return type

**CreateCrmIntegrationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_design_tool

> <UpdateDesignToolResponse> update_design_tool(tool, opts)

Connect Figma with a personal access token, or save your own Canva Connect app (client id + secret; finish the Canva sign-in in the dashboard).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
tool = 'tool_example' # String | 
opts = {
  token_object: Crossly::TokenObject.new({token: 'token_example'}) # TokenObject | 
}

begin
  # Connect Figma with a personal access token, or save your own Canva Connect app (client id + secret; finish the Canva sign-in in the dashboard).
  result = api_instance.update_design_tool(tool, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_design_tool: #{e}"
end
```

#### Using the update_design_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDesignToolResponse>, Integer, Hash)> update_design_tool_with_http_info(tool, opts)

```ruby
begin
  # Connect Figma with a personal access token, or save your own Canva Connect app (client id + secret; finish the Canva sign-in in the dashboard).
  data, status_code, headers = api_instance.update_design_tool_with_http_info(tool, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDesignToolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_design_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool** | **String** |  |  |
| **token_object** | **TokenObject** |  | [optional] |

### Return type

**UpdateDesignToolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_provider

> <UpdateEmailProviderResponse> update_email_provider(id, opts)

Edit an email sender: label, from address, reply-to, default, settings. Blank secrets keep the stored ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 
opts = {
  update_email_provider_request: Crossly::UpdateEmailProviderRequest.new # UpdateEmailProviderRequest | 
}

begin
  # Edit an email sender: label, from address, reply-to, default, settings. Blank secrets keep the stored ones.
  result = api_instance.update_email_provider(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_email_provider: #{e}"
end
```

#### Using the update_email_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateEmailProviderResponse>, Integer, Hash)> update_email_provider_with_http_info(id, opts)

```ruby
begin
  # Edit an email sender: label, from address, reply-to, default, settings. Blank secrets keep the stored ones.
  data, status_code, headers = api_instance.update_email_provider_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateEmailProviderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_email_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_email_provider_request** | **UpdateEmailProviderRequest** |  | [optional] |

### Return type

**UpdateEmailProviderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_notification_integration

> <OkResponse> update_notification_integration(id, update_notification_integration_request)

Deprecated alias: edit a notification destination. Use PATCH /api/v1/webhooks/{id}.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_notification_integration_request = Crossly::UpdateNotificationIntegrationRequest.new # UpdateNotificationIntegrationRequest | 

begin
  # Deprecated alias: edit a notification destination. Use PATCH /api/v1/webhooks/{id}.
  result = api_instance.update_notification_integration(id, update_notification_integration_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_notification_integration: #{e}"
end
```

#### Using the update_notification_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> update_notification_integration_with_http_info(id, update_notification_integration_request)

```ruby
begin
  # Deprecated alias: edit a notification destination. Use PATCH /api/v1/webhooks/{id}.
  data, status_code, headers = api_instance.update_notification_integration_with_http_info(id, update_notification_integration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_notification_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_notification_integration_request** | **UpdateNotificationIntegrationRequest** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_print_mail_credential

> <CreatePrintMailCredentialResponse> update_print_mail_credential(id, opts)

Change a print and mail account: label, return address, per-piece prices (cents per format).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::IntegrationsApi.new
id = 'id_example' # String | 
opts = {
  update_print_mail_credential_request: Crossly::UpdatePrintMailCredentialRequest.new # UpdatePrintMailCredentialRequest | 
}

begin
  # Change a print and mail account: label, return address, per-piece prices (cents per format).
  result = api_instance.update_print_mail_credential(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_print_mail_credential: #{e}"
end
```

#### Using the update_print_mail_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailCredentialResponse>, Integer, Hash)> update_print_mail_credential_with_http_info(id, opts)

```ruby
begin
  # Change a print and mail account: label, return address, per-piece prices (cents per format).
  data, status_code, headers = api_instance.update_print_mail_credential_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailCredentialResponse>
rescue Crossly::ApiError => e
  puts "Error when calling IntegrationsApi->update_print_mail_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_print_mail_credential_request** | **UpdatePrintMailCredentialRequest** |  | [optional] |

### Return type

**CreatePrintMailCredentialResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

