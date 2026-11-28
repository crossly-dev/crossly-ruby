# Crossly::AccountApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account_cancel_deletion**](AccountApi.md#create_account_cancel_deletion) | **POST** /v1/account/cancel-deletion | Cancel a pending account deletion. |
| [**create_account_identity_verification_start**](AccountApi.md#create_account_identity_verification_start) | **POST** /v1/account/identity-verification/start | Start the identity check (photo ID + selfie). Returns a Stripe-hosted URL the person completes. |
| [**create_account_logout_all**](AccountApi.md#create_account_logout_all) | **POST** /v1/account/logout-all | Revoke every browser auth session for this user. |
| [**create_account_reconfirm_deletion**](AccountApi.md#create_account_reconfirm_deletion) | **POST** /v1/account/reconfirm-deletion | Confirm again a deletion paused because the account was in use. |
| [**create_account_request_deletion**](AccountApi.md#create_account_request_deletion) | **POST** /v1/account/request-deletion | Schedule account deletion after a grace period. Requires confirmEmail. |
| [**create_auth_session_sign_out**](AccountApi.md#create_auth_session_sign_out) | **POST** /v1/auth/sessions/sign-out | Sign out several sessions at once. |
| [**delete_auth_session**](AccountApi.md#delete_auth_session) | **DELETE** /v1/auth/sessions | Revoke all active browser sessions. |
| [**delete_auth_session_by_session_id**](AccountApi.md#delete_auth_session_by_session_id) | **DELETE** /v1/auth/sessions/{sessionId} | Revoke a single browser session by id. |
| [**delete_connected_app**](AccountApi.md#delete_connected_app) | **DELETE** /v1/connected-apps/{grantId} | Disconnect a third-party app. Its tokens stop working immediately. |
| [**get_account_closure_checklist**](AccountApi.md#get_account_closure_checklist) | **GET** /v1/account/closure-checklist | What closing the account will and will not do, before you request it. |
| [**get_account_deletion_status**](AccountApi.md#get_account_deletion_status) | **GET** /v1/account/deletion-status | Get the currently-pending deletion request, if any. |
| [**get_account_identity_verification**](AccountApi.md#get_account_identity_verification) | **GET** /v1/account/identity-verification | Your identity verification: one status for the whole account, read by every feature that needs ID. |
| [**get_account_notification_preference**](AccountApi.md#get_account_notification_preference) | **GET** /v1/account/notification-preferences | Which notifications reach you, per event and channel (email, push, in-app). |
| [**get_account_sign_in_identity**](AccountApi.md#get_account_sign_in_identity) | **GET** /v1/account/sign-in-identity | How you sign in (Atlas): linked providers, password, passkeys, two-step. |
| [**get_me**](AccountApi.md#get_me) | **GET** /v1/me | Identity check — authenticated user + PAT scopes + account state. |
| [**get_membership**](AccountApi.md#get_membership) | **GET** /v1/membership | The caller&#39;s Crossly One membership status and benefits. |
| [**list_auth_sessions**](AccountApi.md#list_auth_sessions) | **GET** /v1/auth/sessions | List, search and filter your sign-in sessions. |
| [**list_connected_apps**](AccountApi.md#list_connected_apps) | **GET** /v1/connected-apps | List third-party OAuth apps with access to this account, each with its publisher (the store that owns it). Optional: q, scope, lastUsed (7d|30d|90d|never|stale), page, pageSize. |
| [**update_account_notification_preference**](AccountApi.md#update_account_notification_preference) | **PUT** /v1/account/notification-preferences | Turn notifications on or off per event and channel (email, push, in-app). |


## create_account_cancel_deletion

> <CreateAccountCancelDeletionResponse> create_account_cancel_deletion

Cancel a pending account deletion.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Cancel a pending account deletion.
  result = api_instance.create_account_cancel_deletion
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_cancel_deletion: #{e}"
end
```

#### Using the create_account_cancel_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountCancelDeletionResponse>, Integer, Hash)> create_account_cancel_deletion_with_http_info

```ruby
begin
  # Cancel a pending account deletion.
  data, status_code, headers = api_instance.create_account_cancel_deletion_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountCancelDeletionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_cancel_deletion_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateAccountCancelDeletionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_account_identity_verification_start

> <CreateWorldMatureVerifyResponse> create_account_identity_verification_start(create_account_identity_verification_start_request)

Start the identity check (photo ID + selfie). Returns a Stripe-hosted URL the person completes.

alreadyVerified:true when there is nothing to do. Nothing is verified until a person completes the link.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
create_account_identity_verification_start_request = Crossly::CreateAccountIdentityVerificationStartRequest.new # CreateAccountIdentityVerificationStartRequest | 

begin
  # Start the identity check (photo ID + selfie). Returns a Stripe-hosted URL the person completes.
  result = api_instance.create_account_identity_verification_start(create_account_identity_verification_start_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_identity_verification_start: #{e}"
end
```

#### Using the create_account_identity_verification_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMatureVerifyResponse>, Integer, Hash)> create_account_identity_verification_start_with_http_info(create_account_identity_verification_start_request)

```ruby
begin
  # Start the identity check (photo ID + selfie). Returns a Stripe-hosted URL the person completes.
  data, status_code, headers = api_instance.create_account_identity_verification_start_with_http_info(create_account_identity_verification_start_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMatureVerifyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_identity_verification_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_account_identity_verification_start_request** | **CreateAccountIdentityVerificationStartRequest** |  |  |

### Return type

**CreateWorldMatureVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account_logout_all

> <CreateAccountLogoutAllResponse> create_account_logout_all

Revoke every browser auth session for this user.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Revoke every browser auth session for this user.
  result = api_instance.create_account_logout_all
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_logout_all: #{e}"
end
```

#### Using the create_account_logout_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountLogoutAllResponse>, Integer, Hash)> create_account_logout_all_with_http_info

```ruby
begin
  # Revoke every browser auth session for this user.
  data, status_code, headers = api_instance.create_account_logout_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountLogoutAllResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_logout_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateAccountLogoutAllResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_account_reconfirm_deletion

> <CreateAccountReconfirmDeletionResponse> create_account_reconfirm_deletion(opts)

Confirm again a deletion paused because the account was in use.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
opts = {
  create_account_reconfirm_deletion_request: Crossly::CreateAccountReconfirmDeletionRequest.new # CreateAccountReconfirmDeletionRequest | 
}

begin
  # Confirm again a deletion paused because the account was in use.
  result = api_instance.create_account_reconfirm_deletion(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_reconfirm_deletion: #{e}"
end
```

#### Using the create_account_reconfirm_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountReconfirmDeletionResponse>, Integer, Hash)> create_account_reconfirm_deletion_with_http_info(opts)

```ruby
begin
  # Confirm again a deletion paused because the account was in use.
  data, status_code, headers = api_instance.create_account_reconfirm_deletion_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountReconfirmDeletionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_reconfirm_deletion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_account_reconfirm_deletion_request** | **CreateAccountReconfirmDeletionRequest** |  | [optional] |

### Return type

**CreateAccountReconfirmDeletionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account_request_deletion

> <CreateAccountRequestDeletionResponse> create_account_request_deletion(opts)

Schedule account deletion after a grace period. Requires confirmEmail.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
opts = {
  create_account_request_deletion_request: Crossly::CreateAccountRequestDeletionRequest.new # CreateAccountRequestDeletionRequest | 
}

begin
  # Schedule account deletion after a grace period. Requires confirmEmail.
  result = api_instance.create_account_request_deletion(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_request_deletion: #{e}"
end
```

#### Using the create_account_request_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccountRequestDeletionResponse>, Integer, Hash)> create_account_request_deletion_with_http_info(opts)

```ruby
begin
  # Schedule account deletion after a grace period. Requires confirmEmail.
  data, status_code, headers = api_instance.create_account_request_deletion_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccountRequestDeletionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_account_request_deletion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_account_request_deletion_request** | **CreateAccountRequestDeletionRequest** |  | [optional] |

### Return type

**CreateAccountRequestDeletionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_auth_session_sign_out

> <CreateAuthSessionSignOutResponse> create_auth_session_sign_out(create_auth_session_sign_out_request)

Sign out several sessions at once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
create_auth_session_sign_out_request = Crossly::CreateAuthSessionSignOutRequest.new({session_ids: ['session_ids_example']}) # CreateAuthSessionSignOutRequest | 

begin
  # Sign out several sessions at once.
  result = api_instance.create_auth_session_sign_out(create_auth_session_sign_out_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_auth_session_sign_out: #{e}"
end
```

#### Using the create_auth_session_sign_out_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAuthSessionSignOutResponse>, Integer, Hash)> create_auth_session_sign_out_with_http_info(create_auth_session_sign_out_request)

```ruby
begin
  # Sign out several sessions at once.
  data, status_code, headers = api_instance.create_auth_session_sign_out_with_http_info(create_auth_session_sign_out_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAuthSessionSignOutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->create_auth_session_sign_out_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_auth_session_sign_out_request** | **CreateAuthSessionSignOutRequest** |  |  |

### Return type

**CreateAuthSessionSignOutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_auth_session

> <DeleteAuthSessionResponse> delete_auth_session

Revoke all active browser sessions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Revoke all active browser sessions.
  result = api_instance.delete_auth_session
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session: #{e}"
end
```

#### Using the delete_auth_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAuthSessionResponse>, Integer, Hash)> delete_auth_session_with_http_info

```ruby
begin
  # Revoke all active browser sessions.
  data, status_code, headers = api_instance.delete_auth_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAuthSessionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**DeleteAuthSessionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_auth_session_by_session_id

> <SuccessResponse> delete_auth_session_by_session_id(session_id)

Revoke a single browser session by id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
session_id = 'session_id_example' # String | 

begin
  # Revoke a single browser session by id.
  result = api_instance.delete_auth_session_by_session_id(session_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_by_session_id: #{e}"
end
```

#### Using the delete_auth_session_by_session_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> delete_auth_session_by_session_id_with_http_info(session_id)

```ruby
begin
  # Revoke a single browser session by id.
  data, status_code, headers = api_instance.delete_auth_session_by_session_id_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_auth_session_by_session_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** |  |  |

### Return type

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_connected_app

> <OkResponse> delete_connected_app(grant_id)

Disconnect a third-party app. Its tokens stop working immediately.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
grant_id = 'grant_id_example' # String | 

begin
  # Disconnect a third-party app. Its tokens stop working immediately.
  result = api_instance.delete_connected_app(grant_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_connected_app: #{e}"
end
```

#### Using the delete_connected_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_connected_app_with_http_info(grant_id)

```ruby
begin
  # Disconnect a third-party app. Its tokens stop working immediately.
  data, status_code, headers = api_instance.delete_connected_app_with_http_info(grant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->delete_connected_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_closure_checklist

> <GetAccountClosureChecklistResponse> get_account_closure_checklist

What closing the account will and will not do, before you request it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # What closing the account will and will not do, before you request it.
  result = api_instance.get_account_closure_checklist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_closure_checklist: #{e}"
end
```

#### Using the get_account_closure_checklist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountClosureChecklistResponse>, Integer, Hash)> get_account_closure_checklist_with_http_info

```ruby
begin
  # What closing the account will and will not do, before you request it.
  data, status_code, headers = api_instance.get_account_closure_checklist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountClosureChecklistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_closure_checklist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAccountClosureChecklistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_deletion_status

> <GetAccountDeletionStatusResponse> get_account_deletion_status

Get the currently-pending deletion request, if any.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Get the currently-pending deletion request, if any.
  result = api_instance.get_account_deletion_status
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_deletion_status: #{e}"
end
```

#### Using the get_account_deletion_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDeletionStatusResponse>, Integer, Hash)> get_account_deletion_status_with_http_info

```ruby
begin
  # Get the currently-pending deletion request, if any.
  data, status_code, headers = api_instance.get_account_deletion_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDeletionStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_deletion_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAccountDeletionStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_identity_verification

> <GetAccountIdentityVerificationResponse> get_account_identity_verification

Your identity verification: one status for the whole account, read by every feature that needs ID.

status is unverified, requires_input, processing, verified or canceled. requires_input with a lastError { code, reason } is a failed try the person can redo on the same link (start returns it); processing is being reviewed; neither is a decline, only canceled is. attempts counts the failed tries. ageVerified passes the age-restricted checkout gate. message is the next step in words (null once verified).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Your identity verification: one status for the whole account, read by every feature that needs ID.
  result = api_instance.get_account_identity_verification
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_identity_verification: #{e}"
end
```

#### Using the get_account_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountIdentityVerificationResponse>, Integer, Hash)> get_account_identity_verification_with_http_info

```ruby
begin
  # Your identity verification: one status for the whole account, read by every feature that needs ID.
  data, status_code, headers = api_instance.get_account_identity_verification_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountIdentityVerificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_identity_verification_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAccountIdentityVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_notification_preference

> <GetAccountNotificationPreferenceResponse> get_account_notification_preference

Which notifications reach you, per event and channel (email, push, in-app).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Which notifications reach you, per event and channel (email, push, in-app).
  result = api_instance.get_account_notification_preference
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_notification_preference: #{e}"
end
```

#### Using the get_account_notification_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountNotificationPreferenceResponse>, Integer, Hash)> get_account_notification_preference_with_http_info

```ruby
begin
  # Which notifications reach you, per event and channel (email, push, in-app).
  data, status_code, headers = api_instance.get_account_notification_preference_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountNotificationPreferenceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_notification_preference_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAccountNotificationPreferenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_sign_in_identity

> <GetAccountSignInIdentityResponse> get_account_sign_in_identity

How you sign in (Atlas): linked providers, password, passkeys, two-step.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # How you sign in (Atlas): linked providers, password, passkeys, two-step.
  result = api_instance.get_account_sign_in_identity
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_sign_in_identity: #{e}"
end
```

#### Using the get_account_sign_in_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountSignInIdentityResponse>, Integer, Hash)> get_account_sign_in_identity_with_http_info

```ruby
begin
  # How you sign in (Atlas): linked providers, password, passkeys, two-step.
  data, status_code, headers = api_instance.get_account_sign_in_identity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountSignInIdentityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_account_sign_in_identity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetAccountSignInIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_me

> <GetMeResponse> get_me

Identity check — authenticated user + PAT scopes + account state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # Identity check — authenticated user + PAT scopes + account state.
  result = api_instance.get_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMeResponse>, Integer, Hash)> get_me_with_http_info

```ruby
begin
  # Identity check — authenticated user + PAT scopes + account state.
  data, status_code, headers = api_instance.get_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_membership

> <GetMembershipResponse> get_membership

The caller's Crossly One membership status and benefits.

Returns the active tier (or null), the period end, and the concrete benefit values for that tier. Benefits are the single source of truth shared with the web and mobile clients.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # The caller's Crossly One membership status and benefits.
  result = api_instance.get_membership
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_membership: #{e}"
end
```

#### Using the get_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMembershipResponse>, Integer, Hash)> get_membership_with_http_info

```ruby
begin
  # The caller's Crossly One membership status and benefits.
  data, status_code, headers = api_instance.get_membership_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMembershipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->get_membership_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetMembershipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_auth_sessions

> <ListAuthSessionsResponse> list_auth_sessions(opts)

List, search and filter your sign-in sessions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
opts = {
  q: 'q_example', # String | 
  status: 'active', # String | 
  device_type: 'all', # String | 
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # List, search and filter your sign-in sessions.
  result = api_instance.list_auth_sessions(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_auth_sessions: #{e}"
end
```

#### Using the list_auth_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAuthSessionsResponse>, Integer, Hash)> list_auth_sessions_with_http_info(opts)

```ruby
begin
  # List, search and filter your sign-in sessions.
  data, status_code, headers = api_instance.list_auth_sessions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAuthSessionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_auth_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **device_type** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListAuthSessionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connected_apps

> <ListConnectedAppsResponse> list_connected_apps

List third-party OAuth apps with access to this account, each with its publisher (the store that owns it). Optional: q, scope, lastUsed (7d|30d|90d|never|stale), page, pageSize.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new

begin
  # List third-party OAuth apps with access to this account, each with its publisher (the store that owns it). Optional: q, scope, lastUsed (7d|30d|90d|never|stale), page, pageSize.
  result = api_instance.list_connected_apps
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_connected_apps: #{e}"
end
```

#### Using the list_connected_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectedAppsResponse>, Integer, Hash)> list_connected_apps_with_http_info

```ruby
begin
  # List third-party OAuth apps with access to this account, each with its publisher (the store that owns it). Optional: q, scope, lastUsed (7d|30d|90d|never|stale), page, pageSize.
  data, status_code, headers = api_instance.list_connected_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectedAppsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->list_connected_apps_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListConnectedAppsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_notification_preference

> <GetAccountNotificationPreferenceResponse> update_account_notification_preference(update_account_notification_preference_request)

Turn notifications on or off per event and channel (email, push, in-app).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::AccountApi.new
update_account_notification_preference_request = Crossly::UpdateAccountNotificationPreferenceRequest.new({changes: [Crossly::UpdateAccountNotificationPreferenceRequestChanges.new({event_id: 'event_id_example', channel: 'email', on: false})]}) # UpdateAccountNotificationPreferenceRequest | 

begin
  # Turn notifications on or off per event and channel (email, push, in-app).
  result = api_instance.update_account_notification_preference(update_account_notification_preference_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->update_account_notification_preference: #{e}"
end
```

#### Using the update_account_notification_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountNotificationPreferenceResponse>, Integer, Hash)> update_account_notification_preference_with_http_info(update_account_notification_preference_request)

```ruby
begin
  # Turn notifications on or off per event and channel (email, push, in-app).
  data, status_code, headers = api_instance.update_account_notification_preference_with_http_info(update_account_notification_preference_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountNotificationPreferenceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling AccountApi->update_account_notification_preference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_notification_preference_request** | **UpdateAccountNotificationPreferenceRequest** |  |  |

### Return type

**GetAccountNotificationPreferenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

