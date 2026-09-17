# CrosslyBuyer::GetConnectionHealthResponseAccounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_name** | **String** |  |  |
| **account_id** | **String** |  | [optional] |
| **account_slot** | **Float** |  | [optional] |
| **label** | **String** |  | [optional] |
| **platform_username** | **String** |  | [optional] |
| **summary** | **String** | Plain-English \&quot;what is true\&quot; + \&quot;what to do\&quot;. Never empty. |  |
| **action** | **String** |  |  |
| **liveness** | [**GetConnectionHealthResponseLiveness**](GetConnectionHealthResponseLiveness.md) |  |  |
| **browser** | [**GetConnectionHealthResponseBrowser**](GetConnectionHealthResponseBrowser.md) |  | [optional] |
| **platform** | **String** |  |  |
| **state** | **String** |  |  |
| **severity** | **String** |  |  |
| **audience** | **String** |  |  |
| **anchors** | [**GetConnectionHealthResponseAnchors**](GetConnectionHealthResponseAnchors.md) |  | [optional] |
| **notes** | **Array&lt;String&gt;** | Secondary observations that do not change the verdict but change the debugging. Always safe to show; never the only thing shown. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetConnectionHealthResponseAccounts.new(
  platform_name: null,
  account_id: null,
  account_slot: null,
  label: null,
  platform_username: null,
  summary: null,
  action: null,
  liveness: null,
  browser: null,
  platform: null,
  state: null,
  severity: null,
  audience: null,
  anchors: null,
  notes: null
)
```

