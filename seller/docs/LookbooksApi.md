# Crossly::LookbooksApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lookbook**](LookbooksApi.md#create_lookbook) | **POST** /v1/lookbooks | Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit. |
| [**create_lookbook_campaign**](LookbooksApi.md#create_lookbook_campaign) | **POST** /v1/lookbook-campaigns | Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it. |
| [**create_lookbook_campaign_cancel**](LookbooksApi.md#create_lookbook_campaign_cancel) | **POST** /v1/lookbook-campaigns/{id}/cancel | Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent). |
| [**create_lookbook_campaign_preview**](LookbooksApi.md#create_lookbook_campaign_preview) | **POST** /v1/lookbook-campaigns/preview | Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text. |
| [**create_lookbook_share_link**](LookbooksApi.md#create_lookbook_share_link) | **POST** /v1/lookbooks/{id}/share-links | Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once. |
| [**create_print_mail_job**](LookbooksApi.md#create_print_mail_job) | **POST** /v1/print-mail/jobs | Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed. |
| [**create_print_mail_job_confirm**](LookbooksApi.md#create_print_mail_job_confirm) | **POST** /v1/print-mail/jobs/{id}/confirm | Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job&#39;s piece count. Your Lob or PostGrid account is billed. |
| [**get_lookbook_campaign**](LookbooksApi.md#get_lookbook_campaign) | **GET** /v1/lookbook-campaigns/{id} | One lookbook campaign and its counts. |
| [**get_lookbook_design**](LookbooksApi.md#get_lookbook_design) | **GET** /v1/lookbooks/{id}/design | A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images. |
| [**list_email_providers**](LookbooksApi.md#list_email_providers) | **GET** /v1/email-providers | Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned. |
| [**list_lookbook_campaign_recipients**](LookbooksApi.md#list_lookbook_campaign_recipients) | **GET** /v1/lookbook-campaigns/{id}/recipients | Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe. |
| [**list_lookbook_campaigns**](LookbooksApi.md#list_lookbook_campaigns) | **GET** /v1/lookbook-campaigns | Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts. |
| [**list_lookbooks**](LookbooksApi.md#list_lookbooks) | **GET** /v1/lookbooks | Your lookbooks: id, slug, title, published, current design version and item count. |
| [**list_print_mail_jobs**](LookbooksApi.md#list_print_mail_jobs) | **GET** /v1/print-mail/jobs | Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results. |
| [**update_lookbook_design**](LookbooksApi.md#update_lookbook_design) | **PUT** /v1/lookbooks/{id}/design | Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save. |


## create_lookbook

> <CreateLookbookResponse> create_lookbook

Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.
  result = api_instance.create_lookbook
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook: #{e}"
end
```

#### Using the create_lookbook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLookbookResponse>, Integer, Hash)> create_lookbook_with_http_info

```ruby
begin
  # Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.
  data, status_code, headers = api_instance.create_lookbook_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLookbookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateLookbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lookbook_campaign

> <LookbookCampaignResponse> create_lookbook_campaign

Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.
  result = api_instance.create_lookbook_campaign
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign: #{e}"
end
```

#### Using the create_lookbook_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LookbookCampaignResponse>, Integer, Hash)> create_lookbook_campaign_with_http_info

```ruby
begin
  # Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.
  data, status_code, headers = api_instance.create_lookbook_campaign_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LookbookCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lookbook_campaign_cancel

> <LookbookCampaignResponse> create_lookbook_campaign_cancel(id)

Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).
  result = api_instance.create_lookbook_campaign_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign_cancel: #{e}"
end
```

#### Using the create_lookbook_campaign_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LookbookCampaignResponse>, Integer, Hash)> create_lookbook_campaign_cancel_with_http_info(id)

```ruby
begin
  # Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).
  data, status_code, headers = api_instance.create_lookbook_campaign_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LookbookCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lookbook_campaign_preview

> <CreateLookbookCampaignPreviewResponse> create_lookbook_campaign_preview

Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.
  result = api_instance.create_lookbook_campaign_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign_preview: #{e}"
end
```

#### Using the create_lookbook_campaign_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLookbookCampaignPreviewResponse>, Integer, Hash)> create_lookbook_campaign_preview_with_http_info

```ruby
begin
  # Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.
  data, status_code, headers = api_instance.create_lookbook_campaign_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLookbookCampaignPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_campaign_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateLookbookCampaignPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lookbook_share_link

> <CreateLookbookShareLinkResponse> create_lookbook_share_link(id)

Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.
  result = api_instance.create_lookbook_share_link(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_share_link: #{e}"
end
```

#### Using the create_lookbook_share_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLookbookShareLinkResponse>, Integer, Hash)> create_lookbook_share_link_with_http_info(id)

```ruby
begin
  # Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.
  data, status_code, headers = api_instance.create_lookbook_share_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLookbookShareLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_lookbook_share_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateLookbookShareLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_print_mail_job

> <CreatePrintMailJobResponse> create_print_mail_job

Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.
  result = api_instance.create_print_mail_job
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_print_mail_job: #{e}"
end
```

#### Using the create_print_mail_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailJobResponse>, Integer, Hash)> create_print_mail_job_with_http_info

```ruby
begin
  # Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.
  data, status_code, headers = api_instance.create_print_mail_job_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailJobResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_print_mail_job_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreatePrintMailJobResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_print_mail_job_confirm

> <CreatePrintMailJobConfirmResponse> create_print_mail_job_confirm(id)

Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job's piece count. Your Lob or PostGrid account is billed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job's piece count. Your Lob or PostGrid account is billed.
  result = api_instance.create_print_mail_job_confirm(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_print_mail_job_confirm: #{e}"
end
```

#### Using the create_print_mail_job_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePrintMailJobConfirmResponse>, Integer, Hash)> create_print_mail_job_confirm_with_http_info(id)

```ruby
begin
  # Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job's piece count. Your Lob or PostGrid account is billed.
  data, status_code, headers = api_instance.create_print_mail_job_confirm_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePrintMailJobConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->create_print_mail_job_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreatePrintMailJobConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lookbook_campaign

> <LookbookCampaignResponse> get_lookbook_campaign(id)

One lookbook campaign and its counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # One lookbook campaign and its counts.
  result = api_instance.get_lookbook_campaign(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->get_lookbook_campaign: #{e}"
end
```

#### Using the get_lookbook_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LookbookCampaignResponse>, Integer, Hash)> get_lookbook_campaign_with_http_info(id)

```ruby
begin
  # One lookbook campaign and its counts.
  data, status_code, headers = api_instance.get_lookbook_campaign_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LookbookCampaignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->get_lookbook_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lookbook_design

> <GetLookbookDesignResponse> get_lookbook_design(id)

A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.
  result = api_instance.get_lookbook_design(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->get_lookbook_design: #{e}"
end
```

#### Using the get_lookbook_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLookbookDesignResponse>, Integer, Hash)> get_lookbook_design_with_http_info(id)

```ruby
begin
  # A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.
  data, status_code, headers = api_instance.get_lookbook_design_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLookbookDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->get_lookbook_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetLookbookDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_providers

> <ListEmailProvidersResponse> list_email_providers

Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.
  result = api_instance.list_email_providers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_email_providers: #{e}"
end
```

#### Using the list_email_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailProvidersResponse>, Integer, Hash)> list_email_providers_with_http_info

```ruby
begin
  # Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.
  data, status_code, headers = api_instance.list_email_providers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailProvidersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_email_providers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListEmailProvidersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lookbook_campaign_recipients

> <ListLookbookCampaignRecipientsResponse> list_lookbook_campaign_recipients(id)

Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.
  result = api_instance.list_lookbook_campaign_recipients(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbook_campaign_recipients: #{e}"
end
```

#### Using the list_lookbook_campaign_recipients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLookbookCampaignRecipientsResponse>, Integer, Hash)> list_lookbook_campaign_recipients_with_http_info(id)

```ruby
begin
  # Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.
  data, status_code, headers = api_instance.list_lookbook_campaign_recipients_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLookbookCampaignRecipientsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbook_campaign_recipients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListLookbookCampaignRecipientsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lookbook_campaigns

> <ListLookbookCampaignsResponse> list_lookbook_campaigns

Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.
  result = api_instance.list_lookbook_campaigns
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbook_campaigns: #{e}"
end
```

#### Using the list_lookbook_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLookbookCampaignsResponse>, Integer, Hash)> list_lookbook_campaigns_with_http_info

```ruby
begin
  # Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.
  data, status_code, headers = api_instance.list_lookbook_campaigns_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLookbookCampaignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbook_campaigns_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLookbookCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lookbooks

> <ListLookbooksResponse> list_lookbooks

Your lookbooks: id, slug, title, published, current design version and item count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Your lookbooks: id, slug, title, published, current design version and item count.
  result = api_instance.list_lookbooks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbooks: #{e}"
end
```

#### Using the list_lookbooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLookbooksResponse>, Integer, Hash)> list_lookbooks_with_http_info

```ruby
begin
  # Your lookbooks: id, slug, title, published, current design version and item count.
  data, status_code, headers = api_instance.list_lookbooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLookbooksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_lookbooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListLookbooksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_print_mail_jobs

> <ListPrintMailJobsResponse> list_print_mail_jobs

Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new

begin
  # Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.
  result = api_instance.list_print_mail_jobs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_print_mail_jobs: #{e}"
end
```

#### Using the list_print_mail_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPrintMailJobsResponse>, Integer, Hash)> list_print_mail_jobs_with_http_info

```ruby
begin
  # Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.
  data, status_code, headers = api_instance.list_print_mail_jobs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPrintMailJobsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->list_print_mail_jobs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListPrintMailJobsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lookbook_design

> <UpdateLookbookDesignResponse> update_lookbook_design(id)

Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::LookbooksApi.new
id = 'id_example' # String | 

begin
  # Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.
  result = api_instance.update_lookbook_design(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->update_lookbook_design: #{e}"
end
```

#### Using the update_lookbook_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLookbookDesignResponse>, Integer, Hash)> update_lookbook_design_with_http_info(id)

```ruby
begin
  # Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.
  data, status_code, headers = api_instance.update_lookbook_design_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLookbookDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling LookbooksApi->update_lookbook_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateLookbookDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

