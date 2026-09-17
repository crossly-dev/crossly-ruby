# Crossly::GetOauthInitResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crossly'

Crossly::GetOauthInitResponse.openapi_one_of
# =>
# [
#   :'GetOauthInitResponseOneOf',
#   :'GetOauthInitResponseOneOf1',
#   :'GetOauthInitResponseOneOf2',
#   :'GetOauthInitResponseOneOf3'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crossly'

Crossly::GetOauthInitResponse.build(data)
# => #<GetOauthInitResponseOneOf:0x00007fdd4aab02a0>

Crossly::GetOauthInitResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetOauthInitResponseOneOf`
- `GetOauthInitResponseOneOf1`
- `GetOauthInitResponseOneOf2`
- `GetOauthInitResponseOneOf3`
- `nil` (if no type matches)

