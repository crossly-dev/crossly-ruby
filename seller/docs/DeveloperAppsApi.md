# Crossly::DeveloperAppsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_developer_app**](DeveloperAppsApi.md#create_developer_app) | **POST** /v1/developer/apps | Register an OAuth app for one of your stores (storefrontId; default: the store in X-Storefront-Id, else your default store). The store is paid what the app earns. clientSecret is returned ONCE. |
| [**create_developer_app_certification_submit**](DeveloperAppsApi.md#create_developer_app_certification_submit) | **POST** /v1/developer/apps/{appId}/certification/submit | Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence. |
| [**create_developer_app_certification_withdraw**](DeveloperAppsApi.md#create_developer_app_certification_withdraw) | **POST** /v1/developer/apps/{appId}/certification/withdraw | Take the application out of review to edit it. |
| [**create_developer_app_client_version**](DeveloperAppsApi.md#create_developer_app_client_version) | **POST** /v1/developer/apps/{appId}/client-versions | Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version. |
| [**create_developer_app_client_version_run**](DeveloperAppsApi.md#create_developer_app_client_version_run) | **POST** /v1/developer/apps/{appId}/client-versions/{versionId}/run | Start a new conformance run for a release whose run failed, expired or was aborted. |
| [**create_developer_app_conformance_run**](DeveloperAppsApi.md#create_developer_app_conformance_run) | **POST** /v1/developer/apps/{appId}/conformance-runs | Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction. |
| [**create_developer_app_conformance_run_abort**](DeveloperAppsApi.md#create_developer_app_conformance_run_abort) | **POST** /v1/developer/apps/{appId}/conformance-runs/{runId}/abort | Abort an open run. |
| [**create_developer_app_verification_check_domain**](DeveloperAppsApi.md#create_developer_app_verification_check_domain) | **POST** /v1/developer/apps/{appId}/verification/check-domain | Look up the DNS TXT record crossly-app-verification&#x3D;&lt;token&gt; on your domain (or _crossly.&lt;domain&gt;) now. |
| [**create_developer_app_verification_submit**](DeveloperAppsApi.md#create_developer_app_verification_submit) | **POST** /v1/developer/apps/{appId}/verification/submit | Send the verification to Crossly review (each scope is decided separately). |
| [**create_developer_app_verification_withdraw**](DeveloperAppsApi.md#create_developer_app_verification_withdraw) | **POST** /v1/developer/apps/{appId}/verification/withdraw | Take the verification out of review to edit it. |
| [**get_developer_app**](DeveloperAppsApi.md#get_developer_app) | **GET** /v1/developer/apps/{appId} | One of your OAuth apps, with the store that owns it. |
| [**get_developer_app_certification**](DeveloperAppsApi.md#get_developer_app_certification) | **GET** /v1/developer/apps/{appId}/certification | The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission. |
| [**get_developer_app_client_version**](DeveloperAppsApi.md#get_developer_app_client_version) | **GET** /v1/developer/apps/{appId}/client-versions/{versionId} | One client release and its re-certification. |
| [**get_developer_app_conformance_run**](DeveloperAppsApi.md#get_developer_app_conformance_run) | **GET** /v1/developer/apps/{appId}/conformance-runs/{runId} | A run&#39;s step, instruction and every check with its verdict. |
| [**get_developer_app_health**](DeveloperAppsApi.md#get_developer_app_health) | **GET** /v1/developer/apps/{appId}/health | Your app&#39;s API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint&#39;s OAuth errors by code (e.g. invalid_grant) with the latest one. |
| [**get_developer_app_profile**](DeveloperAppsApi.md#get_developer_app_profile) | **GET** /v1/developer/apps/{appId}/profile | Your app&#39;s public directory profile: every editable field, the listing status, what still needs review, and &#x60;preview&#x60; — the profile exactly as /seller-apps or /buyer-apps will show it. |
| [**get_developer_app_review**](DeveloperAppsApi.md#get_developer_app_review) | **GET** /v1/developer/apps/{appId}/review | Your app&#39;s Crossly Carnival client certification, verification and review history in one read. |
| [**get_developer_app_verification**](DeveloperAppsApi.md#get_developer_app_verification) | **GET** /v1/developer/apps/{appId}/verification | The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions. |
| [**list_developer_app_client_versions**](DeveloperAppsApi.md#list_developer_app_client_versions) | **GET** /v1/developer/apps/{appId}/client-versions | Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks. |
| [**list_developer_app_conformance_runs**](DeveloperAppsApi.md#list_developer_app_conformance_runs) | **GET** /v1/developer/apps/{appId}/conformance-runs | Your app&#39;s conformance runs, newest first. |
| [**list_developer_apps**](DeveloperAppsApi.md#list_developer_apps) | **GET** /v1/developer/apps | Your stores&#39; OAuth apps (and any of yours still waiting for a store): filter by storefrontId, status or q; page with page + pageSize. meta.stores lists the stores you may register apps for. |
| [**update_developer_app**](DeveloperAppsApi.md#update_developer_app) | **PATCH** /v1/developer/apps/{appId} | Edit an app&#39;s name, redirect URIs, scopes and revenue share. Existing installs keep the terms they agreed to. |
| [**update_developer_app_certification**](DeveloperAppsApi.md#update_developer_app_certification) | **PUT** /v1/developer/apps/{appId}/certification | Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run. |
| [**update_developer_app_listing**](DeveloperAppsApi.md#update_developer_app_listing) | **PUT** /v1/developer/apps/{appId}/listing | Turn \&quot;Listed publicly\&quot; on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately. |
| [**update_developer_app_profile**](DeveloperAppsApi.md#update_developer_app_profile) | **PATCH** /v1/developer/apps/{appId}/profile | Edit your app&#39;s directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly&#39;s CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review. |
| [**update_developer_app_store**](DeveloperAppsApi.md#update_developer_app_store) | **PUT** /v1/developer/apps/{appId}/store | Choose (or change) the store that owns an app: a store of the same business. Its unpaid earnings move with it; client id, secret, installs and webhooks don&#39;t change. |
| [**update_developer_app_verification**](DeveloperAppsApi.md#update_developer_app_verification) | **PUT** /v1/developer/apps/{appId}/verification | Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo. |


## create_developer_app

> <CreateDeveloperAppResponse> create_developer_app

Register an OAuth app for one of your stores (storefrontId; default: the store in X-Storefront-Id, else your default store). The store is paid what the app earns. clientSecret is returned ONCE.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new

begin
  # Register an OAuth app for one of your stores (storefrontId; default: the store in X-Storefront-Id, else your default store). The store is paid what the app earns. clientSecret is returned ONCE.
  result = api_instance.create_developer_app
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app: #{e}"
end
```

#### Using the create_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDeveloperAppResponse>, Integer, Hash)> create_developer_app_with_http_info

```ruby
begin
  # Register an OAuth app for one of your stores (storefrontId; default: the store in X-Storefront-Id, else your default store). The store is paid what the app earns. clientSecret is returned ONCE.
  data, status_code, headers = api_instance.create_developer_app_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDeveloperAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateDeveloperAppResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_certification_submit

> <DeveloperAppCertificationResponse> create_developer_app_certification_submit(app_id)

Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.
  result = api_instance.create_developer_app_certification_submit(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_certification_submit: #{e}"
end
```

#### Using the create_developer_app_certification_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppCertificationResponse>, Integer, Hash)> create_developer_app_certification_submit_with_http_info(app_id)

```ruby
begin
  # Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.
  data, status_code, headers = api_instance.create_developer_app_certification_submit_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppCertificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_certification_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_certification_withdraw

> <DeveloperAppCertificationResponse> create_developer_app_certification_withdraw(app_id)

Take the application out of review to edit it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Take the application out of review to edit it.
  result = api_instance.create_developer_app_certification_withdraw(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_certification_withdraw: #{e}"
end
```

#### Using the create_developer_app_certification_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppCertificationResponse>, Integer, Hash)> create_developer_app_certification_withdraw_with_http_info(app_id)

```ruby
begin
  # Take the application out of review to edit it.
  data, status_code, headers = api_instance.create_developer_app_certification_withdraw_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppCertificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_certification_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_client_version

> <CreateDeveloperAppClientVersionResponse> create_developer_app_client_version(app_id)

Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.
  result = api_instance.create_developer_app_client_version(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_client_version: #{e}"
end
```

#### Using the create_developer_app_client_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDeveloperAppClientVersionResponse>, Integer, Hash)> create_developer_app_client_version_with_http_info(app_id)

```ruby
begin
  # Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.
  data, status_code, headers = api_instance.create_developer_app_client_version_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDeveloperAppClientVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_client_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**CreateDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_client_version_run

> <CreateDeveloperAppClientVersionResponse> create_developer_app_client_version_run(app_id, version_id)

Start a new conformance run for a release whose run failed, expired or was aborted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 
version_id = 'version_id_example' # String | 

begin
  # Start a new conformance run for a release whose run failed, expired or was aborted.
  result = api_instance.create_developer_app_client_version_run(app_id, version_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_client_version_run: #{e}"
end
```

#### Using the create_developer_app_client_version_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDeveloperAppClientVersionResponse>, Integer, Hash)> create_developer_app_client_version_run_with_http_info(app_id, version_id)

```ruby
begin
  # Start a new conformance run for a release whose run failed, expired or was aborted.
  data, status_code, headers = api_instance.create_developer_app_client_version_run_with_http_info(app_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDeveloperAppClientVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_client_version_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **version_id** | **String** |  |  |

### Return type

**CreateDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_conformance_run

> <GetDeveloperAppConformanceRunResponse> create_developer_app_conformance_run(app_id)

Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.
  result = api_instance.create_developer_app_conformance_run(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_conformance_run: #{e}"
end
```

#### Using the create_developer_app_conformance_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppConformanceRunResponse>, Integer, Hash)> create_developer_app_conformance_run_with_http_info(app_id)

```ruby
begin
  # Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.
  data, status_code, headers = api_instance.create_developer_app_conformance_run_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppConformanceRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_conformance_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppConformanceRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_conformance_run_abort

> <CreateDeveloperAppConformanceRunAbortResponse> create_developer_app_conformance_run_abort(app_id, run_id)

Abort an open run.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 
run_id = 'run_id_example' # String | 

begin
  # Abort an open run.
  result = api_instance.create_developer_app_conformance_run_abort(app_id, run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_conformance_run_abort: #{e}"
end
```

#### Using the create_developer_app_conformance_run_abort_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDeveloperAppConformanceRunAbortResponse>, Integer, Hash)> create_developer_app_conformance_run_abort_with_http_info(app_id, run_id)

```ruby
begin
  # Abort an open run.
  data, status_code, headers = api_instance.create_developer_app_conformance_run_abort_with_http_info(app_id, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDeveloperAppConformanceRunAbortResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_conformance_run_abort_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **run_id** | **String** |  |  |

### Return type

**CreateDeveloperAppConformanceRunAbortResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_verification_check_domain

> <DeveloperAppVerificationResponse> create_developer_app_verification_check_domain(app_id)

Look up the DNS TXT record crossly-app-verification=<token> on your domain (or _crossly.<domain>) now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Look up the DNS TXT record crossly-app-verification=<token> on your domain (or _crossly.<domain>) now.
  result = api_instance.create_developer_app_verification_check_domain(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_check_domain: #{e}"
end
```

#### Using the create_developer_app_verification_check_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppVerificationResponse>, Integer, Hash)> create_developer_app_verification_check_domain_with_http_info(app_id)

```ruby
begin
  # Look up the DNS TXT record crossly-app-verification=<token> on your domain (or _crossly.<domain>) now.
  data, status_code, headers = api_instance.create_developer_app_verification_check_domain_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_check_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_verification_submit

> <DeveloperAppVerificationResponse> create_developer_app_verification_submit(app_id)

Send the verification to Crossly review (each scope is decided separately).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Send the verification to Crossly review (each scope is decided separately).
  result = api_instance.create_developer_app_verification_submit(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_submit: #{e}"
end
```

#### Using the create_developer_app_verification_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppVerificationResponse>, Integer, Hash)> create_developer_app_verification_submit_with_http_info(app_id)

```ruby
begin
  # Send the verification to Crossly review (each scope is decided separately).
  data, status_code, headers = api_instance.create_developer_app_verification_submit_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_developer_app_verification_withdraw

> <DeveloperAppVerificationResponse> create_developer_app_verification_withdraw(app_id)

Take the verification out of review to edit it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Take the verification out of review to edit it.
  result = api_instance.create_developer_app_verification_withdraw(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_withdraw: #{e}"
end
```

#### Using the create_developer_app_verification_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppVerificationResponse>, Integer, Hash)> create_developer_app_verification_withdraw_with_http_info(app_id)

```ruby
begin
  # Take the verification out of review to edit it.
  data, status_code, headers = api_instance.create_developer_app_verification_withdraw_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_verification_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app

> <GetDeveloperAppResponse> get_developer_app(app_id)

One of your OAuth apps, with the store that owns it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One of your OAuth apps, with the store that owns it.
  result = api_instance.get_developer_app(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app: #{e}"
end
```

#### Using the get_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppResponse>, Integer, Hash)> get_developer_app_with_http_info(app_id)

```ruby
begin
  # One of your OAuth apps, with the store that owns it.
  data, status_code, headers = api_instance.get_developer_app_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_certification

> <GetDeveloperAppCertificationResponse> get_developer_app_certification(app_id)

The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.
  result = api_instance.get_developer_app_certification(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_certification: #{e}"
end
```

#### Using the get_developer_app_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppCertificationResponse>, Integer, Hash)> get_developer_app_certification_with_http_info(app_id)

```ruby
begin
  # The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.
  data, status_code, headers = api_instance.get_developer_app_certification_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppCertificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_client_version

> <GetDeveloperAppClientVersionResponse> get_developer_app_client_version(app_id, version_id)

One client release and its re-certification.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 
version_id = 'version_id_example' # String | 

begin
  # One client release and its re-certification.
  result = api_instance.get_developer_app_client_version(app_id, version_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_client_version: #{e}"
end
```

#### Using the get_developer_app_client_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppClientVersionResponse>, Integer, Hash)> get_developer_app_client_version_with_http_info(app_id, version_id)

```ruby
begin
  # One client release and its re-certification.
  data, status_code, headers = api_instance.get_developer_app_client_version_with_http_info(app_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppClientVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_client_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **version_id** | **String** |  |  |

### Return type

**GetDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_conformance_run

> <GetDeveloperAppConformanceRunResponse> get_developer_app_conformance_run(app_id, run_id)

A run's step, instruction and every check with its verdict.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 
run_id = 'run_id_example' # String | 

begin
  # A run's step, instruction and every check with its verdict.
  result = api_instance.get_developer_app_conformance_run(app_id, run_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_conformance_run: #{e}"
end
```

#### Using the get_developer_app_conformance_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppConformanceRunResponse>, Integer, Hash)> get_developer_app_conformance_run_with_http_info(app_id, run_id)

```ruby
begin
  # A run's step, instruction and every check with its verdict.
  data, status_code, headers = api_instance.get_developer_app_conformance_run_with_http_info(app_id, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppConformanceRunResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_conformance_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **run_id** | **String** |  |  |

### Return type

**GetDeveloperAppConformanceRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_health

> <GetDeveloperAppHealthResponse> get_developer_app_health(app_id)

Your app's API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint's OAuth errors by code (e.g. invalid_grant) with the latest one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Your app's API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint's OAuth errors by code (e.g. invalid_grant) with the latest one.
  result = api_instance.get_developer_app_health(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_health: #{e}"
end
```

#### Using the get_developer_app_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppHealthResponse>, Integer, Hash)> get_developer_app_health_with_http_info(app_id)

```ruby
begin
  # Your app's API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint's OAuth errors by code (e.g. invalid_grant) with the latest one.
  data, status_code, headers = api_instance.get_developer_app_health_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppHealthResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_health_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppHealthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_profile

> <GetDeveloperAppProfileResponse> get_developer_app_profile(app_id)

Your app's public directory profile: every editable field, the listing status, what still needs review, and `preview` — the profile exactly as /seller-apps or /buyer-apps will show it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Your app's public directory profile: every editable field, the listing status, what still needs review, and `preview` — the profile exactly as /seller-apps or /buyer-apps will show it.
  result = api_instance.get_developer_app_profile(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_profile: #{e}"
end
```

#### Using the get_developer_app_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppProfileResponse>, Integer, Hash)> get_developer_app_profile_with_http_info(app_id)

```ruby
begin
  # Your app's public directory profile: every editable field, the listing status, what still needs review, and `preview` — the profile exactly as /seller-apps or /buyer-apps will show it.
  data, status_code, headers = api_instance.get_developer_app_profile_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_review

> <GetDeveloperAppReviewResponse> get_developer_app_review(app_id)

Your app's Crossly Carnival client certification, verification and review history in one read.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Your app's Crossly Carnival client certification, verification and review history in one read.
  result = api_instance.get_developer_app_review(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_review: #{e}"
end
```

#### Using the get_developer_app_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppReviewResponse>, Integer, Hash)> get_developer_app_review_with_http_info(app_id)

```ruby
begin
  # Your app's Crossly Carnival client certification, verification and review history in one read.
  data, status_code, headers = api_instance.get_developer_app_review_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppReviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_verification

> <GetDeveloperAppVerificationResponse> get_developer_app_verification(app_id)

The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.
  result = api_instance.get_developer_app_verification(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_verification: #{e}"
end
```

#### Using the get_developer_app_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppVerificationResponse>, Integer, Hash)> get_developer_app_verification_with_http_info(app_id)

```ruby
begin
  # The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.
  data, status_code, headers = api_instance.get_developer_app_verification_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**GetDeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_developer_app_client_versions

> <ListDeveloperAppClientVersionsResponse> list_developer_app_client_versions(app_id)

Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.
  result = api_instance.list_developer_app_client_versions(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_app_client_versions: #{e}"
end
```

#### Using the list_developer_app_client_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeveloperAppClientVersionsResponse>, Integer, Hash)> list_developer_app_client_versions_with_http_info(app_id)

```ruby
begin
  # Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.
  data, status_code, headers = api_instance.list_developer_app_client_versions_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeveloperAppClientVersionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_app_client_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**ListDeveloperAppClientVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_developer_app_conformance_runs

> <ListDeveloperAppConformanceRunsResponse> list_developer_app_conformance_runs(app_id)

Your app's conformance runs, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Your app's conformance runs, newest first.
  result = api_instance.list_developer_app_conformance_runs(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_app_conformance_runs: #{e}"
end
```

#### Using the list_developer_app_conformance_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeveloperAppConformanceRunsResponse>, Integer, Hash)> list_developer_app_conformance_runs_with_http_info(app_id)

```ruby
begin
  # Your app's conformance runs, newest first.
  data, status_code, headers = api_instance.list_developer_app_conformance_runs_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeveloperAppConformanceRunsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_app_conformance_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**ListDeveloperAppConformanceRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_developer_apps

> <ListDeveloperAppsResponse> list_developer_apps(opts)

Your stores' OAuth apps (and any of yours still waiting for a store): filter by storefrontId, status or q; page with page + pageSize. meta.stores lists the stores you may register apps for.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
opts = {
  storefront_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  q: 'q_example', # String | 
  status: 'live', # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  # Your stores' OAuth apps (and any of yours still waiting for a store): filter by storefrontId, status or q; page with page + pageSize. meta.stores lists the stores you may register apps for.
  result = api_instance.list_developer_apps(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_apps: #{e}"
end
```

#### Using the list_developer_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeveloperAppsResponse>, Integer, Hash)> list_developer_apps_with_http_info(opts)

```ruby
begin
  # Your stores' OAuth apps (and any of yours still waiting for a store): filter by storefrontId, status or q; page with page + pageSize. meta.stores lists the stores you may register apps for.
  data, status_code, headers = api_instance.list_developer_apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeveloperAppsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->list_developer_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storefront_id** | **String** |  | [optional] |
| **q** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |

### Return type

**ListDeveloperAppsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_developer_app

> <UpdateDeveloperAppResponse> update_developer_app(app_id)

Edit an app's name, redirect URIs, scopes and revenue share. Existing installs keep the terms they agreed to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Edit an app's name, redirect URIs, scopes and revenue share. Existing installs keep the terms they agreed to.
  result = api_instance.update_developer_app(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app: #{e}"
end
```

#### Using the update_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDeveloperAppResponse>, Integer, Hash)> update_developer_app_with_http_info(app_id)

```ruby
begin
  # Edit an app's name, redirect URIs, scopes and revenue share. Existing installs keep the terms they agreed to.
  data, status_code, headers = api_instance.update_developer_app_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDeveloperAppResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**UpdateDeveloperAppResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_developer_app_certification

> <DeveloperAppCertificationResponse> update_developer_app_certification(app_id)

Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.
  result = api_instance.update_developer_app_certification(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_certification: #{e}"
end
```

#### Using the update_developer_app_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppCertificationResponse>, Integer, Hash)> update_developer_app_certification_with_http_info(app_id)

```ruby
begin
  # Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.
  data, status_code, headers = api_instance.update_developer_app_certification_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppCertificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_developer_app_listing

> <UpdateDeveloperAppListingResponse> update_developer_app_listing(app_id, opts)

Turn \"Listed publicly\" on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 
opts = {
  update_developer_app_listing_request: Crossly::UpdateDeveloperAppListingRequest.new({listed: false}) # UpdateDeveloperAppListingRequest | 
}

begin
  # Turn \"Listed publicly\" on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.
  result = api_instance.update_developer_app_listing(app_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_listing: #{e}"
end
```

#### Using the update_developer_app_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDeveloperAppListingResponse>, Integer, Hash)> update_developer_app_listing_with_http_info(app_id, opts)

```ruby
begin
  # Turn \"Listed publicly\" on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.
  data, status_code, headers = api_instance.update_developer_app_listing_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDeveloperAppListingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **update_developer_app_listing_request** | **UpdateDeveloperAppListingRequest** |  | [optional] |

### Return type

**UpdateDeveloperAppListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_developer_app_profile

> <UpdateDeveloperAppProfileResponse> update_developer_app_profile(app_id)

Edit your app's directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly's CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Edit your app's directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly's CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.
  result = api_instance.update_developer_app_profile(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_profile: #{e}"
end
```

#### Using the update_developer_app_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDeveloperAppProfileResponse>, Integer, Hash)> update_developer_app_profile_with_http_info(app_id)

```ruby
begin
  # Edit your app's directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly's CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.
  data, status_code, headers = api_instance.update_developer_app_profile_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDeveloperAppProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**UpdateDeveloperAppProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_developer_app_store

> <UpdateDeveloperAppStoreResponse> update_developer_app_store(app_id, update_developer_app_store_request)

Choose (or change) the store that owns an app: a store of the same business. Its unpaid earnings move with it; client id, secret, installs and webhooks don't change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_developer_app_store_request = Crossly::UpdateDeveloperAppStoreRequest.new({storefront_id: 'storefront_id_example'}) # UpdateDeveloperAppStoreRequest | 

begin
  # Choose (or change) the store that owns an app: a store of the same business. Its unpaid earnings move with it; client id, secret, installs and webhooks don't change.
  result = api_instance.update_developer_app_store(app_id, update_developer_app_store_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_store: #{e}"
end
```

#### Using the update_developer_app_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDeveloperAppStoreResponse>, Integer, Hash)> update_developer_app_store_with_http_info(app_id, update_developer_app_store_request)

```ruby
begin
  # Choose (or change) the store that owns an app: a store of the same business. Its unpaid earnings move with it; client id, secret, installs and webhooks don't change.
  data, status_code, headers = api_instance.update_developer_app_store_with_http_info(app_id, update_developer_app_store_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDeveloperAppStoreResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **update_developer_app_store_request** | **UpdateDeveloperAppStoreRequest** |  |  |

### Return type

**UpdateDeveloperAppStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_developer_app_verification

> <DeveloperAppVerificationResponse> update_developer_app_verification(app_id)

Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DeveloperAppsApi.new
app_id = 'app_id_example' # String | 

begin
  # Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.
  result = api_instance.update_developer_app_verification(app_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_verification: #{e}"
end
```

#### Using the update_developer_app_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeveloperAppVerificationResponse>, Integer, Hash)> update_developer_app_verification_with_http_info(app_id)

```ruby
begin
  # Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.
  data, status_code, headers = api_instance.update_developer_app_verification_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeveloperAppVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DeveloperAppsApi->update_developer_app_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

