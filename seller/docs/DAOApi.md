# Crossly::DAOApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_dao_proposal**](DAOApi.md#create_dao_proposal) | **POST** /v1/dao/proposals | Raise a proposal. Starts as a draft. |
| [**create_dao_proposal_finalise**](DAOApi.md#create_dao_proposal_finalise) | **POST** /v1/dao/proposals/{id}/finalise | Close a proposal whose window has passed and record the outcome. |
| [**create_dao_proposal_open**](DAOApi.md#create_dao_proposal_open) | **POST** /v1/dao/proposals/{id}/open | Put your draft to a vote. Snapshots voting power. |
| [**create_dao_proposal_veto**](DAOApi.md#create_dao_proposal_veto) | **POST** /v1/dao/proposals/{id}/veto | Operator block. There is no matching power to PASS. |
| [**create_dao_proposal_vote**](DAOApi.md#create_dao_proposal_vote) | **POST** /v1/dao/proposals/{id}/vote | Cast or change a vote while the window is open. |
| [**delete_dao_proposal**](DAOApi.md#delete_dao_proposal) | **DELETE** /v1/dao/proposals/{id} | Withdraw your own DRAFT. |
| [**get_dao_proposal_tally**](DAOApi.md#get_dao_proposal_tally) | **GET** /v1/dao/proposals/{id}/tally | The live count. |
| [**get_dao_subject_participation**](DAOApi.md#get_dao_subject_participation) | **GET** /v1/dao/subjects/{subjectId}/participation | One holder&#39;s participation: votes, voting power over time, share. |
| [**list_dao_proposals**](DAOApi.md#list_dao_proposals) | **GET** /v1/dao/proposals | The proposal queue. |


## create_dao_proposal

> <CreateDaoProposalResponse> create_dao_proposal(create_dao_proposal_request)

Raise a proposal. Starts as a draft.

Requires staked CBX above `minProposeWeight`, and one in-flight proposal at a time. The limits bound a denial of ATTENTION rather than of service — attention is the resource a DAO actually runs on. `beneficiaryKind` is a CLOSED set and there is deliberately no stakers, holders, airdrop or distribution option. A proposal whose beneficiaries are the voters would be a self-payment, and a distribution decided by its own recipients is a dividend whatever it is called. The DAO decides WHAT to fund, never WHO gets paid. A `policy` proposal requests no funds and must omit the amount; every other kind must supply one. proposalKind (default spend) raises a Crossly Funding pool proposal instead: pool_allocation (beneficiary funding_pool, an amount), pool_parameter, spend_category or supplier_allowlist (beneficiary policy, with params). A passed pool proposal is applied by the operator; it never pays the voters.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
create_dao_proposal_request = Crossly::CreateDaoProposalRequest.new({subject_id: 'subject_id_example', title: 'title_example', body: 'body_example', beneficiary_kind: 'marketing'}) # CreateDaoProposalRequest | 

begin
  # Raise a proposal. Starts as a draft.
  result = api_instance.create_dao_proposal(create_dao_proposal_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal: #{e}"
end
```

#### Using the create_dao_proposal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDaoProposalResponse>, Integer, Hash)> create_dao_proposal_with_http_info(create_dao_proposal_request)

```ruby
begin
  # Raise a proposal. Starts as a draft.
  data, status_code, headers = api_instance.create_dao_proposal_with_http_info(create_dao_proposal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDaoProposalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_dao_proposal_request** | **CreateDaoProposalRequest** |  |  |

### Return type

**CreateDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_dao_proposal_finalise

> <CreateDaoProposalFinaliseResponse> create_dao_proposal_finalise(id)

Close a proposal whose window has passed and record the outcome.

Normally unnecessary — the hourly sweep does it. Exposed so a result can be published immediately after a window closes rather than waiting for a tick. FINALISING RECORDS AN OUTCOME AND NOTHING ELSE. A passed proposal sets a status; disbursing still requires a campaign with a preview and a human approval, and there is no endpoint here that can move value.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 

begin
  # Close a proposal whose window has passed and record the outcome.
  result = api_instance.create_dao_proposal_finalise(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_finalise: #{e}"
end
```

#### Using the create_dao_proposal_finalise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDaoProposalFinaliseResponse>, Integer, Hash)> create_dao_proposal_finalise_with_http_info(id)

```ruby
begin
  # Close a proposal whose window has passed and record the outcome.
  data, status_code, headers = api_instance.create_dao_proposal_finalise_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDaoProposalFinaliseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_finalise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateDaoProposalFinaliseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_dao_proposal_open

> <CreateDaoProposalOpenResponse> create_dao_proposal_open(id, create_dao_proposal_open_request)

Put your draft to a vote. Snapshots voting power.

ONLY THE PROPOSER may open their own draft. Opening puts something to a binding vote in somebody's name, and authorship and that decision both belong to them. Opening writes a per-subject voting-power snapshot and freezes the quorum denominator. Nothing recomputes either afterwards, which is what stops acquire-vote-sell. Refuses when nobody holds enough staked CBX to vote — opening then would guarantee a failed quorum, waste a week and read as the feature being broken.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 
create_dao_proposal_open_request = Crossly::CreateDaoProposalOpenRequest.new({subject_id: 'subject_id_example'}) # CreateDaoProposalOpenRequest | 

begin
  # Put your draft to a vote. Snapshots voting power.
  result = api_instance.create_dao_proposal_open(id, create_dao_proposal_open_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_open: #{e}"
end
```

#### Using the create_dao_proposal_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDaoProposalOpenResponse>, Integer, Hash)> create_dao_proposal_open_with_http_info(id, create_dao_proposal_open_request)

```ruby
begin
  # Put your draft to a vote. Snapshots voting power.
  data, status_code, headers = api_instance.create_dao_proposal_open_with_http_info(id, create_dao_proposal_open_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDaoProposalOpenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_dao_proposal_open_request** | **CreateDaoProposalOpenRequest** |  |  |

### Return type

**CreateDaoProposalOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_dao_proposal_veto

> <CreateDaoProposalVetoResponse> create_dao_proposal_veto(id, create_dao_proposal_veto_request)

Operator block. There is no matching power to PASS.

DELIBERATELY ASYMMETRIC. A veto exists for the illegal and the ruinous — funding something unlawful, or emptying the pool in a week. A power to pass would make every vote advisory theatre, because the outcome would always be whatever the operator preferred. An operator who can only say no cannot manufacture an outcome. The reason is MANDATORY and stored: an unexplained veto is indistinguishable from disliking the result, which is exactly what would destroy confidence in the mechanism. Expect it to be read.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 
create_dao_proposal_veto_request = Crossly::CreateDaoProposalVetoRequest.new({reason: 'reason_example', vetoed_by_user_id: 'vetoed_by_user_id_example'}) # CreateDaoProposalVetoRequest | 

begin
  # Operator block. There is no matching power to PASS.
  result = api_instance.create_dao_proposal_veto(id, create_dao_proposal_veto_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_veto: #{e}"
end
```

#### Using the create_dao_proposal_veto_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDaoProposalVetoResponse>, Integer, Hash)> create_dao_proposal_veto_with_http_info(id, create_dao_proposal_veto_request)

```ruby
begin
  # Operator block. There is no matching power to PASS.
  data, status_code, headers = api_instance.create_dao_proposal_veto_with_http_info(id, create_dao_proposal_veto_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDaoProposalVetoResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_veto_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_dao_proposal_veto_request** | **CreateDaoProposalVetoRequest** |  |  |

### Return type

**CreateDaoProposalVetoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_dao_proposal_vote

> <CreateDaoProposalVoteResponse> create_dao_proposal_vote(id, create_dao_proposal_vote_request)

Cast or change a vote while the window is open.

Weight comes from the snapshot taken when the proposal opened, so staking afterwards grants no vote on it. Changing your mind is an UPDATE, not a second vote — a unique index makes double-counting impossible even if this logic were wrong. ABSTAIN counts toward turnout and not toward approval, which is the whole reason to offer it: it lets you help a proposal clear quorum without taking a side.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 
create_dao_proposal_vote_request = Crossly::CreateDaoProposalVoteRequest.new({subject_id: 'subject_id_example', choice: 'for'}) # CreateDaoProposalVoteRequest | 

begin
  # Cast or change a vote while the window is open.
  result = api_instance.create_dao_proposal_vote(id, create_dao_proposal_vote_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_vote: #{e}"
end
```

#### Using the create_dao_proposal_vote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDaoProposalVoteResponse>, Integer, Hash)> create_dao_proposal_vote_with_http_info(id, create_dao_proposal_vote_request)

```ruby
begin
  # Cast or change a vote while the window is open.
  data, status_code, headers = api_instance.create_dao_proposal_vote_with_http_info(id, create_dao_proposal_vote_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDaoProposalVoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->create_dao_proposal_vote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_dao_proposal_vote_request** | **CreateDaoProposalVoteRequest** |  |  |

### Return type

**CreateDaoProposalVoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dao_proposal

> <DeleteDaoProposalResponse> delete_dao_proposal(id, opts)

Withdraw your own DRAFT.

Drafts only. Withdrawing an OPEN proposal would discard votes already cast, which is the proposer overruling the electorate — the thing the whole mechanism exists to prevent. An open proposal runs its window and gets a result. This exists so the one-in-flight limit is not a trap: without it a typo would lock somebody out of governance until the draft expired.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 
opts = {
  subject_id_request: Crossly::SubjectIdRequest.new({subject_id: 'subject_id_example'}) # SubjectIdRequest | 
}

begin
  # Withdraw your own DRAFT.
  result = api_instance.delete_dao_proposal(id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->delete_dao_proposal: #{e}"
end
```

#### Using the delete_dao_proposal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDaoProposalResponse>, Integer, Hash)> delete_dao_proposal_with_http_info(id, opts)

```ruby
begin
  # Withdraw your own DRAFT.
  data, status_code, headers = api_instance.delete_dao_proposal_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDaoProposalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->delete_dao_proposal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **subject_id_request** | **SubjectIdRequest** |  | [optional] |

### Return type

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_dao_proposal_tally

> <GetDaoProposalTallyResponse> get_dao_proposal_tally(id)

The live count.

`turnoutBps` is cast power over the frozen total, and counts abstentions. `approvalBps` is FOR over decisive votes, and does not. A proposal that misses quorum reports `expired` rather than `rejected` when finalised — \"nobody turned up\" and \"the room said no\" are different outcomes and a proposer deserves to know which happened.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
id = 'id_example' # String | 

begin
  # The live count.
  result = api_instance.get_dao_proposal_tally(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->get_dao_proposal_tally: #{e}"
end
```

#### Using the get_dao_proposal_tally_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDaoProposalTallyResponse>, Integer, Hash)> get_dao_proposal_tally_with_http_info(id)

```ruby
begin
  # The live count.
  data, status_code, headers = api_instance.get_dao_proposal_tally_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDaoProposalTallyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->get_dao_proposal_tally_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetDaoProposalTallyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dao_subject_participation

> <GetDaoSubjectParticipationResponse> get_dao_subject_participation(subject_id)

One holder's participation: votes, voting power over time, share.

Every vote the subject cast (with the frozen weight it carried), the voting power snapshotted for it at each proposal open (oldest first) with that proposal total, and the latest snapshot share of the total in bps. Amounts are strings of base units. Read-only; the subject must belong to the calling merchant.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
subject_id = 'subject_id_example' # String | 

begin
  # One holder's participation: votes, voting power over time, share.
  result = api_instance.get_dao_subject_participation(subject_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->get_dao_subject_participation: #{e}"
end
```

#### Using the get_dao_subject_participation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDaoSubjectParticipationResponse>, Integer, Hash)> get_dao_subject_participation_with_http_info(subject_id)

```ruby
begin
  # One holder's participation: votes, voting power over time, share.
  data, status_code, headers = api_instance.get_dao_subject_participation_with_http_info(subject_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDaoSubjectParticipationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->get_dao_subject_participation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** |  |  |

### Return type

**GetDaoSubjectParticipationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dao_proposals

> <ListDaoProposalsResponse> list_dao_proposals(opts)

The proposal queue.

Staked CBX decides what the events pool funds. Voting power is size x tenure — the same weighting the earn multiplier uses — and it is SNAPSHOTTED when a proposal opens, so staking after seeing one grants no vote on it. `totalVotingPower` is the frozen quorum denominator; recomputing it would let somebody move the bar after votes were cast. Amounts are strings of base units.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::DAOApi.new
opts = {
  status: 'expired', # String | 
  limit: 8.14 # Float | 
}

begin
  # The proposal queue.
  result = api_instance.list_dao_proposals(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->list_dao_proposals: #{e}"
end
```

#### Using the list_dao_proposals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDaoProposalsResponse>, Integer, Hash)> list_dao_proposals_with_http_info(opts)

```ruby
begin
  # The proposal queue.
  data, status_code, headers = api_instance.list_dao_proposals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDaoProposalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling DAOApi->list_dao_proposals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListDaoProposalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

