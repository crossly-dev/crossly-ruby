# Crossly::WorldsEngagementApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience_experience_event**](WorldsEngagementApi.md#create_world_experience_experience_event) | **POST** /v1/worlds/experiences/{experienceId}/experience-events | Schedule an Experience Event shown on the game&#39;s card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event&#39;s schedule. |
| [**create_world_experience_experience_event_cancel**](WorldsEngagementApi.md#create_world_experience_experience_event_cancel) | **POST** /v1/worlds/experiences/{experienceId}/experience-events/{eventId}/cancel | Cancel an event (it disappears from the game&#39;s card; no reminder goes out). |
| [**create_world_experience_experience_event_rsvp**](WorldsEngagementApi.md#create_world_experience_experience_event_rsvp) | **POST** /v1/worlds/experiences/{experienceId}/experience-events/{eventId}/rsvp | RSVP (going: true) or take it back. remind: true also turns the experience&#39;s notifications on, so the 15-minute reminder can reach you. |
| [**create_world_experience_notification**](WorldsEngagementApi.md#create_world_experience_notification) | **POST** /v1/worlds/experiences/{experienceId}/notifications | Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason. |
| [**create_world_experience_notification_template_retire**](WorldsEngagementApi.md#create_world_experience_notification_template_retire) | **POST** /v1/worlds/experiences/{experienceId}/notification-templates/{key}/retire | Retire a template: sends by its key stop. |
| [**get_world_experience_notification_opt_in**](WorldsEngagementApi.md#get_world_experience_notification_opt_in) | **GET** /v1/worlds/experiences/{experienceId}/notifications/opt-in | Whether you turned this experience&#39;s notifications on. |
| [**get_world_experience_notification_report**](WorldsEngagementApi.md#get_world_experience_notification_report) | **GET** /v1/worlds/experiences/{experienceId}/notifications/report | Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on. |
| [**list_world_experience_event_upcoming**](WorldsEngagementApi.md#list_world_experience_event_upcoming) | **GET** /v1/worlds/experience-events/upcoming | Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza&#39;s \&quot;Coming up\&quot; board. |
| [**list_world_experience_experience_event_upcoming**](WorldsEngagementApi.md#list_world_experience_experience_event_upcoming) | **GET** /v1/worlds/experiences/{experienceId}/experience-events/upcoming | An experience&#39;s upcoming and live events as players see them, with whether you are going. |
| [**list_world_experience_experience_events**](WorldsEngagementApi.md#list_world_experience_experience_events) | **GET** /v1/worlds/experiences/{experienceId}/experience-events | Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts. |
| [**list_world_experience_notification_templates**](WorldsEngagementApi.md#list_world_experience_notification_templates) | **GET** /v1/worlds/experiences/{experienceId}/notification-templates | Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent). |
| [**list_world_me_experience_events**](WorldsEngagementApi.md#list_world_me_experience_events) | **GET** /v1/worlds/me/experience-events | Events you are going to that have not ended. |
| [**list_world_me_notification_opt_ins**](WorldsEngagementApi.md#list_world_me_notification_opt_ins) | **GET** /v1/worlds/me/notification-opt-ins | Every experience whose notifications you turned on. |
| [**update_world_experience_experience_event**](WorldsEngagementApi.md#update_world_experience_experience_event) | **PATCH** /v1/worlds/experiences/{experienceId}/experience-events/{eventId} | Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder. |
| [**update_world_experience_notification_opt_in**](WorldsEngagementApi.md#update_world_experience_notification_opt_in) | **PUT** /v1/worlds/experiences/{experienceId}/notifications/opt-in | Turn this experience&#39;s notifications on or off for you. timeZone (IANA) keeps them out of your night. |
| [**update_world_experience_notification_template**](WorldsEngagementApi.md#update_world_experience_notification_template) | **PUT** /v1/worlds/experiences/{experienceId}/notification-templates/{key} | Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews. |


## create_world_experience_experience_event

> <WorldExperienceExperienceEventResponse> create_world_experience_experience_event(experience_id)

Schedule an Experience Event shown on the game's card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event's schedule.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Schedule an Experience Event shown on the game's card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event's schedule.
  result = api_instance.create_world_experience_experience_event(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event: #{e}"
end
```

#### Using the create_world_experience_experience_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperienceEventResponse>, Integer, Hash)> create_world_experience_experience_event_with_http_info(experience_id)

```ruby
begin
  # Schedule an Experience Event shown on the game's card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event's schedule.
  data, status_code, headers = api_instance.create_world_experience_experience_event_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_experience_event_cancel

> <WorldExperienceExperienceEventResponse> create_world_experience_experience_event_cancel(experience_id, event_id)

Cancel an event (it disappears from the game's card; no reminder goes out).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 
event_id = 'event_id_example' # String | 

begin
  # Cancel an event (it disappears from the game's card; no reminder goes out).
  result = api_instance.create_world_experience_experience_event_cancel(experience_id, event_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event_cancel: #{e}"
end
```

#### Using the create_world_experience_experience_event_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperienceEventResponse>, Integer, Hash)> create_world_experience_experience_event_cancel_with_http_info(experience_id, event_id)

```ruby
begin
  # Cancel an event (it disappears from the game's card; no reminder goes out).
  data, status_code, headers = api_instance.create_world_experience_experience_event_cancel_with_http_info(experience_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **event_id** | **String** |  |  |

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_experience_event_rsvp

> <WorldExperienceExperienceEventResponse> create_world_experience_experience_event_rsvp(experience_id, event_id)

RSVP (going: true) or take it back. remind: true also turns the experience's notifications on, so the 15-minute reminder can reach you.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 
event_id = 'event_id_example' # String | 

begin
  # RSVP (going: true) or take it back. remind: true also turns the experience's notifications on, so the 15-minute reminder can reach you.
  result = api_instance.create_world_experience_experience_event_rsvp(experience_id, event_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event_rsvp: #{e}"
end
```

#### Using the create_world_experience_experience_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperienceEventResponse>, Integer, Hash)> create_world_experience_experience_event_rsvp_with_http_info(experience_id, event_id)

```ruby
begin
  # RSVP (going: true) or take it back. remind: true also turns the experience's notifications on, so the 15-minute reminder can reach you.
  data, status_code, headers = api_instance.create_world_experience_experience_event_rsvp_with_http_info(experience_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_experience_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **event_id** | **String** |  |  |

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_notification

> <CreateWorldExperienceNotificationResponse> create_world_experience_notification(experience_id)

Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.
  result = api_instance.create_world_experience_notification(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_notification: #{e}"
end
```

#### Using the create_world_experience_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceNotificationResponse>, Integer, Hash)> create_world_experience_notification_with_http_info(experience_id)

```ruby
begin
  # Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.
  data, status_code, headers = api_instance.create_world_experience_notification_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceNotificationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceNotificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_notification_template_retire

> <UpdateWorldExperienceNotificationTemplateResponse> create_world_experience_notification_template_retire(experience_id, key)

Retire a template: sends by its key stop.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 
key = 'key_example' # String | 

begin
  # Retire a template: sends by its key stop.
  result = api_instance.create_world_experience_notification_template_retire(experience_id, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_notification_template_retire: #{e}"
end
```

#### Using the create_world_experience_notification_template_retire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceNotificationTemplateResponse>, Integer, Hash)> create_world_experience_notification_template_retire_with_http_info(experience_id, key)

```ruby
begin
  # Retire a template: sends by its key stop.
  data, status_code, headers = api_instance.create_world_experience_notification_template_retire_with_http_info(experience_id, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceNotificationTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->create_world_experience_notification_template_retire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**UpdateWorldExperienceNotificationTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_notification_opt_in

> <GetWorldExperienceNotificationOptInResponse> get_world_experience_notification_opt_in(experience_id)

Whether you turned this experience's notifications on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Whether you turned this experience's notifications on.
  result = api_instance.get_world_experience_notification_opt_in(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->get_world_experience_notification_opt_in: #{e}"
end
```

#### Using the get_world_experience_notification_opt_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceNotificationOptInResponse>, Integer, Hash)> get_world_experience_notification_opt_in_with_http_info(experience_id)

```ruby
begin
  # Whether you turned this experience's notifications on.
  data, status_code, headers = api_instance.get_world_experience_notification_opt_in_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceNotificationOptInResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->get_world_experience_notification_opt_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceNotificationOptInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_notification_report

> <GetWorldExperienceNotificationReportResponse> get_world_experience_notification_report(experience_id)

Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.
  result = api_instance.get_world_experience_notification_report(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->get_world_experience_notification_report: #{e}"
end
```

#### Using the get_world_experience_notification_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceNotificationReportResponse>, Integer, Hash)> get_world_experience_notification_report_with_http_info(experience_id)

```ruby
begin
  # Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.
  data, status_code, headers = api_instance.get_world_experience_notification_report_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceNotificationReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->get_world_experience_notification_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceNotificationReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_event_upcoming

> <ListWorldExperienceEventUpcomingResponse> list_world_experience_event_upcoming

Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza's \"Coming up\" board.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new

begin
  # Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza's \"Coming up\" board.
  result = api_instance.list_world_experience_event_upcoming
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_event_upcoming: #{e}"
end
```

#### Using the list_world_experience_event_upcoming_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceEventUpcomingResponse>, Integer, Hash)> list_world_experience_event_upcoming_with_http_info

```ruby
begin
  # Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza's \"Coming up\" board.
  data, status_code, headers = api_instance.list_world_experience_event_upcoming_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceEventUpcomingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_event_upcoming_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldExperienceEventUpcomingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_experience_event_upcoming

> <ListWorldExperienceExperienceEventsResponse> list_world_experience_experience_event_upcoming(experience_id)

An experience's upcoming and live events as players see them, with whether you are going.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # An experience's upcoming and live events as players see them, with whether you are going.
  result = api_instance.list_world_experience_experience_event_upcoming(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_experience_event_upcoming: #{e}"
end
```

#### Using the list_world_experience_experience_event_upcoming_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceExperienceEventsResponse>, Integer, Hash)> list_world_experience_experience_event_upcoming_with_http_info(experience_id)

```ruby
begin
  # An experience's upcoming and live events as players see them, with whether you are going.
  data, status_code, headers = api_instance.list_world_experience_experience_event_upcoming_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceExperienceEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_experience_event_upcoming_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_experience_events

> <ListWorldExperienceExperienceEventsResponse> list_world_experience_experience_events(experience_id)

Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.
  result = api_instance.list_world_experience_experience_events(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_experience_events: #{e}"
end
```

#### Using the list_world_experience_experience_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceExperienceEventsResponse>, Integer, Hash)> list_world_experience_experience_events_with_http_info(experience_id)

```ruby
begin
  # Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.
  data, status_code, headers = api_instance.list_world_experience_experience_events_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceExperienceEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_experience_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_notification_templates

> <ListWorldExperienceNotificationTemplatesResponse> list_world_experience_notification_templates(experience_id)

Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).
  result = api_instance.list_world_experience_notification_templates(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_notification_templates: #{e}"
end
```

#### Using the list_world_experience_notification_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceNotificationTemplatesResponse>, Integer, Hash)> list_world_experience_notification_templates_with_http_info(experience_id)

```ruby
begin
  # Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).
  data, status_code, headers = api_instance.list_world_experience_notification_templates_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceNotificationTemplatesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_experience_notification_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceNotificationTemplatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_me_experience_events

> <ListWorldMeExperienceEventsResponse> list_world_me_experience_events

Events you are going to that have not ended.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new

begin
  # Events you are going to that have not ended.
  result = api_instance.list_world_me_experience_events
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_me_experience_events: #{e}"
end
```

#### Using the list_world_me_experience_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldMeExperienceEventsResponse>, Integer, Hash)> list_world_me_experience_events_with_http_info

```ruby
begin
  # Events you are going to that have not ended.
  data, status_code, headers = api_instance.list_world_me_experience_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldMeExperienceEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_me_experience_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldMeExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_me_notification_opt_ins

> <ListWorldMeNotificationOptInsResponse> list_world_me_notification_opt_ins

Every experience whose notifications you turned on.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new

begin
  # Every experience whose notifications you turned on.
  result = api_instance.list_world_me_notification_opt_ins
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_me_notification_opt_ins: #{e}"
end
```

#### Using the list_world_me_notification_opt_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldMeNotificationOptInsResponse>, Integer, Hash)> list_world_me_notification_opt_ins_with_http_info

```ruby
begin
  # Every experience whose notifications you turned on.
  data, status_code, headers = api_instance.list_world_me_notification_opt_ins_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldMeNotificationOptInsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->list_world_me_notification_opt_ins_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldMeNotificationOptInsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_experience_event

> <WorldExperienceExperienceEventResponse> update_world_experience_experience_event(experience_id, event_id)

Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 
event_id = 'event_id_example' # String | 

begin
  # Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.
  result = api_instance.update_world_experience_experience_event(experience_id, event_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_experience_event: #{e}"
end
```

#### Using the update_world_experience_experience_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperienceEventResponse>, Integer, Hash)> update_world_experience_experience_event_with_http_info(experience_id, event_id)

```ruby
begin
  # Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.
  data, status_code, headers = api_instance.update_world_experience_experience_event_with_http_info(experience_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_experience_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **event_id** | **String** |  |  |

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_notification_opt_in

> <GetWorldExperienceNotificationOptInResponse> update_world_experience_notification_opt_in(experience_id)

Turn this experience's notifications on or off for you. timeZone (IANA) keeps them out of your night.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Turn this experience's notifications on or off for you. timeZone (IANA) keeps them out of your night.
  result = api_instance.update_world_experience_notification_opt_in(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_notification_opt_in: #{e}"
end
```

#### Using the update_world_experience_notification_opt_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceNotificationOptInResponse>, Integer, Hash)> update_world_experience_notification_opt_in_with_http_info(experience_id)

```ruby
begin
  # Turn this experience's notifications on or off for you. timeZone (IANA) keeps them out of your night.
  data, status_code, headers = api_instance.update_world_experience_notification_opt_in_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceNotificationOptInResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_notification_opt_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceNotificationOptInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience_notification_template

> <UpdateWorldExperienceNotificationTemplateResponse> update_world_experience_notification_template(experience_id, key)

Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsEngagementApi.new
experience_id = 'experience_id_example' # String | 
key = 'key_example' # String | 

begin
  # Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.
  result = api_instance.update_world_experience_notification_template(experience_id, key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_notification_template: #{e}"
end
```

#### Using the update_world_experience_notification_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceNotificationTemplateResponse>, Integer, Hash)> update_world_experience_notification_template_with_http_info(experience_id, key)

```ruby
begin
  # Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.
  data, status_code, headers = api_instance.update_world_experience_notification_template_with_http_info(experience_id, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceNotificationTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsEngagementApi->update_world_experience_notification_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**UpdateWorldExperienceNotificationTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

