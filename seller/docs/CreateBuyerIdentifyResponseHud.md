# Crossly::CreateBuyerIdentifyResponseHud

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **subline** | **String** |  | [optional] |
| **facts** | [**Array&lt;CreateBuyerIdentifyResponseHudFacts&gt;**](CreateBuyerIdentifyResponseHudFacts.md) |  |  |
| **action** | [**CreateBuyerIdentifyResponseHudAction**](CreateBuyerIdentifyResponseHudAction.md) |  |  |
| **tone** | **String** | &#x60;win&#x60; earned a saving, &#x60;info&#x60; found something, &#x60;none&#x60; found nothing. |  |
| **image_url** | **String** | Image for the lens card, when there is a match worth showing. | [optional] |

## Example

```ruby
require 'crossly'

instance = Crossly::CreateBuyerIdentifyResponseHud.new(
  headline: null,
  subline: null,
  facts: null,
  action: null,
  tone: null,
  image_url: null
)
```

