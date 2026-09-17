# CrosslyBuyer::CreateMagicScanSynthesizeResponsePayloadGrading

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grader_slug** | **String** |  |  |
| **grade** | **String** | As the grader writes it: &#39;10&#39;, &#39;9.8&#39;, &#39;MS-65&#39;. |  |
| **qualifier** | **String** |  | [optional] |
| **seal_grade** | **String** | Second axis on a &#x60;dual&#x60; scale — WATA&#39;s seal grade. | [optional] |
| **cert_number** | **String** |  | [optional] |
| **grade_key** | **String** | Derived. Never assign by hand — call &#x60;gradeKey()&#x60;. |  |
| **verified_at** | **String** |  | [optional] |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::CreateMagicScanSynthesizeResponsePayloadGrading.new(
  grader_slug: null,
  grade: null,
  qualifier: null,
  seal_grade: null,
  cert_number: null,
  grade_key: null,
  verified_at: null
)
```

