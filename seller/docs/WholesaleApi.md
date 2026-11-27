# Crossly::WholesaleApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_wholesale_buyer_invite**](WholesaleApi.md#create_wholesale_buyer_invite) | **POST** /v1/wholesale/buyers/invite | Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up. |
| [**create_wholesale_buyer_remove**](WholesaleApi.md#create_wholesale_buyer_remove) | **POST** /v1/wholesale/buyers/remove | Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept. |
| [**create_wholesale_catalog**](WholesaleApi.md#create_wholesale_catalog) | **POST** /v1/wholesale/catalogs | Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \&quot;private\&quot; is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices). |
| [**create_wholesale_catalog_item**](WholesaleApi.md#create_wholesale_catalog_item) | **POST** /v1/wholesale/catalogs/{id}/items | Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated. |
| [**create_wholesale_drop**](WholesaleApi.md#create_wholesale_drop) | **POST** /v1/wholesale/drops | Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \&quot;scheduled\&quot;. |
| [**create_wholesale_drop_release**](WholesaleApi.md#create_wholesale_drop_release) | **POST** /v1/wholesale/drops/{id}/release | Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }. |
| [**create_wholesale_freight_request_answer**](WholesaleApi.md#create_wholesale_freight_request_answer) | **POST** /v1/wholesale/freight-requests/{id}/answer | Answer an open freight request with a figure in CENTS (and an optional note). |
| [**create_wholesale_group**](WholesaleApi.md#create_wholesale_group) | **POST** /v1/wholesale/groups | Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one. |
| [**create_wholesale_group_member**](WholesaleApi.md#create_wholesale_group_member) | **POST** /v1/wholesale/groups/{id}/members | Add a buyer to a group by account id or by the email of an existing Crossly account. |
| [**create_wholesale_invoice_credit_note**](WholesaleApi.md#create_wholesale_invoice_credit_note) | **POST** /v1/wholesale/invoices/{id}/credit-notes | Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered &lt;invoice&gt;-CN&lt;n&gt;; settling the rest closes the invoice paid. Not a refund. |
| [**create_wholesale_invoice_late_fee**](WholesaleApi.md#create_wholesale_invoice_late_fee) | **POST** /v1/wholesale/invoices/{id}/late-fee | Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue. |
| [**create_wholesale_invoice_mark_paid**](WholesaleApi.md#create_wholesale_invoice_mark_paid) | **POST** /v1/wholesale/invoices/{id}/mark-paid | Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly&#39;s fee and the tax it remits are charged to your billing card. |
| [**create_wholesale_invoice_send**](WholesaleApi.md#create_wholesale_invoice_send) | **POST** /v1/wholesale/invoices/{id}/send | Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it. |
| [**create_wholesale_invoice_void**](WholesaleApi.md#create_wholesale_invoice_void) | **POST** /v1/wholesale/invoices/{id}/void | Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer&#39;s credit limit. |
| [**create_wholesale_invoice_write_off**](WholesaleApi.md#create_wholesale_invoice_write_off) | **POST** /v1/wholesale/invoices/{id}/write-off | Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer&#39;s credit. |
| [**create_wholesale_profile_ships_from_validate**](WholesaleApi.md#create_wholesale_profile_ships_from_validate) | **POST** /v1/wholesale/profile/ships-from/validate | Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin. |
| [**create_wholesale_quote_answer**](WholesaleApi.md#create_wholesale_quote_answer) | **POST** /v1/wholesale/quotes/{id}/answer | Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry. |
| [**create_wholesale_quote_decline**](WholesaleApi.md#create_wholesale_quote_decline) | **POST** /v1/wholesale/quotes/{id}/decline | Decline a quote request, with an optional reason the buyer sees. |
| [**create_wholesale_request_decide**](WholesaleApi.md#create_wholesale_request_decide) | **POST** /v1/wholesale/requests/{id}/decide | Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request. |
| [**create_wholesale_tier_bulk**](WholesaleApi.md#create_wholesale_tier_bulk) | **POST** /v1/wholesale/tiers/bulk | One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing&#39;s own price. Returns how many were updated and which were skipped and why. |
| [**delete_wholesale_buyer_term**](WholesaleApi.md#delete_wholesale_buyer_term) | **DELETE** /v1/wholesale/buyers/{buyerUserId}/terms | Switch a buyer&#39;s account terms off. Invoices already issued are unaffected. |
| [**delete_wholesale_catalog**](WholesaleApi.md#delete_wholesale_catalog) | **DELETE** /v1/wholesale/catalogs/{id} | Delete a catalog with its items, grants and access requests. Orders and invoices are untouched. |
| [**delete_wholesale_catalog_item**](WholesaleApi.md#delete_wholesale_catalog_item) | **DELETE** /v1/wholesale/catalogs/{id}/items/{platformListingId} | Take an item out of a catalog. The listing itself is untouched. |
| [**delete_wholesale_group**](WholesaleApi.md#delete_wholesale_group) | **DELETE** /v1/wholesale/groups/{id} | Delete a customer group. Its members keep any other group or account rate. |
| [**delete_wholesale_group_member**](WholesaleApi.md#delete_wholesale_group_member) | **DELETE** /v1/wholesale/groups/{id}/members/{buyerUserId} | Take a buyer out of a group. |
| [**get_wholesale_catalog_line_sheet**](WholesaleApi.md#get_wholesale_catalog_line_sheet) | **GET** /v1/wholesale/catalogs/{id}/line-sheet | The catalog&#39;s line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks. |
| [**get_wholesale_catalog_share**](WholesaleApi.md#get_wholesale_catalog_share) | **GET** /v1/wholesale/catalogs/{id}/share | The catalog&#39;s buyer link (null until you have a shop username), to share or print as a QR code. |
| [**get_wholesale_category**](WholesaleApi.md#get_wholesale_category) | **GET** /v1/wholesale/categories | The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \&quot;other:&lt;words&gt;\&quot;. |
| [**get_wholesale_drop**](WholesaleApi.md#get_wholesale_drop) | **GET** /v1/wholesale/drops/{id} | One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released. |
| [**get_wholesale_invoice**](WholesaleApi.md#get_wholesale_invoice) | **GET** /v1/wholesale/invoices/{id} | One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected. |
| [**get_wholesale_overview**](WholesaleApi.md#get_wholesale_overview) | **GET** /v1/wholesale/overview | Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests. |
| [**get_wholesale_profile**](WholesaleApi.md#get_wholesale_profile) | **GET** /v1/wholesale/profile | A store&#39;s trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults. |
| [**get_wholesale_quote**](WholesaleApi.md#get_wholesale_quote) | **GET** /v1/wholesale/quotes/{id} | One quote request. |
| [**get_wholesale_reserve**](WholesaleApi.md#get_wholesale_reserve) | **GET** /v1/wholesale/reserve/{inventoryItemId} | How many units of an inventory item are held back for wholesale, and what retail channels advertise. |
| [**get_wholesale_term_preview**](WholesaleApi.md#get_wholesale_term_preview) | **GET** /v1/wholesale/terms/preview | The trade terms that apply to a catalog item (?catalogId&amp;platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to. |
| [**list_wholesale_buyers**](WholesaleApi.md#list_wholesale_buyers) | **GET** /v1/wholesale/buyers | Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those). |
| [**list_wholesale_catalog_items**](WholesaleApi.md#list_wholesale_catalog_items) | **GET** /v1/wholesale/catalogs/{id}/items | A catalog&#39;s items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks. |
| [**list_wholesale_catalogs**](WholesaleApi.md#list_wholesale_catalogs) | **GET** /v1/wholesale/catalogs | Your wholesale catalogs with item, buyer-grant and pending-request counts. |
| [**list_wholesale_drops**](WholesaleApi.md#list_wholesale_drops) | **GET** /v1/wholesale/drops | Your trade drops and pre-books: audience (trade &#x3D; your approved trade buyers, catalog &#x3D; whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice). |
| [**list_wholesale_freight_requests**](WholesaleApi.md#list_wholesale_freight_requests) | **GET** /v1/wholesale/freight-requests | Freight (LTL) quote requests from buyers whose order is over your pallet threshold. |
| [**list_wholesale_groups**](WholesaleApi.md#list_wholesale_groups) | **GET** /v1/wholesale/groups | Your customer groups with their discount and members. |
| [**list_wholesale_invoices**](WholesaleApi.md#list_wholesale_invoices) | **GET** /v1/wholesale/invoices | On-account invoices, newest first, with balance due. ?status&#x3D;unpaid for open, partial and overdue together. |
| [**list_wholesale_orders**](WholesaleApi.md#list_wholesale_orders) | **GET** /v1/wholesale/orders | Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order. |
| [**list_wholesale_quotes**](WholesaleApi.md#list_wholesale_quotes) | **GET** /v1/wholesale/quotes | Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status&#x3D;open lists the ones waiting on you or the buyer. |
| [**list_wholesale_requests**](WholesaleApi.md#list_wholesale_requests) | **GET** /v1/wholesale/requests | Requests from buyers to open your private or trade-only catalogs, with each buyer&#39;s business-verification and tax-exempt status. ?status&#x3D;all includes decided ones. |
| [**list_wholesale_setup_steps**](WholesaleApi.md#list_wholesale_setup_steps) | **GET** /v1/wholesale/setup-steps | The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists. |
| [**update_wholesale_buyer_term**](WholesaleApi.md#update_wholesale_buyer_term) | **PUT** /v1/wholesale/buyers/{buyerUserId}/terms | Set a buyer&#39;s account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null &#x3D; no limit) and discountPercentBps (their negotiated rate). |
| [**update_wholesale_catalog**](WholesaleApi.md#update_wholesale_catalog) | **PATCH** /v1/wholesale/catalogs/{id} | Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active. |
| [**update_wholesale_catalog_item**](WholesaleApi.md#update_wholesale_catalog_item) | **PATCH** /v1/wholesale/catalogs/{id}/items | Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price. |
| [**update_wholesale_catalog_item_by_platform_listing_id**](WholesaleApi.md#update_wholesale_catalog_item_by_platform_listing_id) | **PATCH** /v1/wholesale/catalogs/{id}/items/{platformListingId} | Change one item&#39;s trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears &#x3D; inherit from the catalog. |
| [**update_wholesale_catalog_item_order**](WholesaleApi.md#update_wholesale_catalog_item_order) | **PUT** /v1/wholesale/catalogs/{id}/items/order | Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these. |
| [**update_wholesale_drop**](WholesaleApi.md#update_wholesale_drop) | **PATCH** /v1/wholesale/drops/{id} | Edit a trade drop (any create field but kind), schedule it (status \&quot;scheduled\&quot;, with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed. |
| [**update_wholesale_group**](WholesaleApi.md#update_wholesale_group) | **PATCH** /v1/wholesale/groups/{id} | Rename a group, change its discount, or pause it (active&#x3D;false). |
| [**update_wholesale_listing_tier**](WholesaleApi.md#update_wholesale_listing_tier) | **PUT** /v1/wholesale/listings/{platformListingId}/tiers | Replace one listing&#39;s quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout. |
| [**update_wholesale_profile**](WholesaleApi.md#update_wholesale_profile) | **PUT** /v1/wholesale/profile | Save a store&#39;s trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind. |
| [**update_wholesale_reserve**](WholesaleApi.md#update_wholesale_reserve) | **PUT** /v1/wholesale/reserve/{inventoryItemId} | Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it. |


## create_wholesale_buyer_invite

> <CreateWholesaleBuyerInviteResponse> create_wholesale_buyer_invite

Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.
  result = api_instance.create_wholesale_buyer_invite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_buyer_invite: #{e}"
end
```

#### Using the create_wholesale_buyer_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleBuyerInviteResponse>, Integer, Hash)> create_wholesale_buyer_invite_with_http_info

```ruby
begin
  # Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.
  data, status_code, headers = api_instance.create_wholesale_buyer_invite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleBuyerInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_buyer_invite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleBuyerInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_buyer_remove

> <CreateWholesaleBuyerRemoveResponse> create_wholesale_buyer_remove

Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.
  result = api_instance.create_wholesale_buyer_remove
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_buyer_remove: #{e}"
end
```

#### Using the create_wholesale_buyer_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleBuyerRemoveResponse>, Integer, Hash)> create_wholesale_buyer_remove_with_http_info

```ruby
begin
  # Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.
  data, status_code, headers = api_instance.create_wholesale_buyer_remove_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleBuyerRemoveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_buyer_remove_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleBuyerRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_catalog

> <CreateWholesaleCatalogResponse> create_wholesale_catalog

Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \"private\" is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \"private\" is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).
  result = api_instance.create_wholesale_catalog
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_catalog: #{e}"
end
```

#### Using the create_wholesale_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleCatalogResponse>, Integer, Hash)> create_wholesale_catalog_with_http_info

```ruby
begin
  # Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \"private\" is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).
  data, status_code, headers = api_instance.create_wholesale_catalog_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleCatalogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_catalog_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_catalog_item

> <CreateWholesaleCatalogItemResponse> create_wholesale_catalog_item(id)

Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.
  result = api_instance.create_wholesale_catalog_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_catalog_item: #{e}"
end
```

#### Using the create_wholesale_catalog_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleCatalogItemResponse>, Integer, Hash)> create_wholesale_catalog_item_with_http_info(id)

```ruby
begin
  # Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.
  data, status_code, headers = api_instance.create_wholesale_catalog_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleCatalogItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_catalog_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleCatalogItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_drop

> <CreateWholesaleDropResponse> create_wholesale_drop

Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \"scheduled\".

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \"scheduled\".
  result = api_instance.create_wholesale_drop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_drop: #{e}"
end
```

#### Using the create_wholesale_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleDropResponse>, Integer, Hash)> create_wholesale_drop_with_http_info

```ruby
begin
  # Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \"scheduled\".
  data, status_code, headers = api_instance.create_wholesale_drop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_drop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_drop_release

> <CreateWholesaleDropReleaseResponse> create_wholesale_drop_release(id)

Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.
  result = api_instance.create_wholesale_drop_release(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_drop_release: #{e}"
end
```

#### Using the create_wholesale_drop_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleDropReleaseResponse>, Integer, Hash)> create_wholesale_drop_release_with_http_info(id)

```ruby
begin
  # Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.
  data, status_code, headers = api_instance.create_wholesale_drop_release_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleDropReleaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_drop_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleDropReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_freight_request_answer

> <CreateWholesaleFreightRequestAnswerResponse> create_wholesale_freight_request_answer(id)

Answer an open freight request with a figure in CENTS (and an optional note).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Answer an open freight request with a figure in CENTS (and an optional note).
  result = api_instance.create_wholesale_freight_request_answer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_freight_request_answer: #{e}"
end
```

#### Using the create_wholesale_freight_request_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleFreightRequestAnswerResponse>, Integer, Hash)> create_wholesale_freight_request_answer_with_http_info(id)

```ruby
begin
  # Answer an open freight request with a figure in CENTS (and an optional note).
  data, status_code, headers = api_instance.create_wholesale_freight_request_answer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleFreightRequestAnswerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_freight_request_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleFreightRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_group

> <CreateWholesaleGroupResponse> create_wholesale_group

Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.
  result = api_instance.create_wholesale_group
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_group: #{e}"
end
```

#### Using the create_wholesale_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleGroupResponse>, Integer, Hash)> create_wholesale_group_with_http_info

```ruby
begin
  # Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.
  data, status_code, headers = api_instance.create_wholesale_group_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_group_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_group_member

> <CreateWholesaleGroupMemberResponse> create_wholesale_group_member(id)

Add a buyer to a group by account id or by the email of an existing Crossly account.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Add a buyer to a group by account id or by the email of an existing Crossly account.
  result = api_instance.create_wholesale_group_member(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_group_member: #{e}"
end
```

#### Using the create_wholesale_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleGroupMemberResponse>, Integer, Hash)> create_wholesale_group_member_with_http_info(id)

```ruby
begin
  # Add a buyer to a group by account id or by the email of an existing Crossly account.
  data, status_code, headers = api_instance.create_wholesale_group_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleGroupMemberResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_group_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleGroupMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_credit_note

> <CreateWholesaleInvoiceCreditNoteResponse> create_wholesale_invoice_credit_note(id)

Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered <invoice>-CN<n>; settling the rest closes the invoice paid. Not a refund.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered <invoice>-CN<n>; settling the rest closes the invoice paid. Not a refund.
  result = api_instance.create_wholesale_invoice_credit_note(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_credit_note: #{e}"
end
```

#### Using the create_wholesale_invoice_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleInvoiceCreditNoteResponse>, Integer, Hash)> create_wholesale_invoice_credit_note_with_http_info(id)

```ruby
begin
  # Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered <invoice>-CN<n>; settling the rest closes the invoice paid. Not a refund.
  data, status_code, headers = api_instance.create_wholesale_invoice_credit_note_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleInvoiceCreditNoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleInvoiceCreditNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_late_fee

> <WholesaleInvoiceResponse> create_wholesale_invoice_late_fee(id)

Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.
  result = api_instance.create_wholesale_invoice_late_fee(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_late_fee: #{e}"
end
```

#### Using the create_wholesale_invoice_late_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleInvoiceResponse>, Integer, Hash)> create_wholesale_invoice_late_fee_with_http_info(id)

```ruby
begin
  # Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.
  data, status_code, headers = api_instance.create_wholesale_invoice_late_fee_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_late_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_mark_paid

> <WholesaleInvoiceResponse> create_wholesale_invoice_mark_paid(id)

Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly's fee and the tax it remits are charged to your billing card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly's fee and the tax it remits are charged to your billing card.
  result = api_instance.create_wholesale_invoice_mark_paid(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_mark_paid: #{e}"
end
```

#### Using the create_wholesale_invoice_mark_paid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleInvoiceResponse>, Integer, Hash)> create_wholesale_invoice_mark_paid_with_http_info(id)

```ruby
begin
  # Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly's fee and the tax it remits are charged to your billing card.
  data, status_code, headers = api_instance.create_wholesale_invoice_mark_paid_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_mark_paid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_send

> <CreateWholesaleInvoiceSendResponse> create_wholesale_invoice_send(id)

Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.
  result = api_instance.create_wholesale_invoice_send(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_send: #{e}"
end
```

#### Using the create_wholesale_invoice_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleInvoiceSendResponse>, Integer, Hash)> create_wholesale_invoice_send_with_http_info(id)

```ruby
begin
  # Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.
  data, status_code, headers = api_instance.create_wholesale_invoice_send_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleInvoiceSendResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleInvoiceSendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_void

> <WholesaleInvoiceResponse> create_wholesale_invoice_void(id)

Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer's credit limit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer's credit limit.
  result = api_instance.create_wholesale_invoice_void(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_void: #{e}"
end
```

#### Using the create_wholesale_invoice_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleInvoiceResponse>, Integer, Hash)> create_wholesale_invoice_void_with_http_info(id)

```ruby
begin
  # Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer's credit limit.
  data, status_code, headers = api_instance.create_wholesale_invoice_void_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_invoice_write_off

> <WholesaleInvoiceResponse> create_wholesale_invoice_write_off(id)

Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer's credit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer's credit.
  result = api_instance.create_wholesale_invoice_write_off(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_write_off: #{e}"
end
```

#### Using the create_wholesale_invoice_write_off_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleInvoiceResponse>, Integer, Hash)> create_wholesale_invoice_write_off_with_http_info(id)

```ruby
begin
  # Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer's credit.
  data, status_code, headers = api_instance.create_wholesale_invoice_write_off_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_invoice_write_off_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_profile_ships_from_validate

> <CreateWholesaleProfileShipsFromValidateResponse> create_wholesale_profile_ships_from_validate

Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.
  result = api_instance.create_wholesale_profile_ships_from_validate
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_profile_ships_from_validate: #{e}"
end
```

#### Using the create_wholesale_profile_ships_from_validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleProfileShipsFromValidateResponse>, Integer, Hash)> create_wholesale_profile_ships_from_validate_with_http_info

```ruby
begin
  # Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.
  data, status_code, headers = api_instance.create_wholesale_profile_ships_from_validate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleProfileShipsFromValidateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_profile_ships_from_validate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleProfileShipsFromValidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_quote_answer

> <WholesaleQuoteResponse> create_wholesale_quote_answer(id)

Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.
  result = api_instance.create_wholesale_quote_answer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_quote_answer: #{e}"
end
```

#### Using the create_wholesale_quote_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleQuoteResponse>, Integer, Hash)> create_wholesale_quote_answer_with_http_info(id)

```ruby
begin
  # Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.
  data, status_code, headers = api_instance.create_wholesale_quote_answer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_quote_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_quote_decline

> <WholesaleQuoteResponse> create_wholesale_quote_decline(id)

Decline a quote request, with an optional reason the buyer sees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Decline a quote request, with an optional reason the buyer sees.
  result = api_instance.create_wholesale_quote_decline(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_quote_decline: #{e}"
end
```

#### Using the create_wholesale_quote_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleQuoteResponse>, Integer, Hash)> create_wholesale_quote_decline_with_http_info(id)

```ruby
begin
  # Decline a quote request, with an optional reason the buyer sees.
  data, status_code, headers = api_instance.create_wholesale_quote_decline_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_quote_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_request_decide

> <CreateWholesaleRequestDecideResponse> create_wholesale_request_decide(id)

Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.
  result = api_instance.create_wholesale_request_decide(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_request_decide: #{e}"
end
```

#### Using the create_wholesale_request_decide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleRequestDecideResponse>, Integer, Hash)> create_wholesale_request_decide_with_http_info(id)

```ruby
begin
  # Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.
  data, status_code, headers = api_instance.create_wholesale_request_decide_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleRequestDecideResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_request_decide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleRequestDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_wholesale_tier_bulk

> <CreateWholesaleTierBulkResponse> create_wholesale_tier_bulk

One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing's own price. Returns how many were updated and which were skipped and why.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing's own price. Returns how many were updated and which were skipped and why.
  result = api_instance.create_wholesale_tier_bulk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_tier_bulk: #{e}"
end
```

#### Using the create_wholesale_tier_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleTierBulkResponse>, Integer, Hash)> create_wholesale_tier_bulk_with_http_info

```ruby
begin
  # One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing's own price. Returns how many were updated and which were skipped and why.
  data, status_code, headers = api_instance.create_wholesale_tier_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleTierBulkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->create_wholesale_tier_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWholesaleTierBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_wholesale_buyer_term

> <UpdateGroupBuyResponse> delete_wholesale_buyer_term(buyer_user_id)

Switch a buyer's account terms off. Invoices already issued are unaffected.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
buyer_user_id = 'buyer_user_id_example' # String | 

begin
  # Switch a buyer's account terms off. Invoices already issued are unaffected.
  result = api_instance.delete_wholesale_buyer_term(buyer_user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_buyer_term: #{e}"
end
```

#### Using the delete_wholesale_buyer_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_wholesale_buyer_term_with_http_info(buyer_user_id)

```ruby
begin
  # Switch a buyer's account terms off. Invoices already issued are unaffected.
  data, status_code, headers = api_instance.delete_wholesale_buyer_term_with_http_info(buyer_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_buyer_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyer_user_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_wholesale_catalog

> <UpdateGroupBuyResponse> delete_wholesale_catalog(id)

Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.
  result = api_instance.delete_wholesale_catalog(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_catalog: #{e}"
end
```

#### Using the delete_wholesale_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_wholesale_catalog_with_http_info(id)

```ruby
begin
  # Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.
  data, status_code, headers = api_instance.delete_wholesale_catalog_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_wholesale_catalog_item

> <UpdateGroupBuyResponse> delete_wholesale_catalog_item(id, platform_listing_id)

Take an item out of a catalog. The listing itself is untouched.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Take an item out of a catalog. The listing itself is untouched.
  result = api_instance.delete_wholesale_catalog_item(id, platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_catalog_item: #{e}"
end
```

#### Using the delete_wholesale_catalog_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_wholesale_catalog_item_with_http_info(id, platform_listing_id)

```ruby
begin
  # Take an item out of a catalog. The listing itself is untouched.
  data, status_code, headers = api_instance.delete_wholesale_catalog_item_with_http_info(id, platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_catalog_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_wholesale_group

> <UpdateGroupBuyResponse> delete_wholesale_group(id)

Delete a customer group. Its members keep any other group or account rate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Delete a customer group. Its members keep any other group or account rate.
  result = api_instance.delete_wholesale_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_group: #{e}"
end
```

#### Using the delete_wholesale_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_wholesale_group_with_http_info(id)

```ruby
begin
  # Delete a customer group. Its members keep any other group or account rate.
  data, status_code, headers = api_instance.delete_wholesale_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_wholesale_group_member

> <UpdateGroupBuyResponse> delete_wholesale_group_member(id, buyer_user_id)

Take a buyer out of a group.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 
buyer_user_id = 'buyer_user_id_example' # String | 

begin
  # Take a buyer out of a group.
  result = api_instance.delete_wholesale_group_member(id, buyer_user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_group_member: #{e}"
end
```

#### Using the delete_wholesale_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> delete_wholesale_group_member_with_http_info(id, buyer_user_id)

```ruby
begin
  # Take a buyer out of a group.
  data, status_code, headers = api_instance.delete_wholesale_group_member_with_http_info(id, buyer_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->delete_wholesale_group_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **buyer_user_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_catalog_line_sheet

> <GetWholesaleCatalogLineSheetResponse> get_wholesale_catalog_line_sheet(id)

The catalog's line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # The catalog's line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.
  result = api_instance.get_wholesale_catalog_line_sheet(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_catalog_line_sheet: #{e}"
end
```

#### Using the get_wholesale_catalog_line_sheet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleCatalogLineSheetResponse>, Integer, Hash)> get_wholesale_catalog_line_sheet_with_http_info(id)

```ruby
begin
  # The catalog's line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.
  data, status_code, headers = api_instance.get_wholesale_catalog_line_sheet_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleCatalogLineSheetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_catalog_line_sheet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWholesaleCatalogLineSheetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_catalog_share

> <GetWholesaleCatalogShareResponse> get_wholesale_catalog_share(id)

The catalog's buyer link (null until you have a shop username), to share or print as a QR code.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # The catalog's buyer link (null until you have a shop username), to share or print as a QR code.
  result = api_instance.get_wholesale_catalog_share(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_catalog_share: #{e}"
end
```

#### Using the get_wholesale_catalog_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleCatalogShareResponse>, Integer, Hash)> get_wholesale_catalog_share_with_http_info(id)

```ruby
begin
  # The catalog's buyer link (null until you have a shop username), to share or print as a QR code.
  data, status_code, headers = api_instance.get_wholesale_catalog_share_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleCatalogShareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_catalog_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWholesaleCatalogShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_category

> <GetWholesaleCategoryResponse> get_wholesale_category

The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \"other:<words>\".

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \"other:<words>\".
  result = api_instance.get_wholesale_category
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_category: #{e}"
end
```

#### Using the get_wholesale_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleCategoryResponse>, Integer, Hash)> get_wholesale_category_with_http_info

```ruby
begin
  # The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \"other:<words>\".
  data, status_code, headers = api_instance.get_wholesale_category_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleCategoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_category_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWholesaleCategoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_drop

> <GetWholesaleDropResponse> get_wholesale_drop(id)

One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.
  result = api_instance.get_wholesale_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_drop: #{e}"
end
```

#### Using the get_wholesale_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleDropResponse>, Integer, Hash)> get_wholesale_drop_with_http_info(id)

```ruby
begin
  # One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.
  data, status_code, headers = api_instance.get_wholesale_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_invoice

> <WholesaleInvoiceResponse> get_wholesale_invoice(id)

One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.
  result = api_instance.get_wholesale_invoice(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_invoice: #{e}"
end
```

#### Using the get_wholesale_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleInvoiceResponse>, Integer, Hash)> get_wholesale_invoice_with_http_info(id)

```ruby
begin
  # One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.
  data, status_code, headers = api_instance.get_wholesale_invoice_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleInvoiceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_overview

> <GetWholesaleOverviewResponse> get_wholesale_overview

Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.
  result = api_instance.get_wholesale_overview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_overview: #{e}"
end
```

#### Using the get_wholesale_overview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleOverviewResponse>, Integer, Hash)> get_wholesale_overview_with_http_info

```ruby
begin
  # Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.
  data, status_code, headers = api_instance.get_wholesale_overview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleOverviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_overview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWholesaleOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_profile

> <GetWholesaleProfileResponse> get_wholesale_profile

A store's trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # A store's trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.
  result = api_instance.get_wholesale_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_profile: #{e}"
end
```

#### Using the get_wholesale_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleProfileResponse>, Integer, Hash)> get_wholesale_profile_with_http_info

```ruby
begin
  # A store's trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.
  data, status_code, headers = api_instance.get_wholesale_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWholesaleProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_quote

> <WholesaleQuoteResponse> get_wholesale_quote(id)

One quote request.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # One quote request.
  result = api_instance.get_wholesale_quote(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_quote: #{e}"
end
```

#### Using the get_wholesale_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WholesaleQuoteResponse>, Integer, Hash)> get_wholesale_quote_with_http_info(id)

```ruby
begin
  # One quote request.
  data, status_code, headers = api_instance.get_wholesale_quote_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WholesaleQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_reserve

> <GetWholesaleReserveResponse> get_wholesale_reserve(inventory_item_id)

How many units of an inventory item are held back for wholesale, and what retail channels advertise.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
inventory_item_id = 'inventory_item_id_example' # String | 

begin
  # How many units of an inventory item are held back for wholesale, and what retail channels advertise.
  result = api_instance.get_wholesale_reserve(inventory_item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_reserve: #{e}"
end
```

#### Using the get_wholesale_reserve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleReserveResponse>, Integer, Hash)> get_wholesale_reserve_with_http_info(inventory_item_id)

```ruby
begin
  # How many units of an inventory item are held back for wholesale, and what retail channels advertise.
  data, status_code, headers = api_instance.get_wholesale_reserve_with_http_info(inventory_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleReserveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_reserve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory_item_id** | **String** |  |  |

### Return type

**GetWholesaleReserveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wholesale_term_preview

> <GetWholesaleTermPreviewResponse> get_wholesale_term_preview

The trade terms that apply to a catalog item (?catalogId&platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # The trade terms that apply to a catalog item (?catalogId&platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.
  result = api_instance.get_wholesale_term_preview
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_term_preview: #{e}"
end
```

#### Using the get_wholesale_term_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleTermPreviewResponse>, Integer, Hash)> get_wholesale_term_preview_with_http_info

```ruby
begin
  # The trade terms that apply to a catalog item (?catalogId&platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.
  data, status_code, headers = api_instance.get_wholesale_term_preview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleTermPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->get_wholesale_term_preview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWholesaleTermPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_buyers

> <ListWholesaleBuyersResponse> list_wholesale_buyers

Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).
  result = api_instance.list_wholesale_buyers
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_buyers: #{e}"
end
```

#### Using the list_wholesale_buyers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleBuyersResponse>, Integer, Hash)> list_wholesale_buyers_with_http_info

```ruby
begin
  # Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).
  data, status_code, headers = api_instance.list_wholesale_buyers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleBuyersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_buyers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleBuyersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_catalog_items

> <ListWholesaleCatalogItemsResponse> list_wholesale_catalog_items(id)

A catalog's items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # A catalog's items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.
  result = api_instance.list_wholesale_catalog_items(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_catalog_items: #{e}"
end
```

#### Using the list_wholesale_catalog_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleCatalogItemsResponse>, Integer, Hash)> list_wholesale_catalog_items_with_http_info(id)

```ruby
begin
  # A catalog's items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.
  data, status_code, headers = api_instance.list_wholesale_catalog_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleCatalogItemsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_catalog_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListWholesaleCatalogItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_catalogs

> <ListWholesaleCatalogsResponse> list_wholesale_catalogs

Your wholesale catalogs with item, buyer-grant and pending-request counts.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Your wholesale catalogs with item, buyer-grant and pending-request counts.
  result = api_instance.list_wholesale_catalogs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_catalogs: #{e}"
end
```

#### Using the list_wholesale_catalogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleCatalogsResponse>, Integer, Hash)> list_wholesale_catalogs_with_http_info

```ruby
begin
  # Your wholesale catalogs with item, buyer-grant and pending-request counts.
  data, status_code, headers = api_instance.list_wholesale_catalogs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleCatalogsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_catalogs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleCatalogsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_drops

> <ListWholesaleDropsResponse> list_wholesale_drops

Your trade drops and pre-books: audience (trade = your approved trade buyers, catalog = whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Your trade drops and pre-books: audience (trade = your approved trade buyers, catalog = whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).
  result = api_instance.list_wholesale_drops
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_drops: #{e}"
end
```

#### Using the list_wholesale_drops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleDropsResponse>, Integer, Hash)> list_wholesale_drops_with_http_info

```ruby
begin
  # Your trade drops and pre-books: audience (trade = your approved trade buyers, catalog = whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).
  data, status_code, headers = api_instance.list_wholesale_drops_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleDropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_drops_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_freight_requests

> <ListWholesaleFreightRequestsResponse> list_wholesale_freight_requests

Freight (LTL) quote requests from buyers whose order is over your pallet threshold.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Freight (LTL) quote requests from buyers whose order is over your pallet threshold.
  result = api_instance.list_wholesale_freight_requests
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_freight_requests: #{e}"
end
```

#### Using the list_wholesale_freight_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleFreightRequestsResponse>, Integer, Hash)> list_wholesale_freight_requests_with_http_info

```ruby
begin
  # Freight (LTL) quote requests from buyers whose order is over your pallet threshold.
  data, status_code, headers = api_instance.list_wholesale_freight_requests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleFreightRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_freight_requests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleFreightRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_groups

> <ListWholesaleGroupsResponse> list_wholesale_groups

Your customer groups with their discount and members.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Your customer groups with their discount and members.
  result = api_instance.list_wholesale_groups
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_groups: #{e}"
end
```

#### Using the list_wholesale_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleGroupsResponse>, Integer, Hash)> list_wholesale_groups_with_http_info

```ruby
begin
  # Your customer groups with their discount and members.
  data, status_code, headers = api_instance.list_wholesale_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleGroupsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleGroupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_invoices

> <ListWholesaleInvoicesResponse> list_wholesale_invoices

On-account invoices, newest first, with balance due. ?status=unpaid for open, partial and overdue together.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # On-account invoices, newest first, with balance due. ?status=unpaid for open, partial and overdue together.
  result = api_instance.list_wholesale_invoices
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_invoices: #{e}"
end
```

#### Using the list_wholesale_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleInvoicesResponse>, Integer, Hash)> list_wholesale_invoices_with_http_info

```ruby
begin
  # On-account invoices, newest first, with balance due. ?status=unpaid for open, partial and overdue together.
  data, status_code, headers = api_instance.list_wholesale_invoices_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleInvoicesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_invoices_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleInvoicesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_orders

> <ListWholesaleOrdersResponse> list_wholesale_orders

Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.
  result = api_instance.list_wholesale_orders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_orders: #{e}"
end
```

#### Using the list_wholesale_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleOrdersResponse>, Integer, Hash)> list_wholesale_orders_with_http_info

```ruby
begin
  # Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.
  data, status_code, headers = api_instance.list_wholesale_orders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleOrdersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_orders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_quotes

> <ListWholesaleQuotesResponse> list_wholesale_quotes

Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status=open lists the ones waiting on you or the buyer.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status=open lists the ones waiting on you or the buyer.
  result = api_instance.list_wholesale_quotes
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_quotes: #{e}"
end
```

#### Using the list_wholesale_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleQuotesResponse>, Integer, Hash)> list_wholesale_quotes_with_http_info

```ruby
begin
  # Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status=open lists the ones waiting on you or the buyer.
  data, status_code, headers = api_instance.list_wholesale_quotes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleQuotesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_quotes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleQuotesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_requests

> <ListWholesaleRequestsResponse> list_wholesale_requests

Requests from buyers to open your private or trade-only catalogs, with each buyer's business-verification and tax-exempt status. ?status=all includes decided ones.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Requests from buyers to open your private or trade-only catalogs, with each buyer's business-verification and tax-exempt status. ?status=all includes decided ones.
  result = api_instance.list_wholesale_requests
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_requests: #{e}"
end
```

#### Using the list_wholesale_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleRequestsResponse>, Integer, Hash)> list_wholesale_requests_with_http_info

```ruby
begin
  # Requests from buyers to open your private or trade-only catalogs, with each buyer's business-verification and tax-exempt status. ?status=all includes decided ones.
  data, status_code, headers = api_instance.list_wholesale_requests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_requests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wholesale_setup_steps

> <ListWholesaleSetupStepsResponse> list_wholesale_setup_steps

The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.
  result = api_instance.list_wholesale_setup_steps
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_setup_steps: #{e}"
end
```

#### Using the list_wholesale_setup_steps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleSetupStepsResponse>, Integer, Hash)> list_wholesale_setup_steps_with_http_info

```ruby
begin
  # The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.
  data, status_code, headers = api_instance.list_wholesale_setup_steps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleSetupStepsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->list_wholesale_setup_steps_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWholesaleSetupStepsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_buyer_term

> <UpdateWholesaleBuyerTermResponse> update_wholesale_buyer_term(buyer_user_id)

Set a buyer's account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null = no limit) and discountPercentBps (their negotiated rate).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
buyer_user_id = 'buyer_user_id_example' # String | 

begin
  # Set a buyer's account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null = no limit) and discountPercentBps (their negotiated rate).
  result = api_instance.update_wholesale_buyer_term(buyer_user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_buyer_term: #{e}"
end
```

#### Using the update_wholesale_buyer_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWholesaleBuyerTermResponse>, Integer, Hash)> update_wholesale_buyer_term_with_http_info(buyer_user_id)

```ruby
begin
  # Set a buyer's account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null = no limit) and discountPercentBps (their negotiated rate).
  data, status_code, headers = api_instance.update_wholesale_buyer_term_with_http_info(buyer_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWholesaleBuyerTermResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_buyer_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyer_user_id** | **String** |  |  |

### Return type

**UpdateWholesaleBuyerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_catalog

> <CreateWholesaleCatalogResponse> update_wholesale_catalog(id)

Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.
  result = api_instance.update_wholesale_catalog(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog: #{e}"
end
```

#### Using the update_wholesale_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleCatalogResponse>, Integer, Hash)> update_wholesale_catalog_with_http_info(id)

```ruby
begin
  # Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.
  data, status_code, headers = api_instance.update_wholesale_catalog_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleCatalogResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_catalog_item

> <UpdateWholesaleCatalogItemResponse> update_wholesale_catalog_item(id)

Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.
  result = api_instance.update_wholesale_catalog_item(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item: #{e}"
end
```

#### Using the update_wholesale_catalog_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWholesaleCatalogItemResponse>, Integer, Hash)> update_wholesale_catalog_item_with_http_info(id)

```ruby
begin
  # Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.
  data, status_code, headers = api_instance.update_wholesale_catalog_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWholesaleCatalogItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWholesaleCatalogItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_catalog_item_by_platform_listing_id

> <UpdateGroupBuyResponse> update_wholesale_catalog_item_by_platform_listing_id(id, platform_listing_id)

Change one item's trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears = inherit from the catalog.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Change one item's trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears = inherit from the catalog.
  result = api_instance.update_wholesale_catalog_item_by_platform_listing_id(id, platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item_by_platform_listing_id: #{e}"
end
```

#### Using the update_wholesale_catalog_item_by_platform_listing_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGroupBuyResponse>, Integer, Hash)> update_wholesale_catalog_item_by_platform_listing_id_with_http_info(id, platform_listing_id)

```ruby
begin
  # Change one item's trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears = inherit from the catalog.
  data, status_code, headers = api_instance.update_wholesale_catalog_item_by_platform_listing_id_with_http_info(id, platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGroupBuyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item_by_platform_listing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_catalog_item_order

> <ListWholesaleCatalogItemsResponse> update_wholesale_catalog_item_order(id)

Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.
  result = api_instance.update_wholesale_catalog_item_order(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item_order: #{e}"
end
```

#### Using the update_wholesale_catalog_item_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWholesaleCatalogItemsResponse>, Integer, Hash)> update_wholesale_catalog_item_order_with_http_info(id)

```ruby
begin
  # Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.
  data, status_code, headers = api_instance.update_wholesale_catalog_item_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWholesaleCatalogItemsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_catalog_item_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListWholesaleCatalogItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_drop

> <CreateWholesaleDropResponse> update_wholesale_drop(id)

Edit a trade drop (any create field but kind), schedule it (status \"scheduled\", with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Edit a trade drop (any create field but kind), schedule it (status \"scheduled\", with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.
  result = api_instance.update_wholesale_drop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_drop: #{e}"
end
```

#### Using the update_wholesale_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleDropResponse>, Integer, Hash)> update_wholesale_drop_with_http_info(id)

```ruby
begin
  # Edit a trade drop (any create field but kind), schedule it (status \"scheduled\", with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.
  data, status_code, headers = api_instance.update_wholesale_drop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_group

> <CreateWholesaleGroupResponse> update_wholesale_group(id)

Rename a group, change its discount, or pause it (active=false).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
id = 'id_example' # String | 

begin
  # Rename a group, change its discount, or pause it (active=false).
  result = api_instance.update_wholesale_group(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_group: #{e}"
end
```

#### Using the update_wholesale_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWholesaleGroupResponse>, Integer, Hash)> update_wholesale_group_with_http_info(id)

```ruby
begin
  # Rename a group, change its discount, or pause it (active=false).
  data, status_code, headers = api_instance.update_wholesale_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWholesaleGroupResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWholesaleGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_listing_tier

> <UpdateWholesaleListingTierResponse> update_wholesale_listing_tier(platform_listing_id)

Replace one listing's quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Replace one listing's quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.
  result = api_instance.update_wholesale_listing_tier(platform_listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_listing_tier: #{e}"
end
```

#### Using the update_wholesale_listing_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWholesaleListingTierResponse>, Integer, Hash)> update_wholesale_listing_tier_with_http_info(platform_listing_id)

```ruby
begin
  # Replace one listing's quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.
  data, status_code, headers = api_instance.update_wholesale_listing_tier_with_http_info(platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWholesaleListingTierResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_listing_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateWholesaleListingTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_profile

> <UpdateWholesaleProfileResponse> update_wholesale_profile

Save a store's trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new

begin
  # Save a store's trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.
  result = api_instance.update_wholesale_profile
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_profile: #{e}"
end
```

#### Using the update_wholesale_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWholesaleProfileResponse>, Integer, Hash)> update_wholesale_profile_with_http_info

```ruby
begin
  # Save a store's trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.
  data, status_code, headers = api_instance.update_wholesale_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWholesaleProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateWholesaleProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wholesale_reserve

> <GetWholesaleReserveResponse> update_wholesale_reserve(inventory_item_id)

Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WholesaleApi.new
inventory_item_id = 'inventory_item_id_example' # String | 

begin
  # Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.
  result = api_instance.update_wholesale_reserve(inventory_item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_reserve: #{e}"
end
```

#### Using the update_wholesale_reserve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWholesaleReserveResponse>, Integer, Hash)> update_wholesale_reserve_with_http_info(inventory_item_id)

```ruby
begin
  # Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.
  data, status_code, headers = api_instance.update_wholesale_reserve_with_http_info(inventory_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWholesaleReserveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WholesaleApi->update_wholesale_reserve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory_item_id** | **String** |  |  |

### Return type

**GetWholesaleReserveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

