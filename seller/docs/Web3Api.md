# Crossly::Web3Api

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_web3_alert**](Web3Api.md#create_web3_alert) | **POST** /v1/web3/alerts | Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below &#x60;price&#x60; (the chain&#39;s native coin). Setting it again moves the price. |
| [**create_web3_auction**](Web3Api.md#create_web3_auction) | **POST** /v1/web3/auctions | Start an English auction on a token in your linked wallet: &#x60;reserve&#x60; is the opening bid in the chain&#39;s native coin, &#x60;hours&#x60; its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes. |
| [**create_web3_auction_cancel**](Web3Api.md#create_web3_auction_cancel) | **POST** /v1/web3/auctions/{id}/cancel | Call off your auction while it has no bids. |
| [**create_web3_creator_claim**](Web3Api.md#create_web3_creator_claim) | **POST** /v1/web3/creator/claims | Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns &#x60;{ chain, contract }&#x60;. |
| [**create_web3_crosslist**](Web3Api.md#create_web3_crosslist) | **POST** /v1/web3/crosslist | Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace. |
| [**create_web3_drop_remind**](Web3Api.md#create_web3_drop_remind) | **POST** /v1/web3/drops/{id}/remind | Turn the 15-minute reminder for a drop on, or off if it already is. Returns &#x60;{ remindMe }&#x60;. |
| [**create_web3_favorite**](Web3Api.md#create_web3_favorite) | **POST** /v1/web3/favorites | Favourite an NFT, or unfavourite it if it already is. Returns &#x60;{ favorited }&#x60;. |
| [**create_web3_launch**](Web3Api.md#create_web3_launch) | **POST** /v1/web3/launches | Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract. |
| [**create_web3_launch_airdrop**](Web3Api.md#create_web3_launch_airdrop) | **POST** /v1/web3/launches/{id}/airdrop | Plan an airdrop (one free NFT each, up to 500) to &#x60;addresses&#x60; and/or the holders of &#x60;holdersOf&#x60;. Returns the transactions for the owner wallet; no payment moves. |
| [**create_web3_launch_art**](Web3Api.md#create_web3_launch_art) | **POST** /v1/web3/launches/{id}/art | Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns &#x60;{ count }&#x60;. |
| [**create_web3_launch_confirm_deploy**](Web3Api.md#create_web3_launch_confirm_deploy) | **POST** /v1/web3/launches/{id}/confirm-deploy | Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live. |
| [**create_web3_launch_follow_creator**](Web3Api.md#create_web3_launch_follow_creator) | **POST** /v1/web3/launches/{id}/follow-creator | Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns &#x60;{ following }&#x60;. |
| [**create_web3_launch_reveal**](Web3Api.md#create_web3_launch_reveal) | **POST** /v1/web3/launches/{id}/reveal | Reveal the art: one random offset maps every token to its asset for good. Returns &#x60;{ revealedAt }&#x60;. |
| [**create_web3_order**](Web3Api.md#create_web3_order) | **POST** /v1/web3/orders | Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book. |
| [**create_web3_order_cancel**](Web3Api.md#create_web3_order_cancel) | **POST** /v1/web3/orders/{chain}/{hash}/cancel | Take one of your orders out of the Crossly book. |
| [**create_web3_order_fulfillment_batch**](Web3Api.md#create_web3_order_fulfillment_batch) | **POST** /v1/web3/orders/fulfillment-batch | Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason. |
| [**create_web3_phygital**](Web3Api.md#create_web3_phygital) | **POST** /v1/web3/phygitals | Make an NFT you hold redeemable for one of your physical inventory items. |
| [**create_web3_phygital_redeem**](Web3Api.md#create_web3_phygital_redeem) | **POST** /v1/web3/phygitals/{id}/redeem | Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital. |
| [**create_web3_phygital_redemption_ship**](Web3Api.md#create_web3_phygital_redemption_ship) | **POST** /v1/web3/phygitals/redemptions/{id}/ship | Mark a redemption shipped with its carrier and tracking number; the redeemer is notified. |
| [**create_web3_rarible_draft**](Web3Api.md#create_web3_rarible_draft) | **POST** /v1/web3/rarible/draft | Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible&#39;s transfer proxy is approved. |
| [**create_web3_rarible_listing**](Web3Api.md#create_web3_rarible_listing) | **POST** /v1/web3/rarible/listings | Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded. |
| [**create_web3_solana_list_tx**](Web3Api.md#create_web3_solana_list_tx) | **POST** /v1/web3/solana/{marketplace}/list-tx | Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet. |
| [**create_web3_solana_listing**](Web3Api.md#create_web3_solana_listing) | **POST** /v1/web3/solana/{marketplace}/listings | Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first). |
| [**create_web3_solana_offer**](Web3Api.md#create_web3_solana_offer) | **POST** /v1/web3/solana/offers | Record a sent bid; it is recorded only once its trade state exists on chain. |
| [**create_web3_solana_offer_accept_tx**](Web3Api.md#create_web3_solana_offer_accept_tx) | **POST** /v1/web3/solana/offers/{hash}/accept-tx | Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction). |
| [**create_web3_solana_offer_cancel_tx**](Web3Api.md#create_web3_solana_offer_cancel_tx) | **POST** /v1/web3/solana/offers/{hash}/cancel-tx | Build the cancel of your bid: the SOL your other bids do not need comes back. |
| [**create_web3_solana_offer_confirm**](Web3Api.md#create_web3_solana_offer_confirm) | **POST** /v1/web3/solana/offers/{hash}/confirm | Apply a sent accept or cancel once the chain shows the bid closed. |
| [**create_web3_solana_offer_tx**](Web3Api.md#create_web3_solana_offer_tx) | **POST** /v1/web3/solana/offers/tx | Build a bid on a Solana NFT on Crossly&#39;s book for your linked wallet to sign; the SOL goes into your Auction House escrow. |
| [**create_web3_solana_order_buy_tx**](Web3Api.md#create_web3_solana_order_buy_tx) | **POST** /v1/web3/solana/orders/{hash}/buy-tx | Build the unsigned transaction that buys a Solana listing (price capped at the listed price). |
| [**create_web3_solana_order_confirm**](Web3Api.md#create_web3_solana_order_confirm) | **POST** /v1/web3/solana/orders/{hash}/confirm | Apply a sent Solana buy or delist to the book (the transaction is read back from the chain). |
| [**create_web3_solana_order_delist_tx**](Web3Api.md#create_web3_solana_order_delist_tx) | **POST** /v1/web3/solana/orders/{hash}/delist-tx | Build the unsigned transaction that takes your Solana listing down. |
| [**create_web3_solana_tensor_bid_accept_tx**](Web3Api.md#create_web3_solana_tensor_bid_accept_tx) | **POST** /v1/web3/solana/tensor-bids/accept-tx | Build the transaction that sells your NFT into a Tensor bid, never below &#x60;minLamports&#x60;. |
| [**create_web3_solana_tensor_bid_cancel_tx**](Web3Api.md#create_web3_solana_tensor_bid_cancel_tx) | **POST** /v1/web3/solana/tensor-bids/cancel-tx | Build the transaction that cancels your Tensor bid. |
| [**create_web3_solana_tensor_bid_place_tx**](Web3Api.md#create_web3_solana_tensor_bid_place_tx) | **POST** /v1/web3/solana/tensor-bids/place-tx | Build a Tensor collection bid (or trait bid with &#x60;trait&#x60;) for your Solana wallet to sign. Price in lamports. |
| [**create_web3_token_refresh**](Web3Api.md#create_web3_token_refresh) | **POST** /v1/web3/tokens/{chain}/{contract}/{tokenId}/refresh | Re-read a token&#39;s metadata from the chain&#39;s provider (name, traits, image — a new image is copied to Crossly&#39;s CDN). Once per token per 10 minutes. |
| [**create_web3_transaction**](Web3Api.md#create_web3_transaction) | **POST** /v1/web3/transactions | Apply a Seaport transaction&#39;s fills and cancels to the Crossly book (read from the receipt). |
| [**create_web3_wallet_challenge**](Web3Api.md#create_web3_wallet_challenge) | **POST** /v1/web3/wallets/challenge | Start linking a wallet: returns the message the wallet must sign. |
| [**create_web3_wallet_sync**](Web3Api.md#create_web3_wallet_sync) | **POST** /v1/web3/wallets/{id}/sync | Import a linked wallet&#39;s NFTs into inventory; archives ones that have left the wallet. |
| [**create_web3_wallet_verify**](Web3Api.md#create_web3_wallet_verify) | **POST** /v1/web3/wallets/verify | Finish linking a wallet with its signature over the challenge message. |
| [**delete_web3_alert**](Web3Api.md#delete_web3_alert) | **DELETE** /v1/web3/alerts/{id} | Delete a price alert. |
| [**delete_web3_holder_perk**](Web3Api.md#delete_web3_holder_perk) | **DELETE** /v1/web3/holder-perks/{id} | Remove a holder perk. Returns &#x60;{ ok }&#x60;. |
| [**delete_web3_launch**](Web3Api.md#delete_web3_launch) | **DELETE** /v1/web3/launches/{id} | Delete a launch draft that never went live. Returns &#x60;{ ok }&#x60;. |
| [**delete_web3_launch_follow_creator**](Web3Api.md#delete_web3_launch_follow_creator) | **DELETE** /v1/web3/launches/{id}/follow-creator | Stop following the creator of a launch. Returns &#x60;{ following }&#x60;. |
| [**delete_web3_marketplace_key**](Web3Api.md#delete_web3_marketplace_key) | **DELETE** /v1/web3/marketplace-keys/{marketplace} | Remove your own key for a marketplace; Crossly&#39;s key is used again. |
| [**delete_web3_wallet**](Web3Api.md#delete_web3_wallet) | **DELETE** /v1/web3/wallets/{id} | Unlink a wallet. Its NFTs stay in inventory but stop syncing. |
| [**get_web3_auction**](Web3Api.md#get_web3_auction) | **GET** /v1/web3/auctions/{chain}/{contract}/{tokenId} | A token&#39;s live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid. |
| [**get_web3_browse**](Web3Api.md#get_web3_browse) | **GET** /v1/web3/browse | The Web3 directory&#39;s categories and chains, with how many collections each holds. |
| [**get_web3_collection**](Web3Api.md#get_web3_collection) | **GET** /v1/web3/collections/{chain}/{contract} | A collection: metadata and Crossly stats (floor, listed, volume, best collection offer). |
| [**get_web3_collection_depth**](Web3Api.md#get_web3_collection_depth) | **GET** /v1/web3/collections/{chain}/{contract}/depth | A collection&#39;s Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value. |
| [**get_web3_collection_insight**](Web3Api.md#get_web3_collection_insight) | **GET** /v1/web3/collections/{chain}/{contract}/insights | On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series. |
| [**get_web3_collection_item**](Web3Api.md#get_web3_collection_item) | **GET** /v1/web3/collections/{chain}/{contract}/items | A collection&#39;s NFTs: filter by traits (repeat trait&#x3D;Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed. |
| [**get_web3_collection_trait**](Web3Api.md#get_web3_collection_trait) | **GET** /v1/web3/collections/{chain}/{contract}/traits | Every trait type and value in a collection, with how many tokens have each. |
| [**get_web3_collection_trait_token**](Web3Api.md#get_web3_collection_trait_token) | **GET** /v1/web3/collections/{chain}/{contract}/trait-tokens | Token ids in a collection with one trait — what a trait offer commits to. |
| [**get_web3_collector**](Web3Api.md#get_web3_collector) | **GET** /v1/web3/collector | Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark. |
| [**get_web3_creator**](Web3Api.md#get_web3_creator) | **GET** /v1/web3/creator/{chain}/{contract} | A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency). |
| [**get_web3_crosslist_quote**](Web3Api.md#get_web3_crosslist_quote) | **GET** /v1/web3/crosslist/quote | Each marketplace&#39;s terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability. |
| [**get_web3_featured**](Web3Api.md#get_web3_featured) | **GET** /v1/web3/featured | The NFT home&#39;s featured collections: chosen by Crossly, else the hottest. |
| [**get_web3_inventory**](Web3Api.md#get_web3_inventory) | **GET** /v1/web3/inventory/{itemId} | The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT). |
| [**get_web3_launch_allowlist_root_tx**](Web3Api.md#get_web3_launch_allowlist_root_tx) | **GET** /v1/web3/launches/{id}/allowlist/root-tx | The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): &#x60;{ chain, from, to, data }&#x60;. |
| [**get_web3_launch_deploy_tx**](Web3Api.md#get_web3_launch_deploy_tx) | **GET** /v1/web3/launches/{id}/deploy-tx | The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns &#x60;{ chain, from, data }&#x60;. |
| [**get_web3_launch_tool**](Web3Api.md#get_web3_launch_tool) | **GET** /v1/web3/launches/{id}/tools | A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted. |
| [**get_web3_order_fulfillment**](Web3Api.md#get_web3_order_fulfillment) | **GET** /v1/web3/orders/{chain}/{hash}/fulfillment | The signed order a taker passes to Seaport, after re-checking it can still fill. |
| [**get_web3_phygital**](Web3Api.md#get_web3_phygital) | **GET** /v1/web3/phygitals/{chain}/{contract}/{tokenId} | A token&#39;s phygital: the physical item it can be redeemed for, and whether it has been. |
| [**get_web3_phygital2**](Web3Api.md#get_web3_phygital2) | **GET** /v1/web3/phygitals | Phygitals you linked (with each redemption and its shipping address) and ones you redeemed. |
| [**get_web3_portfolio**](Web3Api.md#get_web3_portfolio) | **GET** /v1/web3/portfolio | Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price. |
| [**get_web3_portfolio_tax**](Web3Api.md#get_web3_portfolio_tax) | **GET** /v1/web3/portfolio/tax | One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD). |
| [**get_web3_profile**](Web3Api.md#get_web3_profile) | **GET** /v1/web3/profiles/{address} | A wallet&#39;s public profile: NFTs held, open Crossly listings, and activity. |
| [**get_web3_resolve**](Web3Api.md#get_web3_resolve) | **GET** /v1/web3/resolve/{chain}/{slug} | A collection&#39;s chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub). |
| [**get_web3_solana_collection_tensor_bid**](Web3Api.md#get_web3_solana_collection_tensor_bid) | **GET** /v1/web3/solana/collections/{collection}/tensor-bids | A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key. |
| [**get_web3_token**](Web3Api.md#get_web3_token) | **GET** /v1/web3/tokens/{chain}/{contract}/{tokenId} | One NFT: metadata, traits, owner, open listings and offers, activity. |
| [**list_web3_activity**](Web3Api.md#list_web3_activity) | **GET** /v1/web3/activity | Listings, offers, sales and cancels in the Crossly book, newest first. |
| [**list_web3_alerts**](Web3Api.md#list_web3_alerts) | **GET** /v1/web3/alerts | Your NFT price alerts, with the cheapest open Crossly listing each one covers now. |
| [**list_web3_approvals**](Web3Api.md#list_web3_approvals) | **GET** /v1/web3/approvals | Your collections the OpenSea conduit is approved to move, per linked wallet. |
| [**list_web3_auctions**](Web3Api.md#list_web3_auctions) | **GET** /v1/web3/auctions | Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be. |
| [**list_web3_browse_collections**](Web3Api.md#list_web3_browse_collections) | **GET** /v1/web3/browse/collections | Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name. |
| [**list_web3_browse_tokens**](Web3Api.md#list_web3_browse_tokens) | **GET** /v1/web3/browse/tokens | Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections. |
| [**list_web3_bundles**](Web3Api.md#list_web3_bundles) | **GET** /v1/web3/bundles | Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from. |
| [**list_web3_collection_history**](Web3Api.md#list_web3_collection_history) | **GET** /v1/web3/collections/{chain}/{contract}/history | Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days). |
| [**list_web3_collections**](Web3Api.md#list_web3_collections) | **GET** /v1/web3/collections | Collections ranked by 30-day Crossly volume, with floor and listed count. |
| [**list_web3_creator_collections**](Web3Api.md#list_web3_creator_collections) | **GET** /v1/web3/creator/collections | Collections you are the creator of: your launches, and contracts you claimed by owning them. |
| [**list_web3_drops**](Web3Api.md#list_web3_drops) | **GET** /v1/web3/drops | Upcoming and live NFT drops (curated mints on the creator&#39;s own page), soonest first, with whether you asked to be reminded. |
| [**list_web3_holder_perks**](Web3Api.md#list_web3_holder_perks) | **GET** /v1/web3/holder-perks | Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first. |
| [**list_web3_launches**](Web3Api.md#list_web3_launches) | **GET** /v1/web3/launches | Your launchpad collections (drafts and live), newest first, with minted count and phase. |
| [**list_web3_listings**](Web3Api.md#list_web3_listings) | **GET** /v1/web3/listings | Open NFT listings in the Crossly book — the cheapest per token. |
| [**list_web3_marketplace_keys**](Web3Api.md#list_web3_marketplace_keys) | **GET** /v1/web3/marketplace-keys | Your own marketplace API keys (last four characters only) and whether Crossly&#39;s key covers each marketplace. |
| [**list_web3_nfts**](Web3Api.md#list_web3_nfts) | **GET** /v1/web3/nfts | List the NFTs in your inventory, imported from your linked wallets. |
| [**list_web3_orders**](Web3Api.md#list_web3_orders) | **GET** /v1/web3/orders | Your orders in the Crossly book (listings and offers), any status. |
| [**list_web3_purchases**](Web3Api.md#list_web3_purchases) | **GET** /v1/web3/purchases | NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each. |
| [**list_web3_rankings**](Web3Api.md#list_web3_rankings) | **GET** /v1/web3/rankings | Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own. |
| [**list_web3_reserved**](Web3Api.md#list_web3_reserved) | **GET** /v1/web3/reserved | Private listings reserved for one of your linked wallets — only you can see or buy them. |
| [**list_web3_sales**](Web3Api.md#list_web3_sales) | **GET** /v1/web3/sales | The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with &#x60;before&#x60;. |
| [**list_web3_search**](Web3Api.md#list_web3_search) | **GET** /v1/web3/search | Find collections by contract address (every chain) or by name. |
| [**list_web3_search_tokens**](Web3Api.md#list_web3_search_tokens) | **GET** /v1/web3/search/tokens | Find tokens by collection name and number: &#39;pudgy 42&#39;, &#39;Bored Ape #1234&#39;. |
| [**list_web3_wallets**](Web3Api.md#list_web3_wallets) | **GET** /v1/web3/wallets | List your verified, linked wallets (EVM and Solana). |
| [**list_web3_watchlist**](Web3Api.md#list_web3_watchlist) | **GET** /v1/web3/watchlist | Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each. |
| [**update_web3_holder_perk**](Web3Api.md#update_web3_holder_perk) | **PUT** /v1/web3/holder-perks | Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection. |
| [**update_web3_launch_allowlist**](Web3Api.md#update_web3_launch_allowlist) | **PUT** /v1/web3/launches/{id}/allowlist | Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back &#x60;rootTx&#x60;, the setAllowlistRoot transaction for the owner wallet. |
| [**update_web3_marketplace_key**](Web3Api.md#update_web3_marketplace_key) | **PUT** /v1/web3/marketplace-keys/{marketplace} | Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted. |


## create_web3_alert

> <IdResponse> create_web3_alert

Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below `price` (the chain's native coin). Setting it again moves the price.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below `price` (the chain's native coin). Setting it again moves the price.
  result = api_instance.create_web3_alert
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_alert: #{e}"
end
```

#### Using the create_web3_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdResponse>, Integer, Hash)> create_web3_alert_with_http_info

```ruby
begin
  # Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below `price` (the chain's native coin). Setting it again moves the price.
  data, status_code, headers = api_instance.create_web3_alert_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_alert_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_auction

> <CreateWeb3AuctionResponse> create_web3_auction

Start an English auction on a token in your linked wallet: `reserve` is the opening bid in the chain's native coin, `hours` its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Start an English auction on a token in your linked wallet: `reserve` is the opening bid in the chain's native coin, `hours` its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.
  result = api_instance.create_web3_auction
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_auction: #{e}"
end
```

#### Using the create_web3_auction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3AuctionResponse>, Integer, Hash)> create_web3_auction_with_http_info

```ruby
begin
  # Start an English auction on a token in your linked wallet: `reserve` is the opening bid in the chain's native coin, `hours` its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.
  data, status_code, headers = api_instance.create_web3_auction_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3AuctionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_auction_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3AuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_auction_cancel

> <OkResponse> create_web3_auction_cancel(id)

Call off your auction while it has no bids.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Call off your auction while it has no bids.
  result = api_instance.create_web3_auction_cancel(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_auction_cancel: #{e}"
end
```

#### Using the create_web3_auction_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_web3_auction_cancel_with_http_info(id)

```ruby
begin
  # Call off your auction while it has no bids.
  data, status_code, headers = api_instance.create_web3_auction_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_auction_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_creator_claim

> <CreateWeb3CreatorClaimResponse> create_web3_creator_claim

Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns `{ chain, contract }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns `{ chain, contract }`.
  result = api_instance.create_web3_creator_claim
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_creator_claim: #{e}"
end
```

#### Using the create_web3_creator_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3CreatorClaimResponse>, Integer, Hash)> create_web3_creator_claim_with_http_info

```ruby
begin
  # Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns `{ chain, contract }`.
  data, status_code, headers = api_instance.create_web3_creator_claim_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3CreatorClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_creator_claim_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3CreatorClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_crosslist

> <CreateWeb3CrosslistResponse> create_web3_crosslist

Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.
  result = api_instance.create_web3_crosslist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_crosslist: #{e}"
end
```

#### Using the create_web3_crosslist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3CrosslistResponse>, Integer, Hash)> create_web3_crosslist_with_http_info

```ruby
begin
  # Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.
  data, status_code, headers = api_instance.create_web3_crosslist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3CrosslistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_crosslist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3CrosslistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_drop_remind

> <CreateWeb3DropRemindResponse> create_web3_drop_remind(id)

Turn the 15-minute reminder for a drop on, or off if it already is. Returns `{ remindMe }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Turn the 15-minute reminder for a drop on, or off if it already is. Returns `{ remindMe }`.
  result = api_instance.create_web3_drop_remind(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_drop_remind: #{e}"
end
```

#### Using the create_web3_drop_remind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3DropRemindResponse>, Integer, Hash)> create_web3_drop_remind_with_http_info(id)

```ruby
begin
  # Turn the 15-minute reminder for a drop on, or off if it already is. Returns `{ remindMe }`.
  data, status_code, headers = api_instance.create_web3_drop_remind_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3DropRemindResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_drop_remind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3DropRemindResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_favorite

> <CreateWeb3FavoriteResponse> create_web3_favorite

Favourite an NFT, or unfavourite it if it already is. Returns `{ favorited }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Favourite an NFT, or unfavourite it if it already is. Returns `{ favorited }`.
  result = api_instance.create_web3_favorite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_favorite: #{e}"
end
```

#### Using the create_web3_favorite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3FavoriteResponse>, Integer, Hash)> create_web3_favorite_with_http_info

```ruby
begin
  # Favourite an NFT, or unfavourite it if it already is. Returns `{ favorited }`.
  data, status_code, headers = api_instance.create_web3_favorite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3FavoriteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_favorite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3FavoriteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch

> <ListWeb3LaunchesItem> create_web3_launch

Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.
  result = api_instance.create_web3_launch
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch: #{e}"
end
```

#### Using the create_web3_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3LaunchesItem>, Integer, Hash)> create_web3_launch_with_http_info

```ruby
begin
  # Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.
  data, status_code, headers = api_instance.create_web3_launch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3LaunchesItem>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3LaunchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch_airdrop

> <CreateWeb3LaunchAirdropResponse> create_web3_launch_airdrop(id)

Plan an airdrop (one free NFT each, up to 500) to `addresses` and/or the holders of `holdersOf`. Returns the transactions for the owner wallet; no payment moves.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Plan an airdrop (one free NFT each, up to 500) to `addresses` and/or the holders of `holdersOf`. Returns the transactions for the owner wallet; no payment moves.
  result = api_instance.create_web3_launch_airdrop(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_airdrop: #{e}"
end
```

#### Using the create_web3_launch_airdrop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchAirdropResponse>, Integer, Hash)> create_web3_launch_airdrop_with_http_info(id)

```ruby
begin
  # Plan an airdrop (one free NFT each, up to 500) to `addresses` and/or the holders of `holdersOf`. Returns the transactions for the owner wallet; no payment moves.
  data, status_code, headers = api_instance.create_web3_launch_airdrop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchAirdropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_airdrop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3LaunchAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch_art

> <CreateWeb3LaunchArtResponse> create_web3_launch_art(id)

Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns `{ count }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns `{ count }`.
  result = api_instance.create_web3_launch_art(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_art: #{e}"
end
```

#### Using the create_web3_launch_art_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchArtResponse>, Integer, Hash)> create_web3_launch_art_with_http_info(id)

```ruby
begin
  # Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns `{ count }`.
  data, status_code, headers = api_instance.create_web3_launch_art_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchArtResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_art_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3LaunchArtResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch_confirm_deploy

> <ListWeb3LaunchesItem> create_web3_launch_confirm_deploy(id)

Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.
  result = api_instance.create_web3_launch_confirm_deploy(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_confirm_deploy: #{e}"
end
```

#### Using the create_web3_launch_confirm_deploy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3LaunchesItem>, Integer, Hash)> create_web3_launch_confirm_deploy_with_http_info(id)

```ruby
begin
  # Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.
  data, status_code, headers = api_instance.create_web3_launch_confirm_deploy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3LaunchesItem>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_confirm_deploy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListWeb3LaunchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch_follow_creator

> <CreateWeb3LaunchFollowCreatorResponse> create_web3_launch_follow_creator(id)

Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns `{ following }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns `{ following }`.
  result = api_instance.create_web3_launch_follow_creator(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_follow_creator: #{e}"
end
```

#### Using the create_web3_launch_follow_creator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchFollowCreatorResponse>, Integer, Hash)> create_web3_launch_follow_creator_with_http_info(id)

```ruby
begin
  # Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns `{ following }`.
  data, status_code, headers = api_instance.create_web3_launch_follow_creator_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchFollowCreatorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_follow_creator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3LaunchFollowCreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_launch_reveal

> <CreateWeb3LaunchRevealResponse> create_web3_launch_reveal(id)

Reveal the art: one random offset maps every token to its asset for good. Returns `{ revealedAt }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Reveal the art: one random offset maps every token to its asset for good. Returns `{ revealedAt }`.
  result = api_instance.create_web3_launch_reveal(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_reveal: #{e}"
end
```

#### Using the create_web3_launch_reveal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchRevealResponse>, Integer, Hash)> create_web3_launch_reveal_with_http_info(id)

```ruby
begin
  # Reveal the art: one random offset maps every token to its asset for good. Returns `{ revealedAt }`.
  data, status_code, headers = api_instance.create_web3_launch_reveal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchRevealResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_launch_reveal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3LaunchRevealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_order

> <CreateWeb3OrderResponse> create_web3_order

Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.
  result = api_instance.create_web3_order
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order: #{e}"
end
```

#### Using the create_web3_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3OrderResponse>, Integer, Hash)> create_web3_order_with_http_info

```ruby
begin
  # Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.
  data, status_code, headers = api_instance.create_web3_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3OrderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3OrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_order_cancel

> <OkResponse> create_web3_order_cancel(chain, hash)

Take one of your orders out of the Crossly book.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
hash = 'hash_example' # String | 

begin
  # Take one of your orders out of the Crossly book.
  result = api_instance.create_web3_order_cancel(chain, hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order_cancel: #{e}"
end
```

#### Using the create_web3_order_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_web3_order_cancel_with_http_info(chain, hash)

```ruby
begin
  # Take one of your orders out of the Crossly book.
  data, status_code, headers = api_instance.create_web3_order_cancel_with_http_info(chain, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **hash** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_order_fulfillment_batch

> <CreateWeb3OrderFulfillmentBatchResponse> create_web3_order_fulfillment_batch

Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.
  result = api_instance.create_web3_order_fulfillment_batch
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order_fulfillment_batch: #{e}"
end
```

#### Using the create_web3_order_fulfillment_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3OrderFulfillmentBatchResponse>, Integer, Hash)> create_web3_order_fulfillment_batch_with_http_info

```ruby
begin
  # Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.
  data, status_code, headers = api_instance.create_web3_order_fulfillment_batch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3OrderFulfillmentBatchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_order_fulfillment_batch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3OrderFulfillmentBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_phygital

> <CreateWeb3PhygitalResponse> create_web3_phygital

Make an NFT you hold redeemable for one of your physical inventory items.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Make an NFT you hold redeemable for one of your physical inventory items.
  result = api_instance.create_web3_phygital
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital: #{e}"
end
```

#### Using the create_web3_phygital_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3PhygitalResponse>, Integer, Hash)> create_web3_phygital_with_http_info

```ruby
begin
  # Make an NFT you hold redeemable for one of your physical inventory items.
  data, status_code, headers = api_instance.create_web3_phygital_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3PhygitalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3PhygitalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_phygital_redeem

> <CreateWeb3PhygitalRedeemResponse> create_web3_phygital_redeem(id)

Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.
  result = api_instance.create_web3_phygital_redeem(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital_redeem: #{e}"
end
```

#### Using the create_web3_phygital_redeem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3PhygitalRedeemResponse>, Integer, Hash)> create_web3_phygital_redeem_with_http_info(id)

```ruby
begin
  # Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.
  data, status_code, headers = api_instance.create_web3_phygital_redeem_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3PhygitalRedeemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital_redeem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3PhygitalRedeemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_phygital_redemption_ship

> <OkResponse> create_web3_phygital_redemption_ship(id)

Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.
  result = api_instance.create_web3_phygital_redemption_ship(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital_redemption_ship: #{e}"
end
```

#### Using the create_web3_phygital_redemption_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> create_web3_phygital_redemption_ship_with_http_info(id)

```ruby
begin
  # Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.
  data, status_code, headers = api_instance.create_web3_phygital_redemption_ship_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_phygital_redemption_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_rarible_draft

> <CreateWeb3RaribleDraftResponse> create_web3_rarible_draft

Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible's transfer proxy is approved.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible's transfer proxy is approved.
  result = api_instance.create_web3_rarible_draft
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_rarible_draft: #{e}"
end
```

#### Using the create_web3_rarible_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3RaribleDraftResponse>, Integer, Hash)> create_web3_rarible_draft_with_http_info

```ruby
begin
  # Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible's transfer proxy is approved.
  data, status_code, headers = api_instance.create_web3_rarible_draft_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3RaribleDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_rarible_draft_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3RaribleDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_rarible_listing

> <OrderHashResponse> create_web3_rarible_listing

Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.
  result = api_instance.create_web3_rarible_listing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_rarible_listing: #{e}"
end
```

#### Using the create_web3_rarible_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderHashResponse>, Integer, Hash)> create_web3_rarible_listing_with_http_info

```ruby
begin
  # Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.
  data, status_code, headers = api_instance.create_web3_rarible_listing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderHashResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_rarible_listing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_list_tx

> <CreateWeb3SolanaListTxResponse> create_web3_solana_list_tx(marketplace)

Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
marketplace = 'crossly' # String | 

begin
  # Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.
  result = api_instance.create_web3_solana_list_tx(marketplace)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_list_tx: #{e}"
end
```

#### Using the create_web3_solana_list_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaListTxResponse>, Integer, Hash)> create_web3_solana_list_tx_with_http_info(marketplace)

```ruby
begin
  # Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.
  data, status_code, headers = api_instance.create_web3_solana_list_tx_with_http_info(marketplace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaListTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_list_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketplace** | **String** |  |  |

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_listing

> <OrderHashResponse> create_web3_solana_listing(marketplace)

Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
marketplace = 'crossly' # String | 

begin
  # Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).
  result = api_instance.create_web3_solana_listing(marketplace)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_listing: #{e}"
end
```

#### Using the create_web3_solana_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderHashResponse>, Integer, Hash)> create_web3_solana_listing_with_http_info(marketplace)

```ruby
begin
  # Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).
  data, status_code, headers = api_instance.create_web3_solana_listing_with_http_info(marketplace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderHashResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketplace** | **String** |  |  |

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_offer

> <OrderHashResponse> create_web3_solana_offer

Record a sent bid; it is recorded only once its trade state exists on chain.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Record a sent bid; it is recorded only once its trade state exists on chain.
  result = api_instance.create_web3_solana_offer
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer: #{e}"
end
```

#### Using the create_web3_solana_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderHashResponse>, Integer, Hash)> create_web3_solana_offer_with_http_info

```ruby
begin
  # Record a sent bid; it is recorded only once its trade state exists on chain.
  data, status_code, headers = api_instance.create_web3_solana_offer_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderHashResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_offer_accept_tx

> <CreateWeb3SolanaListTxResponse> create_web3_solana_offer_accept_tx(hash)

Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).
  result = api_instance.create_web3_solana_offer_accept_tx(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_accept_tx: #{e}"
end
```

#### Using the create_web3_solana_offer_accept_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaListTxResponse>, Integer, Hash)> create_web3_solana_offer_accept_tx_with_http_info(hash)

```ruby
begin
  # Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).
  data, status_code, headers = api_instance.create_web3_solana_offer_accept_tx_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaListTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_accept_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_offer_cancel_tx

> <CreateWeb3SolanaListTxResponse> create_web3_solana_offer_cancel_tx(hash)

Build the cancel of your bid: the SOL your other bids do not need comes back.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Build the cancel of your bid: the SOL your other bids do not need comes back.
  result = api_instance.create_web3_solana_offer_cancel_tx(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_cancel_tx: #{e}"
end
```

#### Using the create_web3_solana_offer_cancel_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaListTxResponse>, Integer, Hash)> create_web3_solana_offer_cancel_tx_with_http_info(hash)

```ruby
begin
  # Build the cancel of your bid: the SOL your other bids do not need comes back.
  data, status_code, headers = api_instance.create_web3_solana_offer_cancel_tx_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaListTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_cancel_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_offer_confirm

> <CreateWeb3SolanaOfferConfirmResponse> create_web3_solana_offer_confirm(hash)

Apply a sent accept or cancel once the chain shows the bid closed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Apply a sent accept or cancel once the chain shows the bid closed.
  result = api_instance.create_web3_solana_offer_confirm(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_confirm: #{e}"
end
```

#### Using the create_web3_solana_offer_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaOfferConfirmResponse>, Integer, Hash)> create_web3_solana_offer_confirm_with_http_info(hash)

```ruby
begin
  # Apply a sent accept or cancel once the chain shows the bid closed.
  data, status_code, headers = api_instance.create_web3_solana_offer_confirm_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaOfferConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaOfferConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_offer_tx

> <CreateWeb3SolanaOfferTxResponse> create_web3_solana_offer_tx

Build a bid on a Solana NFT on Crossly's book for your linked wallet to sign; the SOL goes into your Auction House escrow.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Build a bid on a Solana NFT on Crossly's book for your linked wallet to sign; the SOL goes into your Auction House escrow.
  result = api_instance.create_web3_solana_offer_tx
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_tx: #{e}"
end
```

#### Using the create_web3_solana_offer_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaOfferTxResponse>, Integer, Hash)> create_web3_solana_offer_tx_with_http_info

```ruby
begin
  # Build a bid on a Solana NFT on Crossly's book for your linked wallet to sign; the SOL goes into your Auction House escrow.
  data, status_code, headers = api_instance.create_web3_solana_offer_tx_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaOfferTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_offer_tx_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaOfferTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_order_buy_tx

> <CreateWeb3SolanaOrderBuyTxResponse> create_web3_solana_order_buy_tx(hash)

Build the unsigned transaction that buys a Solana listing (price capped at the listed price).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Build the unsigned transaction that buys a Solana listing (price capped at the listed price).
  result = api_instance.create_web3_solana_order_buy_tx(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_buy_tx: #{e}"
end
```

#### Using the create_web3_solana_order_buy_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaOrderBuyTxResponse>, Integer, Hash)> create_web3_solana_order_buy_tx_with_http_info(hash)

```ruby
begin
  # Build the unsigned transaction that buys a Solana listing (price capped at the listed price).
  data, status_code, headers = api_instance.create_web3_solana_order_buy_tx_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaOrderBuyTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_buy_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaOrderBuyTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_order_confirm

> <CreateWeb3SolanaOfferConfirmResponse> create_web3_solana_order_confirm(hash)

Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).
  result = api_instance.create_web3_solana_order_confirm(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_confirm: #{e}"
end
```

#### Using the create_web3_solana_order_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaOfferConfirmResponse>, Integer, Hash)> create_web3_solana_order_confirm_with_http_info(hash)

```ruby
begin
  # Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).
  data, status_code, headers = api_instance.create_web3_solana_order_confirm_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaOfferConfirmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaOfferConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_order_delist_tx

> <CreateWeb3SolanaListTxResponse> create_web3_solana_order_delist_tx(hash)

Build the unsigned transaction that takes your Solana listing down.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
hash = 'hash_example' # String | 

begin
  # Build the unsigned transaction that takes your Solana listing down.
  result = api_instance.create_web3_solana_order_delist_tx(hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_delist_tx: #{e}"
end
```

#### Using the create_web3_solana_order_delist_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaListTxResponse>, Integer, Hash)> create_web3_solana_order_delist_tx_with_http_info(hash)

```ruby
begin
  # Build the unsigned transaction that takes your Solana listing down.
  data, status_code, headers = api_instance.create_web3_solana_order_delist_tx_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaListTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_order_delist_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  |  |

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_tensor_bid_accept_tx

> <CreateWeb3SolanaTensorBidPlaceTxResponse> create_web3_solana_tensor_bid_accept_tx

Build the transaction that sells your NFT into a Tensor bid, never below `minLamports`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Build the transaction that sells your NFT into a Tensor bid, never below `minLamports`.
  result = api_instance.create_web3_solana_tensor_bid_accept_tx
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_accept_tx: #{e}"
end
```

#### Using the create_web3_solana_tensor_bid_accept_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaTensorBidPlaceTxResponse>, Integer, Hash)> create_web3_solana_tensor_bid_accept_tx_with_http_info

```ruby
begin
  # Build the transaction that sells your NFT into a Tensor bid, never below `minLamports`.
  data, status_code, headers = api_instance.create_web3_solana_tensor_bid_accept_tx_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaTensorBidPlaceTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_accept_tx_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_tensor_bid_cancel_tx

> <CreateWeb3SolanaTensorBidPlaceTxResponse> create_web3_solana_tensor_bid_cancel_tx

Build the transaction that cancels your Tensor bid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Build the transaction that cancels your Tensor bid.
  result = api_instance.create_web3_solana_tensor_bid_cancel_tx
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_cancel_tx: #{e}"
end
```

#### Using the create_web3_solana_tensor_bid_cancel_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaTensorBidPlaceTxResponse>, Integer, Hash)> create_web3_solana_tensor_bid_cancel_tx_with_http_info

```ruby
begin
  # Build the transaction that cancels your Tensor bid.
  data, status_code, headers = api_instance.create_web3_solana_tensor_bid_cancel_tx_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaTensorBidPlaceTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_cancel_tx_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_solana_tensor_bid_place_tx

> <CreateWeb3SolanaTensorBidPlaceTxResponse> create_web3_solana_tensor_bid_place_tx

Build a Tensor collection bid (or trait bid with `trait`) for your Solana wallet to sign. Price in lamports.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Build a Tensor collection bid (or trait bid with `trait`) for your Solana wallet to sign. Price in lamports.
  result = api_instance.create_web3_solana_tensor_bid_place_tx
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_place_tx: #{e}"
end
```

#### Using the create_web3_solana_tensor_bid_place_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3SolanaTensorBidPlaceTxResponse>, Integer, Hash)> create_web3_solana_tensor_bid_place_tx_with_http_info

```ruby
begin
  # Build a Tensor collection bid (or trait bid with `trait`) for your Solana wallet to sign. Price in lamports.
  data, status_code, headers = api_instance.create_web3_solana_tensor_bid_place_tx_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3SolanaTensorBidPlaceTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_solana_tensor_bid_place_tx_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_token_refresh

> <CreateWeb3TokenRefreshResponse> create_web3_token_refresh(chain, contract, token_id)

Re-read a token's metadata from the chain's provider (name, traits, image — a new image is copied to Crossly's CDN). Once per token per 10 minutes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # Re-read a token's metadata from the chain's provider (name, traits, image — a new image is copied to Crossly's CDN). Once per token per 10 minutes.
  result = api_instance.create_web3_token_refresh(chain, contract, token_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_token_refresh: #{e}"
end
```

#### Using the create_web3_token_refresh_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3TokenRefreshResponse>, Integer, Hash)> create_web3_token_refresh_with_http_info(chain, contract, token_id)

```ruby
begin
  # Re-read a token's metadata from the chain's provider (name, traits, image — a new image is copied to Crossly's CDN). Once per token per 10 minutes.
  data, status_code, headers = api_instance.create_web3_token_refresh_with_http_info(chain, contract, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3TokenRefreshResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_token_refresh_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

**CreateWeb3TokenRefreshResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_transaction

> <CreateWeb3TransactionResponse> create_web3_transaction

Apply a Seaport transaction's fills and cancels to the Crossly book (read from the receipt).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Apply a Seaport transaction's fills and cancels to the Crossly book (read from the receipt).
  result = api_instance.create_web3_transaction
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_transaction: #{e}"
end
```

#### Using the create_web3_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3TransactionResponse>, Integer, Hash)> create_web3_transaction_with_http_info

```ruby
begin
  # Apply a Seaport transaction's fills and cancels to the Crossly book (read from the receipt).
  data, status_code, headers = api_instance.create_web3_transaction_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3TransactionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_transaction_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3TransactionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_wallet_challenge

> <CreateWeb3WalletChallengeResponse> create_web3_wallet_challenge

Start linking a wallet: returns the message the wallet must sign.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Start linking a wallet: returns the message the wallet must sign.
  result = api_instance.create_web3_wallet_challenge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_challenge: #{e}"
end
```

#### Using the create_web3_wallet_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3WalletChallengeResponse>, Integer, Hash)> create_web3_wallet_challenge_with_http_info

```ruby
begin
  # Start linking a wallet: returns the message the wallet must sign.
  data, status_code, headers = api_instance.create_web3_wallet_challenge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3WalletChallengeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_challenge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3WalletChallengeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_wallet_sync

> <CreateWeb3WalletSyncResponse> create_web3_wallet_sync(id)

Import a linked wallet's NFTs into inventory; archives ones that have left the wallet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Import a linked wallet's NFTs into inventory; archives ones that have left the wallet.
  result = api_instance.create_web3_wallet_sync(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_sync: #{e}"
end
```

#### Using the create_web3_wallet_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3WalletSyncResponse>, Integer, Hash)> create_web3_wallet_sync_with_http_info(id)

```ruby
begin
  # Import a linked wallet's NFTs into inventory; archives ones that have left the wallet.
  data, status_code, headers = api_instance.create_web3_wallet_sync_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3WalletSyncResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3WalletSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_web3_wallet_verify

> <CreateWeb3WalletVerifyResponse> create_web3_wallet_verify

Finish linking a wallet with its signature over the challenge message.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Finish linking a wallet with its signature over the challenge message.
  result = api_instance.create_web3_wallet_verify
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_verify: #{e}"
end
```

#### Using the create_web3_wallet_verify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3WalletVerifyResponse>, Integer, Hash)> create_web3_wallet_verify_with_http_info

```ruby
begin
  # Finish linking a wallet with its signature over the challenge message.
  data, status_code, headers = api_instance.create_web3_wallet_verify_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3WalletVerifyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->create_web3_wallet_verify_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWeb3WalletVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_alert

> <OkResponse> delete_web3_alert(id)

Delete a price alert.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Delete a price alert.
  result = api_instance.delete_web3_alert(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_alert: #{e}"
end
```

#### Using the delete_web3_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_web3_alert_with_http_info(id)

```ruby
begin
  # Delete a price alert.
  data, status_code, headers = api_instance.delete_web3_alert_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_holder_perk

> <OkResponse> delete_web3_holder_perk(id)

Remove a holder perk. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Remove a holder perk. Returns `{ ok }`.
  result = api_instance.delete_web3_holder_perk(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_holder_perk: #{e}"
end
```

#### Using the delete_web3_holder_perk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_web3_holder_perk_with_http_info(id)

```ruby
begin
  # Remove a holder perk. Returns `{ ok }`.
  data, status_code, headers = api_instance.delete_web3_holder_perk_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_holder_perk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_launch

> <OkResponse> delete_web3_launch(id)

Delete a launch draft that never went live. Returns `{ ok }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Delete a launch draft that never went live. Returns `{ ok }`.
  result = api_instance.delete_web3_launch(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_launch: #{e}"
end
```

#### Using the delete_web3_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_web3_launch_with_http_info(id)

```ruby
begin
  # Delete a launch draft that never went live. Returns `{ ok }`.
  data, status_code, headers = api_instance.delete_web3_launch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_launch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_launch_follow_creator

> <CreateWeb3LaunchFollowCreatorResponse> delete_web3_launch_follow_creator(id)

Stop following the creator of a launch. Returns `{ following }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Stop following the creator of a launch. Returns `{ following }`.
  result = api_instance.delete_web3_launch_follow_creator(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_launch_follow_creator: #{e}"
end
```

#### Using the delete_web3_launch_follow_creator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWeb3LaunchFollowCreatorResponse>, Integer, Hash)> delete_web3_launch_follow_creator_with_http_info(id)

```ruby
begin
  # Stop following the creator of a launch. Returns `{ following }`.
  data, status_code, headers = api_instance.delete_web3_launch_follow_creator_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWeb3LaunchFollowCreatorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_launch_follow_creator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWeb3LaunchFollowCreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_marketplace_key

> delete_web3_marketplace_key(marketplace)

Remove your own key for a marketplace; Crossly's key is used again.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
marketplace = 'opensea' # String | 

begin
  # Remove your own key for a marketplace; Crossly's key is used again.
  api_instance.delete_web3_marketplace_key(marketplace)
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_marketplace_key: #{e}"
end
```

#### Using the delete_web3_marketplace_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_web3_marketplace_key_with_http_info(marketplace)

```ruby
begin
  # Remove your own key for a marketplace; Crossly's key is used again.
  data, status_code, headers = api_instance.delete_web3_marketplace_key_with_http_info(marketplace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_marketplace_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketplace** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_wallet

> <OkResponse> delete_web3_wallet(id)

Unlink a wallet. Its NFTs stay in inventory but stop syncing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Unlink a wallet. Its NFTs stay in inventory but stop syncing.
  result = api_instance.delete_web3_wallet(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_wallet: #{e}"
end
```

#### Using the delete_web3_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OkResponse>, Integer, Hash)> delete_web3_wallet_with_http_info(id)

```ruby
begin
  # Unlink a wallet. Its NFTs stay in inventory but stop syncing.
  data, status_code, headers = api_instance.delete_web3_wallet_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->delete_web3_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_auction

> <GetWeb3AuctionResponse> get_web3_auction(chain, contract, token_id)

A token's live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # A token's live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.
  result = api_instance.get_web3_auction(chain, contract, token_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_auction: #{e}"
end
```

#### Using the get_web3_auction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3AuctionResponse>, Integer, Hash)> get_web3_auction_with_http_info(chain, contract, token_id)

```ruby
begin
  # A token's live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.
  data, status_code, headers = api_instance.get_web3_auction_with_http_info(chain, contract, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3AuctionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_auction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

**GetWeb3AuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_browse

> <GetWeb3BrowseResponse> get_web3_browse

The Web3 directory's categories and chains, with how many collections each holds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # The Web3 directory's categories and chains, with how many collections each holds.
  result = api_instance.get_web3_browse
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_browse: #{e}"
end
```

#### Using the get_web3_browse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3BrowseResponse>, Integer, Hash)> get_web3_browse_with_http_info

```ruby
begin
  # The Web3 directory's categories and chains, with how many collections each holds.
  data, status_code, headers = api_instance.get_web3_browse_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3BrowseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_browse_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3BrowseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection

> <GetWeb3CollectionResponse> get_web3_collection(chain, contract)

A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).
  result = api_instance.get_web3_collection(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection: #{e}"
end
```

#### Using the get_web3_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionResponse>, Integer, Hash)> get_web3_collection_with_http_info(chain, contract)

```ruby
begin
  # A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).
  data, status_code, headers = api_instance.get_web3_collection_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection_depth

> <GetWeb3CollectionDepthResponse> get_web3_collection_depth(chain, contract)

A collection's Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # A collection's Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.
  result = api_instance.get_web3_collection_depth(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_depth: #{e}"
end
```

#### Using the get_web3_collection_depth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionDepthResponse>, Integer, Hash)> get_web3_collection_depth_with_http_info(chain, contract)

```ruby
begin
  # A collection's Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.
  data, status_code, headers = api_instance.get_web3_collection_depth_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionDepthResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_depth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionDepthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection_insight

> <GetWeb3CollectionInsightResponse> get_web3_collection_insight(chain, contract)

On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.
  result = api_instance.get_web3_collection_insight(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_insight: #{e}"
end
```

#### Using the get_web3_collection_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionInsightResponse>, Integer, Hash)> get_web3_collection_insight_with_http_info(chain, contract)

```ruby
begin
  # On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.
  data, status_code, headers = api_instance.get_web3_collection_insight_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionInsightResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionInsightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection_item

> <GetWeb3CollectionItemResponse> get_web3_collection_item(chain, contract)

A collection's NFTs: filter by traits (repeat trait=Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # A collection's NFTs: filter by traits (repeat trait=Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.
  result = api_instance.get_web3_collection_item(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_item: #{e}"
end
```

#### Using the get_web3_collection_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionItemResponse>, Integer, Hash)> get_web3_collection_item_with_http_info(chain, contract)

```ruby
begin
  # A collection's NFTs: filter by traits (repeat trait=Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.
  data, status_code, headers = api_instance.get_web3_collection_item_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionItemResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection_trait

> <GetWeb3CollectionTraitResponse> get_web3_collection_trait(chain, contract)

Every trait type and value in a collection, with how many tokens have each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # Every trait type and value in a collection, with how many tokens have each.
  result = api_instance.get_web3_collection_trait(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_trait: #{e}"
end
```

#### Using the get_web3_collection_trait_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionTraitResponse>, Integer, Hash)> get_web3_collection_trait_with_http_info(chain, contract)

```ruby
begin
  # Every trait type and value in a collection, with how many tokens have each.
  data, status_code, headers = api_instance.get_web3_collection_trait_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionTraitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_trait_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionTraitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collection_trait_token

> <GetWeb3CollectionTraitTokenResponse> get_web3_collection_trait_token(chain, contract)

Token ids in a collection with one trait — what a trait offer commits to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # Token ids in a collection with one trait — what a trait offer commits to.
  result = api_instance.get_web3_collection_trait_token(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_trait_token: #{e}"
end
```

#### Using the get_web3_collection_trait_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectionTraitTokenResponse>, Integer, Hash)> get_web3_collection_trait_token_with_http_info(chain, contract)

```ruby
begin
  # Token ids in a collection with one trait — what a trait offer commits to.
  data, status_code, headers = api_instance.get_web3_collection_trait_token_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectionTraitTokenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collection_trait_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CollectionTraitTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_collector

> <GetWeb3CollectorResponse> get_web3_collector

Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.
  result = api_instance.get_web3_collector
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collector: #{e}"
end
```

#### Using the get_web3_collector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CollectorResponse>, Integer, Hash)> get_web3_collector_with_http_info

```ruby
begin
  # Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.
  data, status_code, headers = api_instance.get_web3_collector_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CollectorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_collector_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3CollectorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_creator

> <GetWeb3CreatorResponse> get_web3_creator(chain, contract)

A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).
  result = api_instance.get_web3_creator(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_creator: #{e}"
end
```

#### Using the get_web3_creator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CreatorResponse>, Integer, Hash)> get_web3_creator_with_http_info(chain, contract)

```ruby
begin
  # A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).
  data, status_code, headers = api_instance.get_web3_creator_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CreatorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_creator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWeb3CreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_crosslist_quote

> <GetWeb3CrosslistQuoteResponse> get_web3_crosslist_quote

Each marketplace's terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Each marketplace's terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.
  result = api_instance.get_web3_crosslist_quote
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_crosslist_quote: #{e}"
end
```

#### Using the get_web3_crosslist_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3CrosslistQuoteResponse>, Integer, Hash)> get_web3_crosslist_quote_with_http_info

```ruby
begin
  # Each marketplace's terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.
  data, status_code, headers = api_instance.get_web3_crosslist_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3CrosslistQuoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_crosslist_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3CrosslistQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_featured

> <GetWeb3FeaturedResponse> get_web3_featured

The NFT home's featured collections: chosen by Crossly, else the hottest.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # The NFT home's featured collections: chosen by Crossly, else the hottest.
  result = api_instance.get_web3_featured
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_featured: #{e}"
end
```

#### Using the get_web3_featured_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3FeaturedResponse>, Integer, Hash)> get_web3_featured_with_http_info

```ruby
begin
  # The NFT home's featured collections: chosen by Crossly, else the hottest.
  data, status_code, headers = api_instance.get_web3_featured_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3FeaturedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_featured_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3FeaturedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_inventory

> <GetWeb3InventoryResponse> get_web3_inventory(item_id)

The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
item_id = 'item_id_example' # String | 

begin
  # The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).
  result = api_instance.get_web3_inventory(item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_inventory: #{e}"
end
```

#### Using the get_web3_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3InventoryResponse>, Integer, Hash)> get_web3_inventory_with_http_info(item_id)

```ruby
begin
  # The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).
  data, status_code, headers = api_instance.get_web3_inventory_with_http_info(item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3InventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **String** |  |  |

### Return type

**GetWeb3InventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_launch_allowlist_root_tx

> <GetWeb3LaunchAllowlistRootTxResponse> get_web3_launch_allowlist_root_tx(id)

The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): `{ chain, from, to, data }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): `{ chain, from, to, data }`.
  result = api_instance.get_web3_launch_allowlist_root_tx(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_allowlist_root_tx: #{e}"
end
```

#### Using the get_web3_launch_allowlist_root_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3LaunchAllowlistRootTxResponse>, Integer, Hash)> get_web3_launch_allowlist_root_tx_with_http_info(id)

```ruby
begin
  # The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): `{ chain, from, to, data }`.
  data, status_code, headers = api_instance.get_web3_launch_allowlist_root_tx_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3LaunchAllowlistRootTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_allowlist_root_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWeb3LaunchAllowlistRootTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_launch_deploy_tx

> <GetWeb3LaunchDeployTxResponse> get_web3_launch_deploy_tx(id)

The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns `{ chain, from, data }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns `{ chain, from, data }`.
  result = api_instance.get_web3_launch_deploy_tx(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_deploy_tx: #{e}"
end
```

#### Using the get_web3_launch_deploy_tx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3LaunchDeployTxResponse>, Integer, Hash)> get_web3_launch_deploy_tx_with_http_info(id)

```ruby
begin
  # The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns `{ chain, from, data }`.
  data, status_code, headers = api_instance.get_web3_launch_deploy_tx_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3LaunchDeployTxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_deploy_tx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWeb3LaunchDeployTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_launch_tool

> <GetWeb3LaunchToolResponse> get_web3_launch_tool(id)

A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.
  result = api_instance.get_web3_launch_tool(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_tool: #{e}"
end
```

#### Using the get_web3_launch_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3LaunchToolResponse>, Integer, Hash)> get_web3_launch_tool_with_http_info(id)

```ruby
begin
  # A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.
  data, status_code, headers = api_instance.get_web3_launch_tool_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3LaunchToolResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_launch_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWeb3LaunchToolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_order_fulfillment

> <GetWeb3OrderFulfillmentResponse> get_web3_order_fulfillment(chain, hash)

The signed order a taker passes to Seaport, after re-checking it can still fill.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
hash = 'hash_example' # String | 

begin
  # The signed order a taker passes to Seaport, after re-checking it can still fill.
  result = api_instance.get_web3_order_fulfillment(chain, hash)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_order_fulfillment: #{e}"
end
```

#### Using the get_web3_order_fulfillment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3OrderFulfillmentResponse>, Integer, Hash)> get_web3_order_fulfillment_with_http_info(chain, hash)

```ruby
begin
  # The signed order a taker passes to Seaport, after re-checking it can still fill.
  data, status_code, headers = api_instance.get_web3_order_fulfillment_with_http_info(chain, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3OrderFulfillmentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_order_fulfillment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **hash** | **String** |  |  |

### Return type

**GetWeb3OrderFulfillmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_phygital

> <GetWeb3PhygitalResponse> get_web3_phygital(chain, contract, token_id)

A token's phygital: the physical item it can be redeemed for, and whether it has been.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # A token's phygital: the physical item it can be redeemed for, and whether it has been.
  result = api_instance.get_web3_phygital(chain, contract, token_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_phygital: #{e}"
end
```

#### Using the get_web3_phygital_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3PhygitalResponse>, Integer, Hash)> get_web3_phygital_with_http_info(chain, contract, token_id)

```ruby
begin
  # A token's phygital: the physical item it can be redeemed for, and whether it has been.
  data, status_code, headers = api_instance.get_web3_phygital_with_http_info(chain, contract, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3PhygitalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_phygital_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

**GetWeb3PhygitalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_phygital2

> <GetWeb3Phygital2Response> get_web3_phygital2

Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.
  result = api_instance.get_web3_phygital2
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_phygital2: #{e}"
end
```

#### Using the get_web3_phygital2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3Phygital2Response>, Integer, Hash)> get_web3_phygital2_with_http_info

```ruby
begin
  # Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.
  data, status_code, headers = api_instance.get_web3_phygital2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3Phygital2Response>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_phygital2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3Phygital2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_portfolio

> <GetWeb3PortfolioResponse> get_web3_portfolio

Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.
  result = api_instance.get_web3_portfolio
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_portfolio: #{e}"
end
```

#### Using the get_web3_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3PortfolioResponse>, Integer, Hash)> get_web3_portfolio_with_http_info

```ruby
begin
  # Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.
  data, status_code, headers = api_instance.get_web3_portfolio_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3PortfolioResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_portfolio_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3PortfolioResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_portfolio_tax

> <GetWeb3PortfolioTaxResponse> get_web3_portfolio_tax

One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).
  result = api_instance.get_web3_portfolio_tax
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_portfolio_tax: #{e}"
end
```

#### Using the get_web3_portfolio_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3PortfolioTaxResponse>, Integer, Hash)> get_web3_portfolio_tax_with_http_info

```ruby
begin
  # One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).
  data, status_code, headers = api_instance.get_web3_portfolio_tax_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3PortfolioTaxResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_portfolio_tax_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWeb3PortfolioTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_profile

> <GetWeb3ProfileResponse> get_web3_profile(address)

A wallet's public profile: NFTs held, open Crossly listings, and activity.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
address = 'address_example' # String | 

begin
  # A wallet's public profile: NFTs held, open Crossly listings, and activity.
  result = api_instance.get_web3_profile(address)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_profile: #{e}"
end
```

#### Using the get_web3_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3ProfileResponse>, Integer, Hash)> get_web3_profile_with_http_info(address)

```ruby
begin
  # A wallet's public profile: NFTs held, open Crossly listings, and activity.
  data, status_code, headers = api_instance.get_web3_profile_with_http_info(address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3ProfileResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  |  |

### Return type

**GetWeb3ProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_resolve

> <GetWeb3ResolveResponse> get_web3_resolve(chain, slug)

A collection's chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
slug = 'slug_example' # String | 

begin
  # A collection's chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).
  result = api_instance.get_web3_resolve(chain, slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_resolve: #{e}"
end
```

#### Using the get_web3_resolve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3ResolveResponse>, Integer, Hash)> get_web3_resolve_with_http_info(chain, slug)

```ruby
begin
  # A collection's chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).
  data, status_code, headers = api_instance.get_web3_resolve_with_http_info(chain, slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3ResolveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_resolve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **slug** | **String** |  |  |

### Return type

**GetWeb3ResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_solana_collection_tensor_bid

> <GetWeb3SolanaCollectionTensorBidResponse> get_web3_solana_collection_tensor_bid(collection)

A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
collection = 'collection_example' # String | 

begin
  # A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.
  result = api_instance.get_web3_solana_collection_tensor_bid(collection)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_solana_collection_tensor_bid: #{e}"
end
```

#### Using the get_web3_solana_collection_tensor_bid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3SolanaCollectionTensorBidResponse>, Integer, Hash)> get_web3_solana_collection_tensor_bid_with_http_info(collection)

```ruby
begin
  # A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.
  data, status_code, headers = api_instance.get_web3_solana_collection_tensor_bid_with_http_info(collection)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3SolanaCollectionTensorBidResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_solana_collection_tensor_bid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** |  |  |

### Return type

**GetWeb3SolanaCollectionTensorBidResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web3_token

> <GetWeb3TokenResponse> get_web3_token(chain, contract, token_id)

One NFT: metadata, traits, owner, open listings and offers, activity.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # One NFT: metadata, traits, owner, open listings and offers, activity.
  result = api_instance.get_web3_token(chain, contract, token_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_token: #{e}"
end
```

#### Using the get_web3_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWeb3TokenResponse>, Integer, Hash)> get_web3_token_with_http_info(chain, contract, token_id)

```ruby
begin
  # One NFT: metadata, traits, owner, open listings and offers, activity.
  data, status_code, headers = api_instance.get_web3_token_with_http_info(chain, contract, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWeb3TokenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->get_web3_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

**GetWeb3TokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_activity

> <ListWeb3ActivityResponse> list_web3_activity

Listings, offers, sales and cancels in the Crossly book, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Listings, offers, sales and cancels in the Crossly book, newest first.
  result = api_instance.list_web3_activity
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_activity: #{e}"
end
```

#### Using the list_web3_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3ActivityResponse>, Integer, Hash)> list_web3_activity_with_http_info

```ruby
begin
  # Listings, offers, sales and cancels in the Crossly book, newest first.
  data, status_code, headers = api_instance.list_web3_activity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3ActivityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_activity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3ActivityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_alerts

> <ListWeb3AlertsResponse> list_web3_alerts

Your NFT price alerts, with the cheapest open Crossly listing each one covers now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your NFT price alerts, with the cheapest open Crossly listing each one covers now.
  result = api_instance.list_web3_alerts
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_alerts: #{e}"
end
```

#### Using the list_web3_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3AlertsResponse>, Integer, Hash)> list_web3_alerts_with_http_info

```ruby
begin
  # Your NFT price alerts, with the cheapest open Crossly listing each one covers now.
  data, status_code, headers = api_instance.list_web3_alerts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3AlertsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_alerts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3AlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_approvals

> <ListWeb3ApprovalsResponse> list_web3_approvals

Your collections the OpenSea conduit is approved to move, per linked wallet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your collections the OpenSea conduit is approved to move, per linked wallet.
  result = api_instance.list_web3_approvals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_approvals: #{e}"
end
```

#### Using the list_web3_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3ApprovalsResponse>, Integer, Hash)> list_web3_approvals_with_http_info

```ruby
begin
  # Your collections the OpenSea conduit is approved to move, per linked wallet.
  data, status_code, headers = api_instance.list_web3_approvals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3ApprovalsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_approvals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3ApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_auctions

> <ListWeb3AuctionsResponse> list_web3_auctions

Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.
  result = api_instance.list_web3_auctions
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_auctions: #{e}"
end
```

#### Using the list_web3_auctions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3AuctionsResponse>, Integer, Hash)> list_web3_auctions_with_http_info

```ruby
begin
  # Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.
  data, status_code, headers = api_instance.list_web3_auctions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3AuctionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_auctions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3AuctionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_browse_collections

> <ListWeb3BrowseCollectionsResponse> list_web3_browse_collections

Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.
  result = api_instance.list_web3_browse_collections
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_browse_collections: #{e}"
end
```

#### Using the list_web3_browse_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3BrowseCollectionsResponse>, Integer, Hash)> list_web3_browse_collections_with_http_info

```ruby
begin
  # Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.
  data, status_code, headers = api_instance.list_web3_browse_collections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3BrowseCollectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_browse_collections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3BrowseCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_browse_tokens

> <ListWeb3BrowseTokensResponse> list_web3_browse_tokens

Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.
  result = api_instance.list_web3_browse_tokens
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_browse_tokens: #{e}"
end
```

#### Using the list_web3_browse_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3BrowseTokensResponse>, Integer, Hash)> list_web3_browse_tokens_with_http_info

```ruby
begin
  # Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.
  data, status_code, headers = api_instance.list_web3_browse_tokens_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3BrowseTokensResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_browse_tokens_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3BrowseTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_bundles

> <ListWeb3BundlesResponse> list_web3_bundles

Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.
  result = api_instance.list_web3_bundles
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_bundles: #{e}"
end
```

#### Using the list_web3_bundles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3BundlesResponse>, Integer, Hash)> list_web3_bundles_with_http_info

```ruby
begin
  # Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.
  data, status_code, headers = api_instance.list_web3_bundles_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3BundlesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_bundles_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3BundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_collection_history

> <ListWeb3CollectionHistoryResponse> list_web3_collection_history(chain, contract)

Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).
  result = api_instance.list_web3_collection_history(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_collection_history: #{e}"
end
```

#### Using the list_web3_collection_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3CollectionHistoryResponse>, Integer, Hash)> list_web3_collection_history_with_http_info(chain, contract)

```ruby
begin
  # Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).
  data, status_code, headers = api_instance.list_web3_collection_history_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3CollectionHistoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_collection_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**ListWeb3CollectionHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_collections

> <ListWeb3CollectionsResponse> list_web3_collections

Collections ranked by 30-day Crossly volume, with floor and listed count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Collections ranked by 30-day Crossly volume, with floor and listed count.
  result = api_instance.list_web3_collections
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_collections: #{e}"
end
```

#### Using the list_web3_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3CollectionsResponse>, Integer, Hash)> list_web3_collections_with_http_info

```ruby
begin
  # Collections ranked by 30-day Crossly volume, with floor and listed count.
  data, status_code, headers = api_instance.list_web3_collections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3CollectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_collections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3CollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_creator_collections

> <ListWeb3CreatorCollectionsResponse> list_web3_creator_collections

Collections you are the creator of: your launches, and contracts you claimed by owning them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Collections you are the creator of: your launches, and contracts you claimed by owning them.
  result = api_instance.list_web3_creator_collections
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_creator_collections: #{e}"
end
```

#### Using the list_web3_creator_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3CreatorCollectionsResponse>, Integer, Hash)> list_web3_creator_collections_with_http_info

```ruby
begin
  # Collections you are the creator of: your launches, and contracts you claimed by owning them.
  data, status_code, headers = api_instance.list_web3_creator_collections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3CreatorCollectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_creator_collections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3CreatorCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_drops

> <ListWeb3DropsResponse> list_web3_drops

Upcoming and live NFT drops (curated mints on the creator's own page), soonest first, with whether you asked to be reminded.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Upcoming and live NFT drops (curated mints on the creator's own page), soonest first, with whether you asked to be reminded.
  result = api_instance.list_web3_drops
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_drops: #{e}"
end
```

#### Using the list_web3_drops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3DropsResponse>, Integer, Hash)> list_web3_drops_with_http_info

```ruby
begin
  # Upcoming and live NFT drops (curated mints on the creator's own page), soonest first, with whether you asked to be reminded.
  data, status_code, headers = api_instance.list_web3_drops_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3DropsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_drops_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3DropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_holder_perks

> <ListWeb3HolderPerksResponse> list_web3_holder_perks

Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.
  result = api_instance.list_web3_holder_perks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_holder_perks: #{e}"
end
```

#### Using the list_web3_holder_perks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3HolderPerksResponse>, Integer, Hash)> list_web3_holder_perks_with_http_info

```ruby
begin
  # Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.
  data, status_code, headers = api_instance.list_web3_holder_perks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3HolderPerksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_holder_perks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3HolderPerksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_launches

> <ListWeb3LaunchesResponse> list_web3_launches

Your launchpad collections (drafts and live), newest first, with minted count and phase.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your launchpad collections (drafts and live), newest first, with minted count and phase.
  result = api_instance.list_web3_launches
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_launches: #{e}"
end
```

#### Using the list_web3_launches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3LaunchesResponse>, Integer, Hash)> list_web3_launches_with_http_info

```ruby
begin
  # Your launchpad collections (drafts and live), newest first, with minted count and phase.
  data, status_code, headers = api_instance.list_web3_launches_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3LaunchesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_launches_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3LaunchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_listings

> <ListWeb3ListingsResponse> list_web3_listings

Open NFT listings in the Crossly book — the cheapest per token.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Open NFT listings in the Crossly book — the cheapest per token.
  result = api_instance.list_web3_listings
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_listings: #{e}"
end
```

#### Using the list_web3_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3ListingsResponse>, Integer, Hash)> list_web3_listings_with_http_info

```ruby
begin
  # Open NFT listings in the Crossly book — the cheapest per token.
  data, status_code, headers = api_instance.list_web3_listings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3ListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_listings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3ListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_marketplace_keys

> <ListWeb3MarketplaceKeysResponse> list_web3_marketplace_keys

Your own marketplace API keys (last four characters only) and whether Crossly's key covers each marketplace.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your own marketplace API keys (last four characters only) and whether Crossly's key covers each marketplace.
  result = api_instance.list_web3_marketplace_keys
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_marketplace_keys: #{e}"
end
```

#### Using the list_web3_marketplace_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3MarketplaceKeysResponse>, Integer, Hash)> list_web3_marketplace_keys_with_http_info

```ruby
begin
  # Your own marketplace API keys (last four characters only) and whether Crossly's key covers each marketplace.
  data, status_code, headers = api_instance.list_web3_marketplace_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3MarketplaceKeysResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_marketplace_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3MarketplaceKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_nfts

> <ListWeb3NftsResponse> list_web3_nfts(opts)

List the NFTs in your inventory, imported from your linked wallets.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
opts = {
  chain: 'ethereum', # String | 
  wallet_id: 'wallet_id_example', # String | 
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # List the NFTs in your inventory, imported from your linked wallets.
  result = api_instance.list_web3_nfts(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_nfts: #{e}"
end
```

#### Using the list_web3_nfts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3NftsResponse>, Integer, Hash)> list_web3_nfts_with_http_info(opts)

```ruby
begin
  # List the NFTs in your inventory, imported from your linked wallets.
  data, status_code, headers = api_instance.list_web3_nfts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3NftsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_nfts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  | [optional] |
| **wallet_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**ListWeb3NftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_orders

> <ListWeb3OrdersResponse> list_web3_orders

Your orders in the Crossly book (listings and offers), any status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your orders in the Crossly book (listings and offers), any status.
  result = api_instance.list_web3_orders
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_orders: #{e}"
end
```

#### Using the list_web3_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3OrdersResponse>, Integer, Hash)> list_web3_orders_with_http_info

```ruby
begin
  # Your orders in the Crossly book (listings and offers), any status.
  data, status_code, headers = api_instance.list_web3_orders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3OrdersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_orders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3OrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_purchases

> <ListWeb3PurchasesResponse> list_web3_purchases

NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.
  result = api_instance.list_web3_purchases
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_purchases: #{e}"
end
```

#### Using the list_web3_purchases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3PurchasesResponse>, Integer, Hash)> list_web3_purchases_with_http_info

```ruby
begin
  # NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.
  data, status_code, headers = api_instance.list_web3_purchases_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3PurchasesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_purchases_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3PurchasesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_rankings

> <ListWeb3RankingsResponse> list_web3_rankings

Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.
  result = api_instance.list_web3_rankings
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_rankings: #{e}"
end
```

#### Using the list_web3_rankings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3RankingsResponse>, Integer, Hash)> list_web3_rankings_with_http_info

```ruby
begin
  # Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.
  data, status_code, headers = api_instance.list_web3_rankings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3RankingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_rankings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3RankingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_reserved

> <ListWeb3BundlesResponse> list_web3_reserved

Private listings reserved for one of your linked wallets — only you can see or buy them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Private listings reserved for one of your linked wallets — only you can see or buy them.
  result = api_instance.list_web3_reserved
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_reserved: #{e}"
end
```

#### Using the list_web3_reserved_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3BundlesResponse>, Integer, Hash)> list_web3_reserved_with_http_info

```ruby
begin
  # Private listings reserved for one of your linked wallets — only you can see or buy them.
  data, status_code, headers = api_instance.list_web3_reserved_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3BundlesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_reserved_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3BundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_sales

> <ListWeb3SalesResponse> list_web3_sales

The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with `before`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with `before`.
  result = api_instance.list_web3_sales
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_sales: #{e}"
end
```

#### Using the list_web3_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3SalesResponse>, Integer, Hash)> list_web3_sales_with_http_info

```ruby
begin
  # The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with `before`.
  data, status_code, headers = api_instance.list_web3_sales_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3SalesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_sales_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3SalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_search

> <ListWeb3SearchResponse> list_web3_search

Find collections by contract address (every chain) or by name.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Find collections by contract address (every chain) or by name.
  result = api_instance.list_web3_search
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_search: #{e}"
end
```

#### Using the list_web3_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3SearchResponse>, Integer, Hash)> list_web3_search_with_http_info

```ruby
begin
  # Find collections by contract address (every chain) or by name.
  data, status_code, headers = api_instance.list_web3_search_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3SearchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_search_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3SearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_search_tokens

> <ListWeb3SearchTokensResponse> list_web3_search_tokens

Find tokens by collection name and number: 'pudgy 42', 'Bored Ape #1234'.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Find tokens by collection name and number: 'pudgy 42', 'Bored Ape #1234'.
  result = api_instance.list_web3_search_tokens
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_search_tokens: #{e}"
end
```

#### Using the list_web3_search_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3SearchTokensResponse>, Integer, Hash)> list_web3_search_tokens_with_http_info

```ruby
begin
  # Find tokens by collection name and number: 'pudgy 42', 'Bored Ape #1234'.
  data, status_code, headers = api_instance.list_web3_search_tokens_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3SearchTokensResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_search_tokens_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3SearchTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_wallets

> <ListWeb3WalletsResponse> list_web3_wallets

List your verified, linked wallets (EVM and Solana).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # List your verified, linked wallets (EVM and Solana).
  result = api_instance.list_web3_wallets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_wallets: #{e}"
end
```

#### Using the list_web3_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3WalletsResponse>, Integer, Hash)> list_web3_wallets_with_http_info

```ruby
begin
  # List your verified, linked wallets (EVM and Solana).
  data, status_code, headers = api_instance.list_web3_wallets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3WalletsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_wallets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3WalletsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web3_watchlist

> <ListWeb3WatchlistResponse> list_web3_watchlist

Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.
  result = api_instance.list_web3_watchlist
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_watchlist: #{e}"
end
```

#### Using the list_web3_watchlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3WatchlistResponse>, Integer, Hash)> list_web3_watchlist_with_http_info

```ruby
begin
  # Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.
  data, status_code, headers = api_instance.list_web3_watchlist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3WatchlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->list_web3_watchlist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3WatchlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_web3_holder_perk

> <ListWeb3HolderPerksItem> update_web3_holder_perk

Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new

begin
  # Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.
  result = api_instance.update_web3_holder_perk
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_holder_perk: #{e}"
end
```

#### Using the update_web3_holder_perk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3HolderPerksItem>, Integer, Hash)> update_web3_holder_perk_with_http_info

```ruby
begin
  # Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.
  data, status_code, headers = api_instance.update_web3_holder_perk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3HolderPerksItem>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_holder_perk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWeb3HolderPerksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_web3_launch_allowlist

> <UpdateWeb3LaunchAllowlistResponse> update_web3_launch_allowlist(id)

Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back `rootTx`, the setAllowlistRoot transaction for the owner wallet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
id = 'id_example' # String | 

begin
  # Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back `rootTx`, the setAllowlistRoot transaction for the owner wallet.
  result = api_instance.update_web3_launch_allowlist(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_launch_allowlist: #{e}"
end
```

#### Using the update_web3_launch_allowlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWeb3LaunchAllowlistResponse>, Integer, Hash)> update_web3_launch_allowlist_with_http_info(id)

```ruby
begin
  # Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back `rootTx`, the setAllowlistRoot transaction for the owner wallet.
  data, status_code, headers = api_instance.update_web3_launch_allowlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWeb3LaunchAllowlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_launch_allowlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWeb3LaunchAllowlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_web3_marketplace_key

> <ListWeb3MarketplaceKeysItem> update_web3_marketplace_key(marketplace)

Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::Web3Api.new
marketplace = 'opensea' # String | 

begin
  # Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.
  result = api_instance.update_web3_marketplace_key(marketplace)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_marketplace_key: #{e}"
end
```

#### Using the update_web3_marketplace_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWeb3MarketplaceKeysItem>, Integer, Hash)> update_web3_marketplace_key_with_http_info(marketplace)

```ruby
begin
  # Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.
  data, status_code, headers = api_instance.update_web3_marketplace_key_with_http_info(marketplace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWeb3MarketplaceKeysItem>
rescue Crossly::ApiError => e
  puts "Error when calling Web3Api->update_web3_marketplace_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketplace** | **String** |  |  |

### Return type

**ListWeb3MarketplaceKeysItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

