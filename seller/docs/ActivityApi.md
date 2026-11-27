# Crossly::ActivityApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_action_log_export**](ActivityApi.md#create_action_log_export) | **POST** /v1/action-log/exports | Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses. |
| [**create_action_log_search_translate**](ActivityApi.md#create_action_log_search_translate) | **POST** /v1/action-log/search/translate | Turn a question in words (\&quot;failed delists on Mercari last week\&quot;) into an Activity Log search: pass the returned &#x60;q&#x60; to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code &#x60;not_enabled&#x60; means natural-language search is off for this account. |
| [**create_detected_event_event_confirm**](ActivityApi.md#create_detected_event_event_confirm) | **POST** /v1/detected-events/events/{id}/confirm | Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask&#39;s preselected ones. Returns the event. 409 ask_not_open when the event is not waiting. |
| [**create_detected_event_event_undo**](ActivityApi.md#create_detected_event_event_undo) | **POST** /v1/detected-events/events/{id}/undo | Undo what Crossly did for an event (canUndo true): every executed action&#39;s stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible. |
| [**create_detected_event_rule**](ActivityApi.md#create_detected_event_rule) | **POST** /v1/detected-events/rules | Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id. |
| [**create_detected_event_rule_place**](ActivityApi.md#create_detected_event_rule_place) | **POST** /v1/detected-events/rules/place | Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list. |
| [**create_detected_event_rule_reorder**](ActivityApi.md#create_detected_event_rule_reorder) | **POST** /v1/detected-events/rules/reorder | Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list. |
| [**create_detected_event_rule_reset_default**](ActivityApi.md#create_detected_event_rule_reset_default) | **POST** /v1/detected-events/rules/reset-defaults | Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list. |
| [**create_detected_event_simulate**](ActivityApi.md#create_detected_event_simulate) | **POST** /v1/detected-events/simulate | Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules &#x3D; an unsaved draft list. |
| [**create_detected_event_simulate_impact**](ActivityApi.md#create_detected_event_simulate_impact) | **POST** /v1/detected-events/simulate/impact | What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs. |
| [**create_email_event_confirm**](ActivityApi.md#create_email_event_confirm) | **POST** /v1/email-events/{id}/confirm | Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one. |
| [**create_email_event_dismiss**](ActivityApi.md#create_email_event_dismiss) | **POST** /v1/email-events/{id}/dismiss | Dismiss an email-detected event (\&quot;not a sale\&quot;): closes the card without acting. |
| [**create_event_policy_decision_confirm**](ActivityApi.md#create_event_policy_decision_confirm) | **POST** /v1/event-policies/decisions/{id}/confirm | Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card). |
| [**delete_detected_event_rule**](ActivityApi.md#delete_detected_event_rule) | **DELETE** /v1/detected-events/rules/{id} | Delete a detection rule. Deleting your edit of a default (its id, or default:&lt;key&gt;) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too. |
| [**delete_event_policy_rule**](ActivityApi.md#delete_event_policy_rule) | **DELETE** /v1/event-policies/rules/{id} | Delete a rule: its cell falls back to the next scope (platform → global → the built-in default). |
| [**get_action_log**](ActivityApi.md#get_action_log) | **GET** /v1/action-log/{id} | One Activity Log event by id, with &#x60;view&#x60; including its steps and, for bulk jobs, its children. |
| [**get_action_log_export**](ActivityApi.md#get_action_log_export) | **GET** /v1/action-log/exports/{exportId} | The state of one Activity Log export. |
| [**get_action_log_export_download**](ActivityApi.md#get_action_log_export_download) | **GET** /v1/action-log/exports/{exportId}/download | Download a finished Activity Log export (for 24 hours after it completes). |
| [**get_action_log_facet**](ActivityApi.md#get_action_log_facet) | **GET** /v1/action-log/facets | Filter options of the caller&#39;s Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes. |
| [**get_detected_event_event**](ActivityApi.md#get_detected_event_event) | **GET** /v1/detected-events/events/{id} | One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action&#39;s outcome and reversibility. |
| [**get_event_policy**](ActivityApi.md#get_event_policy) | **GET** /v1/event-policies | What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app &gt; platform &gt; global &gt; default). Pass platform (or appId) to see the matrix as that platform&#39;s (or app&#39;s) items see it. Also returns the rules, platforms and connected apps. |
| [**list_action_log**](ActivityApi.md#list_action_log) | **GET** /v1/action-log | List Activity Log events, newest first. Each event carries &#x60;view&#x60; (title, sentence, fields, failure advice, who did it) and typed &#x60;detail&#x60;. Page with &#x60;cursor&#x60;; &#x60;pagination.total&#x60; counts matches. |
| [**list_action_log_calls**](ActivityApi.md#list_action_log_calls) | **GET** /v1/action-log/{id}/calls | The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \&quot;what was sent / what went wrong\&quot;. The URL path, request/response bodies and persisted-query hash are never returned. |
| [**list_action_log_histogram**](ActivityApi.md#list_action_log_histogram) | **GET** /v1/action-log/histogram | Events per UTC day for the list filters (default: the last 30 days; at most 366). |
| [**list_detected_event_events**](ActivityApi.md#list_detected_event_events) | **GET** /v1/detected-events/events | Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time). |
| [**list_detected_event_rules**](ActivityApi.md#list_detected_event_rules) | **GET** /v1/detected-events/rules | The seller&#39;s detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller&#39;s own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:&lt;key&gt;; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings. |
| [**list_email_events**](ActivityApi.md#list_email_events) | **GET** /v1/email-events | List email-detected events waiting for the seller (status&#x3D;needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically. |
| [**list_event_policy_decisions**](ActivityApi.md#list_event_policy_decisions) | **GET** /v1/event-policies/decisions | The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome&#x3D;review: still waiting for the seller). Kept 90 days. |
| [**update_detected_event_rule**](ActivityApi.md#update_detected_event_rule) | **PUT** /v1/detected-events/rules/{id} | Replace a detection rule. An id default:&lt;key&gt; stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one). |
| [**update_event_policy_rule**](ActivityApi.md#update_event_policy_rule) | **PUT** /v1/event-policies/rules | Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue &#x3D; platform id) or app (scopeValue &#x3D; OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items. |


## create_action_log_export

> <GetActionLogExportResponse> create_action_log_export(create_action_log_export_request)

Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_action_log_export_request = Crossly::CreateActionLogExportRequest.new({format: 'csv'}) # CreateActionLogExportRequest | 

begin
  # Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.
  result = api_instance.create_action_log_export(create_action_log_export_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_action_log_export: #{e}"
end
```

#### Using the create_action_log_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogExportResponse>, Integer, Hash)> create_action_log_export_with_http_info(create_action_log_export_request)

```ruby
begin
  # Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.
  data, status_code, headers = api_instance.create_action_log_export_with_http_info(create_action_log_export_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogExportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_action_log_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_action_log_export_request** | **CreateActionLogExportRequest** |  |  |

### Return type

**GetActionLogExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_action_log_search_translate

> <CreateActionLogSearchTranslateResponse> create_action_log_search_translate(create_action_log_search_translate_request)

Turn a question in words (\"failed delists on Mercari last week\") into an Activity Log search: pass the returned `q` to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code `not_enabled` means natural-language search is off for this account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_action_log_search_translate_request = Crossly::CreateActionLogSearchTranslateRequest.new({text: 'text_example'}) # CreateActionLogSearchTranslateRequest | 

begin
  # Turn a question in words (\"failed delists on Mercari last week\") into an Activity Log search: pass the returned `q` to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code `not_enabled` means natural-language search is off for this account.
  result = api_instance.create_action_log_search_translate(create_action_log_search_translate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_action_log_search_translate: #{e}"
end
```

#### Using the create_action_log_search_translate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateActionLogSearchTranslateResponse>, Integer, Hash)> create_action_log_search_translate_with_http_info(create_action_log_search_translate_request)

```ruby
begin
  # Turn a question in words (\"failed delists on Mercari last week\") into an Activity Log search: pass the returned `q` to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code `not_enabled` means natural-language search is off for this account.
  data, status_code, headers = api_instance.create_action_log_search_translate_with_http_info(create_action_log_search_translate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateActionLogSearchTranslateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_action_log_search_translate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_action_log_search_translate_request** | **CreateActionLogSearchTranslateRequest** |  |  |

### Return type

**CreateActionLogSearchTranslateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_event_confirm

> <CreateDetectedEventEventUndoResponse> create_detected_event_event_confirm(id, create_detected_event_event_confirm_request)

Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask's preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_detected_event_event_confirm_request = Crossly::CreateDetectedEventEventConfirmRequest.new # CreateDetectedEventEventConfirmRequest | 

begin
  # Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask's preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.
  result = api_instance.create_detected_event_event_confirm(id, create_detected_event_event_confirm_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_event_confirm: #{e}"
end
```

#### Using the create_detected_event_event_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventEventUndoResponse>, Integer, Hash)> create_detected_event_event_confirm_with_http_info(id, create_detected_event_event_confirm_request)

```ruby
begin
  # Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask's preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.
  data, status_code, headers = api_instance.create_detected_event_event_confirm_with_http_info(id, create_detected_event_event_confirm_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventEventUndoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_event_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_detected_event_event_confirm_request** | **CreateDetectedEventEventConfirmRequest** |  |  |

### Return type

**CreateDetectedEventEventUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_event_undo

> <CreateDetectedEventEventUndoResponse> create_detected_event_event_undo(id)

Undo what Crossly did for an event (canUndo true): every executed action's stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Undo what Crossly did for an event (canUndo true): every executed action's stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.
  result = api_instance.create_detected_event_event_undo(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_event_undo: #{e}"
end
```

#### Using the create_detected_event_event_undo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventEventUndoResponse>, Integer, Hash)> create_detected_event_event_undo_with_http_info(id)

```ruby
begin
  # Undo what Crossly did for an event (canUndo true): every executed action's stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.
  data, status_code, headers = api_instance.create_detected_event_event_undo_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventEventUndoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_event_undo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateDetectedEventEventUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_detected_event_rule

> <CreateDetectedEventRuleResponse> create_detected_event_rule(create_detected_event_rule_request)

Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_rule_request = Crossly::CreateDetectedEventRuleRequest.new({name: 'name_example', filter: { key: 3.56}, _then: [{ key: 3.56}]}) # CreateDetectedEventRuleRequest | 

begin
  # Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.
  result = api_instance.create_detected_event_rule(create_detected_event_rule_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule: #{e}"
end
```

#### Using the create_detected_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventRuleResponse>, Integer, Hash)> create_detected_event_rule_with_http_info(create_detected_event_rule_request)

```ruby
begin
  # Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.
  data, status_code, headers = api_instance.create_detected_event_rule_with_http_info(create_detected_event_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_rule_request** | **CreateDetectedEventRuleRequest** |  |  |

### Return type

**CreateDetectedEventRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_rule_place

> <CreateDetectedEventRulePlaceResponse> create_detected_event_rule_place(create_detected_event_rule_place_request)

Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_rule_place_request = Crossly::CreateDetectedEventRulePlaceRequest.new({rule: Crossly::CreateDetectedEventRuleRequest.new({name: 'name_example', filter: { key: 3.56}, _then: [{ key: 3.56}]}), ids: ['ids_example']}) # CreateDetectedEventRulePlaceRequest | 

begin
  # Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.
  result = api_instance.create_detected_event_rule_place(create_detected_event_rule_place_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_place: #{e}"
end
```

#### Using the create_detected_event_rule_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventRulePlaceResponse>, Integer, Hash)> create_detected_event_rule_place_with_http_info(create_detected_event_rule_place_request)

```ruby
begin
  # Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.
  data, status_code, headers = api_instance.create_detected_event_rule_place_with_http_info(create_detected_event_rule_place_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventRulePlaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_rule_place_request** | **CreateDetectedEventRulePlaceRequest** |  |  |

### Return type

**CreateDetectedEventRulePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_rule_reorder

> <CreateDetectedEventRuleReorderResponse> create_detected_event_rule_reorder(create_detected_event_rule_reorder_request)

Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_rule_reorder_request = Crossly::CreateDetectedEventRuleReorderRequest.new({ids: ['ids_example']}) # CreateDetectedEventRuleReorderRequest | 

begin
  # Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.
  result = api_instance.create_detected_event_rule_reorder(create_detected_event_rule_reorder_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_reorder: #{e}"
end
```

#### Using the create_detected_event_rule_reorder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventRuleReorderResponse>, Integer, Hash)> create_detected_event_rule_reorder_with_http_info(create_detected_event_rule_reorder_request)

```ruby
begin
  # Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.
  data, status_code, headers = api_instance.create_detected_event_rule_reorder_with_http_info(create_detected_event_rule_reorder_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventRuleReorderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_reorder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_rule_reorder_request** | **CreateDetectedEventRuleReorderRequest** |  |  |

### Return type

**CreateDetectedEventRuleReorderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_rule_reset_default

> <CreateDetectedEventRuleReorderResponse> create_detected_event_rule_reset_default(create_detected_event_rule_reset_default_request)

Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_rule_reset_default_request = Crossly::CreateDetectedEventRuleResetDefaultRequest.new # CreateDetectedEventRuleResetDefaultRequest | 

begin
  # Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.
  result = api_instance.create_detected_event_rule_reset_default(create_detected_event_rule_reset_default_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_reset_default: #{e}"
end
```

#### Using the create_detected_event_rule_reset_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventRuleReorderResponse>, Integer, Hash)> create_detected_event_rule_reset_default_with_http_info(create_detected_event_rule_reset_default_request)

```ruby
begin
  # Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.
  data, status_code, headers = api_instance.create_detected_event_rule_reset_default_with_http_info(create_detected_event_rule_reset_default_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventRuleReorderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_rule_reset_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_rule_reset_default_request** | **CreateDetectedEventRuleResetDefaultRequest** |  |  |

### Return type

**CreateDetectedEventRuleReorderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_simulate

> <CreateDetectedEventSimulateResponse> create_detected_event_simulate(create_detected_event_simulate_request)

Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules = an unsaved draft list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_simulate_request = Crossly::CreateDetectedEventSimulateRequest.new({event: { key: 3.56}}) # CreateDetectedEventSimulateRequest | 

begin
  # Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules = an unsaved draft list.
  result = api_instance.create_detected_event_simulate(create_detected_event_simulate_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_simulate: #{e}"
end
```

#### Using the create_detected_event_simulate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventSimulateResponse>, Integer, Hash)> create_detected_event_simulate_with_http_info(create_detected_event_simulate_request)

```ruby
begin
  # Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules = an unsaved draft list.
  data, status_code, headers = api_instance.create_detected_event_simulate_with_http_info(create_detected_event_simulate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventSimulateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_simulate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_simulate_request** | **CreateDetectedEventSimulateRequest** |  |  |

### Return type

**CreateDetectedEventSimulateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_detected_event_simulate_impact

> <CreateDetectedEventSimulateImpactResponse> create_detected_event_simulate_impact(create_detected_event_simulate_impact_request)

What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
create_detected_event_simulate_impact_request = Crossly::CreateDetectedEventSimulateImpactRequest.new({rules: [{ key: 3.56}]}) # CreateDetectedEventSimulateImpactRequest | 

begin
  # What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.
  result = api_instance.create_detected_event_simulate_impact(create_detected_event_simulate_impact_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_simulate_impact: #{e}"
end
```

#### Using the create_detected_event_simulate_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventSimulateImpactResponse>, Integer, Hash)> create_detected_event_simulate_impact_with_http_info(create_detected_event_simulate_impact_request)

```ruby
begin
  # What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.
  data, status_code, headers = api_instance.create_detected_event_simulate_impact_with_http_info(create_detected_event_simulate_impact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventSimulateImpactResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_detected_event_simulate_impact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_detected_event_simulate_impact_request** | **CreateDetectedEventSimulateImpactRequest** |  |  |

### Return type

**CreateDetectedEventSimulateImpactResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_event_confirm

> <CreateEmailEventConfirmResponse> create_email_event_confirm(id, create_email_event_confirm_request)

Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_email_event_confirm_request = Crossly::CreateEmailEventConfirmRequest.new # CreateEmailEventConfirmRequest | 

begin
  # Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.
  result = api_instance.create_email_event_confirm(id, create_email_event_confirm_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_email_event_confirm: #{e}"
end
```

#### Using the create_email_event_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailEventConfirmResponse>, Integer, Hash)> create_email_event_confirm_with_http_info(id, create_email_event_confirm_request)

```ruby
begin
  # Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.
  data, status_code, headers = api_instance.create_email_event_confirm_with_http_info(id, create_email_event_confirm_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailEventConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_email_event_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_email_event_confirm_request** | **CreateEmailEventConfirmRequest** |  |  |

### Return type

**CreateEmailEventConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_event_dismiss

> <IdStatusResponse> create_email_event_dismiss(id)

Dismiss an email-detected event (\"not a sale\"): closes the card without acting.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Dismiss an email-detected event (\"not a sale\"): closes the card without acting.
  result = api_instance.create_email_event_dismiss(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_email_event_dismiss: #{e}"
end
```

#### Using the create_email_event_dismiss_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdStatusResponse>, Integer, Hash)> create_email_event_dismiss_with_http_info(id)

```ruby
begin
  # Dismiss an email-detected event (\"not a sale\"): closes the card without acting.
  data, status_code, headers = api_instance.create_email_event_dismiss_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_email_event_dismiss_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**IdStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_event_policy_decision_confirm

> <CreateEventPolicyDecisionConfirmResponse> create_event_policy_decision_confirm(id)

Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).
  result = api_instance.create_event_policy_decision_confirm(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_event_policy_decision_confirm: #{e}"
end
```

#### Using the create_event_policy_decision_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEventPolicyDecisionConfirmResponse>, Integer, Hash)> create_event_policy_decision_confirm_with_http_info(id)

```ruby
begin
  # Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).
  data, status_code, headers = api_instance.create_event_policy_decision_confirm_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEventPolicyDecisionConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->create_event_policy_decision_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateEventPolicyDecisionConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_detected_event_rule

> <DeleteStoryResponse> delete_detected_event_rule(id)

Delete a detection rule. Deleting your edit of a default (its id, or default:<key>) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = 'id_example' # String | 

begin
  # Delete a detection rule. Deleting your edit of a default (its id, or default:<key>) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.
  result = api_instance.delete_detected_event_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->delete_detected_event_rule: #{e}"
end
```

#### Using the delete_detected_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStoryResponse>, Integer, Hash)> delete_detected_event_rule_with_http_info(id)

```ruby
begin
  # Delete a detection rule. Deleting your edit of a default (its id, or default:<key>) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.
  data, status_code, headers = api_instance.delete_detected_event_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->delete_detected_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_event_policy_rule

> <DeleteStoryResponse> delete_event_policy_rule(id)

Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).
  result = api_instance.delete_event_policy_rule(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->delete_event_policy_rule: #{e}"
end
```

#### Using the delete_event_policy_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStoryResponse>, Integer, Hash)> delete_event_policy_rule_with_http_info(id)

```ruby
begin
  # Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).
  data, status_code, headers = api_instance.delete_event_policy_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->delete_event_policy_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action_log

> <ListActionLogItem> get_action_log(id)

One Activity Log event by id, with `view` including its steps and, for bulk jobs, its children.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One Activity Log event by id, with `view` including its steps and, for bulk jobs, its children.
  result = api_instance.get_action_log(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log: #{e}"
end
```

#### Using the get_action_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionLogItem>, Integer, Hash)> get_action_log_with_http_info(id)

```ruby
begin
  # One Activity Log event by id, with `view` including its steps and, for bulk jobs, its children.
  data, status_code, headers = api_instance.get_action_log_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionLogItem>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListActionLogItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action_log_export

> <GetActionLogExportResponse> get_action_log_export(export_id)

The state of one Activity Log export.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
export_id = 'export_id_example' # String | 

begin
  # The state of one Activity Log export.
  result = api_instance.get_action_log_export(export_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_export: #{e}"
end
```

#### Using the get_action_log_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogExportResponse>, Integer, Hash)> get_action_log_export_with_http_info(export_id)

```ruby
begin
  # The state of one Activity Log export.
  data, status_code, headers = api_instance.get_action_log_export_with_http_info(export_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogExportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** |  |  |

### Return type

**GetActionLogExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action_log_export_download

> <GetActionLogExportDownloadResponse> get_action_log_export_download(export_id)

Download a finished Activity Log export (for 24 hours after it completes).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
export_id = 'export_id_example' # String | 

begin
  # Download a finished Activity Log export (for 24 hours after it completes).
  result = api_instance.get_action_log_export_download(export_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_export_download: #{e}"
end
```

#### Using the get_action_log_export_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogExportDownloadResponse>, Integer, Hash)> get_action_log_export_download_with_http_info(export_id)

```ruby
begin
  # Download a finished Activity Log export (for 24 hours after it completes).
  data, status_code, headers = api_instance.get_action_log_export_download_with_http_info(export_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogExportDownloadResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_export_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** |  |  |

### Return type

**GetActionLogExportDownloadResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action_log_facet

> <GetActionLogFacetResponse> get_action_log_facet

Filter options of the caller's Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new

begin
  # Filter options of the caller's Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.
  result = api_instance.get_action_log_facet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_facet: #{e}"
end
```

#### Using the get_action_log_facet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActionLogFacetResponse>, Integer, Hash)> get_action_log_facet_with_http_info

```ruby
begin
  # Filter options of the caller's Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.
  data, status_code, headers = api_instance.get_action_log_facet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActionLogFacetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_action_log_facet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetActionLogFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_detected_event_event

> <GetDetectedEventEventResponse> get_detected_event_event(id)

One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action's outcome and reversibility.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action's outcome and reversibility.
  result = api_instance.get_detected_event_event(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_detected_event_event: #{e}"
end
```

#### Using the get_detected_event_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDetectedEventEventResponse>, Integer, Hash)> get_detected_event_event_with_http_info(id)

```ruby
begin
  # One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action's outcome and reversibility.
  data, status_code, headers = api_instance.get_detected_event_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDetectedEventEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_detected_event_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDetectedEventEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event_policy

> <GetEventPolicyResponse> get_event_policy(opts)

What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app > platform > global > default). Pass platform (or appId) to see the matrix as that platform's (or app's) items see it. Also returns the rules, platforms and connected apps.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  platform: 'platform_example', # String | 
  app_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  # What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app > platform > global > default). Pass platform (or appId) to see the matrix as that platform's (or app's) items see it. Also returns the rules, platforms and connected apps.
  result = api_instance.get_event_policy(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_event_policy: #{e}"
end
```

#### Using the get_event_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventPolicyResponse>, Integer, Hash)> get_event_policy_with_http_info(opts)

```ruby
begin
  # What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app > platform > global > default). Pass platform (or appId) to see the matrix as that platform's (or app's) items see it. Also returns the rules, platforms and connected apps.
  data, status_code, headers = api_instance.get_event_policy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventPolicyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->get_event_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **app_id** | **String** |  | [optional] |

### Return type

**GetEventPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_log

> <ListActionLogResponse> list_action_log(opts)

List Activity Log events, newest first. Each event carries `view` (title, sentence, fields, failure advice, who did it) and typed `detail`. Page with `cursor`; `pagination.total` counts matches.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  platform: 'platform_example', # String | Platform id (`ebay`, `poshmark`, ...).
  action: 'action_example', # String | A canonical action key (`listing.delist`, see the public action catalog) or a legacy action word.
  category: 'category_example', # String | 
  area: 'listings', # String | A seller area: every action of that area (the grouped filter of the dashboard).
  status: 'pending', # String | 
  source: 'source_example', # String | 
  target_type: 'target_type_example', # String | With targetId: events about that object (any of their targets).
  target_id: 'target_id_example', # String | 
  actor_user_id: 'actor_user_id_example', # String | Only what one team member did.
  q: 'q_example', # String | A search in the activity query language (`action:listing.* -outcome:failure \"free text\"`), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Inclusive lower bound on when the action happened.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Exclusive upper bound.
  at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Jump to a time: the page starts at the newest event at or before it.
  cursor: 'cursor_example', # String | `pagination.nextCursor` of the previous page.
  limit: 56, # Integer | 
  offset: 56 # Integer | Deprecated: use cursor. offset + limit may reach at most 1000 events.
}

begin
  # List Activity Log events, newest first. Each event carries `view` (title, sentence, fields, failure advice, who did it) and typed `detail`. Page with `cursor`; `pagination.total` counts matches.
  result = api_instance.list_action_log(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log: #{e}"
end
```

#### Using the list_action_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionLogResponse>, Integer, Hash)> list_action_log_with_http_info(opts)

```ruby
begin
  # List Activity Log events, newest first. Each event carries `view` (title, sentence, fields, failure advice, who did it) and typed `detail`. Page with `cursor`; `pagination.total` counts matches.
  data, status_code, headers = api_instance.list_action_log_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionLogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform id (&#x60;ebay&#x60;, &#x60;poshmark&#x60;, ...). | [optional] |
| **action** | **String** | A canonical action key (&#x60;listing.delist&#x60;, see the public action catalog) or a legacy action word. | [optional] |
| **category** | **String** |  | [optional] |
| **area** | **String** | A seller area: every action of that area (the grouped filter of the dashboard). | [optional] |
| **status** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **target_type** | **String** | With targetId: events about that object (any of their targets). | [optional] |
| **target_id** | **String** |  | [optional] |
| **actor_user_id** | **String** | Only what one team member did. | [optional] |
| **q** | **String** | A search in the activity query language (&#x60;action:listing.* -outcome:failure \&quot;free text\&quot;&#x60;), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. | [optional] |
| **since** | **Time** | Inclusive lower bound on when the action happened. | [optional] |
| **_until** | **Time** | Exclusive upper bound. | [optional] |
| **at** | **Time** | Jump to a time: the page starts at the newest event at or before it. | [optional] |
| **cursor** | **String** | &#x60;pagination.nextCursor&#x60; of the previous page. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **offset** | **Integer** | Deprecated: use cursor. offset + limit may reach at most 1000 events. | [optional] |

### Return type

**ListActionLogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_log_calls

> <ListActionLogCallsResponse> list_action_log_calls(id)

The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \"what was sent / what went wrong\". The URL path, request/response bodies and persisted-query hash are never returned.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \"what was sent / what went wrong\". The URL path, request/response bodies and persisted-query hash are never returned.
  result = api_instance.list_action_log_calls(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_calls: #{e}"
end
```

#### Using the list_action_log_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionLogCallsResponse>, Integer, Hash)> list_action_log_calls_with_http_info(id)

```ruby
begin
  # The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \"what was sent / what went wrong\". The URL path, request/response bodies and persisted-query hash are never returned.
  data, status_code, headers = api_instance.list_action_log_calls_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionLogCallsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListActionLogCallsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_log_histogram

> <ListActionLogHistogramResponse> list_action_log_histogram(opts)

Events per UTC day for the list filters (default: the last 30 days; at most 366).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  platform: 'platform_example', # String | Platform id (`ebay`, `poshmark`, ...).
  action: 'action_example', # String | A canonical action key (`listing.delist`, see the public action catalog) or a legacy action word.
  category: 'category_example', # String | 
  area: 'listings', # String | A seller area: every action of that area (the grouped filter of the dashboard).
  status: 'pending', # String | 
  source: 'source_example', # String | 
  target_type: 'target_type_example', # String | With targetId: events about that object (any of their targets).
  target_id: 'target_id_example', # String | 
  actor_user_id: 'actor_user_id_example', # String | Only what one team member did.
  q: 'q_example', # String | A search in the activity query language (`action:listing.* -outcome:failure \"free text\"`), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Inclusive lower bound on when the action happened.
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | Exclusive upper bound.
}

begin
  # Events per UTC day for the list filters (default: the last 30 days; at most 366).
  result = api_instance.list_action_log_histogram(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_histogram: #{e}"
end
```

#### Using the list_action_log_histogram_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionLogHistogramResponse>, Integer, Hash)> list_action_log_histogram_with_http_info(opts)

```ruby
begin
  # Events per UTC day for the list filters (default: the last 30 days; at most 366).
  data, status_code, headers = api_instance.list_action_log_histogram_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionLogHistogramResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_action_log_histogram_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform id (&#x60;ebay&#x60;, &#x60;poshmark&#x60;, ...). | [optional] |
| **action** | **String** | A canonical action key (&#x60;listing.delist&#x60;, see the public action catalog) or a legacy action word. | [optional] |
| **category** | **String** |  | [optional] |
| **area** | **String** | A seller area: every action of that area (the grouped filter of the dashboard). | [optional] |
| **status** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **target_type** | **String** | With targetId: events about that object (any of their targets). | [optional] |
| **target_id** | **String** |  | [optional] |
| **actor_user_id** | **String** | Only what one team member did. | [optional] |
| **q** | **String** | A search in the activity query language (&#x60;action:listing.* -outcome:failure \&quot;free text\&quot;&#x60;), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. | [optional] |
| **since** | **Time** | Inclusive lower bound on when the action happened. | [optional] |
| **_until** | **Time** | Exclusive upper bound. | [optional] |

### Return type

**ListActionLogHistogramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_detected_event_events

> <ListDetectedEventEventsResponse> list_detected_event_events(opts)

Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  kinds: 'kinds_example', # String | 
  platforms: 'platforms_example', # String | 
  accounts: 'accounts_example', # String | Comma-separated platform account ids (scope.account).
  statuses: 'statuses_example', # String | Comma-separated: acted, held, asked, confirmed, ignored, undone, failed, received, corrected
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).
  result = api_instance.list_detected_event_events(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_detected_event_events: #{e}"
end
```

#### Using the list_detected_event_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDetectedEventEventsResponse>, Integer, Hash)> list_detected_event_events_with_http_info(opts)

```ruby
begin
  # Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).
  data, status_code, headers = api_instance.list_detected_event_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDetectedEventEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_detected_event_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kinds** | **String** |  | [optional] |
| **platforms** | **String** |  | [optional] |
| **accounts** | **String** | Comma-separated platform account ids (scope.account). | [optional] |
| **statuses** | **String** | Comma-separated: acted, held, asked, confirmed, ignored, undone, failed, received, corrected | [optional] |
| **since** | **Time** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListDetectedEventEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_detected_event_rules

> <ListDetectedEventRulesResponse> list_detected_event_rules

The seller's detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller's own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:<key>; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new

begin
  # The seller's detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller's own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:<key>; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.
  result = api_instance.list_detected_event_rules
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_detected_event_rules: #{e}"
end
```

#### Using the list_detected_event_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDetectedEventRulesResponse>, Integer, Hash)> list_detected_event_rules_with_http_info

```ruby
begin
  # The seller's detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller's own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:<key>; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.
  data, status_code, headers = api_instance.list_detected_event_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDetectedEventRulesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_detected_event_rules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListDetectedEventRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_events

> <ListEmailEventsResponse> list_email_events(opts)

List email-detected events waiting for the seller (status=needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  status: 'needs_review' # String | 
}

begin
  # List email-detected events waiting for the seller (status=needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.
  result = api_instance.list_email_events(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_email_events: #{e}"
end
```

#### Using the list_email_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailEventsResponse>, Integer, Hash)> list_email_events_with_http_info(opts)

```ruby
begin
  # List email-detected events waiting for the seller (status=needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.
  data, status_code, headers = api_instance.list_email_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_email_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional][default to &#39;needs_review&#39;] |

### Return type

**ListEmailEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_policy_decisions

> <ListEventPolicyDecisionsResponse> list_event_policy_decisions(opts)

The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome=review: still waiting for the seller). Kept 90 days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56, # Integer | 
  event: 'sale', # String | 
  ownership: 'crossly', # String | 
  platform: 'platform_example', # String | 
  outcome: 'done' # String | 
}

begin
  # The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome=review: still waiting for the seller). Kept 90 days.
  result = api_instance.list_event_policy_decisions(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_event_policy_decisions: #{e}"
end
```

#### Using the list_event_policy_decisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventPolicyDecisionsResponse>, Integer, Hash)> list_event_policy_decisions_with_http_info(opts)

```ruby
begin
  # The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome=review: still waiting for the seller). Kept 90 days.
  data, status_code, headers = api_instance.list_event_policy_decisions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventPolicyDecisionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->list_event_policy_decisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **event** | **String** |  | [optional] |
| **ownership** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **outcome** | **String** |  | [optional] |

### Return type

**ListEventPolicyDecisionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_detected_event_rule

> <CreateDetectedEventRuleResponse> update_detected_event_rule(id, create_detected_event_rule_request)

Replace a detection rule. An id default:<key> stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
id = 'id_example' # String | 
create_detected_event_rule_request = Crossly::CreateDetectedEventRuleRequest.new({name: 'name_example', filter: { key: 3.56}, _then: [{ key: 3.56}]}) # CreateDetectedEventRuleRequest | 

begin
  # Replace a detection rule. An id default:<key> stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).
  result = api_instance.update_detected_event_rule(id, create_detected_event_rule_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->update_detected_event_rule: #{e}"
end
```

#### Using the update_detected_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDetectedEventRuleResponse>, Integer, Hash)> update_detected_event_rule_with_http_info(id, create_detected_event_rule_request)

```ruby
begin
  # Replace a detection rule. An id default:<key> stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).
  data, status_code, headers = api_instance.update_detected_event_rule_with_http_info(id, create_detected_event_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDetectedEventRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->update_detected_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_detected_event_rule_request** | **CreateDetectedEventRuleRequest** |  |  |

### Return type

**CreateDetectedEventRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_event_policy_rule

> <UpdateEventPolicyRuleResponse> update_event_policy_rule(update_event_policy_rule_request)

Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue = platform id) or app (scopeValue = OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::ActivityApi.new
update_event_policy_rule_request = Crossly::UpdateEventPolicyRuleRequest.new({scope: 'global', event: 'sale', ownership: 'crossly', action: 'ignore'}) # UpdateEventPolicyRuleRequest | 

begin
  # Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue = platform id) or app (scopeValue = OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.
  result = api_instance.update_event_policy_rule(update_event_policy_rule_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->update_event_policy_rule: #{e}"
end
```

#### Using the update_event_policy_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateEventPolicyRuleResponse>, Integer, Hash)> update_event_policy_rule_with_http_info(update_event_policy_rule_request)

```ruby
begin
  # Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue = platform id) or app (scopeValue = OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.
  data, status_code, headers = api_instance.update_event_policy_rule_with_http_info(update_event_policy_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateEventPolicyRuleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling ActivityApi->update_event_policy_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_event_policy_rule_request** | **UpdateEventPolicyRuleRequest** |  |  |

### Return type

**UpdateEventPolicyRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

