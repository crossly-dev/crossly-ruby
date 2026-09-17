# CrosslyBuyer::GetConnectionHealthResponseAnchors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expected** | **Array&lt;String&gt;** | What we were looking for. Empty ⇒ this platform is unmonitored. |  |
| **observations** | **Array&lt;Object&gt;** |  |  |
| **present** | **Array&lt;String&gt;** | Name found carrying a non-empty value — the only honest \&quot;logged in\&quot;. |  |
| **empty** | **Array&lt;String&gt;** | Name found, value is the empty string. The Whatnot class. |  |
| **missing** | **Array&lt;String&gt;** | Name not in the jar at all. |  |
| **cookie_count** | **Float** |  |  |
| **observed_cookie_names** | **Array&lt;String&gt;** | Cookie names actually in the jar, truncated. This is the payload that turns \&quot;anchors missing\&quot; into a diagnosis: if the jar holds 30 cookies and none are ours, a rename is the likely story; if it holds three device cookies, the browser is signed out. NAMES ONLY — never values. |  |

## Example

```ruby
require 'crossly_buyer'

instance = CrosslyBuyer::GetConnectionHealthResponseAnchors.new(
  expected: null,
  observations: null,
  present: null,
  empty: null,
  missing: null,
  cookie_count: null,
  observed_cookie_names: null
)
```

