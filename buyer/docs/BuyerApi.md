# CrosslyBuyer::BuyerApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_buyer_activity**](BuyerApi.md#create_buyer_activity) | **POST** /v1/buyer/activity | Report an item your user is looking at, and get our answer. |
| [**create_buyer_auction_bid**](BuyerApi.md#create_buyer_auction_bid) | **POST** /v1/buyer/auctions/{slug}/bids | Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY. |
| [**create_buyer_auction_pay**](BuyerApi.md#create_buyer_auction_pay) | **POST** /v1/buyer/auctions/{slug}/pay | Pay for an auction you won whose automatic charge did not go through. |
| [**create_buyer_auction_retract**](BuyerApi.md#create_buyer_auction_retract) | **POST** /v1/buyer/auctions/{slug}/retract | Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller. |
| [**create_buyer_board**](BuyerApi.md#create_buyer_board) | **POST** /v1/buyer/boards | Create an outfit board. |
| [**create_buyer_board_item**](BuyerApi.md#create_buyer_board_item) | **POST** /v1/buyer/boards/{id}/items | Add a listing (by slug) to a board, at the next free spot. |
| [**create_buyer_break_spot_hold**](BuyerApi.md#create_buyer_break_spot_hold) | **POST** /v1/buyer/breaks/{id}/spots/{spotId}/hold | Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses. |
| [**create_buyer_buyback_request**](BuyerApi.md#create_buyer_buyback_request) | **POST** /v1/buyer/buybacks/{id}/request | Ask Crossly to buy an item back under its buyback guarantee. |
| [**create_buyer_cart_item**](BuyerApi.md#create_buyer_cart_item) | **POST** /v1/buyer/cart/items | Add a listing to your cart. |
| [**create_buyer_cart_item_save_for_later**](BuyerApi.md#create_buyer_cart_item_save_for_later) | **POST** /v1/buyer/cart/items/{id}/save-for-later | Move a cart line to saved-for-later. |
| [**create_buyer_cart_optimizer**](BuyerApi.md#create_buyer_cart_optimizer) | **POST** /v1/buyer/cart-optimizer | Cart optimizer: send a shopping list (one item per line, \&quot;2 Charizard Base Set\&quot;) and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart. |
| [**create_buyer_cart_quote**](BuyerApi.md#create_buyer_cart_quote) | **POST** /v1/buyer/cart/quote | Price the cart, delivered — item, shipping, tax, total. |
| [**create_buyer_cart_saved_move_to_cart**](BuyerApi.md#create_buyer_cart_saved_move_to_cart) | **POST** /v1/buyer/cart/saved/{id}/move-to-cart | Move a saved item back into your cart, at today’s price. |
| [**create_buyer_case_counter**](BuyerApi.md#create_buyer_case_counter) | **POST** /v1/buyer/cases/{id}/counter | Propose your own refund figure on a case. |
| [**create_buyer_case_escalate**](BuyerApi.md#create_buyer_case_escalate) | **POST** /v1/buyer/cases/{id}/escalate | Ask Crossly to step in on a case. |
| [**create_buyer_case_message**](BuyerApi.md#create_buyer_case_message) | **POST** /v1/buyer/cases/{id}/messages | Post a message on a case thread. |
| [**create_buyer_case_respond**](BuyerApi.md#create_buyer_case_respond) | **POST** /v1/buyer/cases/{id}/respond | Accept or reject the seller’s partial-refund offer on a case. |
| [**create_buyer_case_withdraw**](BuyerApi.md#create_buyer_case_withdraw) | **POST** /v1/buyer/cases/{id}/withdraw | Withdraw a case you opened. |
| [**create_buyer_catalog_listing_rental**](BuyerApi.md#create_buyer_catalog_listing_rental) | **POST** /v1/buyer/catalog/listings/{slug}/rental | Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does. |
| [**create_buyer_catalog_listing_rental_quote**](BuyerApi.md#create_buyer_catalog_listing_rental_quote) | **POST** /v1/buyer/catalog/listings/{slug}/rental/quote | Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. &#x60;problem&#x60; says why the dates can’t be booked. |
| [**create_buyer_catalog_listing_video_request**](BuyerApi.md#create_buyer_catalog_listing_video_request) | **POST** /v1/buyer/catalog/listings/{slug}/video-requests | Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer. |
| [**create_buyer_conversation_invite**](BuyerApi.md#create_buyer_conversation_invite) | **POST** /v1/buyer/conversations/{id}/invite | Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests. |
| [**create_buyer_conversation_join**](BuyerApi.md#create_buyer_conversation_join) | **POST** /v1/buyer/conversations/join/{token} | Join a chat you were invited into, as a guest. |
| [**create_buyer_feedback**](BuyerApi.md#create_buyer_feedback) | **POST** /v1/buyer/feedback | Leave feedback on up to 25 orders at once, with optional detailed seller ratings. |
| [**create_buyer_fit_ref**](BuyerApi.md#create_buyer_fit_ref) | **POST** /v1/buyer/fit/refs | Save a reference garment (flat measurements, inches) to compare listings against. |
| [**create_buyer_following_seller_seen**](BuyerApi.md#create_buyer_following_seller_seen) | **POST** /v1/buyer/following/sellers/seen | Clear the \&quot;new listings\&quot; count on a followed seller, or on all of them. |
| [**create_buyer_gift_card**](BuyerApi.md#create_buyer_gift_card) | **POST** /v1/buyer/gift-cards | Start a gift card purchase. |
| [**create_buyer_gift_card_redeem**](BuyerApi.md#create_buyer_gift_card_redeem) | **POST** /v1/buyer/gift-cards/redeem | Redeem a gift card code into your own balance. |
| [**create_buyer_group_buy_join**](BuyerApi.md#create_buyer_group_buy_join) | **POST** /v1/buyer/group-buys/{id}/join | Join a group buy: a hold at the starting price, captured at the price the group reaches. Checked against this key’s spending controls; send an Idempotency-Key. |
| [**create_buyer_group_buy_leave**](BuyerApi.md#create_buyer_group_buy_leave) | **POST** /v1/buyer/group-buys/{id}/leave | Leave a group buy and release your hold. |
| [**create_buyer_hunt**](BuyerApi.md#create_buyer_hunt) | **POST** /v1/buyer/hunts | Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). &#x60;offer&#x60; and &#x60;buy&#x60; modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls. |
| [**create_buyer_instant_offer_accept**](BuyerApi.md#create_buyer_instant_offer_accept) | **POST** /v1/buyer/instant-offers/{id}/accept | Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out. |
| [**create_buyer_layaway_cancel**](BuyerApi.md#create_buyer_layaway_cancel) | **POST** /v1/buyer/layaways/{id}/cancel | Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15). |
| [**create_buyer_layaway_pay**](BuyerApi.md#create_buyer_layaway_pay) | **POST** /v1/buyer/layaways/{id}/pay | Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships. |
| [**create_buyer_listing_audio_summary**](BuyerApi.md#create_buyer_listing_audio_summary) | **POST** /v1/buyer/listings/{slug}/audio-summary | Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured. |
| [**create_buyer_listing_split**](BuyerApi.md#create_buyer_listing_split) | **POST** /v1/buyer/listings/{slug}/split | Split a purchase: one pay link per person; nobody is charged until all have paid. |
| [**create_buyer_listing_subscribe**](BuyerApi.md#create_buyer_listing_subscribe) | **POST** /v1/buyer/listings/{slug}/subscribe | Subscribe &amp; save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key. |
| [**create_buyer_listing_try_on**](BuyerApi.md#create_buyer_listing_try_on) | **POST** /v1/buyer/listings/{slug}/try-on | Render an AI try-on of this listing on the buyer’s own photo (base64 &#x60;photo&#x60;, or &#x60;reuseLastPhoto&#x60;). &#x60;confirmSelfAdult&#x60; must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured. |
| [**create_buyer_market_bid**](BuyerApi.md#create_buyer_market_bid) | **POST** /v1/buyer/market/bids | Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key. |
| [**create_buyer_market_watch**](BuyerApi.md#create_buyer_market_watch) | **POST** /v1/buyer/market/watches | Watch a market variant: alert at or below a price, or on any drop. |
| [**create_buyer_offer**](BuyerApi.md#create_buyer_offer) | **POST** /v1/buyer/offers | Offer a price on a listing. |
| [**create_buyer_offer_respond**](BuyerApi.md#create_buyer_offer_respond) | **POST** /v1/buyer/offers/{id}/respond | Answer a seller’s counteroffer — accept, decline, or counter back. |
| [**create_buyer_order_cancel**](BuyerApi.md#create_buyer_order_cancel) | **POST** /v1/buyer/orders/{id}/cancel | Cancel an order before it ships — refunds it in full. |
| [**create_buyer_order_inr**](BuyerApi.md#create_buyer_order_inr) | **POST** /v1/buyer/orders/{id}/inr | Open an item-not-received case. |
| [**create_buyer_order_received**](BuyerApi.md#create_buyer_order_received) | **POST** /v1/buyer/orders/{id}/received | Confirm you received an order. |
| [**create_buyer_order_tip**](BuyerApi.md#create_buyer_order_tip) | **POST** /v1/buyer/orders/{id}/tip | Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls. |
| [**create_buyer_pack_fairness_rotate**](BuyerApi.md#create_buyer_pack_fairness_rotate) | **POST** /v1/buyer/packs/fairness/rotate | Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment. |
| [**create_buyer_pack_open**](BuyerApi.md#create_buyer_pack_open) | **POST** /v1/buyer/packs/{slug}/open | Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key. |
| [**create_buyer_pack_opening_sell_back**](BuyerApi.md#create_buyer_pack_opening_sell_back) | **POST** /v1/buyer/pack-openings/{id}/sell-back | Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault. |
| [**create_buyer_passport_claim**](BuyerApi.md#create_buyer_passport_claim) | **POST** /v1/buyer/passports/{code}/claim | Claim a passport as the item’s current owner (the buyer of its latest sale) — shown as “in its owner’s hands” until it sells again. |
| [**create_buyer_protection_plan_cancel**](BuyerApi.md#create_buyer_protection_plan_cancel) | **POST** /v1/buyer/protection-plans/{id}/cancel | Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card. |
| [**create_buyer_purchase_download**](BuyerApi.md#create_buyer_purchase_download) | **POST** /v1/buyer/purchases/{id}/download | A ten-minute link to a digital purchase’s file; each call uses one of its downloads. |
| [**create_buyer_purchase_fit**](BuyerApi.md#create_buyer_purchase_fit) | **POST** /v1/buyer/purchases/{id}/fit | Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs. |
| [**create_buyer_purchase_return**](BuyerApi.md#create_buyer_purchase_return) | **POST** /v1/buyer/purchases/{id}/return | Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, &#x60;fit&#x60; (small | large) says which way, and it feeds your size memory. |
| [**create_buyer_registry**](BuyerApi.md#create_buyer_registry) | **POST** /v1/buyer/registries | Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it. |
| [**create_buyer_registry_gift_thanked**](BuyerApi.md#create_buyer_registry_gift_thanked) | **POST** /v1/buyer/registries/{id}/gifts/{giftId}/thanked | Tick a gift as thanked (or untick it). |
| [**create_buyer_rental_arrival_photo**](BuyerApi.md#create_buyer_rental_arrival_photo) | **POST** /v1/buyer/rentals/{id}/arrival-photos | Photograph a rental on arrival (URLs you uploaded): your side of the condition record. |
| [**create_buyer_rental_cancel**](BuyerApi.md#create_buyer_rental_cancel) | **POST** /v1/buyer/rentals/{id}/cancel | Cancel a rental that has not shipped: everything is refunded. |
| [**create_buyer_rental_claim_response**](BuyerApi.md#create_buyer_rental_claim_response) | **POST** /v1/buyer/rentals/{id}/claim-response | Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides). |
| [**create_buyer_rental_identity_start**](BuyerApi.md#create_buyer_rental_identity_start) | **POST** /v1/buyer/rentals/identity/start | Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open &#x60;url&#x60; (hosted) or use &#x60;clientSecret&#x60; with Stripe.js. |
| [**create_buyer_return_cancel**](BuyerApi.md#create_buyer_return_cancel) | **POST** /v1/buyer/returns/{id}/cancel | Cancel a return before it ships. |
| [**create_buyer_return_tracking**](BuyerApi.md#create_buyer_return_tracking) | **POST** /v1/buyer/returns/{id}/tracking | Add tracking to a return you shipped on your own label. |
| [**create_buyer_seller_club_join**](BuyerApi.md#create_buyer_seller_club_join) | **POST** /v1/buyer/sellers/{sellerUserId}/club/join | Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked. |
| [**create_buyer_seller_report**](BuyerApi.md#create_buyer_seller_report) | **POST** /v1/buyer/sellers/{username}/report | Report a seller to Crossly’s trust team. |
| [**create_buyer_split_cancel**](BuyerApi.md#create_buyer_split_cancel) | **POST** /v1/buyer/splits/{id}/cancel | Cancel a split you organised; every held share is released. |
| [**create_buyer_together**](BuyerApi.md#create_buyer_together) | **POST** /v1/buyer/together | Start a shop-together room. |
| [**create_buyer_together_item**](BuyerApi.md#create_buyer_together_item) | **POST** /v1/buyer/together/{code}/items | Add a listing to a shop-together board. |
| [**create_buyer_together_item_vote**](BuyerApi.md#create_buyer_together_item_vote) | **POST** /v1/buyer/together/{code}/items/{id}/vote | Vote an item on a room’s board up (1), down (-1) or clear (0). |
| [**create_buyer_together_join**](BuyerApi.md#create_buyer_together_join) | **POST** /v1/buyer/together/{code}/join | Join a shop-together room by its code. |
| [**create_buyer_together_leave**](BuyerApi.md#create_buyer_together_leave) | **POST** /v1/buyer/together/{code}/leave | Leave a shop-together room. |
| [**create_buyer_together_message**](BuyerApi.md#create_buyer_together_message) | **POST** /v1/buyer/together/{code}/messages | Say something in a shop-together room. |
| [**create_buyer_total_request**](BuyerApi.md#create_buyer_total_request) | **POST** /v1/buyer/total-requests | Ask a seller for one combined shipping total on everything of theirs in your cart. |
| [**create_buyer_vault_list**](BuyerApi.md#create_buyer_vault_list) | **POST** /v1/buyer/vault/{id}/list | Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them. |
| [**create_buyer_vault_unlist**](BuyerApi.md#create_buyer_vault_unlist) | **POST** /v1/buyer/vault/{id}/unlist | Take a vault item off the market; it stays stored. |
| [**create_buyer_vault_withdraw**](BuyerApi.md#create_buyer_vault_withdraw) | **POST** /v1/buyer/vault/{id}/withdraw | Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key. |
| [**create_buyer_wishlist**](BuyerApi.md#create_buyer_wishlist) | **POST** /v1/buyer/wishlists | Create a wishlist. |
| [**create_buyer_wishlist_invite**](BuyerApi.md#create_buyer_wishlist_invite) | **POST** /v1/buyer/wishlists/{id}/invite | Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20. |
| [**create_buyer_wishlist_item**](BuyerApi.md#create_buyer_wishlist_item) | **POST** /v1/buyer/wishlists/{id}/items | Add a listing to a wishlist. |
| [**create_buyer_wishlist_join**](BuyerApi.md#create_buyer_wishlist_join) | **POST** /v1/buyer/wishlists/join/{token} | Join a wishlist you were invited to edit. |
| [**create_buyer_wishlist_share**](BuyerApi.md#create_buyer_wishlist_share) | **POST** /v1/buyer/wishlists/{id}/share | Share a wishlist — makes it public and returns its link. |
| [**delete_buyer_board**](BuyerApi.md#delete_buyer_board) | **DELETE** /v1/buyer/boards/{id} | Delete a board. |
| [**delete_buyer_board_item**](BuyerApi.md#delete_buyer_board_item) | **DELETE** /v1/buyer/boards/{id}/items/{platformListingId} | Take a listing off a board. |
| [**delete_buyer_break_spot_hold**](BuyerApi.md#delete_buyer_break_spot_hold) | **DELETE** /v1/buyer/breaks/{id}/spots/{spotId}/hold | Release a break spot you hold. |
| [**delete_buyer_cart_item**](BuyerApi.md#delete_buyer_cart_item) | **DELETE** /v1/buyer/cart/items/{id} | Remove a line from your cart. |
| [**delete_buyer_cart_saved**](BuyerApi.md#delete_buyer_cart_saved) | **DELETE** /v1/buyer/cart/saved/{id} | Remove an item from saved-for-later. Returns the remaining list. |
| [**delete_buyer_conversation_guest**](BuyerApi.md#delete_buyer_conversation_guest) | **DELETE** /v1/buyer/conversations/{id}/guests/{userId} | Remove a guest (the thread’s buyer), or leave (a guest, with your own user id). |
| [**delete_buyer_fit_ref**](BuyerApi.md#delete_buyer_fit_ref) | **DELETE** /v1/buyer/fit/refs/{id} | Delete a reference garment. |
| [**delete_buyer_market_bid**](BuyerApi.md#delete_buyer_market_bid) | **DELETE** /v1/buyer/market/bids/{id} | Cancel a resting market bid. |
| [**delete_buyer_market_watch**](BuyerApi.md#delete_buyer_market_watch) | **DELETE** /v1/buyer/market/watches/{id} | Stop watching a market variant. |
| [**delete_buyer_offer**](BuyerApi.md#delete_buyer_offer) | **DELETE** /v1/buyer/offers/{id} | Withdraw an offer you made that the seller has not answered. |
| [**delete_buyer_recently_viewed**](BuyerApi.md#delete_buyer_recently_viewed) | **DELETE** /v1/buyer/recently-viewed/{slug} | Remove one listing from your recently viewed. |
| [**delete_buyer_recently_viewed2**](BuyerApi.md#delete_buyer_recently_viewed2) | **DELETE** /v1/buyer/recently-viewed | Clear your recently viewed list. |
| [**delete_buyer_registry**](BuyerApi.md#delete_buyer_registry) | **DELETE** /v1/buyer/registries/{id} | Delete a registry (and the wishlist behind it). |
| [**delete_buyer_seller_club_join**](BuyerApi.md#delete_buyer_seller_club_join) | **DELETE** /v1/buyer/sellers/{sellerUserId}/club/join | Leave a seller’s loyalty club. |
| [**delete_buyer_together_item**](BuyerApi.md#delete_buyer_together_item) | **DELETE** /v1/buyer/together/{code}/items/{id} | Take an item you added off a room’s board. |
| [**delete_buyer_total_request**](BuyerApi.md#delete_buyer_total_request) | **DELETE** /v1/buyer/total-requests/{id} | Cancel a total request you made. |
| [**delete_buyer_try_on**](BuyerApi.md#delete_buyer_try_on) | **DELETE** /v1/buyer/try-ons/{id} | Delete a try-on and its images — or pass &#x60;all&#x60; to delete every photo and result. |
| [**delete_buyer_wishlist**](BuyerApi.md#delete_buyer_wishlist) | **DELETE** /v1/buyer/wishlists/{id} | Delete a wishlist and everything on it. |
| [**delete_buyer_wishlist_item**](BuyerApi.md#delete_buyer_wishlist_item) | **DELETE** /v1/buyer/wishlists/{id}/items/{slug} | Take a listing off a wishlist. |
| [**delete_buyer_wishlist_member**](BuyerApi.md#delete_buyer_wishlist_member) | **DELETE** /v1/buyer/wishlists/{id}/members/{userId} | Remove a co-editor (the owner), or leave a list shared with you (your own user id). |
| [**get_buyer_auction_me**](BuyerApi.md#get_buyer_auction_me) | **GET** /v1/buyer/auctions/{slug}/me | Where you stand in one auction — your max, leading, won, must you pay. |
| [**get_buyer_badge**](BuyerApi.md#get_buyer_badge) | **GET** /v1/buyer/badges | The counts behind the account badge — unread messages, offers waiting, orders to review. |
| [**get_buyer_board**](BuyerApi.md#get_buyer_board) | **GET** /v1/buyer/boards/{id} | One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order. |
| [**get_buyer_board_shared**](BuyerApi.md#get_buyer_board_shared) | **GET** /v1/buyer/boards/shared/{token} | A shared outfit board, by its link token. |
| [**get_buyer_break**](BuyerApi.md#get_buyer_break) | **GET** /v1/buyer/breaks/{id} | A card break’s board: spots, holders, and the seed after the draw. |
| [**get_buyer_case**](BuyerApi.md#get_buyer_case) | **GET** /v1/buyer/cases/{id} | One case — its state, the message thread, and the return parcel if there is one. |
| [**get_buyer_catalog_listing_my_size**](BuyerApi.md#get_buyer_catalog_listing_my_size) | **GET** /v1/buyer/catalog/listings/{slug}/my-size | This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item. |
| [**get_buyer_catalog_listing_price**](BuyerApi.md#get_buyer_catalog_listing_price) | **GET** /v1/buyer/catalog/listings/{slug}/price | The price today. When the seller has the same item live on another marketplace for less, this IS that price (&#x60;priceMatch&#x60; says where from), and &#x60;lowestAnywhere&#x60; lists the marketplaces it is guaranteed not to be cheaper on. &#x60;priceCheck&#x60; rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers. |
| [**get_buyer_catalog_listing_rental**](BuyerApi.md#get_buyer_catalog_listing_rental) | **GET** /v1/buyer/catalog/listings/{slug}/rental | Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent. |
| [**get_buyer_checkout_usdc**](BuyerApi.md#get_buyer_checkout_usdc) | **GET** /v1/buyer/checkout/usdc | Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended. |
| [**get_buyer_collection_offer**](BuyerApi.md#get_buyer_collection_offer) | **GET** /v1/buyer/collection/{id}/offer | What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time). |
| [**get_buyer_collection_set**](BuyerApi.md#get_buyer_collection_set) | **GET** /v1/buyer/collection/sets/{category}/{brand}/{model} | One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank. |
| [**get_buyer_creator**](BuyerApi.md#get_buyer_creator) | **GET** /v1/buyer/creators/{handle} | A creator storefront: profile, affiliate code, and shelves of live picks. |
| [**get_buyer_fit_vocabulary**](BuyerApi.md#get_buyer_fit_vocabulary) | **GET** /v1/buyer/fit/vocabulary | Garment kinds and the measurements each takes. |
| [**get_buyer_gift_finder_option**](BuyerApi.md#get_buyer_gift_finder_option) | **GET** /v1/buyer/gift-finder/options | The gift finder’s questions: recipients, interests, budgets. |
| [**get_buyer_impact**](BuyerApi.md#get_buyer_impact) | **GET** /v1/buyer/impact | The sourced footprint your secondhand purchases avoided. |
| [**get_buyer_layaway**](BuyerApi.md#get_buyer_layaway) | **GET** /v1/buyer/layaways/{id} | One layaway and its schedule. |
| [**get_buyer_listing_audio_summary**](BuyerApi.md#get_buyer_listing_audio_summary) | **GET** /v1/buyer/listings/{slug}/audio-summary | A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists. |
| [**get_buyer_listing_bought_together**](BuyerApi.md#get_buyer_listing_bought_together) | **GET** /v1/buyer/listings/{slug}/bought-together | Frequently bought together / complete the look. |
| [**get_buyer_listing_break**](BuyerApi.md#get_buyer_listing_break) | **GET** /v1/buyer/listings/{slug}/break | The card break this listing sells spots in, if any; the seed is revealed after the draw. |
| [**get_buyer_listing_cert**](BuyerApi.md#get_buyer_listing_cert) | **GET** /v1/buyer/listings/{slug}/cert | A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page. |
| [**get_buyer_listing_fit**](BuyerApi.md#get_buyer_listing_fit) | **GET** /v1/buyer/listings/{slug}/fit | A listing’s flat measurements, compared with your saved reference garments. |
| [**get_buyer_listing_group_buy**](BuyerApi.md#get_buyer_listing_group_buy) | **GET** /v1/buyer/listings/{slug}/group-buy | The group buy open on this listing, if any. |
| [**get_buyer_listing_impact**](BuyerApi.md#get_buyer_listing_impact) | **GET** /v1/buyer/listings/{slug}/impact | The sourced footprint of making a new equivalent; null when no published figure applies. |
| [**get_buyer_listing_resale_value**](BuyerApi.md#get_buyer_listing_resale_value) | **GET** /v1/buyer/listings/{slug}/resale-value | What the same brand and category resold for on Crossly, and the buyback offer when enabled. |
| [**get_buyer_listing_subscribe_offer**](BuyerApi.md#get_buyer_listing_subscribe_offer) | **GET** /v1/buyer/listings/{slug}/subscribe-offer | The subscribe &amp; save discount and intervals on a listing; null when the seller has none. |
| [**get_buyer_listing_try_on**](BuyerApi.md#get_buyer_listing_try_on) | **GET** /v1/buyer/listings/{slug}/try-on | Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured. |
| [**get_buyer_live_stream_auction**](BuyerApi.md#get_buyer_live_stream_auction) | **GET** /v1/buyer/live-streams/{id}/auction | The auction running on a live stream right now, if any. Bid on it by its &#x60;slug&#x60; at POST /v1/buyer/auctions/:slug/bids. |
| [**get_buyer_market_purchase_option**](BuyerApi.md#get_buyer_market_purchase_option) | **GET** /v1/buyer/market/purchase-options | Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid). |
| [**get_buyer_order_eligibility**](BuyerApi.md#get_buyer_order_eligibility) | **GET** /v1/buyer/orders/{id}/eligibility | What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback. |
| [**get_buyer_order_export**](BuyerApi.md#get_buyer_order_export) | **GET** /v1/buyer/orders/export | Your order history as CSV text (up to 5,000 orders). |
| [**get_buyer_order_price_protection**](BuyerApi.md#get_buyer_order_price_protection) | **GET** /v1/buyer/orders/{id}/price-protection | Price protection on one order: if the item gets cheaper before &#x60;until&#x60;, the difference is credited to your Bucks automatically. &#x60;creditedCents&#x60; is what it has paid so far. |
| [**get_buyer_pack**](BuyerApi.md#get_buyer_pack) | **GET** /v1/buyer/packs/{slug} | One pack: tiers and odds, items left, expected value, the chase items still in it. |
| [**get_buyer_pack_fairness**](BuyerApi.md#get_buyer_pack_fairness) | **GET** /v1/buyer/packs/fairness | Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run. |
| [**get_buyer_party**](BuyerApi.md#get_buyer_party) | **GET** /v1/buyer/parties/{slug} | One shopping party. |
| [**get_buyer_passport**](BuyerApi.md#get_buyer_passport) | **GET** /v1/buyer/passports/{code} | What a product passport tag opens: the item, whether it was authenticated, how many owners on Crossly and since when — never who or for how much. |
| [**get_buyer_preference**](BuyerApi.md#get_buyer_preference) | **GET** /v1/buyer/preferences | The shopping profile derived from that activity. |
| [**get_buyer_price_guide**](BuyerApi.md#get_buyer_price_guide) | **GET** /v1/buyer/price-guide | What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category. |
| [**get_buyer_profile**](BuyerApi.md#get_buyer_profile) | **GET** /v1/buyer/profile | Your Crossly shopping profile — name, email, saved address, Bucks balance. |
| [**get_buyer_purchase_delivery**](BuyerApi.md#get_buyer_purchase_delivery) | **GET** /v1/buyer/purchases/{id}/delivery | Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation. |
| [**get_buyer_purchase_live_moment**](BuyerApi.md#get_buyer_purchase_live_moment) | **GET** /v1/buyer/purchases/{id}/live-moment | The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show. |
| [**get_buyer_purchase_return**](BuyerApi.md#get_buyer_purchase_return) | **GET** /v1/buyer/purchases/{id}/return | What a return would refund for each reason, by when, and any return already open. |
| [**get_buyer_purchase_story**](BuyerApi.md#get_buyer_purchase_story) | **GET** /v1/buyer/purchases/{id}/story | Your owner story on a purchase, passed on to the next owner if you resell it. |
| [**get_buyer_registry**](BuyerApi.md#get_buyer_registry) | **GET** /v1/buyer/registries/{id} | One of your registries: items with how many are wanted and bought. |
| [**get_buyer_registry_by_token**](BuyerApi.md#get_buyer_registry_by_token) | **GET** /v1/buyer/registry/{token} | A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address. |
| [**get_buyer_rental_eligibility**](BuyerApi.md#get_buyer_rental_eligibility) | **GET** /v1/buyer/rentals/eligibility | Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did). |
| [**get_buyer_seller_club**](BuyerApi.md#get_buyer_seller_club) | **GET** /v1/buyer/sellers/{sellerUserId}/club | A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none. |
| [**get_buyer_seller_trust**](BuyerApi.md#get_buyer_seller_trust) | **GET** /v1/buyer/sellers/{username}/trust | Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows. |
| [**get_buyer_together**](BuyerApi.md#get_buyer_together) | **GET** /v1/buyer/together/{code} | A shop-together room: members, the board with votes, and chat. |
| [**get_buyer_vault_market_history**](BuyerApi.md#get_buyer_vault_market_history) | **GET** /v1/buyer/vault-markets/history | Your Vault Markets value by day at the marks (oldest first, today live) over &#x60;days&#x60; (default 90), and today’s change against yesterday’s close. |
| [**get_buyer_vault_market_index**](BuyerApi.md#get_buyer_vault_market_index) | **GET** /v1/buyer/vault-markets/indexes/{slug} | One index with its published daily closes (oldest first, &#x60;days&#x60; default 365) and its level now. |
| [**get_buyer_vault_market_instant_exit**](BuyerApi.md#get_buyer_vault_market_instant_exit) | **GET** /v1/buyer/vault-markets/instant-exit/{id} | The Instant Exit quote for one vault unit you hold, and whether it can be sold now. |
| [**get_buyer_vault_market_worth**](BuyerApi.md#get_buyer_vault_market_worth) | **GET** /v1/buyer/vault-markets/worth | What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&amp;L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only. |
| [**list_buyer_activity**](BuyerApi.md#list_buyer_activity) | **GET** /v1/buyer/activity | What this buyer has compared lately. |
| [**list_buyer_auction_bids**](BuyerApi.md#list_buyer_auction_bids) | **GET** /v1/buyer/auctions/{slug}/bids | An auction’s bid history, highest first, bidders anonymised. |
| [**list_buyer_auctions**](BuyerApi.md#list_buyer_auctions) | **GET** /v1/buyer/auctions | Auctions you have bid in — bidding, won or lost (last 100). |
| [**list_buyer_boards**](BuyerApi.md#list_buyer_boards) | **GET** /v1/buyer/boards | Your outfit boards: collages of listings, each with a share link. |
| [**list_buyer_breaks**](BuyerApi.md#list_buyer_breaks) | **GET** /v1/buyer/breaks | Card-break spots you hold or bought, with what each pulled. |
| [**list_buyer_buybacks**](BuyerApi.md#list_buyer_buybacks) | **GET** /v1/buyer/buybacks | Your buyback guarantees and requests. |
| [**list_buyer_cart**](BuyerApi.md#list_buyer_cart) | **GET** /v1/buyer/cart | What is in your Crossly cart. |
| [**list_buyer_cart_saved**](BuyerApi.md#list_buyer_cart_saved) | **GET** /v1/buyer/cart/saved | Items you saved for later out of your cart (last 200). |
| [**list_buyer_cases**](BuyerApi.md#list_buyer_cases) | **GET** /v1/buyer/cases | Resolution center — every case you opened (returns, not received, problems). |
| [**list_buyer_cashback**](BuyerApi.md#list_buyer_cashback) | **GET** /v1/buyer/cashback | Your Scout cashback — pending, confirmed, paid. |
| [**list_buyer_catalog_listing_videos**](BuyerApi.md#list_buyer_catalog_listing_videos) | **GET** /v1/buyer/catalog/listings/{slug}/videos | Videos the seller recorded for this item on request, newest first, with the question each one answers. |
| [**list_buyer_clubs**](BuyerApi.md#list_buyer_clubs) | **GET** /v1/buyer/clubs | Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier. |
| [**list_buyer_collection_sets**](BuyerApi.md#list_buyer_collection_sets) | **GET** /v1/buyer/collection/sets | Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards. |
| [**list_buyer_consolidations**](BuyerApi.md#list_buyer_consolidations) | **GET** /v1/buyer/consolidations | Your ship-together orders: parcels at the hub, and the one box out. |
| [**list_buyer_conversation_guests**](BuyerApi.md#list_buyer_conversation_guests) | **GET** /v1/buyer/conversations/{id}/guests | Guests in a chat. |
| [**list_buyer_feedback**](BuyerApi.md#list_buyer_feedback) | **GET** /v1/buyer/feedback | Feedback you have left sellers, newest first — with the ids you revise by. |
| [**list_buyer_feedback_pending**](BuyerApi.md#list_buyer_feedback_pending) | **GET** /v1/buyer/feedback/pending | Orders from the last 60 days that are on their way or arrived and still need your feedback. |
| [**list_buyer_fit_refs**](BuyerApi.md#list_buyer_fit_refs) | **GET** /v1/buyer/fit/refs | Your saved reference garments for fit comparison. |
| [**list_buyer_following_sellers**](BuyerApi.md#list_buyer_following_sellers) | **GET** /v1/buyer/following/sellers | Sellers you follow, with how many new listings each has since you last looked. |
| [**list_buyer_gift_card_credit**](BuyerApi.md#list_buyer_gift_card_credit) | **GET** /v1/buyer/gift-cards/credit | Gift card credit on your account, and when it expires. |
| [**list_buyer_gift_cards**](BuyerApi.md#list_buyer_gift_cards) | **GET** /v1/buyer/gift-cards | Gift cards you bought, newest first. |
| [**list_buyer_gift_finder**](BuyerApi.md#list_buyer_gift_finder) | **GET** /v1/buyer/gift-finder | Live listings for a recipient, interest and budget. |
| [**list_buyer_gift_sent**](BuyerApi.md#list_buyer_gift_sent) | **GET** /v1/buyer/gifts/sent | Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with &#x60;gift&#x60; on checkout. |
| [**list_buyer_hotspots**](BuyerApi.md#list_buyer_hotspots) | **GET** /v1/buyer/hotspots | Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions). |
| [**list_buyer_hunts**](BuyerApi.md#list_buyer_hunts) | **GET** /v1/buyer/hunts | Your buyer-agent hunts and what they did. |
| [**list_buyer_instant_offers**](BuyerApi.md#list_buyer_instant_offers) | **GET** /v1/buyer/instant-offers | Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones. |
| [**list_buyer_layaways**](BuyerApi.md#list_buyer_layaways) | **GET** /v1/buyer/layaways | Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds. |
| [**list_buyer_listing_quick_questions**](BuyerApi.md#list_buyer_listing_quick_questions) | **GET** /v1/buyer/listings/{slug}/quick-questions | One-tap questions this listing supports; send one as &#x60;quick&#x60; on a message. |
| [**list_buyer_listing_seller_reviews**](BuyerApi.md#list_buyer_listing_seller_reviews) | **GET** /v1/buyer/listings/{slug}/seller-reviews | The seller’s public reviews: summary, text, photos, replies. |
| [**list_buyer_live_shipments**](BuyerApi.md#list_buyer_live_shipments) | **GET** /v1/buyer/live-shipments | Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships). |
| [**list_buyer_live_stream_lineup**](BuyerApi.md#list_buyer_live_stream_lineup) | **GET** /v1/buyer/live-streams/{id}/lineup | What a live show will sell, in order: each item, its price, and whether it is still available. |
| [**list_buyer_market_bids**](BuyerApi.md#list_buyer_market_bids) | **GET** /v1/buyer/market/bids | Your resting market bids. |
| [**list_buyer_market_watches**](BuyerApi.md#list_buyer_market_watches) | **GET** /v1/buyer/market/watches | Market variants you watch, with the price you are waiting for. |
| [**list_buyer_offers**](BuyerApi.md#list_buyer_offers) | **GET** /v1/buyer/offers | Offers you have made, newest first (last 100). |
| [**list_buyer_orders**](BuyerApi.md#list_buyer_orders) | **GET** /v1/buyer/orders | What you have bought on Crossly, newest first. |
| [**list_buyer_pack_openings**](BuyerApi.md#list_buyer_pack_openings) | **GET** /v1/buyer/pack-openings | Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated). |
| [**list_buyer_packs**](BuyerApi.md#list_buyer_packs) | **GET** /v1/buyer/packs | Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening. |
| [**list_buyer_parties**](BuyerApi.md#list_buyer_parties) | **GET** /v1/buyer/parties | Themed shopping parties, live and upcoming. |
| [**list_buyer_party_listings**](BuyerApi.md#list_buyer_party_listings) | **GET** /v1/buyer/parties/{slug}/listings | Listings shared to a party, featured first. |
| [**list_buyer_pickup_points**](BuyerApi.md#list_buyer_pickup_points) | **GET** /v1/buyer/pickup-points | Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as &#x60;pickupPoint&#x60; to POST /v1/buyer/checkout. |
| [**list_buyer_protection_plans**](BuyerApi.md#list_buyer_protection_plans) | **GET** /v1/buyer/protection-plans | Your protection plans (bought at checkout with &#x60;protection&#x60;): status, term, coverage, contract id, and any refund. |
| [**list_buyer_registries**](BuyerApi.md#list_buyer_registries) | **GET** /v1/buyer/registries | Your gift registries. |
| [**list_buyer_registry_gifts**](BuyerApi.md#list_buyer_registry_gifts) | **GET** /v1/buyer/registries/{id}/gifts | Your thank-you list: who bought what off the registry, and whether you have thanked them. |
| [**list_buyer_registry_search**](BuyerApi.md#list_buyer_registry_search) | **GET** /v1/buyer/registries/search | Find a registry by its name or the registrant’s name. Current and recent registries only. |
| [**list_buyer_rentals**](BuyerApi.md#list_buyer_rentals) | **GET** /v1/buyer/rentals | Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit. |
| [**list_buyer_size_memory_prompts**](BuyerApi.md#list_buyer_size_memory_prompts) | **GET** /v1/buyer/size-memory/prompts | Delivered orders with a size that you haven’t said how they fit (the last 60 days). |
| [**list_buyer_size_memory_sizes**](BuyerApi.md#list_buyer_size_memory_sizes) | **GET** /v1/buyer/size-memory/sizes | The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department. |
| [**list_buyer_splits**](BuyerApi.md#list_buyer_splits) | **GET** /v1/buyer/splits | Purchases you split, with each share’s status. |
| [**list_buyer_subscriptions**](BuyerApi.md#list_buyer_subscriptions) | **GET** /v1/buyer/subscriptions | Your subscribe &amp; save standing orders. |
| [**list_buyer_together**](BuyerApi.md#list_buyer_together) | **GET** /v1/buyer/together | Shop-together rooms you are in. |
| [**list_buyer_total_requests**](BuyerApi.md#list_buyer_total_requests) | **GET** /v1/buyer/total-requests | Your combined-shipping total requests, newest per seller. |
| [**list_buyer_try_ons**](BuyerApi.md#list_buyer_try_ons) | **GET** /v1/buyer/try-ons | Your AI try-ons: the rendered images (labelled AI-generated wherever shown). |
| [**list_buyer_vault**](BuyerApi.md#list_buyer_vault) | **GET** /v1/buyer/vault | What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home. |
| [**list_buyer_vault_market_holdings**](BuyerApi.md#list_buyer_vault_market_holdings) | **GET** /v1/buyer/vault-markets/holdings | Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&amp;L and where it stands (stored, listed, lent, pledged, at the grader); &#x60;meta&#x60; carries the totals and the units you have out on loan. |
| [**list_buyer_vault_market_indexes**](BuyerApi.md#list_buyer_vault_market_indexes) | **GET** /v1/buyer/vault-markets/indexes | Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks. |
| [**list_buyer_vault_market_instant_exit**](BuyerApi.md#list_buyer_vault_market_instant_exit) | **GET** /v1/buyer/vault-markets/instant-exit | Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order. |
| [**list_buyer_vault_market_watchlist**](BuyerApi.md#list_buyer_vault_market_watchlist) | **GET** /v1/buyer/vault-markets/watchlist | The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks. |
| [**list_buyer_video_requests**](BuyerApi.md#list_buyer_video_requests) | **GET** /v1/buyer/video-requests | Your video requests and their answers. |
| [**list_buyer_wishlist_items**](BuyerApi.md#list_buyer_wishlist_items) | **GET** /v1/buyer/wishlists/{id}/items | What is on one wishlist. |
| [**list_buyer_wishlist_members**](BuyerApi.md#list_buyer_wishlist_members) | **GET** /v1/buyer/wishlists/{id}/members | Co-editors of a shared wishlist. |
| [**list_buyer_wishlists**](BuyerApi.md#list_buyer_wishlists) | **GET** /v1/buyer/wishlists | Your wishlists. |
| [**update_buyer_board**](BuyerApi.md#update_buyer_board) | **PATCH** /v1/buyer/boards/{id} | Rename a board, change its description, or make it public / private. |
| [**update_buyer_board_layout**](BuyerApi.md#update_buyer_board_layout) | **PUT** /v1/buyer/boards/{id}/layout | Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40. |
| [**update_buyer_collection_set_leaderboard**](BuyerApi.md#update_buyer_collection_set_leaderboard) | **PUT** /v1/buyer/collection/sets/leaderboard | Show or hide yourself (by your public handle) on set leaderboards. |
| [**update_buyer_feedback**](BuyerApi.md#update_buyer_feedback) | **PATCH** /v1/buyer/feedback/{id} | Revise feedback you left, within 60 days. |
| [**update_buyer_hunt**](BuyerApi.md#update_buyer_hunt) | **PATCH** /v1/buyer/hunts/{id} | Pause, resume or stop a hunt. |
| [**update_buyer_purchase_story**](BuyerApi.md#update_buyer_purchase_story) | **PUT** /v1/buyer/purchases/{id}/story | Write your owner story (280 characters); it travels with the item if you resell it. |
| [**update_buyer_registry**](BuyerApi.md#update_buyer_registry) | **PATCH** /v1/buyer/registries/{id} | Edit a registry: title, kind, date, message, ship-to address. |
| [**update_buyer_registry_item**](BuyerApi.md#update_buyer_registry_item) | **PUT** /v1/buyer/registries/{id}/items/{platformListingId} | How many of an item you want (1–50). |
| [**update_buyer_subscription**](BuyerApi.md#update_buyer_subscription) | **PATCH** /v1/buyer/subscriptions/{id} | Pause, resume, skip the next delivery, change the interval, or cancel. |
| [**update_buyer_wishlist**](BuyerApi.md#update_buyer_wishlist) | **PATCH** /v1/buyer/wishlists/{id} | Rename a wishlist, or make it public / private. |


## create_buyer_activity

> <CreateBuyerActivityResponse> create_buyer_activity(create_buyer_activity_request)

Report an item your user is looking at, and get our answer.

Records the look and returns whether Crossly has the item and at what price. Send an identifier and a store DOMAIN — a full URL is refused. Nothing about the page itself is stored.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_activity_request = CrosslyBuyer::CreateBuyerActivityRequest.new({namespace: 'gtin', value: 'value_example'}) # CreateBuyerActivityRequest | 

begin
  # Report an item your user is looking at, and get our answer.
  result = api_instance.create_buyer_activity(create_buyer_activity_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_activity: #{e}"
end
```

#### Using the create_buyer_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerActivityResponse>, Integer, Hash)> create_buyer_activity_with_http_info(create_buyer_activity_request)

```ruby
begin
  # Report an item your user is looking at, and get our answer.
  data, status_code, headers = api_instance.create_buyer_activity_with_http_info(create_buyer_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerActivityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_activity_request** | **CreateBuyerActivityRequest** |  |  |

### Return type

**CreateBuyerActivityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_auction_bid

> <CreateBuyerAuctionBidResponse> create_buyer_auction_bid(slug, create_buyer_auction_bid_request)

Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.

Spends money: if you win, your saved card is charged when the auction closes, with nobody present. Requires buyer:checkout:write AND this key switched on at PUT /v1/buyer/checkout/controls; the bid’s maximum (or amount) is checked against the key’s per-order and daily ceilings. Amounts are integer cents. `leading: false` means a standing proxy bid outbid you at once. Send an Idempotency-Key: a retried bid is a second bid.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The auction listing slug.
create_buyer_auction_bid_request = CrosslyBuyer::CreateBuyerAuctionBidRequest.new({amount_cents: 37}) # CreateBuyerAuctionBidRequest | 

begin
  # Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.
  result = api_instance.create_buyer_auction_bid(slug, create_buyer_auction_bid_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_bid: #{e}"
end
```

#### Using the create_buyer_auction_bid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAuctionBidResponse>, Integer, Hash)> create_buyer_auction_bid_with_http_info(slug, create_buyer_auction_bid_request)

```ruby
begin
  # Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.
  data, status_code, headers = api_instance.create_buyer_auction_bid_with_http_info(slug, create_buyer_auction_bid_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAuctionBidResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_bid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The auction listing slug. |  |
| **create_buyer_auction_bid_request** | **CreateBuyerAuctionBidRequest** |  |  |

### Return type

**CreateBuyerAuctionBidResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_auction_pay

> <CreateBuyerAuctionPayResponse> create_buyer_auction_pay(slug)

Pay for an auction you won whose automatic charge did not go through.

Returns a Stripe client secret to confirm on the buyer’s device (3-D Secure, a new card). Charges nothing by itself. `paid: true` means there is nothing left to pay.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The auction listing slug.

begin
  # Pay for an auction you won whose automatic charge did not go through.
  result = api_instance.create_buyer_auction_pay(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_pay: #{e}"
end
```

#### Using the create_buyer_auction_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAuctionPayResponse>, Integer, Hash)> create_buyer_auction_pay_with_http_info(slug)

```ruby
begin
  # Pay for an auction you won whose automatic charge did not go through.
  data, status_code, headers = api_instance.create_buyer_auction_pay_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAuctionPayResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The auction listing slug. |  |

### Return type

**CreateBuyerAuctionPayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_auction_retract

> <CreateBuyerAuctionRetractResponse> create_buyer_auction_retract(slug, create_buyer_auction_retract_request)

Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.

With 12 hours or more left every bid of yours is withdrawn; inside 12 hours only bids placed in the last hour. Proxy answers your bid triggered are withdrawn with it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The auction listing slug.
create_buyer_auction_retract_request = CrosslyBuyer::CreateBuyerAuctionRetractRequest.new({reason: 'typo'}) # CreateBuyerAuctionRetractRequest | 

begin
  # Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.
  result = api_instance.create_buyer_auction_retract(slug, create_buyer_auction_retract_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_retract: #{e}"
end
```

#### Using the create_buyer_auction_retract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerAuctionRetractResponse>, Integer, Hash)> create_buyer_auction_retract_with_http_info(slug, create_buyer_auction_retract_request)

```ruby
begin
  # Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.
  data, status_code, headers = api_instance.create_buyer_auction_retract_with_http_info(slug, create_buyer_auction_retract_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerAuctionRetractResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_auction_retract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The auction listing slug. |  |
| **create_buyer_auction_retract_request** | **CreateBuyerAuctionRetractRequest** |  |  |

### Return type

**CreateBuyerAuctionRetractResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_board

> <CreateBuyerBoardResponse> create_buyer_board

Create an outfit board.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Create an outfit board.
  result = api_instance.create_buyer_board
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_board: #{e}"
end
```

#### Using the create_buyer_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerBoardResponse>, Integer, Hash)> create_buyer_board_with_http_info

```ruby
begin
  # Create an outfit board.
  data, status_code, headers = api_instance.create_buyer_board_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerBoardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_board_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_board_item

> <BuyerResponse> create_buyer_board_item(id)

Add a listing (by slug) to a board, at the next free spot.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Add a listing (by slug) to a board, at the next free spot.
  result = api_instance.create_buyer_board_item(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_board_item: #{e}"
end
```

#### Using the create_buyer_board_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_board_item_with_http_info(id)

```ruby
begin
  # Add a listing (by slug) to a board, at the next free spot.
  data, status_code, headers = api_instance.create_buyer_board_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_board_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_break_spot_hold

> <CreateBuyerBreakSpotHoldResponse> create_buyer_break_spot_hold(id, spot_id)

Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
spot_id = 'spot_id_example' # String | 

begin
  # Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.
  result = api_instance.create_buyer_break_spot_hold(id, spot_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_break_spot_hold: #{e}"
end
```

#### Using the create_buyer_break_spot_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerBreakSpotHoldResponse>, Integer, Hash)> create_buyer_break_spot_hold_with_http_info(id, spot_id)

```ruby
begin
  # Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.
  data, status_code, headers = api_instance.create_buyer_break_spot_hold_with_http_info(id, spot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerBreakSpotHoldResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_break_spot_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **spot_id** | **String** |  |  |

### Return type

**CreateBuyerBreakSpotHoldResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_buyback_request

> <BuyerResponse> create_buyer_buyback_request(id)

Ask Crossly to buy an item back under its buyback guarantee.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Ask Crossly to buy an item back under its buyback guarantee.
  result = api_instance.create_buyer_buyback_request(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_buyback_request: #{e}"
end
```

#### Using the create_buyer_buyback_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_buyback_request_with_http_info(id)

```ruby
begin
  # Ask Crossly to buy an item back under its buyback guarantee.
  data, status_code, headers = api_instance.create_buyer_buyback_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_buyback_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_cart_item

> <CreateBuyerCartItemResponse> create_buyer_cart_item(create_buyer_cart_item_request)

Add a listing to your cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_cart_item_request = CrosslyBuyer::CreateBuyerCartItemRequest.new({listing_slug: 'listing_slug_example'}) # CreateBuyerCartItemRequest | 

begin
  # Add a listing to your cart.
  result = api_instance.create_buyer_cart_item(create_buyer_cart_item_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item: #{e}"
end
```

#### Using the create_buyer_cart_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCartItemResponse>, Integer, Hash)> create_buyer_cart_item_with_http_info(create_buyer_cart_item_request)

```ruby
begin
  # Add a listing to your cart.
  data, status_code, headers = api_instance.create_buyer_cart_item_with_http_info(create_buyer_cart_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCartItemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_cart_item_request** | **CreateBuyerCartItemRequest** |  |  |

### Return type

**CreateBuyerCartItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_cart_item_save_for_later

> <BuyerCartResponse> create_buyer_cart_item_save_for_later(id)

Move a cart line to saved-for-later.

Returns the whole saved list. A line from an accepted offer cannot be saved — its price only holds in the cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Move a cart line to saved-for-later.
  result = api_instance.create_buyer_cart_item_save_for_later(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item_save_for_later: #{e}"
end
```

#### Using the create_buyer_cart_item_save_for_later_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerCartResponse>, Integer, Hash)> create_buyer_cart_item_save_for_later_with_http_info(id)

```ruby
begin
  # Move a cart line to saved-for-later.
  data, status_code, headers = api_instance.create_buyer_cart_item_save_for_later_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerCartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_item_save_for_later_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_cart_optimizer

> <CreateBuyerCartOptimizerResponse> create_buyer_cart_optimizer

Cart optimizer: send a shopping list (one item per line, \"2 Charizard Base Set\") and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Cart optimizer: send a shopping list (one item per line, \"2 Charizard Base Set\") and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.
  result = api_instance.create_buyer_cart_optimizer
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_optimizer: #{e}"
end
```

#### Using the create_buyer_cart_optimizer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCartOptimizerResponse>, Integer, Hash)> create_buyer_cart_optimizer_with_http_info

```ruby
begin
  # Cart optimizer: send a shopping list (one item per line, \"2 Charizard Base Set\") and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.
  data, status_code, headers = api_instance.create_buyer_cart_optimizer_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCartOptimizerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_optimizer_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerCartOptimizerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_cart_quote

> <CreateBuyerCartQuoteResponse> create_buyer_cart_quote

Price the cart, delivered — item, shipping, tax, total.

Runs the real checkout cascade and returns the totals instead of charging. Nothing is purchased. `taxComplete: false` means there is no saved delivery address, so the total is a floor rather than a final figure. `shippingOptions` lists each seller’s shipping services; send `shippingServiceBySeller` to price a different speed (an id the seller does not offer to the destination is a 400). Optional body: `{ \"shippingServiceBySeller\": { \"<sellerUserId>\": \"<serviceId>\" } }` — omitted sellers get the cheapest service; `registryToken` prices it as a gift shipped to that registry. (No body JSON schema: existing callers POST with none.)

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Price the cart, delivered — item, shipping, tax, total.
  result = api_instance.create_buyer_cart_quote
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_quote: #{e}"
end
```

#### Using the create_buyer_cart_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCartQuoteResponse>, Integer, Hash)> create_buyer_cart_quote_with_http_info

```ruby
begin
  # Price the cart, delivered — item, shipping, tax, total.
  data, status_code, headers = api_instance.create_buyer_cart_quote_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCartQuoteResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_quote_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerCartQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_cart_saved_move_to_cart

> <BuyerCartResponse> create_buyer_cart_saved_move_to_cart(id)

Move a saved item back into your cart, at today’s price.

Refused when the item has sold or delisted. Returns the remaining saved list.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Move a saved item back into your cart, at today’s price.
  result = api_instance.create_buyer_cart_saved_move_to_cart(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_saved_move_to_cart: #{e}"
end
```

#### Using the create_buyer_cart_saved_move_to_cart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerCartResponse>, Integer, Hash)> create_buyer_cart_saved_move_to_cart_with_http_info(id)

```ruby
begin
  # Move a saved item back into your cart, at today’s price.
  data, status_code, headers = api_instance.create_buyer_cart_saved_move_to_cart_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerCartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_cart_saved_move_to_cart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_case_counter

> <BuyerResponse> create_buyer_case_counter(id, create_buyer_case_counter_request)

Propose your own refund figure on a case.

In cents, at most what you paid. The case goes back to the seller for 72 hours.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
create_buyer_case_counter_request = CrosslyBuyer::CreateBuyerCaseCounterRequest.new({amount_cents: 37}) # CreateBuyerCaseCounterRequest | 

begin
  # Propose your own refund figure on a case.
  result = api_instance.create_buyer_case_counter(id, create_buyer_case_counter_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_counter: #{e}"
end
```

#### Using the create_buyer_case_counter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_case_counter_with_http_info(id, create_buyer_case_counter_request)

```ruby
begin
  # Propose your own refund figure on a case.
  data, status_code, headers = api_instance.create_buyer_case_counter_with_http_info(id, create_buyer_case_counter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_counter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **create_buyer_case_counter_request** | **CreateBuyerCaseCounterRequest** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_case_escalate

> <BuyerResponse> create_buyer_case_escalate(id)

Ask Crossly to step in on a case.

Hands the case to Crossly’s reviewers. Refused once it is closed or already escalated.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Ask Crossly to step in on a case.
  result = api_instance.create_buyer_case_escalate(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_escalate: #{e}"
end
```

#### Using the create_buyer_case_escalate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_case_escalate_with_http_info(id)

```ruby
begin
  # Ask Crossly to step in on a case.
  data, status_code, headers = api_instance.create_buyer_case_escalate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_escalate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_case_message

> <BuyerResponse> create_buyer_case_message(id, create_buyer_case_message_request)

Post a message on a case thread.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
create_buyer_case_message_request = CrosslyBuyer::CreateBuyerCaseMessageRequest.new({body: 'body_example'}) # CreateBuyerCaseMessageRequest | 

begin
  # Post a message on a case thread.
  result = api_instance.create_buyer_case_message(id, create_buyer_case_message_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_message: #{e}"
end
```

#### Using the create_buyer_case_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_case_message_with_http_info(id, create_buyer_case_message_request)

```ruby
begin
  # Post a message on a case thread.
  data, status_code, headers = api_instance.create_buyer_case_message_with_http_info(id, create_buyer_case_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **create_buyer_case_message_request** | **CreateBuyerCaseMessageRequest** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_case_respond

> <BuyerResponse> create_buyer_case_respond(id, create_buyer_case_respond_request)

Accept or reject the seller’s partial-refund offer on a case.

Accepting refunds the offered amount and closes the case. Rejecting hands it back to the seller for 72 hours. To propose your own figure instead, use the counter endpoint.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
create_buyer_case_respond_request = CrosslyBuyer::CreateBuyerCaseRespondRequest.new({decision: 'accept'}) # CreateBuyerCaseRespondRequest | 

begin
  # Accept or reject the seller’s partial-refund offer on a case.
  result = api_instance.create_buyer_case_respond(id, create_buyer_case_respond_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_respond: #{e}"
end
```

#### Using the create_buyer_case_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_case_respond_with_http_info(id, create_buyer_case_respond_request)

```ruby
begin
  # Accept or reject the seller’s partial-refund offer on a case.
  data, status_code, headers = api_instance.create_buyer_case_respond_with_http_info(id, create_buyer_case_respond_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_respond_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **create_buyer_case_respond_request** | **CreateBuyerCaseRespondRequest** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_case_withdraw

> <BuyerResponse> create_buyer_case_withdraw(id)

Withdraw a case you opened.

Closes it with no refund and lets the order complete normally. Cannot be reopened — one case per order.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Withdraw a case you opened.
  result = api_instance.create_buyer_case_withdraw(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_withdraw: #{e}"
end
```

#### Using the create_buyer_case_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_case_withdraw_with_http_info(id)

```ruby
begin
  # Withdraw a case you opened.
  data, status_code, headers = api_instance.create_buyer_case_withdraw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_case_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_catalog_listing_rental

> <CreateBuyerCatalogListingRentalResponse> create_buyer_catalog_listing_rental(slug)

Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.
  result = api_instance.create_buyer_catalog_listing_rental(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_rental: #{e}"
end
```

#### Using the create_buyer_catalog_listing_rental_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCatalogListingRentalResponse>, Integer, Hash)> create_buyer_catalog_listing_rental_with_http_info(slug)

```ruby
begin
  # Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.
  data, status_code, headers = api_instance.create_buyer_catalog_listing_rental_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCatalogListingRentalResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerCatalogListingRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_catalog_listing_rental_quote

> <CreateBuyerCatalogListingRentalQuoteResponse> create_buyer_catalog_listing_rental_quote(slug)

Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. `problem` says why the dates can’t be booked.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. `problem` says why the dates can’t be booked.
  result = api_instance.create_buyer_catalog_listing_rental_quote(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_rental_quote: #{e}"
end
```

#### Using the create_buyer_catalog_listing_rental_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCatalogListingRentalQuoteResponse>, Integer, Hash)> create_buyer_catalog_listing_rental_quote_with_http_info(slug)

```ruby
begin
  # Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. `problem` says why the dates can’t be booked.
  data, status_code, headers = api_instance.create_buyer_catalog_listing_rental_quote_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCatalogListingRentalQuoteResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_rental_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerCatalogListingRentalQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_catalog_listing_video_request

> <CreateBuyerCatalogListingVideoRequestResponse> create_buyer_catalog_listing_video_request(slug)

Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.
  result = api_instance.create_buyer_catalog_listing_video_request(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_video_request: #{e}"
end
```

#### Using the create_buyer_catalog_listing_video_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerCatalogListingVideoRequestResponse>, Integer, Hash)> create_buyer_catalog_listing_video_request_with_http_info(slug)

```ruby
begin
  # Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.
  data, status_code, headers = api_instance.create_buyer_catalog_listing_video_request_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerCatalogListingVideoRequestResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_catalog_listing_video_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerCatalogListingVideoRequestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_conversation_invite

> <CreateBuyerWishlistInviteResponse> create_buyer_conversation_invite(id)

Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.
  result = api_instance.create_buyer_conversation_invite(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_conversation_invite: #{e}"
end
```

#### Using the create_buyer_conversation_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistInviteResponse>, Integer, Hash)> create_buyer_conversation_invite_with_http_info(id)

```ruby
begin
  # Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.
  data, status_code, headers = api_instance.create_buyer_conversation_invite_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistInviteResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_conversation_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerWishlistInviteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_conversation_join

> <CreateBuyerConversationJoinResponse> create_buyer_conversation_join(token)

Join a chat you were invited into, as a guest.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
token = 'token_example' # String | 

begin
  # Join a chat you were invited into, as a guest.
  result = api_instance.create_buyer_conversation_join(token)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_conversation_join: #{e}"
end
```

#### Using the create_buyer_conversation_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerConversationJoinResponse>, Integer, Hash)> create_buyer_conversation_join_with_http_info(token)

```ruby
begin
  # Join a chat you were invited into, as a guest.
  data, status_code, headers = api_instance.create_buyer_conversation_join_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerConversationJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_conversation_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**CreateBuyerConversationJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_feedback

> <CreateBuyerFeedbackResponse> create_buyer_feedback(create_buyer_feedback_request)

Leave feedback on up to 25 orders at once, with optional detailed seller ratings.

Each entry is checked on its own — one refused comment never sinks the others; read `data[].ok`. Orders to review come from GET /v1/buyer/feedback/pending.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_feedback_request = CrosslyBuyer::CreateBuyerFeedbackRequest.new({reviews: [CrosslyBuyer::CreateBuyerFeedbackRequestReviews.new({purchase_id: 'purchase_id_example', rating: 37})]}) # CreateBuyerFeedbackRequest | 

begin
  # Leave feedback on up to 25 orders at once, with optional detailed seller ratings.
  result = api_instance.create_buyer_feedback(create_buyer_feedback_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_feedback: #{e}"
end
```

#### Using the create_buyer_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerFeedbackResponse>, Integer, Hash)> create_buyer_feedback_with_http_info(create_buyer_feedback_request)

```ruby
begin
  # Leave feedback on up to 25 orders at once, with optional detailed seller ratings.
  data, status_code, headers = api_instance.create_buyer_feedback_with_http_info(create_buyer_feedback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerFeedbackResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_feedback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_feedback_request** | **CreateBuyerFeedbackRequest** |  |  |

### Return type

**CreateBuyerFeedbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_fit_ref

> <BuyerResponse2> create_buyer_fit_ref

Save a reference garment (flat measurements, inches) to compare listings against.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Save a reference garment (flat measurements, inches) to compare listings against.
  result = api_instance.create_buyer_fit_ref
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_fit_ref: #{e}"
end
```

#### Using the create_buyer_fit_ref_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse2>, Integer, Hash)> create_buyer_fit_ref_with_http_info

```ruby
begin
  # Save a reference garment (flat measurements, inches) to compare listings against.
  data, status_code, headers = api_instance.create_buyer_fit_ref_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse2>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_fit_ref_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_following_seller_seen

> <CreateBuyerFollowingSellerSeenResponse> create_buyer_following_seller_seen(create_buyer_following_seller_seen_request)

Clear the \"new listings\" count on a followed seller, or on all of them.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_following_seller_seen_request = CrosslyBuyer::CreateBuyerFollowingSellerSeenRequest.new # CreateBuyerFollowingSellerSeenRequest | 

begin
  # Clear the \"new listings\" count on a followed seller, or on all of them.
  result = api_instance.create_buyer_following_seller_seen(create_buyer_following_seller_seen_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_following_seller_seen: #{e}"
end
```

#### Using the create_buyer_following_seller_seen_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerFollowingSellerSeenResponse>, Integer, Hash)> create_buyer_following_seller_seen_with_http_info(create_buyer_following_seller_seen_request)

```ruby
begin
  # Clear the \"new listings\" count on a followed seller, or on all of them.
  data, status_code, headers = api_instance.create_buyer_following_seller_seen_with_http_info(create_buyer_following_seller_seen_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerFollowingSellerSeenResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_following_seller_seen_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_following_seller_seen_request** | **CreateBuyerFollowingSellerSeenRequest** |  |  |

### Return type

**CreateBuyerFollowingSellerSeenResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_gift_card

> <CreateBuyerGiftCardResponse> create_buyer_gift_card(create_buyer_gift_card_request)

Start a gift card purchase.

Creates an unpaid card and a Stripe PaymentIntent, and returns its client secret. Nothing is charged until the PaymentIntent is confirmed; the code is emailed to the recipient once payment clears (at deliverAt, if given) and is never returned here. $10–$500. Cards and their credit expire 5 years after purchase. Idempotency-Key required.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_gift_card_request = CrosslyBuyer::CreateBuyerGiftCardRequest.new({amount_cents: 37, recipient_email: 'recipient_email_example'}) # CreateBuyerGiftCardRequest | 

begin
  # Start a gift card purchase.
  result = api_instance.create_buyer_gift_card(create_buyer_gift_card_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_gift_card: #{e}"
end
```

#### Using the create_buyer_gift_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerGiftCardResponse>, Integer, Hash)> create_buyer_gift_card_with_http_info(create_buyer_gift_card_request)

```ruby
begin
  # Start a gift card purchase.
  data, status_code, headers = api_instance.create_buyer_gift_card_with_http_info(create_buyer_gift_card_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerGiftCardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_gift_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_gift_card_request** | **CreateBuyerGiftCardRequest** |  |  |

### Return type

**CreateBuyerGiftCardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_gift_card_redeem

> <CreateBuyerGiftCardRedeemResponse> create_buyer_gift_card_redeem(create_buyer_gift_card_redeem_request)

Redeem a gift card code into your own balance.

Adds the card’s value to the token owner’s Crossly balance (Crossly Bucks today; CBX granted balance when Crossly issues CBX), spendable at checkout. One redemption per card. The credit keeps the card’s expiry date. Refusals: 404 invalid_code, 409 already_redeemed / not_paid / void / expired.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_gift_card_redeem_request = CrosslyBuyer::CreateBuyerGiftCardRedeemRequest.new({code: 'code_example'}) # CreateBuyerGiftCardRedeemRequest | 

begin
  # Redeem a gift card code into your own balance.
  result = api_instance.create_buyer_gift_card_redeem(create_buyer_gift_card_redeem_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_gift_card_redeem: #{e}"
end
```

#### Using the create_buyer_gift_card_redeem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerGiftCardRedeemResponse>, Integer, Hash)> create_buyer_gift_card_redeem_with_http_info(create_buyer_gift_card_redeem_request)

```ruby
begin
  # Redeem a gift card code into your own balance.
  data, status_code, headers = api_instance.create_buyer_gift_card_redeem_with_http_info(create_buyer_gift_card_redeem_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerGiftCardRedeemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_gift_card_redeem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_gift_card_redeem_request** | **CreateBuyerGiftCardRedeemRequest** |  |  |

### Return type

**CreateBuyerGiftCardRedeemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_group_buy_join

> <CreateBuyerGroupBuyJoinResponse> create_buyer_group_buy_join(id)

Join a group buy: a hold at the starting price, captured at the price the group reaches. Checked against this key’s spending controls; send an Idempotency-Key.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Join a group buy: a hold at the starting price, captured at the price the group reaches. Checked against this key’s spending controls; send an Idempotency-Key.
  result = api_instance.create_buyer_group_buy_join(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_group_buy_join: #{e}"
end
```

#### Using the create_buyer_group_buy_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerGroupBuyJoinResponse>, Integer, Hash)> create_buyer_group_buy_join_with_http_info(id)

```ruby
begin
  # Join a group buy: a hold at the starting price, captured at the price the group reaches. Checked against this key’s spending controls; send an Idempotency-Key.
  data, status_code, headers = api_instance.create_buyer_group_buy_join_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerGroupBuyJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_group_buy_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerGroupBuyJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_group_buy_leave

> <BuyerResponse> create_buyer_group_buy_leave(id)

Leave a group buy and release your hold.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Leave a group buy and release your hold.
  result = api_instance.create_buyer_group_buy_leave(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_group_buy_leave: #{e}"
end
```

#### Using the create_buyer_group_buy_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_group_buy_leave_with_http_info(id)

```ruby
begin
  # Leave a group buy and release your hold.
  data, status_code, headers = api_instance.create_buyer_group_buy_leave_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_group_buy_leave_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_hunt

> <BuyerResponse2> create_buyer_hunt

Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). `offer` and `buy` modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). `offer` and `buy` modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.
  result = api_instance.create_buyer_hunt
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_hunt: #{e}"
end
```

#### Using the create_buyer_hunt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse2>, Integer, Hash)> create_buyer_hunt_with_http_info

```ruby
begin
  # Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). `offer` and `buy` modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.
  data, status_code, headers = api_instance.create_buyer_hunt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse2>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_hunt_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_instant_offer_accept

> <BuyerResponse> create_buyer_instant_offer_accept(id)

Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.
  result = api_instance.create_buyer_instant_offer_accept(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_instant_offer_accept: #{e}"
end
```

#### Using the create_buyer_instant_offer_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_instant_offer_accept_with_http_info(id)

```ruby
begin
  # Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.
  data, status_code, headers = api_instance.create_buyer_instant_offer_accept_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_instant_offer_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_layaway_cancel

> <BuyerLayawayResponse> create_buyer_layaway_cancel(id)

Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).
  result = api_instance.create_buyer_layaway_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_layaway_cancel: #{e}"
end
```

#### Using the create_buyer_layaway_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerLayawayResponse>, Integer, Hash)> create_buyer_layaway_cancel_with_http_info(id)

```ruby
begin
  # Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).
  data, status_code, headers = api_instance.create_buyer_layaway_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerLayawayResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_layaway_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_layaway_pay

> <BuyerLayawayResponse> create_buyer_layaway_pay(id)

Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.
  result = api_instance.create_buyer_layaway_pay(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_layaway_pay: #{e}"
end
```

#### Using the create_buyer_layaway_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerLayawayResponse>, Integer, Hash)> create_buyer_layaway_pay_with_http_info(id)

```ruby
begin
  # Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.
  data, status_code, headers = api_instance.create_buyer_layaway_pay_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerLayawayResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_layaway_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_listing_audio_summary

> <GetBuyerListingAudioSummaryResponse> create_buyer_listing_audio_summary(slug)

Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.
  result = api_instance.create_buyer_listing_audio_summary(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_audio_summary: #{e}"
end
```

#### Using the create_buyer_listing_audio_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingAudioSummaryResponse>, Integer, Hash)> create_buyer_listing_audio_summary_with_http_info(slug)

```ruby
begin
  # Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.
  data, status_code, headers = api_instance.create_buyer_listing_audio_summary_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingAudioSummaryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_audio_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingAudioSummaryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_listing_split

> <CreateBuyerListingSplitResponse> create_buyer_listing_split(slug)

Split a purchase: one pay link per person; nobody is charged until all have paid.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Split a purchase: one pay link per person; nobody is charged until all have paid.
  result = api_instance.create_buyer_listing_split(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_split: #{e}"
end
```

#### Using the create_buyer_listing_split_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerListingSplitResponse>, Integer, Hash)> create_buyer_listing_split_with_http_info(slug)

```ruby
begin
  # Split a purchase: one pay link per person; nobody is charged until all have paid.
  data, status_code, headers = api_instance.create_buyer_listing_split_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerListingSplitResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_split_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerListingSplitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_listing_subscribe

> <BuyerResponse2> create_buyer_listing_subscribe(slug)

Subscribe & save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Subscribe & save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.
  result = api_instance.create_buyer_listing_subscribe(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_subscribe: #{e}"
end
```

#### Using the create_buyer_listing_subscribe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse2>, Integer, Hash)> create_buyer_listing_subscribe_with_http_info(slug)

```ruby
begin
  # Subscribe & save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.
  data, status_code, headers = api_instance.create_buyer_listing_subscribe_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse2>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_subscribe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_listing_try_on

> <CreateBuyerListingTryOnResponse> create_buyer_listing_try_on(slug)

Render an AI try-on of this listing on the buyer’s own photo (base64 `photo`, or `reuseLastPhoto`). `confirmSelfAdult` must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Render an AI try-on of this listing on the buyer’s own photo (base64 `photo`, or `reuseLastPhoto`). `confirmSelfAdult` must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.
  result = api_instance.create_buyer_listing_try_on(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_try_on: #{e}"
end
```

#### Using the create_buyer_listing_try_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerListingTryOnResponse>, Integer, Hash)> create_buyer_listing_try_on_with_http_info(slug)

```ruby
begin
  # Render an AI try-on of this listing on the buyer’s own photo (base64 `photo`, or `reuseLastPhoto`). `confirmSelfAdult` must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.
  data, status_code, headers = api_instance.create_buyer_listing_try_on_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerListingTryOnResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_listing_try_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerListingTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_market_bid

> <CreateBuyerMarketBidResponse> create_buyer_market_bid

Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.
  result = api_instance.create_buyer_market_bid
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_market_bid: #{e}"
end
```

#### Using the create_buyer_market_bid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerMarketBidResponse>, Integer, Hash)> create_buyer_market_bid_with_http_info

```ruby
begin
  # Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.
  data, status_code, headers = api_instance.create_buyer_market_bid_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerMarketBidResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_market_bid_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerMarketBidResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_market_watch

> <BuyerResponse> create_buyer_market_watch

Watch a market variant: alert at or below a price, or on any drop.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Watch a market variant: alert at or below a price, or on any drop.
  result = api_instance.create_buyer_market_watch
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_market_watch: #{e}"
end
```

#### Using the create_buyer_market_watch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_market_watch_with_http_info

```ruby
begin
  # Watch a market variant: alert at or below a price, or on any drop.
  data, status_code, headers = api_instance.create_buyer_market_watch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_market_watch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_offer

> <CreateBuyerOfferResponse> create_buyer_offer(create_buyer_offer_request)

Offer a price on a listing.

Sends an offer to the seller. Spends nothing — a seller accepting still leaves you to complete checkout. Offers at or above the asking price are refused; buy it instead.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_offer_request = CrosslyBuyer::CreateBuyerOfferRequest.new({listing_slug: 'listing_slug_example', amount_cents: 37}) # CreateBuyerOfferRequest | 

begin
  # Offer a price on a listing.
  result = api_instance.create_buyer_offer(create_buyer_offer_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer: #{e}"
end
```

#### Using the create_buyer_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOfferResponse>, Integer, Hash)> create_buyer_offer_with_http_info(create_buyer_offer_request)

```ruby
begin
  # Offer a price on a listing.
  data, status_code, headers = api_instance.create_buyer_offer_with_http_info(create_buyer_offer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOfferResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_offer_request** | **CreateBuyerOfferRequest** |  |  |

### Return type

**CreateBuyerOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_offer_respond

> <CreateBuyerOfferRespondResponse> create_buyer_offer_respond(id, create_buyer_offer_respond_request)

Answer a seller’s counteroffer — accept, decline, or counter back.

Only an offer with `awaitingBuyer: true` can be answered. Accepting opens a 48-hour window to pay on Crossly; it charges nothing. A counter must be below the seller’s price (in cents) and becomes a new offer waiting on the seller.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The offer id.
create_buyer_offer_respond_request = CrosslyBuyer::CreateBuyerOfferRespondRequest.new({action: 'accept'}) # CreateBuyerOfferRespondRequest | 

begin
  # Answer a seller’s counteroffer — accept, decline, or counter back.
  result = api_instance.create_buyer_offer_respond(id, create_buyer_offer_respond_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer_respond: #{e}"
end
```

#### Using the create_buyer_offer_respond_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOfferRespondResponse>, Integer, Hash)> create_buyer_offer_respond_with_http_info(id, create_buyer_offer_respond_request)

```ruby
begin
  # Answer a seller’s counteroffer — accept, decline, or counter back.
  data, status_code, headers = api_instance.create_buyer_offer_respond_with_http_info(id, create_buyer_offer_respond_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOfferRespondResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_offer_respond_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The offer id. |  |
| **create_buyer_offer_respond_request** | **CreateBuyerOfferRespondRequest** |  |  |

### Return type

**CreateBuyerOfferRespondResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_order_cancel

> <CreateBuyerOrderCancelResponse> create_buyer_order_cancel(id)

Cancel an order before it ships — refunds it in full.

Instant while the seller has not bought a label or shipped. Refused with 409 once they have (`details.shopCode`: already_shipped, label_purchased, disputed, already_refunded). Check GET /v1/buyer/orders/{id}/eligibility first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Cancel an order before it ships — refunds it in full.
  result = api_instance.create_buyer_order_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_cancel: #{e}"
end
```

#### Using the create_buyer_order_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOrderCancelResponse>, Integer, Hash)> create_buyer_order_cancel_with_http_info(id)

```ruby
begin
  # Cancel an order before it ships — refunds it in full.
  data, status_code, headers = api_instance.create_buyer_order_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOrderCancelResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**CreateBuyerOrderCancelResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_order_inr

> <CreateBuyerOrderInrResponse> create_buyer_order_inr(id, create_buyer_order_inr_request)

Open an item-not-received case.

Only after the expected delivery window — a 409 carries `details.reason` and `details.opensAt` when it is too early. The seller then has 72 hours to respond. One case per order, ever.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
create_buyer_order_inr_request = CrosslyBuyer::CreateBuyerOrderInrRequest.new({body: 'body_example'}) # CreateBuyerOrderInrRequest | 

begin
  # Open an item-not-received case.
  result = api_instance.create_buyer_order_inr(id, create_buyer_order_inr_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_inr: #{e}"
end
```

#### Using the create_buyer_order_inr_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOrderInrResponse>, Integer, Hash)> create_buyer_order_inr_with_http_info(id, create_buyer_order_inr_request)

```ruby
begin
  # Open an item-not-received case.
  data, status_code, headers = api_instance.create_buyer_order_inr_with_http_info(id, create_buyer_order_inr_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOrderInrResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_inr_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **create_buyer_order_inr_request** | **CreateBuyerOrderInrRequest** |  |  |

### Return type

**CreateBuyerOrderInrResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_order_received

> <CreateBuyerOrderReceivedResponse> create_buyer_order_received(id)

Confirm you received an order.

Records receipt and opens feedback. It does NOT release the seller’s money sooner or shorten your buyer protection. Closes the item-not-received entry point.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Confirm you received an order.
  result = api_instance.create_buyer_order_received(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_received: #{e}"
end
```

#### Using the create_buyer_order_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOrderReceivedResponse>, Integer, Hash)> create_buyer_order_received_with_http_info(id)

```ruby
begin
  # Confirm you received an order.
  data, status_code, headers = api_instance.create_buyer_order_received_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOrderReceivedResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**CreateBuyerOrderReceivedResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_order_tip

> <CreateBuyerOrderTipResponse> create_buyer_order_tip(id)

Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.
  result = api_instance.create_buyer_order_tip(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_tip: #{e}"
end
```

#### Using the create_buyer_order_tip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerOrderTipResponse>, Integer, Hash)> create_buyer_order_tip_with_http_info(id)

```ruby
begin
  # Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.
  data, status_code, headers = api_instance.create_buyer_order_tip_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerOrderTipResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_order_tip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerOrderTipResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_pack_fairness_rotate

> <GetBuyerPackFairnessResponse> create_buyer_pack_fairness_rotate

Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.
  result = api_instance.create_buyer_pack_fairness_rotate
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_fairness_rotate: #{e}"
end
```

#### Using the create_buyer_pack_fairness_rotate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPackFairnessResponse>, Integer, Hash)> create_buyer_pack_fairness_rotate_with_http_info

```ruby
begin
  # Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.
  data, status_code, headers = api_instance.create_buyer_pack_fairness_rotate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPackFairnessResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_fairness_rotate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerPackFairnessResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_pack_open

> <CreateBuyerPackOpenResponse> create_buyer_pack_open(slug)

Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.
  result = api_instance.create_buyer_pack_open(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_open: #{e}"
end
```

#### Using the create_buyer_pack_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerPackOpenResponse>, Integer, Hash)> create_buyer_pack_open_with_http_info(slug)

```ruby
begin
  # Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.
  data, status_code, headers = api_instance.create_buyer_pack_open_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerPackOpenResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateBuyerPackOpenResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_pack_opening_sell_back

> <CreateBuyerPackOpeningSellBackResponse> create_buyer_pack_opening_sell_back(id)

Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.
  result = api_instance.create_buyer_pack_opening_sell_back(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_opening_sell_back: #{e}"
end
```

#### Using the create_buyer_pack_opening_sell_back_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerPackOpeningSellBackResponse>, Integer, Hash)> create_buyer_pack_opening_sell_back_with_http_info(id)

```ruby
begin
  # Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.
  data, status_code, headers = api_instance.create_buyer_pack_opening_sell_back_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerPackOpeningSellBackResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_pack_opening_sell_back_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerPackOpeningSellBackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_passport_claim

> <GetBuyerPassportResponse> create_buyer_passport_claim(code)

Claim a passport as the item’s current owner (the buyer of its latest sale) — shown as “in its owner’s hands” until it sells again.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # Claim a passport as the item’s current owner (the buyer of its latest sale) — shown as “in its owner’s hands” until it sells again.
  result = api_instance.create_buyer_passport_claim(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_passport_claim: #{e}"
end
```

#### Using the create_buyer_passport_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPassportResponse>, Integer, Hash)> create_buyer_passport_claim_with_http_info(code)

```ruby
begin
  # Claim a passport as the item’s current owner (the buyer of its latest sale) — shown as “in its owner’s hands” until it sells again.
  data, status_code, headers = api_instance.create_buyer_passport_claim_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPassportResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_passport_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**GetBuyerPassportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_protection_plan_cancel

> <CreateBuyerProtectionPlanCancelResponse> create_buyer_protection_plan_cancel(id)

Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.
  result = api_instance.create_buyer_protection_plan_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_protection_plan_cancel: #{e}"
end
```

#### Using the create_buyer_protection_plan_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerProtectionPlanCancelResponse>, Integer, Hash)> create_buyer_protection_plan_cancel_with_http_info(id)

```ruby
begin
  # Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.
  data, status_code, headers = api_instance.create_buyer_protection_plan_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerProtectionPlanCancelResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_protection_plan_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerProtectionPlanCancelResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_purchase_download

> <CreateBuyerPurchaseDownloadResponse> create_buyer_purchase_download(id)

A ten-minute link to a digital purchase’s file; each call uses one of its downloads.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # A ten-minute link to a digital purchase’s file; each call uses one of its downloads.
  result = api_instance.create_buyer_purchase_download(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_download: #{e}"
end
```

#### Using the create_buyer_purchase_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerPurchaseDownloadResponse>, Integer, Hash)> create_buyer_purchase_download_with_http_info(id)

```ruby
begin
  # A ten-minute link to a digital purchase’s file; each call uses one of its downloads.
  data, status_code, headers = api_instance.create_buyer_purchase_download_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerPurchaseDownloadResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerPurchaseDownloadResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_purchase_fit

> <BuyerResponse> create_buyer_purchase_fit(id)

Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.
  result = api_instance.create_buyer_purchase_fit(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_fit: #{e}"
end
```

#### Using the create_buyer_purchase_fit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_purchase_fit_with_http_info(id)

```ruby
begin
  # Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.
  data, status_code, headers = api_instance.create_buyer_purchase_fit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_fit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_purchase_return

> <BuyerResponse2> create_buyer_purchase_return(id)

Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, `fit` (small | large) says which way, and it feeds your size memory.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, `fit` (small | large) says which way, and it feeds your size memory.
  result = api_instance.create_buyer_purchase_return(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_return: #{e}"
end
```

#### Using the create_buyer_purchase_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse2>, Integer, Hash)> create_buyer_purchase_return_with_http_info(id)

```ruby
begin
  # Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, `fit` (small | large) says which way, and it feeds your size memory.
  data, status_code, headers = api_instance.create_buyer_purchase_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse2>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_purchase_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_registry

> <CreateBuyerRegistryResponse> create_buyer_registry

Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.
  result = api_instance.create_buyer_registry
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_registry: #{e}"
end
```

#### Using the create_buyer_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerRegistryResponse>, Integer, Hash)> create_buyer_registry_with_http_info

```ruby
begin
  # Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.
  data, status_code, headers = api_instance.create_buyer_registry_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerRegistryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_registry_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_registry_gift_thanked

> <CreateBuyerRegistryGiftThankedResponse> create_buyer_registry_gift_thanked(id, gift_id)

Tick a gift as thanked (or untick it).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
gift_id = 'gift_id_example' # String | 

begin
  # Tick a gift as thanked (or untick it).
  result = api_instance.create_buyer_registry_gift_thanked(id, gift_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_registry_gift_thanked: #{e}"
end
```

#### Using the create_buyer_registry_gift_thanked_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerRegistryGiftThankedResponse>, Integer, Hash)> create_buyer_registry_gift_thanked_with_http_info(id, gift_id)

```ruby
begin
  # Tick a gift as thanked (or untick it).
  data, status_code, headers = api_instance.create_buyer_registry_gift_thanked_with_http_info(id, gift_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerRegistryGiftThankedResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_registry_gift_thanked_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **gift_id** | **String** |  |  |

### Return type

**CreateBuyerRegistryGiftThankedResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_rental_arrival_photo

> <CreateBuyerRentalArrivalPhotoResponse> create_buyer_rental_arrival_photo(id)

Photograph a rental on arrival (URLs you uploaded): your side of the condition record.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Photograph a rental on arrival (URLs you uploaded): your side of the condition record.
  result = api_instance.create_buyer_rental_arrival_photo(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_arrival_photo: #{e}"
end
```

#### Using the create_buyer_rental_arrival_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerRentalArrivalPhotoResponse>, Integer, Hash)> create_buyer_rental_arrival_photo_with_http_info(id)

```ruby
begin
  # Photograph a rental on arrival (URLs you uploaded): your side of the condition record.
  data, status_code, headers = api_instance.create_buyer_rental_arrival_photo_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerRentalArrivalPhotoResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_arrival_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerRentalArrivalPhotoResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_rental_cancel

> <BuyerResponse> create_buyer_rental_cancel(id)

Cancel a rental that has not shipped: everything is refunded.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a rental that has not shipped: everything is refunded.
  result = api_instance.create_buyer_rental_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_cancel: #{e}"
end
```

#### Using the create_buyer_rental_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_rental_cancel_with_http_info(id)

```ruby
begin
  # Cancel a rental that has not shipped: everything is refunded.
  data, status_code, headers = api_instance.create_buyer_rental_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_rental_claim_response

> <BuyerResponse> create_buyer_rental_claim_response(id)

Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).
  result = api_instance.create_buyer_rental_claim_response(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_claim_response: #{e}"
end
```

#### Using the create_buyer_rental_claim_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_rental_claim_response_with_http_info(id)

```ruby
begin
  # Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).
  data, status_code, headers = api_instance.create_buyer_rental_claim_response_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_claim_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_rental_identity_start

> <CreateBuyerRentalIdentityStartResponse> create_buyer_rental_identity_start

Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open `url` (hosted) or use `clientSecret` with Stripe.js.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open `url` (hosted) or use `clientSecret` with Stripe.js.
  result = api_instance.create_buyer_rental_identity_start
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_identity_start: #{e}"
end
```

#### Using the create_buyer_rental_identity_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerRentalIdentityStartResponse>, Integer, Hash)> create_buyer_rental_identity_start_with_http_info

```ruby
begin
  # Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open `url` (hosted) or use `clientSecret` with Stripe.js.
  data, status_code, headers = api_instance.create_buyer_rental_identity_start_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerRentalIdentityStartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_rental_identity_start_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerRentalIdentityStartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_return_cancel

> <BuyerResponse> create_buyer_return_cancel(id)

Cancel a return before it ships.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a return before it ships.
  result = api_instance.create_buyer_return_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_return_cancel: #{e}"
end
```

#### Using the create_buyer_return_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_return_cancel_with_http_info(id)

```ruby
begin
  # Cancel a return before it ships.
  data, status_code, headers = api_instance.create_buyer_return_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_return_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_return_tracking

> <BuyerResponse> create_buyer_return_tracking(id)

Add tracking to a return you shipped on your own label.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Add tracking to a return you shipped on your own label.
  result = api_instance.create_buyer_return_tracking(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_return_tracking: #{e}"
end
```

#### Using the create_buyer_return_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_return_tracking_with_http_info(id)

```ruby
begin
  # Add tracking to a return you shipped on your own label.
  data, status_code, headers = api_instance.create_buyer_return_tracking_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_return_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_seller_club_join

> <CreateBuyerSellerClubJoinResponse> create_buyer_seller_club_join(seller_user_id)

Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
seller_user_id = 'seller_user_id_example' # String | 

begin
  # Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.
  result = api_instance.create_buyer_seller_club_join(seller_user_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_seller_club_join: #{e}"
end
```

#### Using the create_buyer_seller_club_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerSellerClubJoinResponse>, Integer, Hash)> create_buyer_seller_club_join_with_http_info(seller_user_id)

```ruby
begin
  # Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.
  data, status_code, headers = api_instance.create_buyer_seller_club_join_with_http_info(seller_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerSellerClubJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_seller_club_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seller_user_id** | **String** |  |  |

### Return type

**CreateBuyerSellerClubJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_seller_report

> <CreateBuyerSellerReportResponse> create_buyer_seller_report(username, create_buyer_seller_report_request)

Report a seller to Crossly’s trust team.

A second report while your first is still under review updates that report instead of filing another. `purchaseId` is attached only if it is your order from this seller.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
username = 'username_example' # String | The seller’s shop handle.
create_buyer_seller_report_request = CrosslyBuyer::CreateBuyerSellerReportRequest.new({reason: 'scam'}) # CreateBuyerSellerReportRequest | 

begin
  # Report a seller to Crossly’s trust team.
  result = api_instance.create_buyer_seller_report(username, create_buyer_seller_report_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_seller_report: #{e}"
end
```

#### Using the create_buyer_seller_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerSellerReportResponse>, Integer, Hash)> create_buyer_seller_report_with_http_info(username, create_buyer_seller_report_request)

```ruby
begin
  # Report a seller to Crossly’s trust team.
  data, status_code, headers = api_instance.create_buyer_seller_report_with_http_info(username, create_buyer_seller_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerSellerReportResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_seller_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The seller’s shop handle. |  |
| **create_buyer_seller_report_request** | **CreateBuyerSellerReportRequest** |  |  |

### Return type

**CreateBuyerSellerReportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_split_cancel

> <BuyerResponse> create_buyer_split_cancel(id)

Cancel a split you organised; every held share is released.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a split you organised; every held share is released.
  result = api_instance.create_buyer_split_cancel(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_split_cancel: #{e}"
end
```

#### Using the create_buyer_split_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_split_cancel_with_http_info(id)

```ruby
begin
  # Cancel a split you organised; every held share is released.
  data, status_code, headers = api_instance.create_buyer_split_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_split_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together

> <CreateBuyerTogetherResponse> create_buyer_together

Start a shop-together room.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Start a shop-together room.
  result = api_instance.create_buyer_together
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together: #{e}"
end
```

#### Using the create_buyer_together_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerTogetherResponse>, Integer, Hash)> create_buyer_together_with_http_info

```ruby
begin
  # Start a shop-together room.
  data, status_code, headers = api_instance.create_buyer_together_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerTogetherResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together_item

> <BuyerResponse> create_buyer_together_item(code)

Add a listing to a shop-together board.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # Add a listing to a shop-together board.
  result = api_instance.create_buyer_together_item(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_item: #{e}"
end
```

#### Using the create_buyer_together_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_together_item_with_http_info(code)

```ruby
begin
  # Add a listing to a shop-together board.
  data, status_code, headers = api_instance.create_buyer_together_item_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together_item_vote

> <BuyerResponse> create_buyer_together_item_vote(code, id)

Vote an item on a room’s board up (1), down (-1) or clear (0).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 
id = 'id_example' # String | 

begin
  # Vote an item on a room’s board up (1), down (-1) or clear (0).
  result = api_instance.create_buyer_together_item_vote(code, id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_item_vote: #{e}"
end
```

#### Using the create_buyer_together_item_vote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_together_item_vote_with_http_info(code, id)

```ruby
begin
  # Vote an item on a room’s board up (1), down (-1) or clear (0).
  data, status_code, headers = api_instance.create_buyer_together_item_vote_with_http_info(code, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_item_vote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together_join

> <CreateBuyerTogetherResponse> create_buyer_together_join(code)

Join a shop-together room by its code.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # Join a shop-together room by its code.
  result = api_instance.create_buyer_together_join(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_join: #{e}"
end
```

#### Using the create_buyer_together_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerTogetherResponse>, Integer, Hash)> create_buyer_together_join_with_http_info(code)

```ruby
begin
  # Join a shop-together room by its code.
  data, status_code, headers = api_instance.create_buyer_together_join_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerTogetherResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**CreateBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together_leave

> <BuyerResponse> create_buyer_together_leave(code)

Leave a shop-together room.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # Leave a shop-together room.
  result = api_instance.create_buyer_together_leave(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_leave: #{e}"
end
```

#### Using the create_buyer_together_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_together_leave_with_http_info(code)

```ruby
begin
  # Leave a shop-together room.
  data, status_code, headers = api_instance.create_buyer_together_leave_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_leave_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_together_message

> <BuyerResponse> create_buyer_together_message(code)

Say something in a shop-together room.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # Say something in a shop-together room.
  result = api_instance.create_buyer_together_message(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_message: #{e}"
end
```

#### Using the create_buyer_together_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_together_message_with_http_info(code)

```ruby
begin
  # Say something in a shop-together room.
  data, status_code, headers = api_instance.create_buyer_together_message_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_together_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_total_request

> <CreateBuyerTotalRequestResponse> create_buyer_total_request(create_buyer_total_request_request)

Ask a seller for one combined shipping total on everything of theirs in your cart.

Needs two or more of the seller’s items in your cart. Spends nothing; the quote applies at checkout on Crossly.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_total_request_request = CrosslyBuyer::CreateBuyerTotalRequestRequest.new({seller_user_id: 'seller_user_id_example'}) # CreateBuyerTotalRequestRequest | 

begin
  # Ask a seller for one combined shipping total on everything of theirs in your cart.
  result = api_instance.create_buyer_total_request(create_buyer_total_request_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_total_request: #{e}"
end
```

#### Using the create_buyer_total_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerTotalRequestResponse>, Integer, Hash)> create_buyer_total_request_with_http_info(create_buyer_total_request_request)

```ruby
begin
  # Ask a seller for one combined shipping total on everything of theirs in your cart.
  data, status_code, headers = api_instance.create_buyer_total_request_with_http_info(create_buyer_total_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerTotalRequestResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_total_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_total_request_request** | **CreateBuyerTotalRequestRequest** |  |  |

### Return type

**CreateBuyerTotalRequestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_vault_list

> <CreateBuyerVaultListResponse> create_buyer_vault_list(id)

Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.
  result = api_instance.create_buyer_vault_list(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_list: #{e}"
end
```

#### Using the create_buyer_vault_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerVaultListResponse>, Integer, Hash)> create_buyer_vault_list_with_http_info(id)

```ruby
begin
  # Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.
  data, status_code, headers = api_instance.create_buyer_vault_list_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerVaultListResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerVaultListResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_vault_unlist

> <BuyerResponse> create_buyer_vault_unlist(id)

Take a vault item off the market; it stays stored.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Take a vault item off the market; it stays stored.
  result = api_instance.create_buyer_vault_unlist(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_unlist: #{e}"
end
```

#### Using the create_buyer_vault_unlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> create_buyer_vault_unlist_with_http_info(id)

```ruby
begin
  # Take a vault item off the market; it stays stored.
  data, status_code, headers = api_instance.create_buyer_vault_unlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_unlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_vault_withdraw

> <CreateBuyerVaultWithdrawResponse> create_buyer_vault_withdraw(id)

Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.
  result = api_instance.create_buyer_vault_withdraw(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_withdraw: #{e}"
end
```

#### Using the create_buyer_vault_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerVaultWithdrawResponse>, Integer, Hash)> create_buyer_vault_withdraw_with_http_info(id)

```ruby
begin
  # Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.
  data, status_code, headers = api_instance.create_buyer_vault_withdraw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerVaultWithdrawResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_vault_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerVaultWithdrawResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_wishlist

> <CreateBuyerWishlistResponse> create_buyer_wishlist(create_buyer_wishlist_request)

Create a wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
create_buyer_wishlist_request = CrosslyBuyer::CreateBuyerWishlistRequest.new({name: 'name_example'}) # CreateBuyerWishlistRequest | 

begin
  # Create a wishlist.
  result = api_instance.create_buyer_wishlist(create_buyer_wishlist_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist: #{e}"
end
```

#### Using the create_buyer_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistResponse>, Integer, Hash)> create_buyer_wishlist_with_http_info(create_buyer_wishlist_request)

```ruby
begin
  # Create a wishlist.
  data, status_code, headers = api_instance.create_buyer_wishlist_with_http_info(create_buyer_wishlist_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_buyer_wishlist_request** | **CreateBuyerWishlistRequest** |  |  |

### Return type

**CreateBuyerWishlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_wishlist_invite

> <CreateBuyerWishlistInviteResponse> create_buyer_wishlist_invite(id)

Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.
  result = api_instance.create_buyer_wishlist_invite(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_invite: #{e}"
end
```

#### Using the create_buyer_wishlist_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistInviteResponse>, Integer, Hash)> create_buyer_wishlist_invite_with_http_info(id)

```ruby
begin
  # Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.
  data, status_code, headers = api_instance.create_buyer_wishlist_invite_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistInviteResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBuyerWishlistInviteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_wishlist_item

> <BuyerResponse2> create_buyer_wishlist_item(id, create_buyer_wishlist_item_request)

Add a listing to a wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_buyer_wishlist_item_request = CrosslyBuyer::CreateBuyerWishlistItemRequest.new({listing_slug: 'listing_slug_example'}) # CreateBuyerWishlistItemRequest | 

begin
  # Add a listing to a wishlist.
  result = api_instance.create_buyer_wishlist_item(id, create_buyer_wishlist_item_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_item: #{e}"
end
```

#### Using the create_buyer_wishlist_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse2>, Integer, Hash)> create_buyer_wishlist_item_with_http_info(id, create_buyer_wishlist_item_request)

```ruby
begin
  # Add a listing to a wishlist.
  data, status_code, headers = api_instance.create_buyer_wishlist_item_with_http_info(id, create_buyer_wishlist_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse2>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_buyer_wishlist_item_request** | **CreateBuyerWishlistItemRequest** |  |  |

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_buyer_wishlist_join

> <CreateBuyerWishlistJoinResponse> create_buyer_wishlist_join(token)

Join a wishlist you were invited to edit.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
token = 'token_example' # String | 

begin
  # Join a wishlist you were invited to edit.
  result = api_instance.create_buyer_wishlist_join(token)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_join: #{e}"
end
```

#### Using the create_buyer_wishlist_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistJoinResponse>, Integer, Hash)> create_buyer_wishlist_join_with_http_info(token)

```ruby
begin
  # Join a wishlist you were invited to edit.
  data, status_code, headers = api_instance.create_buyer_wishlist_join_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistJoinResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**CreateBuyerWishlistJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_buyer_wishlist_share

> <CreateBuyerWishlistShareResponse> create_buyer_wishlist_share(id, create_buyer_wishlist_share_request)

Share a wishlist — makes it public and returns its link.

`resetLink: true` issues a new link and kills the old one, for a link that went further than intended. To stop sharing, PATCH the list with isPublic: false.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
create_buyer_wishlist_share_request = CrosslyBuyer::CreateBuyerWishlistShareRequest.new # CreateBuyerWishlistShareRequest | 

begin
  # Share a wishlist — makes it public and returns its link.
  result = api_instance.create_buyer_wishlist_share(id, create_buyer_wishlist_share_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_share: #{e}"
end
```

#### Using the create_buyer_wishlist_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBuyerWishlistShareResponse>, Integer, Hash)> create_buyer_wishlist_share_with_http_info(id, create_buyer_wishlist_share_request)

```ruby
begin
  # Share a wishlist — makes it public and returns its link.
  data, status_code, headers = api_instance.create_buyer_wishlist_share_with_http_info(id, create_buyer_wishlist_share_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBuyerWishlistShareResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->create_buyer_wishlist_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **create_buyer_wishlist_share_request** | **CreateBuyerWishlistShareRequest** |  |  |

### Return type

**CreateBuyerWishlistShareResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_buyer_board

> <BuyerResponse> delete_buyer_board(id)

Delete a board.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Delete a board.
  result = api_instance.delete_buyer_board(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_board: #{e}"
end
```

#### Using the delete_buyer_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_board_with_http_info(id)

```ruby
begin
  # Delete a board.
  data, status_code, headers = api_instance.delete_buyer_board_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_board_item

> <BuyerResponse> delete_buyer_board_item(id, platform_listing_id)

Take a listing off a board.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # Take a listing off a board.
  result = api_instance.delete_buyer_board_item(id, platform_listing_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_board_item: #{e}"
end
```

#### Using the delete_buyer_board_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_board_item_with_http_info(id, platform_listing_id)

```ruby
begin
  # Take a listing off a board.
  data, status_code, headers = api_instance.delete_buyer_board_item_with_http_info(id, platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_board_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_break_spot_hold

> <BuyerResponse> delete_buyer_break_spot_hold(id, spot_id)

Release a break spot you hold.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
spot_id = 'spot_id_example' # String | 

begin
  # Release a break spot you hold.
  result = api_instance.delete_buyer_break_spot_hold(id, spot_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_break_spot_hold: #{e}"
end
```

#### Using the delete_buyer_break_spot_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_break_spot_hold_with_http_info(id, spot_id)

```ruby
begin
  # Release a break spot you hold.
  data, status_code, headers = api_instance.delete_buyer_break_spot_hold_with_http_info(id, spot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_break_spot_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **spot_id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_cart_item

> delete_buyer_cart_item(id)

Remove a line from your cart.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove a line from your cart.
  api_instance.delete_buyer_cart_item(id)
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_item: #{e}"
end
```

#### Using the delete_buyer_cart_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_buyer_cart_item_with_http_info(id)

```ruby
begin
  # Remove a line from your cart.
  data, status_code, headers = api_instance.delete_buyer_cart_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_cart_saved

> <BuyerCartResponse> delete_buyer_cart_saved(id)

Remove an item from saved-for-later. Returns the remaining list.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Remove an item from saved-for-later. Returns the remaining list.
  result = api_instance.delete_buyer_cart_saved(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_saved: #{e}"
end
```

#### Using the delete_buyer_cart_saved_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerCartResponse>, Integer, Hash)> delete_buyer_cart_saved_with_http_info(id)

```ruby
begin
  # Remove an item from saved-for-later. Returns the remaining list.
  data, status_code, headers = api_instance.delete_buyer_cart_saved_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerCartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_cart_saved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_conversation_guest

> <BuyerResponse> delete_buyer_conversation_guest(id, user_id)

Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).
  result = api_instance.delete_buyer_conversation_guest(id, user_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_conversation_guest: #{e}"
end
```

#### Using the delete_buyer_conversation_guest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_conversation_guest_with_http_info(id, user_id)

```ruby
begin
  # Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).
  data, status_code, headers = api_instance.delete_buyer_conversation_guest_with_http_info(id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_conversation_guest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_fit_ref

> <BuyerResponse> delete_buyer_fit_ref(id)

Delete a reference garment.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Delete a reference garment.
  result = api_instance.delete_buyer_fit_ref(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_fit_ref: #{e}"
end
```

#### Using the delete_buyer_fit_ref_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_fit_ref_with_http_info(id)

```ruby
begin
  # Delete a reference garment.
  data, status_code, headers = api_instance.delete_buyer_fit_ref_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_fit_ref_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_market_bid

> <BuyerResponse> delete_buyer_market_bid(id)

Cancel a resting market bid.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Cancel a resting market bid.
  result = api_instance.delete_buyer_market_bid(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_market_bid: #{e}"
end
```

#### Using the delete_buyer_market_bid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_market_bid_with_http_info(id)

```ruby
begin
  # Cancel a resting market bid.
  data, status_code, headers = api_instance.delete_buyer_market_bid_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_market_bid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_market_watch

> <BuyerResponse> delete_buyer_market_watch(id)

Stop watching a market variant.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Stop watching a market variant.
  result = api_instance.delete_buyer_market_watch(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_market_watch: #{e}"
end
```

#### Using the delete_buyer_market_watch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_market_watch_with_http_info(id)

```ruby
begin
  # Stop watching a market variant.
  data, status_code, headers = api_instance.delete_buyer_market_watch_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_market_watch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_offer

> <BuyerResponse> delete_buyer_offer(id)

Withdraw an offer you made that the seller has not answered.

Only a pending offer can be withdrawn — an accepted price the seller agreed to cannot be taken back here.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The offer id.

begin
  # Withdraw an offer you made that the seller has not answered.
  result = api_instance.delete_buyer_offer(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_offer: #{e}"
end
```

#### Using the delete_buyer_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_offer_with_http_info(id)

```ruby
begin
  # Withdraw an offer you made that the seller has not answered.
  data, status_code, headers = api_instance.delete_buyer_offer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The offer id. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_recently_viewed

> <BuyerResponse> delete_buyer_recently_viewed(slug)

Remove one listing from your recently viewed.

Viewing it again brings it back. Sellers’ view counts are unaffected.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The listing slug.

begin
  # Remove one listing from your recently viewed.
  result = api_instance.delete_buyer_recently_viewed(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_recently_viewed: #{e}"
end
```

#### Using the delete_buyer_recently_viewed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_recently_viewed_with_http_info(slug)

```ruby
begin
  # Remove one listing from your recently viewed.
  data, status_code, headers = api_instance.delete_buyer_recently_viewed_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_recently_viewed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The listing slug. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_recently_viewed2

> <BuyerResponse> delete_buyer_recently_viewed2

Clear your recently viewed list.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Clear your recently viewed list.
  result = api_instance.delete_buyer_recently_viewed2
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_recently_viewed2: #{e}"
end
```

#### Using the delete_buyer_recently_viewed2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_recently_viewed2_with_http_info

```ruby
begin
  # Clear your recently viewed list.
  data, status_code, headers = api_instance.delete_buyer_recently_viewed2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_recently_viewed2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_registry

> <BuyerResponse> delete_buyer_registry(id)

Delete a registry (and the wishlist behind it).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Delete a registry (and the wishlist behind it).
  result = api_instance.delete_buyer_registry(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_registry: #{e}"
end
```

#### Using the delete_buyer_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_registry_with_http_info(id)

```ruby
begin
  # Delete a registry (and the wishlist behind it).
  data, status_code, headers = api_instance.delete_buyer_registry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_seller_club_join

> <BuyerResponse> delete_buyer_seller_club_join(seller_user_id)

Leave a seller’s loyalty club.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
seller_user_id = 'seller_user_id_example' # String | 

begin
  # Leave a seller’s loyalty club.
  result = api_instance.delete_buyer_seller_club_join(seller_user_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_seller_club_join: #{e}"
end
```

#### Using the delete_buyer_seller_club_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_seller_club_join_with_http_info(seller_user_id)

```ruby
begin
  # Leave a seller’s loyalty club.
  data, status_code, headers = api_instance.delete_buyer_seller_club_join_with_http_info(seller_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_seller_club_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seller_user_id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_together_item

> <BuyerResponse> delete_buyer_together_item(code, id)

Take an item you added off a room’s board.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 
id = 'id_example' # String | 

begin
  # Take an item you added off a room’s board.
  result = api_instance.delete_buyer_together_item(code, id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_together_item: #{e}"
end
```

#### Using the delete_buyer_together_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_together_item_with_http_info(code, id)

```ruby
begin
  # Take an item you added off a room’s board.
  data, status_code, headers = api_instance.delete_buyer_together_item_with_http_info(code, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_together_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_total_request

> <BuyerResponse> delete_buyer_total_request(id)

Cancel a total request you made.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Cancel a total request you made.
  result = api_instance.delete_buyer_total_request(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_total_request: #{e}"
end
```

#### Using the delete_buyer_total_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_total_request_with_http_info(id)

```ruby
begin
  # Cancel a total request you made.
  data, status_code, headers = api_instance.delete_buyer_total_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_total_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_try_on

> <DeleteBuyerTryOnResponse> delete_buyer_try_on(id)

Delete a try-on and its images — or pass `all` to delete every photo and result.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Delete a try-on and its images — or pass `all` to delete every photo and result.
  result = api_instance.delete_buyer_try_on(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_try_on: #{e}"
end
```

#### Using the delete_buyer_try_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBuyerTryOnResponse>, Integer, Hash)> delete_buyer_try_on_with_http_info(id)

```ruby
begin
  # Delete a try-on and its images — or pass `all` to delete every photo and result.
  data, status_code, headers = api_instance.delete_buyer_try_on_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBuyerTryOnResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_try_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteBuyerTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_wishlist

> <BuyerResponse> delete_buyer_wishlist(id)

Delete a wishlist and everything on it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # Delete a wishlist and everything on it.
  result = api_instance.delete_buyer_wishlist(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist: #{e}"
end
```

#### Using the delete_buyer_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_wishlist_with_http_info(id)

```ruby
begin
  # Delete a wishlist and everything on it.
  data, status_code, headers = api_instance.delete_buyer_wishlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_wishlist_item

> <DeleteBuyerWishlistItemResponse> delete_buyer_wishlist_item(id, slug)

Take a listing off a wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The wishlist id.
slug = 'slug_example' # String | The listing slug.

begin
  # Take a listing off a wishlist.
  result = api_instance.delete_buyer_wishlist_item(id, slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist_item: #{e}"
end
```

#### Using the delete_buyer_wishlist_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBuyerWishlistItemResponse>, Integer, Hash)> delete_buyer_wishlist_item_with_http_info(id, slug)

```ruby
begin
  # Take a listing off a wishlist.
  data, status_code, headers = api_instance.delete_buyer_wishlist_item_with_http_info(id, slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBuyerWishlistItemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The wishlist id. |  |
| **slug** | **String** | The listing slug. |  |

### Return type

**DeleteBuyerWishlistItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_buyer_wishlist_member

> <BuyerResponse> delete_buyer_wishlist_member(id, user_id)

Remove a co-editor (the owner), or leave a list shared with you (your own user id).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove a co-editor (the owner), or leave a list shared with you (your own user id).
  result = api_instance.delete_buyer_wishlist_member(id, user_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist_member: #{e}"
end
```

#### Using the delete_buyer_wishlist_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> delete_buyer_wishlist_member_with_http_info(id, user_id)

```ruby
begin
  # Remove a co-editor (the owner), or leave a list shared with you (your own user id).
  data, status_code, headers = api_instance.delete_buyer_wishlist_member_with_http_info(id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->delete_buyer_wishlist_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_auction_me

> <GetBuyerAuctionMeResponse> get_buyer_auction_me(slug)

Where you stand in one auction — your max, leading, won, must you pay.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The auction listing slug.

begin
  # Where you stand in one auction — your max, leading, won, must you pay.
  result = api_instance.get_buyer_auction_me(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_auction_me: #{e}"
end
```

#### Using the get_buyer_auction_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerAuctionMeResponse>, Integer, Hash)> get_buyer_auction_me_with_http_info(slug)

```ruby
begin
  # Where you stand in one auction — your max, leading, won, must you pay.
  data, status_code, headers = api_instance.get_buyer_auction_me_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerAuctionMeResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_auction_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The auction listing slug. |  |

### Return type

**GetBuyerAuctionMeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_badge

> <GetBuyerBadgeResponse> get_buyer_badge

The counts behind the account badge — unread messages, offers waiting, orders to review.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The counts behind the account badge — unread messages, offers waiting, orders to review.
  result = api_instance.get_buyer_badge
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_badge: #{e}"
end
```

#### Using the get_buyer_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerBadgeResponse>, Integer, Hash)> get_buyer_badge_with_http_info

```ruby
begin
  # The counts behind the account badge — unread messages, offers waiting, orders to review.
  data, status_code, headers = api_instance.get_buyer_badge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerBadgeResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_badge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerBadgeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_board

> <BuyerBoardResponse> get_buyer_board(id)

One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.
  result = api_instance.get_buyer_board(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_board: #{e}"
end
```

#### Using the get_buyer_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerBoardResponse>, Integer, Hash)> get_buyer_board_with_http_info(id)

```ruby
begin
  # One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.
  data, status_code, headers = api_instance.get_buyer_board_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerBoardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_board_shared

> <BuyerBoardResponse> get_buyer_board_shared(token)

A shared outfit board, by its link token.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
token = 'token_example' # String | 

begin
  # A shared outfit board, by its link token.
  result = api_instance.get_buyer_board_shared(token)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_board_shared: #{e}"
end
```

#### Using the get_buyer_board_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerBoardResponse>, Integer, Hash)> get_buyer_board_shared_with_http_info(token)

```ruby
begin
  # A shared outfit board, by its link token.
  data, status_code, headers = api_instance.get_buyer_board_shared_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerBoardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_board_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_break

> <GetBuyerBreakResponse> get_buyer_break(id)

A card break’s board: spots, holders, and the seed after the draw.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # A card break’s board: spots, holders, and the seed after the draw.
  result = api_instance.get_buyer_break(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_break: #{e}"
end
```

#### Using the get_buyer_break_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerBreakResponse>, Integer, Hash)> get_buyer_break_with_http_info(id)

```ruby
begin
  # A card break’s board: spots, holders, and the seed after the draw.
  data, status_code, headers = api_instance.get_buyer_break_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerBreakResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_break_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerBreakResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_case

> <GetBuyerCaseResponse> get_buyer_case(id)

One case — its state, the message thread, and the return parcel if there is one.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # One case — its state, the message thread, and the return parcel if there is one.
  result = api_instance.get_buyer_case(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_case: #{e}"
end
```

#### Using the get_buyer_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCaseResponse>, Integer, Hash)> get_buyer_case_with_http_info(id)

```ruby
begin
  # One case — its state, the message thread, and the return parcel if there is one.
  data, status_code, headers = api_instance.get_buyer_case_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCaseResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**GetBuyerCaseResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_listing_my_size

> <GetBuyerCatalogListingMySizeResponse> get_buyer_catalog_listing_my_size(slug)

This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.
  result = api_instance.get_buyer_catalog_listing_my_size(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_my_size: #{e}"
end
```

#### Using the get_buyer_catalog_listing_my_size_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogListingMySizeResponse>, Integer, Hash)> get_buyer_catalog_listing_my_size_with_http_info(slug)

```ruby
begin
  # This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.
  data, status_code, headers = api_instance.get_buyer_catalog_listing_my_size_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogListingMySizeResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_my_size_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerCatalogListingMySizeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_listing_price

> <GetBuyerCatalogListingPriceResponse> get_buyer_catalog_listing_price(slug)

The price today. When the seller has the same item live on another marketplace for less, this IS that price (`priceMatch` says where from), and `lowestAnywhere` lists the marketplaces it is guaranteed not to be cheaper on. `priceCheck` rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The price today. When the seller has the same item live on another marketplace for less, this IS that price (`priceMatch` says where from), and `lowestAnywhere` lists the marketplaces it is guaranteed not to be cheaper on. `priceCheck` rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.
  result = api_instance.get_buyer_catalog_listing_price(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_price: #{e}"
end
```

#### Using the get_buyer_catalog_listing_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogListingPriceResponse>, Integer, Hash)> get_buyer_catalog_listing_price_with_http_info(slug)

```ruby
begin
  # The price today. When the seller has the same item live on another marketplace for less, this IS that price (`priceMatch` says where from), and `lowestAnywhere` lists the marketplaces it is guaranteed not to be cheaper on. `priceCheck` rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.
  data, status_code, headers = api_instance.get_buyer_catalog_listing_price_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogListingPriceResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerCatalogListingPriceResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_catalog_listing_rental

> <GetBuyerCatalogListingRentalResponse> get_buyer_catalog_listing_rental(slug)

Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.
  result = api_instance.get_buyer_catalog_listing_rental(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_rental: #{e}"
end
```

#### Using the get_buyer_catalog_listing_rental_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCatalogListingRentalResponse>, Integer, Hash)> get_buyer_catalog_listing_rental_with_http_info(slug)

```ruby
begin
  # Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.
  data, status_code, headers = api_instance.get_buyer_catalog_listing_rental_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCatalogListingRentalResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_catalog_listing_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerCatalogListingRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_checkout_usdc

> <GetBuyerCheckoutUsdcResponse> get_buyer_checkout_usdc

Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.
  result = api_instance.get_buyer_checkout_usdc
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_checkout_usdc: #{e}"
end
```

#### Using the get_buyer_checkout_usdc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCheckoutUsdcResponse>, Integer, Hash)> get_buyer_checkout_usdc_with_http_info

```ruby
begin
  # Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.
  data, status_code, headers = api_instance.get_buyer_checkout_usdc_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCheckoutUsdcResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_checkout_usdc_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerCheckoutUsdcResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_collection_offer

> <GetBuyerCollectionOfferResponse> get_buyer_collection_offer(id)

What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).
  result = api_instance.get_buyer_collection_offer(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_collection_offer: #{e}"
end
```

#### Using the get_buyer_collection_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCollectionOfferResponse>, Integer, Hash)> get_buyer_collection_offer_with_http_info(id)

```ruby
begin
  # What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).
  data, status_code, headers = api_instance.get_buyer_collection_offer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCollectionOfferResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_collection_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerCollectionOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_collection_set

> <GetBuyerCollectionSetResponse> get_buyer_collection_set(category, brand, model)

One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
category = 'category_example' # String | 
brand = 'brand_example' # String | 
model = 'model_example' # String | 

begin
  # One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.
  result = api_instance.get_buyer_collection_set(category, brand, model)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_collection_set: #{e}"
end
```

#### Using the get_buyer_collection_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCollectionSetResponse>, Integer, Hash)> get_buyer_collection_set_with_http_info(category, brand, model)

```ruby
begin
  # One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.
  data, status_code, headers = api_instance.get_buyer_collection_set_with_http_info(category, brand, model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCollectionSetResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_collection_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  |  |
| **brand** | **String** |  |  |
| **model** | **String** |  |  |

### Return type

**GetBuyerCollectionSetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_creator

> <GetBuyerCreatorResponse> get_buyer_creator(handle)

A creator storefront: profile, affiliate code, and shelves of live picks.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
handle = 'handle_example' # String | 

begin
  # A creator storefront: profile, affiliate code, and shelves of live picks.
  result = api_instance.get_buyer_creator(handle)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_creator: #{e}"
end
```

#### Using the get_buyer_creator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerCreatorResponse>, Integer, Hash)> get_buyer_creator_with_http_info(handle)

```ruby
begin
  # A creator storefront: profile, affiliate code, and shelves of live picks.
  data, status_code, headers = api_instance.get_buyer_creator_with_http_info(handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerCreatorResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_creator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  |  |

### Return type

**GetBuyerCreatorResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_fit_vocabulary

> <GetBuyerFitVocabularyResponse> get_buyer_fit_vocabulary

Garment kinds and the measurements each takes.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Garment kinds and the measurements each takes.
  result = api_instance.get_buyer_fit_vocabulary
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_fit_vocabulary: #{e}"
end
```

#### Using the get_buyer_fit_vocabulary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerFitVocabularyResponse>, Integer, Hash)> get_buyer_fit_vocabulary_with_http_info

```ruby
begin
  # Garment kinds and the measurements each takes.
  data, status_code, headers = api_instance.get_buyer_fit_vocabulary_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerFitVocabularyResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_fit_vocabulary_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerFitVocabularyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_gift_finder_option

> <GetBuyerGiftFinderOptionResponse> get_buyer_gift_finder_option

The gift finder’s questions: recipients, interests, budgets.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The gift finder’s questions: recipients, interests, budgets.
  result = api_instance.get_buyer_gift_finder_option
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_gift_finder_option: #{e}"
end
```

#### Using the get_buyer_gift_finder_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerGiftFinderOptionResponse>, Integer, Hash)> get_buyer_gift_finder_option_with_http_info

```ruby
begin
  # The gift finder’s questions: recipients, interests, budgets.
  data, status_code, headers = api_instance.get_buyer_gift_finder_option_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerGiftFinderOptionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_gift_finder_option_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerGiftFinderOptionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_impact

> <GetBuyerImpactResponse> get_buyer_impact

The sourced footprint your secondhand purchases avoided.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The sourced footprint your secondhand purchases avoided.
  result = api_instance.get_buyer_impact
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_impact: #{e}"
end
```

#### Using the get_buyer_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerImpactResponse>, Integer, Hash)> get_buyer_impact_with_http_info

```ruby
begin
  # The sourced footprint your secondhand purchases avoided.
  data, status_code, headers = api_instance.get_buyer_impact_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerImpactResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_impact_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerImpactResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_layaway

> <BuyerLayawayResponse> get_buyer_layaway(id)

One layaway and its schedule.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # One layaway and its schedule.
  result = api_instance.get_buyer_layaway(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_layaway: #{e}"
end
```

#### Using the get_buyer_layaway_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerLayawayResponse>, Integer, Hash)> get_buyer_layaway_with_http_info(id)

```ruby
begin
  # One layaway and its schedule.
  data, status_code, headers = api_instance.get_buyer_layaway_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerLayawayResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_layaway_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_audio_summary

> <GetBuyerListingAudioSummaryResponse> get_buyer_listing_audio_summary(slug)

A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.
  result = api_instance.get_buyer_listing_audio_summary(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_audio_summary: #{e}"
end
```

#### Using the get_buyer_listing_audio_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingAudioSummaryResponse>, Integer, Hash)> get_buyer_listing_audio_summary_with_http_info(slug)

```ruby
begin
  # A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.
  data, status_code, headers = api_instance.get_buyer_listing_audio_summary_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingAudioSummaryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_audio_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingAudioSummaryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_bought_together

> <GetBuyerListingBoughtTogetherResponse> get_buyer_listing_bought_together(slug)

Frequently bought together / complete the look.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Frequently bought together / complete the look.
  result = api_instance.get_buyer_listing_bought_together(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_bought_together: #{e}"
end
```

#### Using the get_buyer_listing_bought_together_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingBoughtTogetherResponse>, Integer, Hash)> get_buyer_listing_bought_together_with_http_info(slug)

```ruby
begin
  # Frequently bought together / complete the look.
  data, status_code, headers = api_instance.get_buyer_listing_bought_together_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingBoughtTogetherResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_bought_together_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingBoughtTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_break

> <GetBuyerListingBreakResponse> get_buyer_listing_break(slug)

The card break this listing sells spots in, if any; the seed is revealed after the draw.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The card break this listing sells spots in, if any; the seed is revealed after the draw.
  result = api_instance.get_buyer_listing_break(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_break: #{e}"
end
```

#### Using the get_buyer_listing_break_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingBreakResponse>, Integer, Hash)> get_buyer_listing_break_with_http_info(slug)

```ruby
begin
  # The card break this listing sells spots in, if any; the seed is revealed after the draw.
  data, status_code, headers = api_instance.get_buyer_listing_break_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingBreakResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_break_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingBreakResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_cert

> <GetBuyerListingCertResponse> get_buyer_listing_cert(slug)

A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.
  result = api_instance.get_buyer_listing_cert(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_cert: #{e}"
end
```

#### Using the get_buyer_listing_cert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingCertResponse>, Integer, Hash)> get_buyer_listing_cert_with_http_info(slug)

```ruby
begin
  # A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.
  data, status_code, headers = api_instance.get_buyer_listing_cert_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingCertResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_cert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingCertResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_fit

> <GetBuyerListingFitResponse> get_buyer_listing_fit(slug)

A listing’s flat measurements, compared with your saved reference garments.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # A listing’s flat measurements, compared with your saved reference garments.
  result = api_instance.get_buyer_listing_fit(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_fit: #{e}"
end
```

#### Using the get_buyer_listing_fit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingFitResponse>, Integer, Hash)> get_buyer_listing_fit_with_http_info(slug)

```ruby
begin
  # A listing’s flat measurements, compared with your saved reference garments.
  data, status_code, headers = api_instance.get_buyer_listing_fit_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingFitResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_fit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingFitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_group_buy

> <GetBuyerListingGroupBuyResponse> get_buyer_listing_group_buy(slug)

The group buy open on this listing, if any.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The group buy open on this listing, if any.
  result = api_instance.get_buyer_listing_group_buy(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_group_buy: #{e}"
end
```

#### Using the get_buyer_listing_group_buy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingGroupBuyResponse>, Integer, Hash)> get_buyer_listing_group_buy_with_http_info(slug)

```ruby
begin
  # The group buy open on this listing, if any.
  data, status_code, headers = api_instance.get_buyer_listing_group_buy_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingGroupBuyResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_group_buy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingGroupBuyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_impact

> <GetBuyerListingImpactResponse> get_buyer_listing_impact(slug)

The sourced footprint of making a new equivalent; null when no published figure applies.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The sourced footprint of making a new equivalent; null when no published figure applies.
  result = api_instance.get_buyer_listing_impact(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_impact: #{e}"
end
```

#### Using the get_buyer_listing_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingImpactResponse>, Integer, Hash)> get_buyer_listing_impact_with_http_info(slug)

```ruby
begin
  # The sourced footprint of making a new equivalent; null when no published figure applies.
  data, status_code, headers = api_instance.get_buyer_listing_impact_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingImpactResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_impact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingImpactResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_resale_value

> <GetBuyerListingResaleValueResponse> get_buyer_listing_resale_value(slug)

What the same brand and category resold for on Crossly, and the buyback offer when enabled.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # What the same brand and category resold for on Crossly, and the buyback offer when enabled.
  result = api_instance.get_buyer_listing_resale_value(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_resale_value: #{e}"
end
```

#### Using the get_buyer_listing_resale_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingResaleValueResponse>, Integer, Hash)> get_buyer_listing_resale_value_with_http_info(slug)

```ruby
begin
  # What the same brand and category resold for on Crossly, and the buyback offer when enabled.
  data, status_code, headers = api_instance.get_buyer_listing_resale_value_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingResaleValueResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_resale_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingResaleValueResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_subscribe_offer

> <GetBuyerListingSubscribeOfferResponse> get_buyer_listing_subscribe_offer(slug)

The subscribe & save discount and intervals on a listing; null when the seller has none.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The subscribe & save discount and intervals on a listing; null when the seller has none.
  result = api_instance.get_buyer_listing_subscribe_offer(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_subscribe_offer: #{e}"
end
```

#### Using the get_buyer_listing_subscribe_offer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingSubscribeOfferResponse>, Integer, Hash)> get_buyer_listing_subscribe_offer_with_http_info(slug)

```ruby
begin
  # The subscribe & save discount and intervals on a listing; null when the seller has none.
  data, status_code, headers = api_instance.get_buyer_listing_subscribe_offer_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingSubscribeOfferResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_subscribe_offer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingSubscribeOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_listing_try_on

> <GetBuyerListingTryOnResponse> get_buyer_listing_try_on(slug)

Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.
  result = api_instance.get_buyer_listing_try_on(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_try_on: #{e}"
end
```

#### Using the get_buyer_listing_try_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerListingTryOnResponse>, Integer, Hash)> get_buyer_listing_try_on_with_http_info(slug)

```ruby
begin
  # Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.
  data, status_code, headers = api_instance.get_buyer_listing_try_on_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerListingTryOnResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_listing_try_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerListingTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_live_stream_auction

> <GetBuyerLiveStreamAuctionResponse> get_buyer_live_stream_auction(id)

The auction running on a live stream right now, if any. Bid on it by its `slug` at POST /v1/buyer/auctions/:slug/bids.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # The auction running on a live stream right now, if any. Bid on it by its `slug` at POST /v1/buyer/auctions/:slug/bids.
  result = api_instance.get_buyer_live_stream_auction(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_live_stream_auction: #{e}"
end
```

#### Using the get_buyer_live_stream_auction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerLiveStreamAuctionResponse>, Integer, Hash)> get_buyer_live_stream_auction_with_http_info(id)

```ruby
begin
  # The auction running on a live stream right now, if any. Bid on it by its `slug` at POST /v1/buyer/auctions/:slug/bids.
  data, status_code, headers = api_instance.get_buyer_live_stream_auction_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerLiveStreamAuctionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_live_stream_auction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerLiveStreamAuctionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_market_purchase_option

> <GetBuyerMarketPurchaseOptionResponse> get_buyer_market_purchase_option

Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).
  result = api_instance.get_buyer_market_purchase_option
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_market_purchase_option: #{e}"
end
```

#### Using the get_buyer_market_purchase_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerMarketPurchaseOptionResponse>, Integer, Hash)> get_buyer_market_purchase_option_with_http_info

```ruby
begin
  # Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).
  data, status_code, headers = api_instance.get_buyer_market_purchase_option_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerMarketPurchaseOptionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_market_purchase_option_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerMarketPurchaseOptionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_order_eligibility

> <GetBuyerOrderEligibilityResponse> get_buyer_order_eligibility(id)

What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.

`inr.eligible` says whether an item-not-received case can be opened; when it cannot, `inr.reason` says why and `inr.opensAt` when it will. The same rules the order page and the action routes enforce.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.

begin
  # What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.
  result = api_instance.get_buyer_order_eligibility(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_eligibility: #{e}"
end
```

#### Using the get_buyer_order_eligibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerOrderEligibilityResponse>, Integer, Hash)> get_buyer_order_eligibility_with_http_info(id)

```ruby
begin
  # What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.
  data, status_code, headers = api_instance.get_buyer_order_eligibility_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerOrderEligibilityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_eligibility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |

### Return type

**GetBuyerOrderEligibilityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_order_export

> <GetBuyerOrderExportResponse> get_buyer_order_export(opts)

Your order history as CSV text (up to 5,000 orders).

The same CSV the shop downloads, returned as a string in `data.csv` so a program or agent can read it without a file download. Money columns are dollars, as a spreadsheet expects.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  from: 'from_example', # String | First day to include, YYYY-MM-DD.
  to: 'to_example' # String | Last day to include, YYYY-MM-DD (inclusive).
}

begin
  # Your order history as CSV text (up to 5,000 orders).
  result = api_instance.get_buyer_order_export(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_export: #{e}"
end
```

#### Using the get_buyer_order_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerOrderExportResponse>, Integer, Hash)> get_buyer_order_export_with_http_info(opts)

```ruby
begin
  # Your order history as CSV text (up to 5,000 orders).
  data, status_code, headers = api_instance.get_buyer_order_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerOrderExportResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | First day to include, YYYY-MM-DD. | [optional] |
| **to** | **String** | Last day to include, YYYY-MM-DD (inclusive). | [optional] |

### Return type

**GetBuyerOrderExportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_order_price_protection

> <GetBuyerOrderPriceProtectionResponse> get_buyer_order_price_protection(id)

Price protection on one order: if the item gets cheaper before `until`, the difference is credited to your Bucks automatically. `creditedCents` is what it has paid so far.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Price protection on one order: if the item gets cheaper before `until`, the difference is credited to your Bucks automatically. `creditedCents` is what it has paid so far.
  result = api_instance.get_buyer_order_price_protection(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_price_protection: #{e}"
end
```

#### Using the get_buyer_order_price_protection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerOrderPriceProtectionResponse>, Integer, Hash)> get_buyer_order_price_protection_with_http_info(id)

```ruby
begin
  # Price protection on one order: if the item gets cheaper before `until`, the difference is credited to your Bucks automatically. `creditedCents` is what it has paid so far.
  data, status_code, headers = api_instance.get_buyer_order_price_protection_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerOrderPriceProtectionResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_order_price_protection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerOrderPriceProtectionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_pack

> <GetBuyerPackResponse> get_buyer_pack(slug)

One pack: tiers and odds, items left, expected value, the chase items still in it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # One pack: tiers and odds, items left, expected value, the chase items still in it.
  result = api_instance.get_buyer_pack(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_pack: #{e}"
end
```

#### Using the get_buyer_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPackResponse>, Integer, Hash)> get_buyer_pack_with_http_info(slug)

```ruby
begin
  # One pack: tiers and odds, items left, expected value, the chase items still in it.
  data, status_code, headers = api_instance.get_buyer_pack_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPackResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerPackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_pack_fairness

> <GetBuyerPackFairnessResponse> get_buyer_pack_fairness

Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.
  result = api_instance.get_buyer_pack_fairness
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_pack_fairness: #{e}"
end
```

#### Using the get_buyer_pack_fairness_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPackFairnessResponse>, Integer, Hash)> get_buyer_pack_fairness_with_http_info

```ruby
begin
  # Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.
  data, status_code, headers = api_instance.get_buyer_pack_fairness_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPackFairnessResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_pack_fairness_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerPackFairnessResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_party

> <GetBuyerPartyResponse> get_buyer_party(slug)

One shopping party.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # One shopping party.
  result = api_instance.get_buyer_party(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_party: #{e}"
end
```

#### Using the get_buyer_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPartyResponse>, Integer, Hash)> get_buyer_party_with_http_info(slug)

```ruby
begin
  # One shopping party.
  data, status_code, headers = api_instance.get_buyer_party_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPartyResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerPartyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_passport

> <GetBuyerPassportResponse> get_buyer_passport(code)

What a product passport tag opens: the item, whether it was authenticated, how many owners on Crossly and since when — never who or for how much.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # What a product passport tag opens: the item, whether it was authenticated, how many owners on Crossly and since when — never who or for how much.
  result = api_instance.get_buyer_passport(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_passport: #{e}"
end
```

#### Using the get_buyer_passport_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPassportResponse>, Integer, Hash)> get_buyer_passport_with_http_info(code)

```ruby
begin
  # What a product passport tag opens: the item, whether it was authenticated, how many owners on Crossly and since when — never who or for how much.
  data, status_code, headers = api_instance.get_buyer_passport_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPassportResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_passport_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**GetBuyerPassportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_preference

> <GetBuyerPreferenceResponse> get_buyer_preference

The shopping profile derived from that activity.

Derived, never declared — there is no preferences form anywhere. `matchRate` is the share of this person's searches Crossly could answer; a low number is an inventory problem, not a personalisation one, which is why it is here.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The shopping profile derived from that activity.
  result = api_instance.get_buyer_preference
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_preference: #{e}"
end
```

#### Using the get_buyer_preference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPreferenceResponse>, Integer, Hash)> get_buyer_preference_with_http_info

```ruby
begin
  # The shopping profile derived from that activity.
  data, status_code, headers = api_instance.get_buyer_preference_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPreferenceResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_preference_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerPreferenceResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_price_guide

> <GetBuyerPriceGuideResponse> get_buyer_price_guide

What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.
  result = api_instance.get_buyer_price_guide
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_price_guide: #{e}"
end
```

#### Using the get_buyer_price_guide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPriceGuideResponse>, Integer, Hash)> get_buyer_price_guide_with_http_info

```ruby
begin
  # What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.
  data, status_code, headers = api_instance.get_buyer_price_guide_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPriceGuideResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_price_guide_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerPriceGuideResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_profile

> <GetBuyerProfileResponse> get_buyer_profile

Your Crossly shopping profile — name, email, saved address, Bucks balance.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your Crossly shopping profile — name, email, saved address, Bucks balance.
  result = api_instance.get_buyer_profile
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_profile: #{e}"
end
```

#### Using the get_buyer_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerProfileResponse>, Integer, Hash)> get_buyer_profile_with_http_info

```ruby
begin
  # Your Crossly shopping profile — name, email, saved address, Bucks balance.
  data, status_code, headers = api_instance.get_buyer_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerProfileResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerProfileResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_purchase_delivery

> <GetBuyerPurchaseDeliveryResponse> get_buyer_purchase_delivery(id)

Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.
  result = api_instance.get_buyer_purchase_delivery(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_delivery: #{e}"
end
```

#### Using the get_buyer_purchase_delivery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPurchaseDeliveryResponse>, Integer, Hash)> get_buyer_purchase_delivery_with_http_info(id)

```ruby
begin
  # Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.
  data, status_code, headers = api_instance.get_buyer_purchase_delivery_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPurchaseDeliveryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_delivery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerPurchaseDeliveryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_purchase_live_moment

> <GetBuyerPurchaseLiveMomentResponse> get_buyer_purchase_live_moment(id)

The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.
  result = api_instance.get_buyer_purchase_live_moment(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_live_moment: #{e}"
end
```

#### Using the get_buyer_purchase_live_moment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPurchaseLiveMomentResponse>, Integer, Hash)> get_buyer_purchase_live_moment_with_http_info(id)

```ruby
begin
  # The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.
  data, status_code, headers = api_instance.get_buyer_purchase_live_moment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPurchaseLiveMomentResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_live_moment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerPurchaseLiveMomentResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_purchase_return

> <GetBuyerPurchaseReturnResponse> get_buyer_purchase_return(id)

What a return would refund for each reason, by when, and any return already open.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # What a return would refund for each reason, by when, and any return already open.
  result = api_instance.get_buyer_purchase_return(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_return: #{e}"
end
```

#### Using the get_buyer_purchase_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPurchaseReturnResponse>, Integer, Hash)> get_buyer_purchase_return_with_http_info(id)

```ruby
begin
  # What a return would refund for each reason, by when, and any return already open.
  data, status_code, headers = api_instance.get_buyer_purchase_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPurchaseReturnResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerPurchaseReturnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_purchase_story

> <GetBuyerPurchaseStoryResponse> get_buyer_purchase_story(id)

Your owner story on a purchase, passed on to the next owner if you resell it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Your owner story on a purchase, passed on to the next owner if you resell it.
  result = api_instance.get_buyer_purchase_story(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_story: #{e}"
end
```

#### Using the get_buyer_purchase_story_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerPurchaseStoryResponse>, Integer, Hash)> get_buyer_purchase_story_with_http_info(id)

```ruby
begin
  # Your owner story on a purchase, passed on to the next owner if you resell it.
  data, status_code, headers = api_instance.get_buyer_purchase_story_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerPurchaseStoryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_purchase_story_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerPurchaseStoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_registry

> <BuyerRegistryResponse> get_buyer_registry(id)

One of your registries: items with how many are wanted and bought.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # One of your registries: items with how many are wanted and bought.
  result = api_instance.get_buyer_registry(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_registry: #{e}"
end
```

#### Using the get_buyer_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerRegistryResponse>, Integer, Hash)> get_buyer_registry_with_http_info(id)

```ruby
begin
  # One of your registries: items with how many are wanted and bought.
  data, status_code, headers = api_instance.get_buyer_registry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerRegistryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_registry_by_token

> <BuyerRegistryResponse> get_buyer_registry_by_token(token)

A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
token = 'token_example' # String | 

begin
  # A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.
  result = api_instance.get_buyer_registry_by_token(token)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_registry_by_token: #{e}"
end
```

#### Using the get_buyer_registry_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerRegistryResponse>, Integer, Hash)> get_buyer_registry_by_token_with_http_info(token)

```ruby
begin
  # A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.
  data, status_code, headers = api_instance.get_buyer_registry_by_token_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerRegistryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_registry_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_rental_eligibility

> <GetBuyerRentalEligibilityResponse> get_buyer_rental_eligibility

Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).
  result = api_instance.get_buyer_rental_eligibility
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_rental_eligibility: #{e}"
end
```

#### Using the get_buyer_rental_eligibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerRentalEligibilityResponse>, Integer, Hash)> get_buyer_rental_eligibility_with_http_info

```ruby
begin
  # Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).
  data, status_code, headers = api_instance.get_buyer_rental_eligibility_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerRentalEligibilityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_rental_eligibility_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerRentalEligibilityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_seller_club

> <GetBuyerSellerClubResponse> get_buyer_seller_club(seller_user_id)

A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
seller_user_id = 'seller_user_id_example' # String | 

begin
  # A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.
  result = api_instance.get_buyer_seller_club(seller_user_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_seller_club: #{e}"
end
```

#### Using the get_buyer_seller_club_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerSellerClubResponse>, Integer, Hash)> get_buyer_seller_club_with_http_info(seller_user_id)

```ruby
begin
  # A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.
  data, status_code, headers = api_instance.get_buyer_seller_club_with_http_info(seller_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerSellerClubResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_seller_club_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seller_user_id** | **String** |  |  |

### Return type

**GetBuyerSellerClubResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_seller_trust

> <GetBuyerSellerTrustResponse> get_buyer_seller_trust(username)

Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
username = 'username_example' # String | 

begin
  # Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.
  result = api_instance.get_buyer_seller_trust(username)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_seller_trust: #{e}"
end
```

#### Using the get_buyer_seller_trust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerSellerTrustResponse>, Integer, Hash)> get_buyer_seller_trust_with_http_info(username)

```ruby
begin
  # Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.
  data, status_code, headers = api_instance.get_buyer_seller_trust_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerSellerTrustResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_seller_trust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |

### Return type

**GetBuyerSellerTrustResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_together

> <GetBuyerTogetherResponse> get_buyer_together(code)

A shop-together room: members, the board with votes, and chat.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
code = 'code_example' # String | 

begin
  # A shop-together room: members, the board with votes, and chat.
  result = api_instance.get_buyer_together(code)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_together: #{e}"
end
```

#### Using the get_buyer_together_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerTogetherResponse>, Integer, Hash)> get_buyer_together_with_http_info(code)

```ruby
begin
  # A shop-together room: members, the board with votes, and chat.
  data, status_code, headers = api_instance.get_buyer_together_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerTogetherResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_together_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |

### Return type

**GetBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_vault_market_history

> <GetBuyerVaultMarketHistoryResponse> get_buyer_vault_market_history

Your Vault Markets value by day at the marks (oldest first, today live) over `days` (default 90), and today’s change against yesterday’s close.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your Vault Markets value by day at the marks (oldest first, today live) over `days` (default 90), and today’s change against yesterday’s close.
  result = api_instance.get_buyer_vault_market_history
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_history: #{e}"
end
```

#### Using the get_buyer_vault_market_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerVaultMarketHistoryResponse>, Integer, Hash)> get_buyer_vault_market_history_with_http_info

```ruby
begin
  # Your Vault Markets value by day at the marks (oldest first, today live) over `days` (default 90), and today’s change against yesterday’s close.
  data, status_code, headers = api_instance.get_buyer_vault_market_history_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerVaultMarketHistoryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_history_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerVaultMarketHistoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_vault_market_index

> <GetBuyerVaultMarketIndexResponse> get_buyer_vault_market_index(slug)

One index with its published daily closes (oldest first, `days` default 365) and its level now.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # One index with its published daily closes (oldest first, `days` default 365) and its level now.
  result = api_instance.get_buyer_vault_market_index(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_index: #{e}"
end
```

#### Using the get_buyer_vault_market_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerVaultMarketIndexResponse>, Integer, Hash)> get_buyer_vault_market_index_with_http_info(slug)

```ruby
begin
  # One index with its published daily closes (oldest first, `days` default 365) and its level now.
  data, status_code, headers = api_instance.get_buyer_vault_market_index_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerVaultMarketIndexResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetBuyerVaultMarketIndexResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_vault_market_instant_exit

> <GetBuyerVaultMarketInstantExitResponse> get_buyer_vault_market_instant_exit(id)

The Instant Exit quote for one vault unit you hold, and whether it can be sold now.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # The Instant Exit quote for one vault unit you hold, and whether it can be sold now.
  result = api_instance.get_buyer_vault_market_instant_exit(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_instant_exit: #{e}"
end
```

#### Using the get_buyer_vault_market_instant_exit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerVaultMarketInstantExitResponse>, Integer, Hash)> get_buyer_vault_market_instant_exit_with_http_info(id)

```ruby
begin
  # The Instant Exit quote for one vault unit you hold, and whether it can be sold now.
  data, status_code, headers = api_instance.get_buyer_vault_market_instant_exit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerVaultMarketInstantExitResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_instant_exit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetBuyerVaultMarketInstantExitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buyer_vault_market_worth

> <GetBuyerVaultMarketWorthResponse> get_buyer_vault_market_worth

What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
  result = api_instance.get_buyer_vault_market_worth
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_worth: #{e}"
end
```

#### Using the get_buyer_vault_market_worth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBuyerVaultMarketWorthResponse>, Integer, Hash)> get_buyer_vault_market_worth_with_http_info

```ruby
begin
  # What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
  data, status_code, headers = api_instance.get_buyer_vault_market_worth_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBuyerVaultMarketWorthResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->get_buyer_vault_market_worth_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetBuyerVaultMarketWorthResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_activity

> <ListBuyerActivityResponse> list_buyer_activity

What this buyer has compared lately.

Newest first, and only as far back as the retention window — the link between a person and a comparison is dropped after 180 days, so this thins out rather than growing forever.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What this buyer has compared lately.
  result = api_instance.list_buyer_activity
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_activity: #{e}"
end
```

#### Using the list_buyer_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerActivityResponse>, Integer, Hash)> list_buyer_activity_with_http_info

```ruby
begin
  # What this buyer has compared lately.
  data, status_code, headers = api_instance.list_buyer_activity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerActivityResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_activity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerActivityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_auction_bids

> <ListBuyerAuctionBidsResponse> list_buyer_auction_bids(slug)

An auction’s bid history, highest first, bidders anonymised.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | The auction listing slug.

begin
  # An auction’s bid history, highest first, bidders anonymised.
  result = api_instance.list_buyer_auction_bids(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_auction_bids: #{e}"
end
```

#### Using the list_buyer_auction_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerAuctionBidsResponse>, Integer, Hash)> list_buyer_auction_bids_with_http_info(slug)

```ruby
begin
  # An auction’s bid history, highest first, bidders anonymised.
  data, status_code, headers = api_instance.list_buyer_auction_bids_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerAuctionBidsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_auction_bids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The auction listing slug. |  |

### Return type

**ListBuyerAuctionBidsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_auctions

> <ListBuyerAuctionsResponse> list_buyer_auctions(opts)

Auctions you have bid in — bidding, won or lost (last 100).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  tab: 'bidding' # String | bidding = still running; won = you are the winner; lost = ended, someone else won.
}

begin
  # Auctions you have bid in — bidding, won or lost (last 100).
  result = api_instance.list_buyer_auctions(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_auctions: #{e}"
end
```

#### Using the list_buyer_auctions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerAuctionsResponse>, Integer, Hash)> list_buyer_auctions_with_http_info(opts)

```ruby
begin
  # Auctions you have bid in — bidding, won or lost (last 100).
  data, status_code, headers = api_instance.list_buyer_auctions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerAuctionsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_auctions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tab** | **String** | bidding &#x3D; still running; won &#x3D; you are the winner; lost &#x3D; ended, someone else won. | [optional][default to &#39;bidding&#39;] |

### Return type

**ListBuyerAuctionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_boards

> <ListBuyerBoardsResponse> list_buyer_boards

Your outfit boards: collages of listings, each with a share link.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your outfit boards: collages of listings, each with a share link.
  result = api_instance.list_buyer_boards
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_boards: #{e}"
end
```

#### Using the list_buyer_boards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerBoardsResponse>, Integer, Hash)> list_buyer_boards_with_http_info

```ruby
begin
  # Your outfit boards: collages of listings, each with a share link.
  data, status_code, headers = api_instance.list_buyer_boards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerBoardsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_boards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerBoardsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_breaks

> <BuyerResponse3> list_buyer_breaks

Card-break spots you hold or bought, with what each pulled.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Card-break spots you hold or bought, with what each pulled.
  result = api_instance.list_buyer_breaks
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_breaks: #{e}"
end
```

#### Using the list_buyer_breaks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_breaks_with_http_info

```ruby
begin
  # Card-break spots you hold or bought, with what each pulled.
  data, status_code, headers = api_instance.list_buyer_breaks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_breaks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_buybacks

> <BuyerResponse3> list_buyer_buybacks

Your buyback guarantees and requests.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your buyback guarantees and requests.
  result = api_instance.list_buyer_buybacks
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_buybacks: #{e}"
end
```

#### Using the list_buyer_buybacks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_buybacks_with_http_info

```ruby
begin
  # Your buyback guarantees and requests.
  data, status_code, headers = api_instance.list_buyer_buybacks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_buybacks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cart

> <ListBuyerCartResponse> list_buyer_cart

What is in your Crossly cart.

Line items with the price captured when each was added. This is NOT a quote — shipping, tax and any discounts are computed at checkout against a delivery address, and the sum of these lines is not what you will be charged.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What is in your Crossly cart.
  result = api_instance.list_buyer_cart
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart: #{e}"
end
```

#### Using the list_buyer_cart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerCartResponse>, Integer, Hash)> list_buyer_cart_with_http_info

```ruby
begin
  # What is in your Crossly cart.
  data, status_code, headers = api_instance.list_buyer_cart_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerCartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cart_saved

> <BuyerCartResponse> list_buyer_cart_saved

Items you saved for later out of your cart (last 200).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Items you saved for later out of your cart (last 200).
  result = api_instance.list_buyer_cart_saved
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart_saved: #{e}"
end
```

#### Using the list_buyer_cart_saved_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerCartResponse>, Integer, Hash)> list_buyer_cart_saved_with_http_info

```ruby
begin
  # Items you saved for later out of your cart (last 200).
  data, status_code, headers = api_instance.list_buyer_cart_saved_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerCartResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cart_saved_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cases

> <ListBuyerCasesResponse> list_buyer_cases(opts)

Resolution center — every case you opened (returns, not received, problems).

`yourTurn: true` means the case is waiting on you. `meta.counts` covers every case, not just this status.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  status: 'open' # String | open = still being worked; closed = resolved or withdrawn; all = both.
}

begin
  # Resolution center — every case you opened (returns, not received, problems).
  result = api_instance.list_buyer_cases(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cases: #{e}"
end
```

#### Using the list_buyer_cases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerCasesResponse>, Integer, Hash)> list_buyer_cases_with_http_info(opts)

```ruby
begin
  # Resolution center — every case you opened (returns, not received, problems).
  data, status_code, headers = api_instance.list_buyer_cases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerCasesResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | open &#x3D; still being worked; closed &#x3D; resolved or withdrawn; all &#x3D; both. | [optional][default to &#39;open&#39;] |

### Return type

**ListBuyerCasesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_cashback

> <ListBuyerCashbackResponse> list_buyer_cashback(opts)

Your Scout cashback — pending, confirmed, paid.

Newest first. `pending` means an order was reported and the retailer's return window has not closed; nothing is paid until it does. `expired` means a click was never reported as converting, which is the ordinary outcome for most clicks.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  status: 'pending', # String | 
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # Your Scout cashback — pending, confirmed, paid.
  result = api_instance.list_buyer_cashback(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cashback: #{e}"
end
```

#### Using the list_buyer_cashback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerCashbackResponse>, Integer, Hash)> list_buyer_cashback_with_http_info(opts)

```ruby
begin
  # Your Scout cashback — pending, confirmed, paid.
  data, status_code, headers = api_instance.list_buyer_cashback_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerCashbackResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_cashback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListBuyerCashbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_catalog_listing_videos

> <ListBuyerCatalogListingVideosResponse> list_buyer_catalog_listing_videos(slug)

Videos the seller recorded for this item on request, newest first, with the question each one answers.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Videos the seller recorded for this item on request, newest first, with the question each one answers.
  result = api_instance.list_buyer_catalog_listing_videos(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_catalog_listing_videos: #{e}"
end
```

#### Using the list_buyer_catalog_listing_videos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerCatalogListingVideosResponse>, Integer, Hash)> list_buyer_catalog_listing_videos_with_http_info(slug)

```ruby
begin
  # Videos the seller recorded for this item on request, newest first, with the question each one answers.
  data, status_code, headers = api_instance.list_buyer_catalog_listing_videos_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerCatalogListingVideosResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_catalog_listing_videos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListBuyerCatalogListingVideosResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_clubs

> <ListBuyerClubsResponse> list_buyer_clubs

Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.
  result = api_instance.list_buyer_clubs
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_clubs: #{e}"
end
```

#### Using the list_buyer_clubs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerClubsResponse>, Integer, Hash)> list_buyer_clubs_with_http_info

```ruby
begin
  # Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.
  data, status_code, headers = api_instance.list_buyer_clubs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerClubsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_clubs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerClubsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_collection_sets

> <BuyerResponse3> list_buyer_collection_sets

Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.
  result = api_instance.list_buyer_collection_sets
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_collection_sets: #{e}"
end
```

#### Using the list_buyer_collection_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_collection_sets_with_http_info

```ruby
begin
  # Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.
  data, status_code, headers = api_instance.list_buyer_collection_sets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_collection_sets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_consolidations

> <BuyerResponse3> list_buyer_consolidations

Your ship-together orders: parcels at the hub, and the one box out.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your ship-together orders: parcels at the hub, and the one box out.
  result = api_instance.list_buyer_consolidations
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_consolidations: #{e}"
end
```

#### Using the list_buyer_consolidations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_consolidations_with_http_info

```ruby
begin
  # Your ship-together orders: parcels at the hub, and the one box out.
  data, status_code, headers = api_instance.list_buyer_consolidations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_consolidations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_conversation_guests

> <ListBuyerWishlistMembersResponse> list_buyer_conversation_guests(id)

Guests in a chat.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Guests in a chat.
  result = api_instance.list_buyer_conversation_guests(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_conversation_guests: #{e}"
end
```

#### Using the list_buyer_conversation_guests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerWishlistMembersResponse>, Integer, Hash)> list_buyer_conversation_guests_with_http_info(id)

```ruby
begin
  # Guests in a chat.
  data, status_code, headers = api_instance.list_buyer_conversation_guests_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerWishlistMembersResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_conversation_guests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBuyerWishlistMembersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_feedback

> <ListBuyerFeedbackResponse> list_buyer_feedback

Feedback you have left sellers, newest first — with the ids you revise by.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Feedback you have left sellers, newest first — with the ids you revise by.
  result = api_instance.list_buyer_feedback
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_feedback: #{e}"
end
```

#### Using the list_buyer_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerFeedbackResponse>, Integer, Hash)> list_buyer_feedback_with_http_info

```ruby
begin
  # Feedback you have left sellers, newest first — with the ids you revise by.
  data, status_code, headers = api_instance.list_buyer_feedback_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerFeedbackResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_feedback_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerFeedbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_feedback_pending

> <ListBuyerFeedbackPendingResponse> list_buyer_feedback_pending

Orders from the last 60 days that are on their way or arrived and still need your feedback.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Orders from the last 60 days that are on their way or arrived and still need your feedback.
  result = api_instance.list_buyer_feedback_pending
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_feedback_pending: #{e}"
end
```

#### Using the list_buyer_feedback_pending_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerFeedbackPendingResponse>, Integer, Hash)> list_buyer_feedback_pending_with_http_info

```ruby
begin
  # Orders from the last 60 days that are on their way or arrived and still need your feedback.
  data, status_code, headers = api_instance.list_buyer_feedback_pending_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerFeedbackPendingResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_feedback_pending_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerFeedbackPendingResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_fit_refs

> <BuyerResponse3> list_buyer_fit_refs

Your saved reference garments for fit comparison.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your saved reference garments for fit comparison.
  result = api_instance.list_buyer_fit_refs
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_fit_refs: #{e}"
end
```

#### Using the list_buyer_fit_refs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_fit_refs_with_http_info

```ruby
begin
  # Your saved reference garments for fit comparison.
  data, status_code, headers = api_instance.list_buyer_fit_refs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_fit_refs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_following_sellers

> <ListBuyerFollowingSellersResponse> list_buyer_following_sellers

Sellers you follow, with how many new listings each has since you last looked.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Sellers you follow, with how many new listings each has since you last looked.
  result = api_instance.list_buyer_following_sellers
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_following_sellers: #{e}"
end
```

#### Using the list_buyer_following_sellers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerFollowingSellersResponse>, Integer, Hash)> list_buyer_following_sellers_with_http_info

```ruby
begin
  # Sellers you follow, with how many new listings each has since you last looked.
  data, status_code, headers = api_instance.list_buyer_following_sellers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerFollowingSellersResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_following_sellers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerFollowingSellersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_gift_card_credit

> <ListBuyerGiftCardCreditResponse> list_buyer_gift_card_credit

Gift card credit on your account, and when it expires.

One row per gift card you redeemed. `meta.giftCreditCents` is the unspent, unexpired gift credit in your Crossly Bucks balance; `meta.nextExpiresAt` is the soonest date any of it lapses. Spending at checkout uses gift credit first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Gift card credit on your account, and when it expires.
  result = api_instance.list_buyer_gift_card_credit
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_card_credit: #{e}"
end
```

#### Using the list_buyer_gift_card_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerGiftCardCreditResponse>, Integer, Hash)> list_buyer_gift_card_credit_with_http_info

```ruby
begin
  # Gift card credit on your account, and when it expires.
  data, status_code, headers = api_instance.list_buyer_gift_card_credit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerGiftCardCreditResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_card_credit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerGiftCardCreditResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_gift_cards

> <ListBuyerGiftCardsResponse> list_buyer_gift_cards

Gift cards you bought, newest first.

Status, recipient and delivery for each card you paid for. The code is masked unless you sent the card to your own email address. Abandoned (unpaid) checkouts are omitted.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Gift cards you bought, newest first.
  result = api_instance.list_buyer_gift_cards
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_cards: #{e}"
end
```

#### Using the list_buyer_gift_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerGiftCardsResponse>, Integer, Hash)> list_buyer_gift_cards_with_http_info

```ruby
begin
  # Gift cards you bought, newest first.
  data, status_code, headers = api_instance.list_buyer_gift_cards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerGiftCardsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_cards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerGiftCardsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_gift_finder

> <ListBuyerGiftFinderResponse> list_buyer_gift_finder

Live listings for a recipient, interest and budget.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Live listings for a recipient, interest and budget.
  result = api_instance.list_buyer_gift_finder
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_finder: #{e}"
end
```

#### Using the list_buyer_gift_finder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerGiftFinderResponse>, Integer, Hash)> list_buyer_gift_finder_with_http_info

```ruby
begin
  # Live listings for a recipient, interest and budget.
  data, status_code, headers = api_instance.list_buyer_gift_finder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerGiftFinderResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_finder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerGiftFinderResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_gift_sent

> <ListBuyerGiftSentResponse> list_buyer_gift_sent

Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with `gift` on checkout.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with `gift` on checkout.
  result = api_instance.list_buyer_gift_sent
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_sent: #{e}"
end
```

#### Using the list_buyer_gift_sent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerGiftSentResponse>, Integer, Hash)> list_buyer_gift_sent_with_http_info

```ruby
begin
  # Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with `gift` on checkout.
  data, status_code, headers = api_instance.list_buyer_gift_sent_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerGiftSentResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_gift_sent_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerGiftSentResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_hotspots

> <ListBuyerHotspotsResponse> list_buyer_hotspots

Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).
  result = api_instance.list_buyer_hotspots
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_hotspots: #{e}"
end
```

#### Using the list_buyer_hotspots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerHotspotsResponse>, Integer, Hash)> list_buyer_hotspots_with_http_info

```ruby
begin
  # Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).
  data, status_code, headers = api_instance.list_buyer_hotspots_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerHotspotsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_hotspots_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerHotspotsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_hunts

> <ListBuyerHuntsResponse> list_buyer_hunts

Your buyer-agent hunts and what they did.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your buyer-agent hunts and what they did.
  result = api_instance.list_buyer_hunts
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_hunts: #{e}"
end
```

#### Using the list_buyer_hunts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerHuntsResponse>, Integer, Hash)> list_buyer_hunts_with_http_info

```ruby
begin
  # Your buyer-agent hunts and what they did.
  data, status_code, headers = api_instance.list_buyer_hunts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerHuntsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_hunts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerHuntsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_instant_offers

> <BuyerResponse3> list_buyer_instant_offers

Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.
  result = api_instance.list_buyer_instant_offers
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_instant_offers: #{e}"
end
```

#### Using the list_buyer_instant_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_instant_offers_with_http_info

```ruby
begin
  # Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.
  data, status_code, headers = api_instance.list_buyer_instant_offers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_instant_offers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_layaways

> <ListBuyerLayawaysResponse> list_buyer_layaways

Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.
  result = api_instance.list_buyer_layaways
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_layaways: #{e}"
end
```

#### Using the list_buyer_layaways_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerLayawaysResponse>, Integer, Hash)> list_buyer_layaways_with_http_info

```ruby
begin
  # Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.
  data, status_code, headers = api_instance.list_buyer_layaways_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerLayawaysResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_layaways_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerLayawaysResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_listing_quick_questions

> <ListBuyerListingQuickQuestionsResponse> list_buyer_listing_quick_questions(slug)

One-tap questions this listing supports; send one as `quick` on a message.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # One-tap questions this listing supports; send one as `quick` on a message.
  result = api_instance.list_buyer_listing_quick_questions(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_listing_quick_questions: #{e}"
end
```

#### Using the list_buyer_listing_quick_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerListingQuickQuestionsResponse>, Integer, Hash)> list_buyer_listing_quick_questions_with_http_info(slug)

```ruby
begin
  # One-tap questions this listing supports; send one as `quick` on a message.
  data, status_code, headers = api_instance.list_buyer_listing_quick_questions_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerListingQuickQuestionsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_listing_quick_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListBuyerListingQuickQuestionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_listing_seller_reviews

> <ListBuyerListingSellerReviewsResponse> list_buyer_listing_seller_reviews(slug)

The seller’s public reviews: summary, text, photos, replies.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # The seller’s public reviews: summary, text, photos, replies.
  result = api_instance.list_buyer_listing_seller_reviews(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_listing_seller_reviews: #{e}"
end
```

#### Using the list_buyer_listing_seller_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerListingSellerReviewsResponse>, Integer, Hash)> list_buyer_listing_seller_reviews_with_http_info(slug)

```ruby
begin
  # The seller’s public reviews: summary, text, photos, replies.
  data, status_code, headers = api_instance.list_buyer_listing_seller_reviews_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerListingSellerReviewsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_listing_seller_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListBuyerListingSellerReviewsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_live_shipments

> <ListBuyerLiveShipmentsResponse> list_buyer_live_shipments

Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).
  result = api_instance.list_buyer_live_shipments
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_live_shipments: #{e}"
end
```

#### Using the list_buyer_live_shipments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerLiveShipmentsResponse>, Integer, Hash)> list_buyer_live_shipments_with_http_info

```ruby
begin
  # Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).
  data, status_code, headers = api_instance.list_buyer_live_shipments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerLiveShipmentsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_live_shipments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerLiveShipmentsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_live_stream_lineup

> <ListBuyerLiveStreamLineupResponse> list_buyer_live_stream_lineup(id)

What a live show will sell, in order: each item, its price, and whether it is still available.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # What a live show will sell, in order: each item, its price, and whether it is still available.
  result = api_instance.list_buyer_live_stream_lineup(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_live_stream_lineup: #{e}"
end
```

#### Using the list_buyer_live_stream_lineup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerLiveStreamLineupResponse>, Integer, Hash)> list_buyer_live_stream_lineup_with_http_info(id)

```ruby
begin
  # What a live show will sell, in order: each item, its price, and whether it is still available.
  data, status_code, headers = api_instance.list_buyer_live_stream_lineup_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerLiveStreamLineupResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_live_stream_lineup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBuyerLiveStreamLineupResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_market_bids

> <BuyerResponse3> list_buyer_market_bids

Your resting market bids.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your resting market bids.
  result = api_instance.list_buyer_market_bids
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_market_bids: #{e}"
end
```

#### Using the list_buyer_market_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_market_bids_with_http_info

```ruby
begin
  # Your resting market bids.
  data, status_code, headers = api_instance.list_buyer_market_bids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_market_bids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_market_watches

> <BuyerResponse3> list_buyer_market_watches

Market variants you watch, with the price you are waiting for.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Market variants you watch, with the price you are waiting for.
  result = api_instance.list_buyer_market_watches
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_market_watches: #{e}"
end
```

#### Using the list_buyer_market_watches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_market_watches_with_http_info

```ruby
begin
  # Market variants you watch, with the price you are waiting for.
  data, status_code, headers = api_instance.list_buyer_market_watches_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_market_watches_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_offers

> <ListBuyerOffersResponse> list_buyer_offers(opts)

Offers you have made, newest first (last 100).

`awaitingBuyer: true` is a seller counter waiting on you — answer it with POST /v1/buyer/offers/{id}/respond. `redeemable: true` is an accepted offer you can pay for on Crossly. Amounts are integer cents.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  awaiting_buyer: 'true' # String | true returns only seller counters waiting on you.
}

begin
  # Offers you have made, newest first (last 100).
  result = api_instance.list_buyer_offers(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_offers: #{e}"
end
```

#### Using the list_buyer_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerOffersResponse>, Integer, Hash)> list_buyer_offers_with_http_info(opts)

```ruby
begin
  # Offers you have made, newest first (last 100).
  data, status_code, headers = api_instance.list_buyer_offers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerOffersResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **awaiting_buyer** | **String** | true returns only seller counters waiting on you. | [optional] |

### Return type

**ListBuyerOffersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_orders

> <ListBuyerOrdersResponse> list_buyer_orders(opts)

What you have bought on Crossly, newest first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
opts = {
  page: 56, # Integer | 
  limit: 56 # Integer | 
}

begin
  # What you have bought on Crossly, newest first.
  result = api_instance.list_buyer_orders(opts)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_orders: #{e}"
end
```

#### Using the list_buyer_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerOrdersResponse>, Integer, Hash)> list_buyer_orders_with_http_info(opts)

```ruby
begin
  # What you have bought on Crossly, newest first.
  data, status_code, headers = api_instance.list_buyer_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerOrdersResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 25] |

### Return type

**ListBuyerOrdersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_pack_openings

> <ListBuyerPackOpeningsResponse> list_buyer_pack_openings

Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).
  result = api_instance.list_buyer_pack_openings
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_pack_openings: #{e}"
end
```

#### Using the list_buyer_pack_openings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerPackOpeningsResponse>, Integer, Hash)> list_buyer_pack_openings_with_http_info

```ruby
begin
  # Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).
  data, status_code, headers = api_instance.list_buyer_pack_openings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerPackOpeningsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_pack_openings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerPackOpeningsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_packs

> <ListBuyerPacksResponse> list_buyer_packs

Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.
  result = api_instance.list_buyer_packs
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_packs: #{e}"
end
```

#### Using the list_buyer_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerPacksResponse>, Integer, Hash)> list_buyer_packs_with_http_info

```ruby
begin
  # Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.
  data, status_code, headers = api_instance.list_buyer_packs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerPacksResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_packs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerPacksResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_parties

> <ListBuyerPartiesResponse> list_buyer_parties

Themed shopping parties, live and upcoming.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Themed shopping parties, live and upcoming.
  result = api_instance.list_buyer_parties
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_parties: #{e}"
end
```

#### Using the list_buyer_parties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerPartiesResponse>, Integer, Hash)> list_buyer_parties_with_http_info

```ruby
begin
  # Themed shopping parties, live and upcoming.
  data, status_code, headers = api_instance.list_buyer_parties_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerPartiesResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_parties_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerPartiesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_party_listings

> <BuyerResponse3> list_buyer_party_listings(slug)

Listings shared to a party, featured first.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
slug = 'slug_example' # String | 

begin
  # Listings shared to a party, featured first.
  result = api_instance.list_buyer_party_listings(slug)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_party_listings: #{e}"
end
```

#### Using the list_buyer_party_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_party_listings_with_http_info(slug)

```ruby
begin
  # Listings shared to a party, featured first.
  data, status_code, headers = api_instance.list_buyer_party_listings_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_party_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_pickup_points

> <BuyerResponse3> list_buyer_pickup_points

Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as `pickupPoint` to POST /v1/buyer/checkout.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as `pickupPoint` to POST /v1/buyer/checkout.
  result = api_instance.list_buyer_pickup_points
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_pickup_points: #{e}"
end
```

#### Using the list_buyer_pickup_points_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_pickup_points_with_http_info

```ruby
begin
  # Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as `pickupPoint` to POST /v1/buyer/checkout.
  data, status_code, headers = api_instance.list_buyer_pickup_points_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_pickup_points_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_protection_plans

> <ListBuyerProtectionPlansResponse> list_buyer_protection_plans

Your protection plans (bought at checkout with `protection`): status, term, coverage, contract id, and any refund.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your protection plans (bought at checkout with `protection`): status, term, coverage, contract id, and any refund.
  result = api_instance.list_buyer_protection_plans
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_protection_plans: #{e}"
end
```

#### Using the list_buyer_protection_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerProtectionPlansResponse>, Integer, Hash)> list_buyer_protection_plans_with_http_info

```ruby
begin
  # Your protection plans (bought at checkout with `protection`): status, term, coverage, contract id, and any refund.
  data, status_code, headers = api_instance.list_buyer_protection_plans_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerProtectionPlansResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_protection_plans_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerProtectionPlansResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_registries

> <ListBuyerRegistriesResponse> list_buyer_registries

Your gift registries.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your gift registries.
  result = api_instance.list_buyer_registries
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registries: #{e}"
end
```

#### Using the list_buyer_registries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerRegistriesResponse>, Integer, Hash)> list_buyer_registries_with_http_info

```ruby
begin
  # Your gift registries.
  data, status_code, headers = api_instance.list_buyer_registries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerRegistriesResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerRegistriesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_registry_gifts

> <ListBuyerRegistryGiftsResponse> list_buyer_registry_gifts(id)

Your thank-you list: who bought what off the registry, and whether you have thanked them.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Your thank-you list: who bought what off the registry, and whether you have thanked them.
  result = api_instance.list_buyer_registry_gifts(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registry_gifts: #{e}"
end
```

#### Using the list_buyer_registry_gifts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerRegistryGiftsResponse>, Integer, Hash)> list_buyer_registry_gifts_with_http_info(id)

```ruby
begin
  # Your thank-you list: who bought what off the registry, and whether you have thanked them.
  data, status_code, headers = api_instance.list_buyer_registry_gifts_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerRegistryGiftsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registry_gifts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBuyerRegistryGiftsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_registry_search

> <ListBuyerRegistrySearchResponse> list_buyer_registry_search

Find a registry by its name or the registrant’s name. Current and recent registries only.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Find a registry by its name or the registrant’s name. Current and recent registries only.
  result = api_instance.list_buyer_registry_search
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registry_search: #{e}"
end
```

#### Using the list_buyer_registry_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerRegistrySearchResponse>, Integer, Hash)> list_buyer_registry_search_with_http_info

```ruby
begin
  # Find a registry by its name or the registrant’s name. Current and recent registries only.
  data, status_code, headers = api_instance.list_buyer_registry_search_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerRegistrySearchResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_registry_search_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerRegistrySearchResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_rentals

> <ListBuyerRentalsResponse> list_buyer_rentals

Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.
  result = api_instance.list_buyer_rentals
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_rentals: #{e}"
end
```

#### Using the list_buyer_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerRentalsResponse>, Integer, Hash)> list_buyer_rentals_with_http_info

```ruby
begin
  # Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.
  data, status_code, headers = api_instance.list_buyer_rentals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerRentalsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_rentals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerRentalsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_size_memory_prompts

> <ListBuyerSizeMemoryPromptsResponse> list_buyer_size_memory_prompts

Delivered orders with a size that you haven’t said how they fit (the last 60 days).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Delivered orders with a size that you haven’t said how they fit (the last 60 days).
  result = api_instance.list_buyer_size_memory_prompts
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_size_memory_prompts: #{e}"
end
```

#### Using the list_buyer_size_memory_prompts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerSizeMemoryPromptsResponse>, Integer, Hash)> list_buyer_size_memory_prompts_with_http_info

```ruby
begin
  # Delivered orders with a size that you haven’t said how they fit (the last 60 days).
  data, status_code, headers = api_instance.list_buyer_size_memory_prompts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerSizeMemoryPromptsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_size_memory_prompts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerSizeMemoryPromptsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_size_memory_sizes

> <ListBuyerSizeMemorySizesResponse> list_buyer_size_memory_sizes

The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.
  result = api_instance.list_buyer_size_memory_sizes
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_size_memory_sizes: #{e}"
end
```

#### Using the list_buyer_size_memory_sizes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerSizeMemorySizesResponse>, Integer, Hash)> list_buyer_size_memory_sizes_with_http_info

```ruby
begin
  # The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.
  data, status_code, headers = api_instance.list_buyer_size_memory_sizes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerSizeMemorySizesResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_size_memory_sizes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerSizeMemorySizesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_splits

> <BuyerResponse3> list_buyer_splits

Purchases you split, with each share’s status.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Purchases you split, with each share’s status.
  result = api_instance.list_buyer_splits
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_splits: #{e}"
end
```

#### Using the list_buyer_splits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse3>, Integer, Hash)> list_buyer_splits_with_http_info

```ruby
begin
  # Purchases you split, with each share’s status.
  data, status_code, headers = api_instance.list_buyer_splits_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse3>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_splits_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_subscriptions

> <ListBuyerSubscriptionsResponse> list_buyer_subscriptions

Your subscribe & save standing orders.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your subscribe & save standing orders.
  result = api_instance.list_buyer_subscriptions
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_subscriptions: #{e}"
end
```

#### Using the list_buyer_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerSubscriptionsResponse>, Integer, Hash)> list_buyer_subscriptions_with_http_info

```ruby
begin
  # Your subscribe & save standing orders.
  data, status_code, headers = api_instance.list_buyer_subscriptions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerSubscriptionsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_subscriptions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerSubscriptionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_together

> <ListBuyerTogetherResponse> list_buyer_together

Shop-together rooms you are in.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Shop-together rooms you are in.
  result = api_instance.list_buyer_together
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_together: #{e}"
end
```

#### Using the list_buyer_together_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerTogetherResponse>, Integer, Hash)> list_buyer_together_with_http_info

```ruby
begin
  # Shop-together rooms you are in.
  data, status_code, headers = api_instance.list_buyer_together_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerTogetherResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_together_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_total_requests

> <ListBuyerTotalRequestsResponse> list_buyer_total_requests

Your combined-shipping total requests, newest per seller.

A seller answers a request by quoting one shipping figure for every item of theirs in your cart. `matchesCart: false` means the cart changed since, so the quote will not apply at checkout.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your combined-shipping total requests, newest per seller.
  result = api_instance.list_buyer_total_requests
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_total_requests: #{e}"
end
```

#### Using the list_buyer_total_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerTotalRequestsResponse>, Integer, Hash)> list_buyer_total_requests_with_http_info

```ruby
begin
  # Your combined-shipping total requests, newest per seller.
  data, status_code, headers = api_instance.list_buyer_total_requests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerTotalRequestsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_total_requests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerTotalRequestsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_try_ons

> <ListBuyerTryOnsResponse> list_buyer_try_ons

Your AI try-ons: the rendered images (labelled AI-generated wherever shown).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your AI try-ons: the rendered images (labelled AI-generated wherever shown).
  result = api_instance.list_buyer_try_ons
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_try_ons: #{e}"
end
```

#### Using the list_buyer_try_ons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerTryOnsResponse>, Integer, Hash)> list_buyer_try_ons_with_http_info

```ruby
begin
  # Your AI try-ons: the rendered images (labelled AI-generated wherever shown).
  data, status_code, headers = api_instance.list_buyer_try_ons_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerTryOnsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_try_ons_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerTryOnsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_vault

> <ListBuyerVaultResponse> list_buyer_vault

What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.
  result = api_instance.list_buyer_vault
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault: #{e}"
end
```

#### Using the list_buyer_vault_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVaultResponse>, Integer, Hash)> list_buyer_vault_with_http_info

```ruby
begin
  # What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.
  data, status_code, headers = api_instance.list_buyer_vault_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVaultResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVaultResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_vault_market_holdings

> <ListBuyerVaultMarketHoldingsResponse> list_buyer_vault_market_holdings

Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&L and where it stands (stored, listed, lent, pledged, at the grader); `meta` carries the totals and the units you have out on loan.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&L and where it stands (stored, listed, lent, pledged, at the grader); `meta` carries the totals and the units you have out on loan.
  result = api_instance.list_buyer_vault_market_holdings
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_holdings: #{e}"
end
```

#### Using the list_buyer_vault_market_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVaultMarketHoldingsResponse>, Integer, Hash)> list_buyer_vault_market_holdings_with_http_info

```ruby
begin
  # Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&L and where it stands (stored, listed, lent, pledged, at the grader); `meta` carries the totals and the units you have out on loan.
  data, status_code, headers = api_instance.list_buyer_vault_market_holdings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVaultMarketHoldingsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_holdings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVaultMarketHoldingsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_vault_market_indexes

> <ListBuyerVaultMarketIndexesResponse> list_buyer_vault_market_indexes

Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.
  result = api_instance.list_buyer_vault_market_indexes
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_indexes: #{e}"
end
```

#### Using the list_buyer_vault_market_indexes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVaultMarketIndexesResponse>, Integer, Hash)> list_buyer_vault_market_indexes_with_http_info

```ruby
begin
  # Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.
  data, status_code, headers = api_instance.list_buyer_vault_market_indexes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVaultMarketIndexesResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_indexes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVaultMarketIndexesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_vault_market_instant_exit

> <ListBuyerVaultMarketInstantExitResponse> list_buyer_vault_market_instant_exit

Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.
  result = api_instance.list_buyer_vault_market_instant_exit
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_instant_exit: #{e}"
end
```

#### Using the list_buyer_vault_market_instant_exit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVaultMarketInstantExitResponse>, Integer, Hash)> list_buyer_vault_market_instant_exit_with_http_info

```ruby
begin
  # Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.
  data, status_code, headers = api_instance.list_buyer_vault_market_instant_exit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVaultMarketInstantExitResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_instant_exit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVaultMarketInstantExitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_vault_market_watchlist

> <ListBuyerVaultMarketWatchlistResponse> list_buyer_vault_market_watchlist

The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.
  result = api_instance.list_buyer_vault_market_watchlist
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_watchlist: #{e}"
end
```

#### Using the list_buyer_vault_market_watchlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVaultMarketWatchlistResponse>, Integer, Hash)> list_buyer_vault_market_watchlist_with_http_info

```ruby
begin
  # The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.
  data, status_code, headers = api_instance.list_buyer_vault_market_watchlist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVaultMarketWatchlistResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_vault_market_watchlist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVaultMarketWatchlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_video_requests

> <ListBuyerVideoRequestsResponse> list_buyer_video_requests

Your video requests and their answers.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your video requests and their answers.
  result = api_instance.list_buyer_video_requests
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_video_requests: #{e}"
end
```

#### Using the list_buyer_video_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerVideoRequestsResponse>, Integer, Hash)> list_buyer_video_requests_with_http_info

```ruby
begin
  # Your video requests and their answers.
  data, status_code, headers = api_instance.list_buyer_video_requests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerVideoRequestsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_video_requests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerVideoRequestsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_wishlist_items

> <ListBuyerWishlistItemsResponse> list_buyer_wishlist_items(id)

What is on one wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # What is on one wishlist.
  result = api_instance.list_buyer_wishlist_items(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_items: #{e}"
end
```

#### Using the list_buyer_wishlist_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerWishlistItemsResponse>, Integer, Hash)> list_buyer_wishlist_items_with_http_info(id)

```ruby
begin
  # What is on one wishlist.
  data, status_code, headers = api_instance.list_buyer_wishlist_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerWishlistItemsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBuyerWishlistItemsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_wishlist_members

> <ListBuyerWishlistMembersResponse> list_buyer_wishlist_members(id)

Co-editors of a shared wishlist.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Co-editors of a shared wishlist.
  result = api_instance.list_buyer_wishlist_members(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_members: #{e}"
end
```

#### Using the list_buyer_wishlist_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerWishlistMembersResponse>, Integer, Hash)> list_buyer_wishlist_members_with_http_info(id)

```ruby
begin
  # Co-editors of a shared wishlist.
  data, status_code, headers = api_instance.list_buyer_wishlist_members_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerWishlistMembersResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlist_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListBuyerWishlistMembersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_buyer_wishlists

> <ListBuyerWishlistsResponse> list_buyer_wishlists

Your wishlists.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Your wishlists.
  result = api_instance.list_buyer_wishlists
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlists: #{e}"
end
```

#### Using the list_buyer_wishlists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBuyerWishlistsResponse>, Integer, Hash)> list_buyer_wishlists_with_http_info

```ruby
begin
  # Your wishlists.
  data, status_code, headers = api_instance.list_buyer_wishlists_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBuyerWishlistsResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->list_buyer_wishlists_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListBuyerWishlistsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_board

> <BuyerResponse> update_buyer_board(id)

Rename a board, change its description, or make it public / private.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Rename a board, change its description, or make it public / private.
  result = api_instance.update_buyer_board(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_board: #{e}"
end
```

#### Using the update_buyer_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> update_buyer_board_with_http_info(id)

```ruby
begin
  # Rename a board, change its description, or make it public / private.
  data, status_code, headers = api_instance.update_buyer_board_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_board_layout

> <BuyerBoardResponse> update_buyer_board_layout(id)

Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.
  result = api_instance.update_buyer_board_layout(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_board_layout: #{e}"
end
```

#### Using the update_buyer_board_layout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerBoardResponse>, Integer, Hash)> update_buyer_board_layout_with_http_info(id)

```ruby
begin
  # Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.
  data, status_code, headers = api_instance.update_buyer_board_layout_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerBoardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_board_layout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_collection_set_leaderboard

> <UpdateBuyerCollectionSetLeaderboardResponse> update_buyer_collection_set_leaderboard

Show or hide yourself (by your public handle) on set leaderboards.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new

begin
  # Show or hide yourself (by your public handle) on set leaderboards.
  result = api_instance.update_buyer_collection_set_leaderboard
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_collection_set_leaderboard: #{e}"
end
```

#### Using the update_buyer_collection_set_leaderboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBuyerCollectionSetLeaderboardResponse>, Integer, Hash)> update_buyer_collection_set_leaderboard_with_http_info

```ruby
begin
  # Show or hide yourself (by your public handle) on set leaderboards.
  data, status_code, headers = api_instance.update_buyer_collection_set_leaderboard_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBuyerCollectionSetLeaderboardResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_collection_set_leaderboard_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateBuyerCollectionSetLeaderboardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_feedback

> <BuyerResponse> update_buyer_feedback(id, update_buyer_feedback_request)

Revise feedback you left, within 60 days.

Replaces the stars and comment; detailed ratings you omit stay as they were.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
update_buyer_feedback_request = CrosslyBuyer::UpdateBuyerFeedbackRequest.new({rating: 37}) # UpdateBuyerFeedbackRequest | 

begin
  # Revise feedback you left, within 60 days.
  result = api_instance.update_buyer_feedback(id, update_buyer_feedback_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_feedback: #{e}"
end
```

#### Using the update_buyer_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> update_buyer_feedback_with_http_info(id, update_buyer_feedback_request)

```ruby
begin
  # Revise feedback you left, within 60 days.
  data, status_code, headers = api_instance.update_buyer_feedback_with_http_info(id, update_buyer_feedback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_feedback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **update_buyer_feedback_request** | **UpdateBuyerFeedbackRequest** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_buyer_hunt

> <BuyerResponse> update_buyer_hunt(id)

Pause, resume or stop a hunt.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Pause, resume or stop a hunt.
  result = api_instance.update_buyer_hunt(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_hunt: #{e}"
end
```

#### Using the update_buyer_hunt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> update_buyer_hunt_with_http_info(id)

```ruby
begin
  # Pause, resume or stop a hunt.
  data, status_code, headers = api_instance.update_buyer_hunt_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_hunt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_purchase_story

> <BuyerResponse> update_buyer_purchase_story(id)

Write your owner story (280 characters); it travels with the item if you resell it.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Write your owner story (280 characters); it travels with the item if you resell it.
  result = api_instance.update_buyer_purchase_story(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_purchase_story: #{e}"
end
```

#### Using the update_buyer_purchase_story_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> update_buyer_purchase_story_with_http_info(id)

```ruby
begin
  # Write your owner story (280 characters); it travels with the item if you resell it.
  data, status_code, headers = api_instance.update_buyer_purchase_story_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_purchase_story_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_registry

> <BuyerRegistryResponse> update_buyer_registry(id)

Edit a registry: title, kind, date, message, ship-to address.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Edit a registry: title, kind, date, message, ship-to address.
  result = api_instance.update_buyer_registry(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_registry: #{e}"
end
```

#### Using the update_buyer_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerRegistryResponse>, Integer, Hash)> update_buyer_registry_with_http_info(id)

```ruby
begin
  # Edit a registry: title, kind, date, message, ship-to address.
  data, status_code, headers = api_instance.update_buyer_registry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerRegistryResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_registry_item

> <UpdateBuyerRegistryItemResponse> update_buyer_registry_item(id, platform_listing_id)

How many of an item you want (1–50).

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 
platform_listing_id = 'platform_listing_id_example' # String | 

begin
  # How many of an item you want (1–50).
  result = api_instance.update_buyer_registry_item(id, platform_listing_id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_registry_item: #{e}"
end
```

#### Using the update_buyer_registry_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBuyerRegistryItemResponse>, Integer, Hash)> update_buyer_registry_item_with_http_info(id, platform_listing_id)

```ruby
begin
  # How many of an item you want (1–50).
  data, status_code, headers = api_instance.update_buyer_registry_item_with_http_info(id, platform_listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBuyerRegistryItemResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_registry_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_listing_id** | **String** |  |  |

### Return type

**UpdateBuyerRegistryItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_subscription

> <BuyerResponse> update_buyer_subscription(id)

Pause, resume, skip the next delivery, change the interval, or cancel.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = 'id_example' # String | 

begin
  # Pause, resume, skip the next delivery, change the interval, or cancel.
  result = api_instance.update_buyer_subscription(id)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_subscription: #{e}"
end
```

#### Using the update_buyer_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerResponse>, Integer, Hash)> update_buyer_subscription_with_http_info(id)

```ruby
begin
  # Pause, resume, skip the next delivery, change the interval, or cancel.
  data, status_code, headers = api_instance.update_buyer_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buyer_wishlist

> <UpdateBuyerWishlistResponse> update_buyer_wishlist(id, update_buyer_wishlist_request)

Rename a wishlist, or make it public / private.

A public list can be opened by anyone holding its share link; making it private again stops that link working.

### Examples

```ruby
require 'time'
require 'crossly_buyer'
# setup authorization
CrosslyBuyer.configure do |config|
  # Configure Bearer authorization: BuyerOAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CrosslyBuyer::BuyerApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id.
update_buyer_wishlist_request = CrosslyBuyer::UpdateBuyerWishlistRequest.new # UpdateBuyerWishlistRequest | 

begin
  # Rename a wishlist, or make it public / private.
  result = api_instance.update_buyer_wishlist(id, update_buyer_wishlist_request)
  p result
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_wishlist: #{e}"
end
```

#### Using the update_buyer_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBuyerWishlistResponse>, Integer, Hash)> update_buyer_wishlist_with_http_info(id, update_buyer_wishlist_request)

```ruby
begin
  # Rename a wishlist, or make it public / private.
  data, status_code, headers = api_instance.update_buyer_wishlist_with_http_info(id, update_buyer_wishlist_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBuyerWishlistResponse>
rescue CrosslyBuyer::ApiError => e
  puts "Error when calling BuyerApi->update_buyer_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id. |  |
| **update_buyer_wishlist_request** | **UpdateBuyerWishlistRequest** |  |  |

### Return type

**UpdateBuyerWishlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

