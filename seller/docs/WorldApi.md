# Crossly::WorldApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_spatial_invite_accept**](WorldApi.md#create_spatial_invite_accept) | **POST** /v1/spatial/invites/accept | Redeem an invite code (dashes optional); returns the room it opens. |
| [**create_spatial_property_lease_withdraw**](WorldApi.md#create_spatial_property_lease_withdraw) | **POST** /v1/spatial/property/leases/{id}/withdraw | Withdraw a lease offer nobody has accepted yet. |
| [**create_spatial_scene**](WorldApi.md#create_spatial_scene) | **POST** /v1/spatial/scenes | Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public. |
| [**create_spatial_scene_grant**](WorldApi.md#create_spatial_scene_grant) | **POST** /v1/spatial/scenes/{id}/grants | Let a specific user into one of your rooms (visitor or staff), no code needed. |
| [**create_spatial_scene_invite**](WorldApi.md#create_spatial_scene_invite) | **POST** /v1/spatial/scenes/{id}/invites | Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored. |
| [**create_spatial_scene_node**](WorldApi.md#create_spatial_scene_node) | **POST** /v1/spatial/scenes/{id}/nodes | Add a unit (rack, shelf, bin) to one of your warehouse rooms. |
| [**create_spatial_scene_place**](WorldApi.md#create_spatial_scene_place) | **POST** /v1/spatial/scenes/{id}/place | Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index. |
| [**create_spatial_scene_rename**](WorldApi.md#create_spatial_scene_rename) | **POST** /v1/spatial/scenes/{id}/rename | Rename one of your rooms. |
| [**create_spatial_scene_shop_place**](WorldApi.md#create_spatial_scene_shop_place) | **POST** /v1/spatial/scenes/{id}/shop/place | Place an inventory item in a section and display of your shop room. |
| [**create_spatial_scene_unpin**](WorldApi.md#create_spatial_scene_unpin) | **POST** /v1/spatial/scenes/{id}/unpin | Clear every pin in one of your rooms, so it arranges itself again. |
| [**create_spatial_scene_visibility**](WorldApi.md#create_spatial_scene_visibility) | **POST** /v1/spatial/scenes/{id}/visibility | Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable). |
| [**create_spatial_scene_warehouse_stock**](WorldApi.md#create_spatial_scene_warehouse_stock) | **POST** /v1/spatial/scenes/{id}/warehouse/stock | Put an inventory item (or unit) on a rack in one of your warehouse rooms. |
| [**create_spatial_shop_neighbourhood**](WorldApi.md#create_spatial_shop_neighbourhood) | **POST** /v1/spatial/shop/neighbourhood | Move your shop to another neighbourhood (by slug). |
| [**create_spatial_street_apply**](WorldApi.md#create_spatial_street_apply) | **POST** /v1/spatial/streets/{slug}/apply | Ask to open your shop on a street whose owner reviews applications. |
| [**create_spatial_street_invite**](WorldApi.md#create_spatial_street_invite) | **POST** /v1/spatial/streets/{slug}/invite | Invite a shop (by its slug) to open on a street you own. |
| [**create_world_avatar_equip**](WorldApi.md#create_world_avatar_equip) | **POST** /v1/world/avatar/equip | Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change. |
| [**create_world_avatar_unequip**](WorldApi.md#create_world_avatar_unequip) | **POST** /v1/world/avatar/unequip | Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change. |
| [**create_world_avatar_wearable**](WorldApi.md#create_world_avatar_wearable) | **POST** /v1/world/avatar/wearables | Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it. |
| [**create_world_contest**](WorldApi.md#create_world_contest) | **POST** /v1/world/contests | Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs. |
| [**create_world_contest_entry_settle_payment**](WorldApi.md#create_world_contest_entry_settle_payment) | **POST** /v1/world/contests/entries/{id}/settle-payment | Read the fee of a paid entry back from Stripe and settle it (safe to repeat). |
| [**create_world_contest_join**](WorldApi.md#create_world_contest_join) | **POST** /v1/world/contests/{id}/join | Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee. |
| [**create_world_convention**](WorldApi.md#create_world_convention) | **POST** /v1/world/conventions | Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points). |
| [**create_world_convention_accept**](WorldApi.md#create_world_convention_accept) | **POST** /v1/world/conventions/{id}/accept | Accept: your own invitation (no body), or, as host, an application (username). |
| [**create_world_convention_apply**](WorldApi.md#create_world_convention_apply) | **POST** /v1/world/conventions/{id}/apply | Ask for a table at a convention. |
| [**create_world_convention_invite**](WorldApi.md#create_world_convention_invite) | **POST** /v1/world/conventions/{id}/invite | Invite a seller (by shop handle) to a convention you host. |
| [**create_world_convention_paid**](WorldApi.md#create_world_convention_paid) | **POST** /v1/world/conventions/{id}/paid | As host, record that a seller (username) paid their table fee off-platform. Moves no money. |
| [**create_world_convention_withdraw**](WorldApi.md#create_world_convention_withdraw) | **POST** /v1/world/conventions/{id}/withdraw | Withdraw your table or decline your invitation; as host, decline someone (username). |
| [**create_world_crew**](WorldApi.md#create_world_crew) | **POST** /v1/world/crews | Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members&#39; nameplates) }. Answers its id and join code. 409 when you are already in a crew. |
| [**create_world_crew_chat**](WorldApi.md#create_world_crew_chat) | **POST** /v1/world/crew/chat | Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew. |
| [**create_world_crew_join**](WorldApi.md#create_world_crew_join) | **POST** /v1/world/crews/join | Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30). |
| [**create_world_crew_leave**](WorldApi.md#create_world_crew_leave) | **POST** /v1/world/crews/leave | Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds. |
| [**create_world_decor_design**](WorldApi.md#create_world_decor_design) | **POST** /v1/world/decor/designs | Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it. |
| [**create_world_decor_design_submit**](WorldApi.md#create_world_decor_design_submit) | **POST** /v1/world/decor/designs/{id}/submit | Send one of your decor designs to the review queue. |
| [**create_world_decor_retract**](WorldApi.md#create_world_decor_retract) | **POST** /v1/world/decor/retract | Take a placed decor piece back into your inventory; answers the inventory after. |
| [**create_world_dm**](WorldApi.md#create_world_dm) | **POST** /v1/world/dms/{userId} | Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly. |
| [**create_world_follow**](WorldApi.md#create_world_follow) | **POST** /v1/world/follows/{userId} | Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent. |
| [**create_world_friend_invite**](WorldApi.md#create_world_friend_invite) | **POST** /v1/world/friends/{userId}/invite | \&quot;Join me\&quot;: send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute. |
| [**create_world_game_package**](WorldApi.md#create_world_game_package) | **POST** /v1/world/games/packages | Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person. |
| [**create_world_game_package_check**](WorldApi.md#create_world_game_package_check) | **POST** /v1/world/games/packages/check | Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit. |
| [**create_world_game_rating**](WorldApi.md#create_world_game_rating) | **POST** /v1/world/games/{id}/rating | Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it. |
| [**create_world_game_report**](WorldApi.md#create_world_game_report) | **POST** /v1/world/games/{id}/report | Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who. |
| [**create_world_game_store_checkout**](WorldApi.md#create_world_game_store_checkout) | **POST** /v1/world/games/{id}/store/{item}/checkout | Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds. |
| [**create_world_grail_match**](WorldApi.md#create_world_grail_match) | **POST** /v1/world/grails/match | Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only. |
| [**create_world_hall_loan**](WorldApi.md#create_world_hall_loan) | **POST** /v1/world/hall/loans | Lend a piece from your vault to this week&#39;s Hall of Grails exhibition: { vaultItemId, credit: &#39;name&#39; | &#39;anonymous&#39; }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves. |
| [**create_world_home_ask**](WorldApi.md#create_world_home_ask) | **POST** /v1/world/homes/{slug}/ask | Ask a home owner whether they would sell a piece you saw there (an item or a decor piece). |
| [**create_world_home_guestbook**](WorldApi.md#create_world_home_guestbook) | **POST** /v1/world/homes/{slug}/guestbook | Sign a home guestbook (one short line). |
| [**create_world_home_guestbook_report**](WorldApi.md#create_world_home_guestbook_report) | **POST** /v1/world/homes/{slug}/guestbook/{id}/report | Report a guestbook entry to moderation. |
| [**create_world_hunt_start**](WorldApi.md#create_world_hunt_start) | **POST** /v1/world/hunt/start | Start the Great Hunt this season by reading its first riddle (the Copper key&#39;s). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running. |
| [**create_world_interactive_asset**](WorldApi.md#create_world_interactive_asset) | **POST** /v1/world/interactive/assets | Upload one asset for your designs: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64. Answers its sha256 and the path to reference from MML. |
| [**create_world_interactive_design**](WorldApi.md#create_world_interactive_design) | **POST** /v1/world/interactive/designs | Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version. |
| [**create_world_interactive_design_check**](WorldApi.md#create_world_interactive_design_check) | **POST** /v1/world/interactive/designs/{id}/check | Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person. |
| [**create_world_interactive_design_preview**](WorldApi.md#create_world_interactive_design_preview) | **POST** /v1/world/interactive/designs/{id}/preview | A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person. |
| [**create_world_interactive_design_submit**](WorldApi.md#create_world_interactive_design_submit) | **POST** /v1/world/interactive/designs/{id}/submit | Freeze the draft as a new version and send it to ops review. Up to 10 a day. |
| [**create_world_interactive_reset**](WorldApi.md#create_world_interactive_reset) | **POST** /v1/world/interactive/reset | Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique). |
| [**create_world_job_appraisal_answer**](WorldApi.md#create_world_job_appraisal_answer) | **POST** /v1/world/jobs/appraisals/{id}/answers | Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it. |
| [**create_world_job_shift_claim**](WorldApi.md#create_world_job_shift_claim) | **POST** /v1/world/jobs/shifts/{id}/claim | Claim an open shift. You work it by being in the place while it runs. |
| [**create_world_job_shift_release**](WorldApi.md#create_world_job_shift_release) | **POST** /v1/world/jobs/shifts/{id}/release | Give a shift you claimed back to the board. |
| [**create_world_outfit**](WorldApi.md#create_world_outfit) | **POST** /v1/world/outfits | Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6. |
| [**create_world_outfit_apply**](WorldApi.md#create_world_outfit_apply) | **POST** /v1/world/outfits/{id}/apply | Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money. |
| [**create_world_party**](WorldApi.md#create_world_party) | **POST** /v1/world/parties | Start a party with you as leader (up to 8 members). |
| [**create_world_party_chat**](WorldApi.md#create_world_party_chat) | **POST** /v1/world/parties/{id}/chat | Say something in your party chat (up to 2000 characters). |
| [**create_world_party_invite**](WorldApi.md#create_world_party_invite) | **POST** /v1/world/parties/{id}/invite | Invite a friend (userId) to your party. |
| [**create_world_party_invite_accept**](WorldApi.md#create_world_party_invite_accept) | **POST** /v1/world/parties/invites/{inviteId}/accept | Accept a party invite. |
| [**create_world_party_invite_decline**](WorldApi.md#create_world_party_invite_decline) | **POST** /v1/world/parties/invites/{inviteId}/decline | Decline a party invite. |
| [**create_world_party_kick**](WorldApi.md#create_world_party_kick) | **POST** /v1/world/parties/{id}/kick | As leader, remove a member (userId). |
| [**create_world_party_leader**](WorldApi.md#create_world_party_leader) | **POST** /v1/world/parties/{id}/leader | As leader, pass the lead to a member (userId). |
| [**create_world_party_leave**](WorldApi.md#create_world_party_leave) | **POST** /v1/world/parties/{id}/leave | Leave your party (the lead passes on if you led it). |
| [**create_world_party_wishlist**](WorldApi.md#create_world_party_wishlist) | **POST** /v1/world/parties/{id}/wishlist | Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist. |
| [**create_world_party_wishlist_vote**](WorldApi.md#create_world_party_wishlist_vote) | **POST** /v1/world/parties/{id}/wishlist/{listingId}/vote | Thumb a wishlist listing up or down (null clears your vote); answers the wishlist. |
| [**create_world_place_item_want**](WorldApi.md#create_world_place_item_want) | **POST** /v1/world/places/{slug}/items/{itemId}/want | Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money. |
| [**create_world_space**](WorldApi.md#create_world_space) | **POST** /v1/world/spaces | Open a Space (sellers only, at most two): slug, name, venue, optional membership and about. |
| [**create_world_space_event**](WorldApi.md#create_world_space_event) | **POST** /v1/world/spaces/{slug}/events | As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset. |
| [**create_world_space_event_rsvp**](WorldApi.md#create_world_space_event_rsvp) | **POST** /v1/world/spaces/{slug}/events/{id}/rsvp | Say whether you are going to an event. |
| [**create_world_space_invite**](WorldApi.md#create_world_space_invite) | **POST** /v1/world/spaces/{slug}/invite | Invite somebody (userId) to a Space. |
| [**create_world_space_join**](WorldApi.md#create_world_space_join) | **POST** /v1/world/spaces/{slug}/join | Join a Space, or ask to when it is request-only. |
| [**create_world_space_leave**](WorldApi.md#create_world_space_leave) | **POST** /v1/world/spaces/{slug}/leave | Leave a Space. |
| [**create_world_space_request_by_user_id**](WorldApi.md#create_world_space_request_by_user_id) | **POST** /v1/world/spaces/{slug}/requests/{userId} | As host or co-host, accept or turn down a request to join. |
| [**create_world_space_role**](WorldApi.md#create_world_space_role) | **POST** /v1/world/spaces/{slug}/role | As host, make a member a co-host or back to a member. |
| [**delete_spatial_scene_grant**](WorldApi.md#delete_spatial_scene_grant) | **DELETE** /v1/spatial/scenes/{id}/grants/{grantId} | Take somebody&#39;s access to your room away, or kill an invite nobody has used yet. |
| [**delete_spatial_scene_node**](WorldApi.md#delete_spatial_scene_node) | **DELETE** /v1/spatial/scenes/{id}/nodes | Remove units (by id, up to 500) from one of your warehouse rooms. |
| [**delete_spatial_scene_warehouse_stock**](WorldApi.md#delete_spatial_scene_warehouse_stock) | **DELETE** /v1/spatial/scenes/{id}/warehouse/stock | Take an inventory item (or unit) off its rack. |
| [**delete_spatial_street_request**](WorldApi.md#delete_spatial_street_request) | **DELETE** /v1/spatial/streets/requests/{id} | Withdraw a street request you made that has not been founded yet. |
| [**delete_world_block**](WorldApi.md#delete_world_block) | **DELETE** /v1/world/blocks/{id} | Unblock somebody (by the block id from GET /v1/world/blocks). |
| [**delete_world_collection_capability**](WorldApi.md#delete_world_collection_capability) | **DELETE** /v1/world/collections/{chain}/{contract}/capabilities | Withdraw your declaration for a collection. |
| [**delete_world_follow**](WorldApi.md#delete_world_follow) | **DELETE** /v1/world/follows/{userId} | Unfollow somebody. Idempotent. |
| [**delete_world_hall_loan**](WorldApi.md#delete_world_hall_loan) | **DELETE** /v1/world/hall/loans/{id} | Take one of your loans off show in the Hall of Grails. |
| [**delete_world_home_guestbook**](WorldApi.md#delete_world_home_guestbook) | **DELETE** /v1/world/homes/{slug}/guestbook/{id} | As the home owner, hide a guestbook entry. |
| [**delete_world_interactive_design**](WorldApi.md#delete_world_interactive_design) | **DELETE** /v1/world/interactive/designs/{id} | Delete a draft design, or archive a submitted one (off sale; owned copies keep working). |
| [**delete_world_job_shift**](WorldApi.md#delete_world_job_shift) | **DELETE** /v1/world/jobs/shifts/{id} | Cancel a shift you posted that nobody has worked yet. |
| [**delete_world_outfit**](WorldApi.md#delete_world_outfit) | **DELETE** /v1/world/outfits/{id} | Delete a saved look. 404 when it is not yours. |
| [**delete_world_party_wishlist**](WorldApi.md#delete_world_party_wishlist) | **DELETE** /v1/world/parties/{id}/wishlist/{listingId} | Take a listing you added off the party wishlist; answers the wishlist. |
| [**delete_world_place_ban**](WorldApi.md#delete_world_place_ban) | **DELETE** /v1/world/places/{slug}/bans/{userId} | Lift a ban from a place you own; they can walk in again right away. |
| [**delete_world_space**](WorldApi.md#delete_world_space) | **DELETE** /v1/world/spaces/{slug} | As host, close a Space. |
| [**delete_world_space_event**](WorldApi.md#delete_world_space_event) | **DELETE** /v1/world/spaces/{slug}/events/{id} | As host or co-host, cancel an event. |
| [**get_spatial_scene_attention**](WorldApi.md#get_spatial_scene_attention) | **GET** /v1/spatial/scenes/{sceneId}/attention | What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30). |
| [**get_spatial_scene_window**](WorldApi.md#get_spatial_scene_window) | **GET** /v1/spatial/scenes/{id}/window | The listings you chose for the street window of your shop, in slot order (left, middle, right; empty &#x3D; newest first), and &#x60;choices&#x60;: your listings that can go in it, newest first. |
| [**get_spatial_shop_neighbourhood**](WorldApi.md#get_spatial_shop_neighbourhood) | **GET** /v1/spatial/shop/neighbourhood | Your shop&#39;s neighbourhood, and whether and where it may move. |
| [**get_spatial_space**](WorldApi.md#get_spatial_space) | **GET** /v1/spatial/spaces | The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units. |
| [**get_spatial_street_admission**](WorldApi.md#get_spatial_street_admission) | **GET** /v1/spatial/streets/admissions | Street applications and invitations: yours, and those waiting on streets you own. |
| [**get_spatial_street_decor**](WorldApi.md#get_spatial_street_decor) | **GET** /v1/spatial/streets/{slug}/decor | The decor on a street you may dress, and what you can place. |
| [**get_world_arcade**](WorldApi.md#get_world_arcade) | **GET** /v1/world/arcade | The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \&quot;A player\&quot;), plus creatorGames (creator games with a cabinet now). Games are played in the world. |
| [**get_world_aurora**](WorldApi.md#get_world_aurora) | **GET** /v1/world/aurora | The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read. |
| [**get_world_auto_shop**](WorldApi.md#get_world_auto_shop) | **GET** /v1/world/auto-shop | Whether Crossly keeps a world shop for you automatically: enabled, and the shop (id, name, visibility, autoCreated, address, label) or null. Change it with PATCH /v1/world/auto-shop. |
| [**get_world_avatar_identity**](WorldApi.md#get_world_avatar_identity) | **GET** /v1/world/avatar/identity | Whether others see your name in the world (named), or not (anonymous); null if you have never chosen. |
| [**get_world_avatar_loadout**](WorldApi.md#get_world_avatar_loadout) | **GET** /v1/world/avatar/loadout | What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order. |
| [**get_world_avatar_loadout_by_user_id**](WorldApi.md#get_world_avatar_loadout_by_user_id) | **GET** /v1/world/avatar/loadout/{userId} | What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order. |
| [**get_world_avatar_look**](WorldApi.md#get_world_avatar_look) | **GET** /v1/world/avatar/look | Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one. |
| [**get_world_avatar_nft_badge**](WorldApi.md#get_world_avatar_nft_badge) | **GET** /v1/world/avatar/nft-badge | The NFT you wear on your nameplate in the world, or null. |
| [**get_world_capability**](WorldApi.md#get_world_capability) | **GET** /v1/world/capabilities | What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes. |
| [**get_world_capability_catalogue**](WorldApi.md#get_world_capability_catalogue) | **GET** /v1/world/capabilities/catalogue | The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it. |
| [**get_world_capability_wear**](WorldApi.md#get_world_capability_wear) | **GET** /v1/world/capabilities/wear | What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees. |
| [**get_world_chest**](WorldApi.md#get_world_chest) | **GET** /v1/world/chests | The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API. |
| [**get_world_collection_capability**](WorldApi.md#get_world_collection_capability) | **GET** /v1/world/collections/{chain}/{contract}/capabilities | The live capability declaration of a collection (404 when it has none). |
| [**get_world_contest_mine**](WorldApi.md#get_world_contest_mine) | **GET** /v1/world/contests/mine | Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens). |
| [**get_world_convention**](WorldApi.md#get_world_convention) | **GET** /v1/world/conventions/{id} | One convention. 404 for an unknown or malformed id alike. |
| [**get_world_cosm_balance**](WorldApi.md#get_world_cosm_balance) | **GET** /v1/world/cosm/balance | Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false &#x3D; COSM is not provisioned on this deployment, not a zero balance). |
| [**get_world_crew**](WorldApi.md#get_world_crew) | **GET** /v1/world/crew | Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null). |
| [**get_world_crew_chat**](WorldApi.md#get_world_crew_chat) | **GET** /v1/world/crew/chat | Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew. |
| [**get_world_crew_leaderboard**](WorldApi.md#get_world_crew_leaderboard) | **GET** /v1/world/crew/leaderboards | The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew. |
| [**get_world_dm**](WorldApi.md#get_world_dm) | **GET** /v1/world/dms/{userId} | Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read. |
| [**get_world_emote_showable**](WorldApi.md#get_world_emote_showable) | **GET** /v1/world/emotes/showable | The things you own that a show-off emote can hold up. |
| [**get_world_firefly**](WorldApi.md#get_world_firefly) | **GET** /v1/world/fireflies | Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent. |
| [**get_world_fit_stat**](WorldApi.md#get_world_fit_stat) | **GET** /v1/world/fits/stats | Your walking storefront, last 7 days: distinct people who tapped \&quot;Shop this\&quot; or \&quot;Offer\&quot; on what you wore, and how many of each. Counts only; nobody is identified. |
| [**get_world_fit_value**](WorldApi.md#get_world_fit_value) | **GET** /v1/world/fit-value | What your outfit is worth on the market: cents (sum of each catalogued piece&#39;s order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card). |
| [**get_world_game**](WorldApi.md#get_world_game) | **GET** /v1/world/games/{id} | One live game: its manifest, its store items and which you own. |
| [**get_world_game_leaderboard**](WorldApi.md#get_world_game_leaderboard) | **GET** /v1/world/games/{id}/leaderboard | A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board. |
| [**get_world_game_package**](WorldApi.md#get_world_game_package) | **GET** /v1/world/games/packages/{id} | One of your game packages with every version, its review state and decision note. |
| [**get_world_game_template**](WorldApi.md#get_world_game_template) | **GET** /v1/world/games/templates/{kind} | A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id&#x3D;my-game&amp;name&#x3D;My Game. |
| [**get_world_hall**](WorldApi.md#get_world_hall) | **GET** /v1/world/hall | The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one&#39;s title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId. |
| [**get_world_hall_loan**](WorldApi.md#get_world_hall_loan) | **GET** /v1/world/hall/loans | Lend to the Hall: this week&#39;s exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition&#39;s category. perMember is how many you may lend each week. |
| [**get_world_home_placeable**](WorldApi.md#get_world_home_placeable) | **GET** /v1/world/home/placeable | What you can place in your home: your items and your furniture. |
| [**get_world_hunt**](WorldApi.md#get_world_hunt) | **GET** /v1/world/hunt | Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one. |
| [**get_world_hunt_scoreboard**](WorldApi.md#get_world_hunt_scoreboard) | **GET** /v1/world/hunt/scoreboard | The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \&quot;A player\&quot;) and total (everybody through the Gate this season). |
| [**get_world_interactive_design**](WorldApi.md#get_world_interactive_design) | **GET** /v1/world/interactive/designs/{id} | One of your interactive designs: its draft source, the last static check, and every submitted version with its review state. |
| [**get_world_job**](WorldApi.md#get_world_job) | **GET** /v1/world/jobs | The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them. |
| [**get_world_kite**](WorldApi.md#get_world_kite) | **GET** /v1/world/kites | Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent. |
| [**get_world_lantern**](WorldApi.md#get_world_lantern) | **GET** /v1/world/lanterns | Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent. |
| [**get_world_party_chat**](WorldApi.md#get_world_party_chat) | **GET** /v1/world/parties/{id}/chat | Your party chat: the recent lines. 404 when this is not your party. |
| [**get_world_place_board**](WorldApi.md#get_world_place_board) | **GET** /v1/world/places/{slug}/boards | The Trade Floor&#39;s wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them). |
| [**get_world_place_collection**](WorldApi.md#get_world_place_collection) | **GET** /v1/world/places/{slug}/collections/{category}/{brand}/{model} | One collection room: every piece of the set, owned or missing. 404 for an unknown room or set. |
| [**get_world_place_drop**](WorldApi.md#get_world_place_drop) | **GET** /v1/world/places/{slug}/drop | The owner&#39;s next drop (name, cover, time, live) and how many people are waiting in the room. |
| [**get_world_place_item_interest**](WorldApi.md#get_world_place_item_interest) | **GET** /v1/world/places/{slug}/items/{itemId}/interest | How many people looked at one item in this room today. |
| [**get_world_place_live**](WorldApi.md#get_world_place_live) | **GET** /v1/world/places/{slug}/live | The owner&#39;s live sale: their stream and the lot on the block, or null. |
| [**get_world_place_seller**](WorldApi.md#get_world_place_seller) | **GET** /v1/world/places/{slug}/seller | The shop whose public room this is (username and name), or null. |
| [**get_world_place_shop_pet**](WorldApi.md#get_world_place_shop_pet) | **GET** /v1/world/places/{slug}/shop-pet | The shop&#39;s pet kind, or null. |
| [**get_world_space**](WorldApi.md#get_world_space) | **GET** /v1/world/spaces/{slug} | One Space: its layout, host, events and your place in it. |
| [**get_world_space_can_host**](WorldApi.md#get_world_space_can_host) | **GET** /v1/world/spaces/can-host | Whether you may open a Space: sellers only, at most two active. |
| [**get_world_trial_leaderboard**](WorldApi.md#get_world_trial_leaderboard) | **GET** /v1/world/trials/{course}/leaderboard | A Time Trials course&#39;s boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week&#39;s ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \&quot;A player\&quot;. 404 for an unknown course; course 1 is commons-loop. |
| [**get_world_trial_mine**](WorldApi.md#get_world_trial_mine) | **GET** /v1/world/trials/mine | Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one. |
| [**get_world_wallet**](WorldApi.md#get_world_wallet) | **GET** /v1/world/wallet | Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none. |
| [**get_world_wish**](WorldApi.md#get_world_wish) | **GET** /v1/world/wishes | The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow&#39;s wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent. |
| [**list_spatial_scene_grants**](WorldApi.md#list_spatial_scene_grants) | **GET** /v1/spatial/scenes/{id}/grants | Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes. |
| [**list_spatial_scene_warehouse_unplaced**](WorldApi.md#list_spatial_scene_warehouse_unplaced) | **GET** /v1/spatial/scenes/{id}/warehouse/unplaced | Stock not yet on a shelf in a warehouse room you can arrange (q filters by title). |
| [**list_spatial_shared_with_me**](WorldApi.md#list_spatial_shared_with_me) | **GET** /v1/spatial/shared-with-me | Rooms other people let you into. |
| [**list_spatial_street_leases**](WorldApi.md#list_spatial_street_leases) | **GET** /v1/spatial/streets/{slug}/leases | Plots on a street offered for lease: weekly rent in CENTS and terms. |
| [**list_world_avatar_closet**](WorldApi.md#list_world_avatar_closet) | **GET** /v1/world/avatar/closet | Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging. |
| [**list_world_avatar_stock**](WorldApi.md#list_world_avatar_stock) | **GET** /v1/world/avatar/stock | Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip. |
| [**list_world_avatar_wearables**](WorldApi.md#list_world_avatar_wearables) | **GET** /v1/world/avatar/wearables | Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here. |
| [**list_world_best_dressed**](WorldApi.md#list_world_best_dressed) | **GET** /v1/world/best-dressed | This week&#39;s best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name. |
| [**list_world_capability_declarations**](WorldApi.md#list_world_capability_declarations) | **GET** /v1/world/capabilities/declarations | Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer). |
| [**list_world_contest_standings**](WorldApi.md#list_world_contest_standings) | **GET** /v1/world/contests/{id}/standings | The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first. |
| [**list_world_contests**](WorldApi.md#list_world_contests) | **GET** /v1/world/contests | Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes. |
| [**list_world_convention_exhibitors**](WorldApi.md#list_world_convention_exhibitors) | **GET** /v1/world/conventions/{id}/exhibitors | The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise. |
| [**list_world_convention_mine**](WorldApi.md#list_world_convention_mine) | **GET** /v1/world/conventions/mine | Conventions you host and conventions you are exhibiting at. |
| [**list_world_conventions**](WorldApi.md#list_world_conventions) | **GET** /v1/world/conventions | Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share). |
| [**list_world_cosm_cosmetics**](WorldApi.md#list_world_cosm_cosmetics) | **GET** /v1/world/cosm/cosmetics | The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals. |
| [**list_world_cosm_designs**](WorldApi.md#list_world_cosm_designs) | **GET** /v1/world/cosm/designs | Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract. |
| [**list_world_cosm_inventory**](WorldApi.md#list_world_cosm_inventory) | **GET** /v1/world/cosm/inventory | Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available. |
| [**list_world_decor_catalogue**](WorldApi.md#list_world_decor_catalogue) | **GET** /v1/world/decor/catalogue | The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card. |
| [**list_world_decor_designs**](WorldApi.md#list_world_decor_designs) | **GET** /v1/world/decor/designs | Your decor designs and their review state. available is false until COSM is provisioned. |
| [**list_world_decor_inventory**](WorldApi.md#list_world_decor_inventory) | **GET** /v1/world/decor/inventory | Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net. |
| [**list_world_decor_market**](WorldApi.md#list_world_decor_market) | **GET** /v1/world/decor/market | Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net. |
| [**list_world_decor_mine**](WorldApi.md#list_world_decor_mine) | **GET** /v1/world/decor/mine | Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint. |
| [**list_world_decor_stalls**](WorldApi.md#list_world_decor_stalls) | **GET** /v1/world/decor/stalls | Your stall bookings, to dress their booths. |
| [**list_world_decor_streets**](WorldApi.md#list_world_decor_streets) | **GET** /v1/world/decor/streets | Streets you may dress. |
| [**list_world_dms**](WorldApi.md#list_world_dms) | **GET** /v1/world/dms | Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first. |
| [**list_world_following_rooms**](WorldApi.md#list_world_following_rooms) | **GET** /v1/world/following/rooms | The public rooms of people you follow, to walk into. |
| [**list_world_follows**](WorldApi.md#list_world_follows) | **GET** /v1/world/follows | Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend). |
| [**list_world_friend_here**](WorldApi.md#list_world_friend_here) | **GET** /v1/world/friends/here | Your friends in Crossly World right now, and where (when they share it). |
| [**list_world_friends**](WorldApi.md#list_world_friends) | **GET** /v1/world/friends | Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located. |
| [**list_world_game_packages**](WorldApi.md#list_world_game_packages) | **GET** /v1/world/games/packages | Your game packages, each with its latest version and review state. |
| [**list_world_game_rewards**](WorldApi.md#list_world_game_rewards) | **GET** /v1/world/games/rewards | Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value). |
| [**list_world_games**](WorldApi.md#list_world_games) | **GET** /v1/world/games | The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place. |
| [**list_world_home_building**](WorldApi.md#list_world_home_building) | **GET** /v1/world/home/building | Homes whose owner made you a co-builder. |
| [**list_world_interactive_catalogue**](WorldApi.md#list_world_interactive_catalogue) | **GET** /v1/world/interactive/catalogue | Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor. |
| [**list_world_interactive_designs**](WorldApi.md#list_world_interactive_designs) | **GET** /v1/world/interactive/designs | Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null &#x3D; none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null &#x3D; not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. &#x60;archived&#x60;: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen on crossly.net/shop/decor?tab&#x3D;interactive. |
| [**list_world_job_posted**](WorldApi.md#list_world_job_posted) | **GET** /v1/world/jobs/posted | Shifts you posted for your rooms, with who claimed each and how it went. |
| [**list_world_outfits**](WorldApi.md#list_world_outfits) | **GET** /v1/world/outfits | Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply. |
| [**list_world_place_bans**](WorldApi.md#list_world_place_bans) | **GET** /v1/world/places/{slug}/bans | Who is banned from a place you own (your boutique or home). |
| [**list_world_place_bundles**](WorldApi.md#list_world_place_bundles) | **GET** /v1/world/places/{slug}/bundles | The owner&#39;s bundle deals mapped onto this room&#39;s items (itemIds null &#x3D; any N from the shop). The discount is decided at checkout. |
| [**list_world_place_collections**](WorldApi.md#list_world_place_collections) | **GET** /v1/world/places/{slug}/collections | The owner&#39;s collection rooms: one per category, brand and model they collect. |
| [**list_world_place_offers**](WorldApi.md#list_world_place_offers) | **GET** /v1/world/places/{slug}/offers | What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared. |
| [**list_world_place_radar**](WorldApi.md#list_world_place_radar) | **GET** /v1/world/places/{slug}/radar | What you have that someone here wants, and what is here that you want: matched on catalog ids. |
| [**list_world_place_trade_tables**](WorldApi.md#list_world_place_trade_tables) | **GET** /v1/world/places/{slug}/trade-tables | The open trade tables in a place: who is sitting and what is laid on the mat. |
| [**list_world_place_trades**](WorldApi.md#list_world_place_trades) | **GET** /v1/world/places/{slug}/trades | Items in this room open to trades, each with its trade post path. |
| [**list_world_provenance**](WorldApi.md#list_world_provenance) | **GET** /v1/world/provenance | Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds&#x3D;a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \&quot;Found at The Sneaker Vault, Oct 2026\&quot; }]. Yours only. |
| [**list_world_quests**](WorldApi.md#list_world_quests) | **GET** /v1/world/quests | Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it. |
| [**list_world_space_mine**](WorldApi.md#list_world_space_mine) | **GET** /v1/world/spaces/mine | Spaces you belong to. |
| [**list_world_space_requests**](WorldApi.md#list_world_space_requests) | **GET** /v1/world/spaces/{slug}/requests | As host or co-host, who asked to join. |
| [**list_world_space_whats_on**](WorldApi.md#list_world_space_whats_on) | **GET** /v1/world/spaces/whats-on | Live and upcoming events across Spaces (streets&#x3D;1 and stage&#x3D;1 add street and Main Stage events). |
| [**list_world_spaces**](WorldApi.md#list_world_spaces) | **GET** /v1/world/spaces | The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter). |
| [**list_world_streaks**](WorldApi.md#list_world_streaks) | **GET** /v1/world/streaks | The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name. |
| [**list_world_trade_mine**](WorldApi.md#list_world_trade_mine) | **GET** /v1/world/trades/mine | Your trades and each item progress through the authentication gate (verified or failed). |
| [**list_world_trade_table_binder**](WorldApi.md#list_world_trade_table_binder) | **GET** /v1/world/trade-tables/binder | Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents). |
| [**list_world_trade_table_listings**](WorldApi.md#list_world_trade_table_listings) | **GET** /v1/world/trade-tables/listings | Your open Trade Block trade listings a trade table can be opened on in the world, each with its items&#39; names. |
| [**update_spatial_scene_cosmetic**](WorldApi.md#update_spatial_scene_cosmetic) | **PATCH** /v1/spatial/scenes/{id}/cosmetics | Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. &#x60;clear&#x60; lists keys to reset. |
| [**update_spatial_scene_node**](WorldApi.md#update_spatial_scene_node) | **PATCH** /v1/spatial/scenes/{id}/nodes/{nodeId} | Move a rack in one of your warehouse rooms (position in metres). |
| [**update_spatial_scene_setting**](WorldApi.md#update_spatial_scene_setting) | **PATCH** /v1/spatial/scenes/{id}/settings | How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers. |
| [**update_spatial_scene_shop_layout**](WorldApi.md#update_spatial_scene_shop_layout) | **PUT** /v1/spatial/scenes/{id}/shop/layout | Save your shop room&#39;s sections and displays (validated server-side; the response is the stored layout). |
| [**update_spatial_scene_window**](WorldApi.md#update_spatial_scene_window) | **PUT** /v1/spatial/scenes/{id}/window | Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first. |
| [**update_spatial_street_decor**](WorldApi.md#update_spatial_street_decor) | **PUT** /v1/spatial/streets/{slug}/decor | Dress a street you own with decor you hold (validated against your inventory). |
| [**update_spatial_street_owned**](WorldApi.md#update_spatial_street_owned) | **PATCH** /v1/spatial/streets/owned/{id} | Who may open a shop on a street you own (open, apply or invite). |
| [**update_world_auto_shop**](WorldApi.md#update_world_auto_shop) | **PATCH** /v1/world/auto-shop | Turn your automatic world shop off ({ enabled: false } -- an auto-created shop is made private, never deleted) or back on. Answers the new status. |
| [**update_world_avatar_identity**](WorldApi.md#update_world_avatar_identity) | **PUT** /v1/world/avatar/identity | Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin. |
| [**update_world_avatar_look**](WorldApi.md#update_world_avatar_look) | **PUT** /v1/world/avatar/look | Save your world look to the account, so every device starts from it. look: null stays anonymous. |
| [**update_world_avatar_nft_badge**](WorldApi.md#update_world_avatar_nft_badge) | **PUT** /v1/world/avatar/nft-badge | Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room. |
| [**update_world_capability_wear**](WorldApi.md#update_world_capability_wear) | **PUT** /v1/world/capabilities/wear | Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot. |
| [**update_world_collection_capability**](WorldApi.md#update_world_collection_capability) | **PUT** /v1/world/collections/{chain}/{contract}/capabilities | Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind. |
| [**update_world_convention_status**](WorldApi.md#update_world_convention_status) | **PUT** /v1/world/conventions/{id}/status | Open, start, end or cancel a convention you host. |
| [**update_world_cosm_design_chain_auto_unlock**](WorldApi.md#update_world_cosm_design_chain_auto_unlock) | **PUT** /v1/world/cosm/designs/{id}/chain-auto-unlock | Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity. |
| [**update_world_emote_wheel**](WorldApi.md#update_world_emote_wheel) | **PUT** /v1/world/emotes/wheel | Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped). |
| [**update_world_fit_value_share**](WorldApi.md#update_world_fit_value_share) | **PUT** /v1/world/fit-value/share | Whether people in a room can see what your outfit is worth. |
| [**update_world_home**](WorldApi.md#update_world_home) | **PATCH** /v1/world/home | Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold. |
| [**update_world_home_builder**](WorldApi.md#update_world_home_builder) | **PUT** /v1/world/home/builders | Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice. |
| [**update_world_home_layout**](WorldApi.md#update_world_home_layout) | **PUT** /v1/world/home/layout | Arrange your home: the full layout (up to 200 pieces you own), validated server-side. |
| [**update_world_home_layout_by_slug**](WorldApi.md#update_world_home_layout_by_slug) | **PUT** /v1/world/homes/{slug}/layout | Rearrange a home you co-build (never adding the owner bought pieces). |
| [**update_world_interactive_design_draft**](WorldApi.md#update_world_interactive_design_draft) | **PUT** /v1/world/interactive/designs/{id}/draft | Save the draft MML source (up to 64 KB); the response carries its static check. |
| [**update_world_listing_holders_only**](WorldApi.md#update_world_listing_holders_only) | **PUT** /v1/world/listings/{id}/holders-only | Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else. |
| [**update_world_outfit**](WorldApi.md#update_world_outfit) | **PATCH** /v1/world/outfits/{id} | Rename a saved look: { name (1-32 chars) }. 404 when it is not yours. |
| [**update_world_pet_active**](WorldApi.md#update_world_pet_active) | **PUT** /v1/world/pets/active | Walk one of your pets with you in the world, or none (kind: null). |
| [**update_world_quest_pin**](WorldApi.md#update_world_quest_pin) | **PUT** /v1/world/quests/pin | Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into. |
| [**update_world_room_holder_gate**](WorldApi.md#update_world_room_holder_gate) | **PUT** /v1/world/rooms/{id}/holder-gate | Make your room holders-only (its collection rooms follow). Send null to open it again. Returns &#x60;{ gate }&#x60;. |
| [**update_world_space**](WorldApi.md#update_world_space) | **PATCH** /v1/world/spaces/{slug} | As host, change a Space name, about or membership. |
| [**update_world_space_holder_gate**](WorldApi.md#update_world_space_holder_gate) | **PUT** /v1/world/spaces/{slug}/holder-gate | Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns &#x60;{ gate }&#x60;. |
| [**update_world_stall_booking_booth**](WorldApi.md#update_world_stall_booking_booth) | **PUT** /v1/world/stalls/bookings/{id}/booth | Dress the booth of a stall you booked (decor you hold). |


## create_spatial_invite_accept

> <CreateSpatialInviteAcceptResponse> create_spatial_invite_accept

Redeem an invite code (dashes optional); returns the room it opens.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Redeem an invite code (dashes optional); returns the room it opens.
  result = api_instance.create_spatial_invite_accept
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_invite_accept: #{e}"
end
```

#### Using the create_spatial_invite_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialInviteAcceptResponse>, Integer, Hash)> create_spatial_invite_accept_with_http_info

```ruby
begin
  # Redeem an invite code (dashes optional); returns the room it opens.
  data, status_code, headers = api_instance.create_spatial_invite_accept_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialInviteAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_invite_accept_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateSpatialInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_property_lease_withdraw

> <DeleteDaoProposalResponse> create_spatial_property_lease_withdraw(id)

Withdraw a lease offer nobody has accepted yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Withdraw a lease offer nobody has accepted yet.
  result = api_instance.create_spatial_property_lease_withdraw(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_property_lease_withdraw: #{e}"
end
```

#### Using the create_spatial_property_lease_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDaoProposalResponse>, Integer, Hash)> create_spatial_property_lease_withdraw_with_http_info(id)

```ruby
begin
  # Withdraw a lease offer nobody has accepted yet.
  data, status_code, headers = api_instance.create_spatial_property_lease_withdraw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDaoProposalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_property_lease_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene

> <SpatialSceneResponse2> create_spatial_scene(create_spatial_scene_request)

Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_spatial_scene_request = Crossly::CreateSpatialSceneRequest.new({kind: 'collection', name: 'name_example'}) # CreateSpatialSceneRequest | 

begin
  # Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.
  result = api_instance.create_spatial_scene(create_spatial_scene_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene: #{e}"
end
```

#### Using the create_spatial_scene_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse2>, Integer, Hash)> create_spatial_scene_with_http_info(create_spatial_scene_request)

```ruby
begin
  # Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.
  data, status_code, headers = api_instance.create_spatial_scene_with_http_info(create_spatial_scene_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_spatial_scene_request** | **CreateSpatialSceneRequest** |  |  |

### Return type

**SpatialSceneResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_spatial_scene_grant

> <CreateSpatialSceneGrantResponse> create_spatial_scene_grant(id)

Let a specific user into one of your rooms (visitor or staff), no code needed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Let a specific user into one of your rooms (visitor or staff), no code needed.
  result = api_instance.create_spatial_scene_grant(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_grant: #{e}"
end
```

#### Using the create_spatial_scene_grant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialSceneGrantResponse>, Integer, Hash)> create_spatial_scene_grant_with_http_info(id)

```ruby
begin
  # Let a specific user into one of your rooms (visitor or staff), no code needed.
  data, status_code, headers = api_instance.create_spatial_scene_grant_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_grant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_invite

> <CreateSpatialSceneInviteResponse> create_spatial_scene_invite(id)

Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.
  result = api_instance.create_spatial_scene_invite(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_invite: #{e}"
end
```

#### Using the create_spatial_scene_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialSceneInviteResponse>, Integer, Hash)> create_spatial_scene_invite_with_http_info(id)

```ruby
begin
  # Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.
  data, status_code, headers = api_instance.create_spatial_scene_invite_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialSceneInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateSpatialSceneInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_node

> <CreateSpatialSceneNodeResponse> create_spatial_scene_node(id)

Add a unit (rack, shelf, bin) to one of your warehouse rooms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Add a unit (rack, shelf, bin) to one of your warehouse rooms.
  result = api_instance.create_spatial_scene_node(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_node: #{e}"
end
```

#### Using the create_spatial_scene_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialSceneNodeResponse>, Integer, Hash)> create_spatial_scene_node_with_http_info(id)

```ruby
begin
  # Add a unit (rack, shelf, bin) to one of your warehouse rooms.
  data, status_code, headers = api_instance.create_spatial_scene_node_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialSceneNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_place

> <SpatialSceneResponse> create_spatial_scene_place(id)

Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.
  result = api_instance.create_spatial_scene_place(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_place: #{e}"
end
```

#### Using the create_spatial_scene_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse>, Integer, Hash)> create_spatial_scene_place_with_http_info(id)

```ruby
begin
  # Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.
  data, status_code, headers = api_instance.create_spatial_scene_place_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_rename

> <SpatialSceneResponse2> create_spatial_scene_rename(id, create_spatial_scene_rename_request)

Rename one of your rooms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
create_spatial_scene_rename_request = Crossly::CreateSpatialSceneRenameRequest.new({name: 'name_example'}) # CreateSpatialSceneRenameRequest | 

begin
  # Rename one of your rooms.
  result = api_instance.create_spatial_scene_rename(id, create_spatial_scene_rename_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_rename: #{e}"
end
```

#### Using the create_spatial_scene_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse2>, Integer, Hash)> create_spatial_scene_rename_with_http_info(id, create_spatial_scene_rename_request)

```ruby
begin
  # Rename one of your rooms.
  data, status_code, headers = api_instance.create_spatial_scene_rename_with_http_info(id, create_spatial_scene_rename_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_rename_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_spatial_scene_rename_request** | **CreateSpatialSceneRenameRequest** |  |  |

### Return type

**SpatialSceneResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_spatial_scene_shop_place

> <SpatialSceneResponse> create_spatial_scene_shop_place(id)

Place an inventory item in a section and display of your shop room.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Place an inventory item in a section and display of your shop room.
  result = api_instance.create_spatial_scene_shop_place(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_shop_place: #{e}"
end
```

#### Using the create_spatial_scene_shop_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse>, Integer, Hash)> create_spatial_scene_shop_place_with_http_info(id)

```ruby
begin
  # Place an inventory item in a section and display of your shop room.
  data, status_code, headers = api_instance.create_spatial_scene_shop_place_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_shop_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_unpin

> <DeleteSpatialSceneNodeResponse> create_spatial_scene_unpin(id)

Clear every pin in one of your rooms, so it arranges itself again.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Clear every pin in one of your rooms, so it arranges itself again.
  result = api_instance.create_spatial_scene_unpin(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_unpin: #{e}"
end
```

#### Using the create_spatial_scene_unpin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneNodeResponse>, Integer, Hash)> create_spatial_scene_unpin_with_http_info(id)

```ruby
begin
  # Clear every pin in one of your rooms, so it arranges itself again.
  data, status_code, headers = api_instance.create_spatial_scene_unpin_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_unpin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_scene_visibility

> <SpatialSceneResponse2> create_spatial_scene_visibility(id, create_spatial_scene_visibility_request)

Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
create_spatial_scene_visibility_request = Crossly::CreateSpatialSceneVisibilityRequest.new({visibility: 'private'}) # CreateSpatialSceneVisibilityRequest | 

begin
  # Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).
  result = api_instance.create_spatial_scene_visibility(id, create_spatial_scene_visibility_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_visibility: #{e}"
end
```

#### Using the create_spatial_scene_visibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse2>, Integer, Hash)> create_spatial_scene_visibility_with_http_info(id, create_spatial_scene_visibility_request)

```ruby
begin
  # Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).
  data, status_code, headers = api_instance.create_spatial_scene_visibility_with_http_info(id, create_spatial_scene_visibility_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_visibility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_spatial_scene_visibility_request** | **CreateSpatialSceneVisibilityRequest** |  |  |

### Return type

**SpatialSceneResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_spatial_scene_warehouse_stock

> <SpatialSceneResponse> create_spatial_scene_warehouse_stock(id)

Put an inventory item (or unit) on a rack in one of your warehouse rooms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Put an inventory item (or unit) on a rack in one of your warehouse rooms.
  result = api_instance.create_spatial_scene_warehouse_stock(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_warehouse_stock: #{e}"
end
```

#### Using the create_spatial_scene_warehouse_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse>, Integer, Hash)> create_spatial_scene_warehouse_stock_with_http_info(id)

```ruby
begin
  # Put an inventory item (or unit) on a rack in one of your warehouse rooms.
  data, status_code, headers = api_instance.create_spatial_scene_warehouse_stock_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_scene_warehouse_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_shop_neighbourhood

> <CreateSpatialShopNeighbourhoodResponse> create_spatial_shop_neighbourhood

Move your shop to another neighbourhood (by slug).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Move your shop to another neighbourhood (by slug).
  result = api_instance.create_spatial_shop_neighbourhood
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_shop_neighbourhood: #{e}"
end
```

#### Using the create_spatial_shop_neighbourhood_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialShopNeighbourhoodResponse>, Integer, Hash)> create_spatial_shop_neighbourhood_with_http_info

```ruby
begin
  # Move your shop to another neighbourhood (by slug).
  data, status_code, headers = api_instance.create_spatial_shop_neighbourhood_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialShopNeighbourhoodResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_shop_neighbourhood_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateSpatialShopNeighbourhoodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_street_apply

> <CreateSpatialStreetApplyResponse> create_spatial_street_apply(slug)

Ask to open your shop on a street whose owner reviews applications.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Ask to open your shop on a street whose owner reviews applications.
  result = api_instance.create_spatial_street_apply(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_street_apply: #{e}"
end
```

#### Using the create_spatial_street_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialStreetApplyResponse>, Integer, Hash)> create_spatial_street_apply_with_http_info(slug)

```ruby
begin
  # Ask to open your shop on a street whose owner reviews applications.
  data, status_code, headers = api_instance.create_spatial_street_apply_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialStreetApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_street_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateSpatialStreetApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_spatial_street_invite

> <CreateSpatialStreetApplyResponse> create_spatial_street_invite(slug)

Invite a shop (by its slug) to open on a street you own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Invite a shop (by its slug) to open on a street you own.
  result = api_instance.create_spatial_street_invite(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_street_invite: #{e}"
end
```

#### Using the create_spatial_street_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSpatialStreetApplyResponse>, Integer, Hash)> create_spatial_street_invite_with_http_info(slug)

```ruby
begin
  # Invite a shop (by its slug) to open on a street you own.
  data, status_code, headers = api_instance.create_spatial_street_invite_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSpatialStreetApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_spatial_street_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateSpatialStreetApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_avatar_equip

> <CreateWorldAvatarEquipResponse> create_world_avatar_equip(create_world_avatar_equip_request)

Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_avatar_equip_request = Crossly::CreateWorldAvatarEquipRequest.new # CreateWorldAvatarEquipRequest | 

begin
  # Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.
  result = api_instance.create_world_avatar_equip(create_world_avatar_equip_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_equip: #{e}"
end
```

#### Using the create_world_avatar_equip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldAvatarEquipResponse>, Integer, Hash)> create_world_avatar_equip_with_http_info(create_world_avatar_equip_request)

```ruby
begin
  # Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.
  data, status_code, headers = api_instance.create_world_avatar_equip_with_http_info(create_world_avatar_equip_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldAvatarEquipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_equip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_avatar_equip_request** | **CreateWorldAvatarEquipRequest** |  |  |

### Return type

**CreateWorldAvatarEquipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_avatar_unequip

> <CreateWorldAvatarUnequipResponse> create_world_avatar_unequip(create_world_avatar_unequip_request)

Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_avatar_unequip_request = Crossly::CreateWorldAvatarUnequipRequest.new({slot: 'avatar_head'}) # CreateWorldAvatarUnequipRequest | 

begin
  # Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.
  result = api_instance.create_world_avatar_unequip(create_world_avatar_unequip_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_unequip: #{e}"
end
```

#### Using the create_world_avatar_unequip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldAvatarUnequipResponse>, Integer, Hash)> create_world_avatar_unequip_with_http_info(create_world_avatar_unequip_request)

```ruby
begin
  # Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.
  data, status_code, headers = api_instance.create_world_avatar_unequip_with_http_info(create_world_avatar_unequip_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldAvatarUnequipResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_unequip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_avatar_unequip_request** | **CreateWorldAvatarUnequipRequest** |  |  |

### Return type

**CreateWorldAvatarUnequipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_avatar_wearable

> <CreateWorldAvatarWearableResponse> create_world_avatar_wearable

Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.
  result = api_instance.create_world_avatar_wearable
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_wearable: #{e}"
end
```

#### Using the create_world_avatar_wearable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldAvatarWearableResponse>, Integer, Hash)> create_world_avatar_wearable_with_http_info

```ruby
begin
  # Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.
  data, status_code, headers = api_instance.create_world_avatar_wearable_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldAvatarWearableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_avatar_wearable_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldAvatarWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_contest

> <CreateWorldContestResponse> create_world_contest

Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.
  result = api_instance.create_world_contest
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest: #{e}"
end
```

#### Using the create_world_contest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldContestResponse>, Integer, Hash)> create_world_contest_with_http_info

```ruby
begin
  # Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.
  data, status_code, headers = api_instance.create_world_contest_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldContestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldContestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_contest_entry_settle_payment

> <CreateWorldContestEntrySettlePaymentResponse> create_world_contest_entry_settle_payment(id)

Read the fee of a paid entry back from Stripe and settle it (safe to repeat).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Read the fee of a paid entry back from Stripe and settle it (safe to repeat).
  result = api_instance.create_world_contest_entry_settle_payment(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest_entry_settle_payment: #{e}"
end
```

#### Using the create_world_contest_entry_settle_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldContestEntrySettlePaymentResponse>, Integer, Hash)> create_world_contest_entry_settle_payment_with_http_info(id)

```ruby
begin
  # Read the fee of a paid entry back from Stripe and settle it (safe to repeat).
  data, status_code, headers = api_instance.create_world_contest_entry_settle_payment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldContestEntrySettlePaymentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest_entry_settle_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldContestEntrySettlePaymentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_contest_join

> <CreateWorldContestJoinResponse> create_world_contest_join(id)

Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.
  result = api_instance.create_world_contest_join(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest_join: #{e}"
end
```

#### Using the create_world_contest_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldContestJoinResponse>, Integer, Hash)> create_world_contest_join_with_http_info(id)

```ruby
begin
  # Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.
  data, status_code, headers = api_instance.create_world_contest_join_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldContestJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_contest_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldContestJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention

> <CreateWorldConventionResponse> create_world_convention

Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).
  result = api_instance.create_world_convention
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention: #{e}"
end
```

#### Using the create_world_convention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldConventionResponse>, Integer, Hash)> create_world_convention_with_http_info

```ruby
begin
  # Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).
  data, status_code, headers = api_instance.create_world_convention_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldConventionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldConventionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention_accept

> <CreateWorldConventionAcceptResponse> create_world_convention_accept(id)

Accept: your own invitation (no body), or, as host, an application (username).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Accept: your own invitation (no body), or, as host, an application (username).
  result = api_instance.create_world_convention_accept(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_accept: #{e}"
end
```

#### Using the create_world_convention_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldConventionAcceptResponse>, Integer, Hash)> create_world_convention_accept_with_http_info(id)

```ruby
begin
  # Accept: your own invitation (no body), or, as host, an application (username).
  data, status_code, headers = api_instance.create_world_convention_accept_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldConventionAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldConventionAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention_apply

> <CreateWorldConventionApplyResponse> create_world_convention_apply(id)

Ask for a table at a convention.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Ask for a table at a convention.
  result = api_instance.create_world_convention_apply(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_apply: #{e}"
end
```

#### Using the create_world_convention_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldConventionApplyResponse>, Integer, Hash)> create_world_convention_apply_with_http_info(id)

```ruby
begin
  # Ask for a table at a convention.
  data, status_code, headers = api_instance.create_world_convention_apply_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldConventionApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldConventionApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention_invite

> <CreateWorldSpaceInviteResponse> create_world_convention_invite(id)

Invite a seller (by shop handle) to a convention you host.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Invite a seller (by shop handle) to a convention you host.
  result = api_instance.create_world_convention_invite(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_invite: #{e}"
end
```

#### Using the create_world_convention_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceInviteResponse>, Integer, Hash)> create_world_convention_invite_with_http_info(id)

```ruby
begin
  # Invite a seller (by shop handle) to a convention you host.
  data, status_code, headers = api_instance.create_world_convention_invite_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldSpaceInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention_paid

> <CreateBreakCancelResponse> create_world_convention_paid(id)

As host, record that a seller (username) paid their table fee off-platform. Moves no money.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # As host, record that a seller (username) paid their table fee off-platform. Moves no money.
  result = api_instance.create_world_convention_paid(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_paid: #{e}"
end
```

#### Using the create_world_convention_paid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> create_world_convention_paid_with_http_info(id)

```ruby
begin
  # As host, record that a seller (username) paid their table fee off-platform. Moves no money.
  data, status_code, headers = api_instance.create_world_convention_paid_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_paid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_convention_withdraw

> <CreateBreakCancelResponse> create_world_convention_withdraw(id)

Withdraw your table or decline your invitation; as host, decline someone (username).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Withdraw your table or decline your invitation; as host, decline someone (username).
  result = api_instance.create_world_convention_withdraw(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_withdraw: #{e}"
end
```

#### Using the create_world_convention_withdraw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakCancelResponse>, Integer, Hash)> create_world_convention_withdraw_with_http_info(id)

```ruby
begin
  # Withdraw your table or decline your invitation; as host, decline someone (username).
  data, status_code, headers = api_instance.create_world_convention_withdraw_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakCancelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_convention_withdraw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_crew

> <CreateWorldCrewResponse> create_world_crew(create_world_crew_request)

Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members' nameplates) }. Answers its id and join code. 409 when you are already in a crew.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_crew_request = Crossly::CreateWorldCrewRequest.new({name: 'name_example', tag: 'tag_example'}) # CreateWorldCrewRequest | 

begin
  # Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members' nameplates) }. Answers its id and join code. 409 when you are already in a crew.
  result = api_instance.create_world_crew(create_world_crew_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew: #{e}"
end
```

#### Using the create_world_crew_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCrewResponse>, Integer, Hash)> create_world_crew_with_http_info(create_world_crew_request)

```ruby
begin
  # Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members' nameplates) }. Answers its id and join code. 409 when you are already in a crew.
  data, status_code, headers = api_instance.create_world_crew_with_http_info(create_world_crew_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCrewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_crew_request** | **CreateWorldCrewRequest** |  |  |

### Return type

**CreateWorldCrewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_crew_chat

> <WorldResponse> create_world_crew_chat(create_world_crew_chat_request)

Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_crew_chat_request = Crossly::CreateWorldCrewChatRequest.new({text: 'text_example'}) # CreateWorldCrewChatRequest | 

begin
  # Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.
  result = api_instance.create_world_crew_chat(create_world_crew_chat_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_chat: #{e}"
end
```

#### Using the create_world_crew_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse>, Integer, Hash)> create_world_crew_chat_with_http_info(create_world_crew_chat_request)

```ruby
begin
  # Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.
  data, status_code, headers = api_instance.create_world_crew_chat_with_http_info(create_world_crew_chat_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_crew_chat_request** | **CreateWorldCrewChatRequest** |  |  |

### Return type

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_crew_join

> <CreateWorldCrewJoinResponse> create_world_crew_join(create_world_crew_join_request)

Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_crew_join_request = Crossly::CreateWorldCrewJoinRequest.new({code: 'code_example'}) # CreateWorldCrewJoinRequest | 

begin
  # Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).
  result = api_instance.create_world_crew_join(create_world_crew_join_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_join: #{e}"
end
```

#### Using the create_world_crew_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCrewJoinResponse>, Integer, Hash)> create_world_crew_join_with_http_info(create_world_crew_join_request)

```ruby
begin
  # Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).
  data, status_code, headers = api_instance.create_world_crew_join_with_http_info(create_world_crew_join_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCrewJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_crew_join_request** | **CreateWorldCrewJoinRequest** |  |  |

### Return type

**CreateWorldCrewJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_crew_leave

> <CreateWorldCrewLeaveResponse> create_world_crew_leave

Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.
  result = api_instance.create_world_crew_leave
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_leave: #{e}"
end
```

#### Using the create_world_crew_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCrewLeaveResponse>, Integer, Hash)> create_world_crew_leave_with_http_info

```ruby
begin
  # Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.
  data, status_code, headers = api_instance.create_world_crew_leave_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCrewLeaveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_crew_leave_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldCrewLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_decor_design

> <CreateWorldDecorDesignResponse> create_world_decor_design

Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.
  result = api_instance.create_world_decor_design
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_design: #{e}"
end
```

#### Using the create_world_decor_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldDecorDesignResponse>, Integer, Hash)> create_world_decor_design_with_http_info

```ruby
begin
  # Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.
  data, status_code, headers = api_instance.create_world_decor_design_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldDecorDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_design_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldDecorDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_decor_design_submit

> <CreateWorldDecorDesignSubmitResponse> create_world_decor_design_submit(id)

Send one of your decor designs to the review queue.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Send one of your decor designs to the review queue.
  result = api_instance.create_world_decor_design_submit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_design_submit: #{e}"
end
```

#### Using the create_world_decor_design_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldDecorDesignSubmitResponse>, Integer, Hash)> create_world_decor_design_submit_with_http_info(id)

```ruby
begin
  # Send one of your decor designs to the review queue.
  data, status_code, headers = api_instance.create_world_decor_design_submit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldDecorDesignSubmitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_design_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldDecorDesignSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_decor_retract

> <CreateWorldDecorRetractResponse> create_world_decor_retract

Take a placed decor piece back into your inventory; answers the inventory after.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Take a placed decor piece back into your inventory; answers the inventory after.
  result = api_instance.create_world_decor_retract
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_retract: #{e}"
end
```

#### Using the create_world_decor_retract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldDecorRetractResponse>, Integer, Hash)> create_world_decor_retract_with_http_info

```ruby
begin
  # Take a placed decor piece back into your inventory; answers the inventory after.
  data, status_code, headers = api_instance.create_world_decor_retract_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldDecorRetractResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_decor_retract_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldDecorRetractResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_dm

> <CreateWorldDmResponse> create_world_dm(user_id, create_world_crew_chat_request)

Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = 'user_id_example' # String | 
create_world_crew_chat_request = Crossly::CreateWorldCrewChatRequest.new({text: 'text_example'}) # CreateWorldCrewChatRequest | 

begin
  # Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.
  result = api_instance.create_world_dm(user_id, create_world_crew_chat_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_dm: #{e}"
end
```

#### Using the create_world_dm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldDmResponse>, Integer, Hash)> create_world_dm_with_http_info(user_id, create_world_crew_chat_request)

```ruby
begin
  # Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.
  data, status_code, headers = api_instance.create_world_dm_with_http_info(user_id, create_world_crew_chat_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldDmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_dm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **create_world_crew_chat_request** | **CreateWorldCrewChatRequest** |  |  |

### Return type

**CreateWorldDmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_follow

> <CreateWorldFollowResponse> create_world_follow(user_id)

Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = 'user_id_example' # String | 

begin
  # Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.
  result = api_instance.create_world_follow(user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_follow: #{e}"
end
```

#### Using the create_world_follow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldFollowResponse>, Integer, Hash)> create_world_follow_with_http_info(user_id)

```ruby
begin
  # Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.
  data, status_code, headers = api_instance.create_world_follow_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldFollowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_follow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

**CreateWorldFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_friend_invite

> <CreateWorldFriendInviteResponse> create_world_friend_invite(user_id, create_world_friend_invite_request)

\"Join me\": send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_world_friend_invite_request = Crossly::CreateWorldFriendInviteRequest.new({slug: 'slug_example'}) # CreateWorldFriendInviteRequest | 

begin
  # \"Join me\": send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.
  result = api_instance.create_world_friend_invite(user_id, create_world_friend_invite_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_friend_invite: #{e}"
end
```

#### Using the create_world_friend_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldFriendInviteResponse>, Integer, Hash)> create_world_friend_invite_with_http_info(user_id, create_world_friend_invite_request)

```ruby
begin
  # \"Join me\": send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.
  data, status_code, headers = api_instance.create_world_friend_invite_with_http_info(user_id, create_world_friend_invite_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldFriendInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_friend_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **create_world_friend_invite_request** | **CreateWorldFriendInviteRequest** |  |  |

### Return type

**CreateWorldFriendInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_game_package

> <CreateWorldGamePackageResponse> create_world_game_package

Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.
  result = api_instance.create_world_game_package
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_package: #{e}"
end
```

#### Using the create_world_game_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGamePackageResponse>, Integer, Hash)> create_world_game_package_with_http_info

```ruby
begin
  # Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.
  data, status_code, headers = api_instance.create_world_game_package_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGamePackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_package_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldGamePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_game_package_check

> <CreateWorldGamePackageCheckResponse> create_world_game_package_check

Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.
  result = api_instance.create_world_game_package_check
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_package_check: #{e}"
end
```

#### Using the create_world_game_package_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGamePackageCheckResponse>, Integer, Hash)> create_world_game_package_check_with_http_info

```ruby
begin
  # Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.
  data, status_code, headers = api_instance.create_world_game_package_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGamePackageCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_package_check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldGamePackageCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_game_rating

> <CreateWorldGameRatingResponse> create_world_game_rating(id)

Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.
  result = api_instance.create_world_game_rating(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_rating: #{e}"
end
```

#### Using the create_world_game_rating_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGameRatingResponse>, Integer, Hash)> create_world_game_rating_with_http_info(id)

```ruby
begin
  # Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.
  data, status_code, headers = api_instance.create_world_game_rating_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGameRatingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldGameRatingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_game_report

> <CreateWorldGameReportResponse> create_world_game_report(id)

Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.
  result = api_instance.create_world_game_report(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_report: #{e}"
end
```

#### Using the create_world_game_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGameReportResponse>, Integer, Hash)> create_world_game_report_with_http_info(id)

```ruby
begin
  # Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.
  data, status_code, headers = api_instance.create_world_game_report_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGameReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldGameReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_game_store_checkout

> <CreateWorldGameStoreCheckoutResponse> create_world_game_store_checkout(id, item)

Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
item = 'item_example' # String | 

begin
  # Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.
  result = api_instance.create_world_game_store_checkout(id, item)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_store_checkout: #{e}"
end
```

#### Using the create_world_game_store_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGameStoreCheckoutResponse>, Integer, Hash)> create_world_game_store_checkout_with_http_info(id, item)

```ruby
begin
  # Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.
  data, status_code, headers = api_instance.create_world_game_store_checkout_with_http_info(id, item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGameStoreCheckoutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_game_store_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **item** | **String** |  |  |

### Return type

**CreateWorldGameStoreCheckoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_grail_match

> <CreateWorldGrailMatchResponse> create_world_grail_match

Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.
  result = api_instance.create_world_grail_match
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_grail_match: #{e}"
end
```

#### Using the create_world_grail_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGrailMatchResponse>, Integer, Hash)> create_world_grail_match_with_http_info

```ruby
begin
  # Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.
  data, status_code, headers = api_instance.create_world_grail_match_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGrailMatchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_grail_match_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldGrailMatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_hall_loan

> <CreateWorldHallLoanResponse> create_world_hall_loan

Lend a piece from your vault to this week's Hall of Grails exhibition: { vaultItemId, credit: 'name' | 'anonymous' }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Lend a piece from your vault to this week's Hall of Grails exhibition: { vaultItemId, credit: 'name' | 'anonymous' }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.
  result = api_instance.create_world_hall_loan
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_hall_loan: #{e}"
end
```

#### Using the create_world_hall_loan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldHallLoanResponse>, Integer, Hash)> create_world_hall_loan_with_http_info

```ruby
begin
  # Lend a piece from your vault to this week's Hall of Grails exhibition: { vaultItemId, credit: 'name' | 'anonymous' }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.
  data, status_code, headers = api_instance.create_world_hall_loan_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldHallLoanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_hall_loan_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_home_ask

> <CreateWorldHomeAskResponse> create_world_home_ask(slug)

Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).
  result = api_instance.create_world_home_ask(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_ask: #{e}"
end
```

#### Using the create_world_home_ask_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldHomeAskResponse>, Integer, Hash)> create_world_home_ask_with_http_info(slug)

```ruby
begin
  # Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).
  data, status_code, headers = api_instance.create_world_home_ask_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldHomeAskResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_ask_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldHomeAskResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_home_guestbook

> <CreateWorldHomeGuestbookResponse> create_world_home_guestbook(slug)

Sign a home guestbook (one short line).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Sign a home guestbook (one short line).
  result = api_instance.create_world_home_guestbook(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_guestbook: #{e}"
end
```

#### Using the create_world_home_guestbook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldHomeGuestbookResponse>, Integer, Hash)> create_world_home_guestbook_with_http_info(slug)

```ruby
begin
  # Sign a home guestbook (one short line).
  data, status_code, headers = api_instance.create_world_home_guestbook_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldHomeGuestbookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_guestbook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldHomeGuestbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_home_guestbook_report

> <CreateWorldGameReportResponse> create_world_home_guestbook_report(slug, id)

Report a guestbook entry to moderation.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
id = 'id_example' # String | 

begin
  # Report a guestbook entry to moderation.
  result = api_instance.create_world_home_guestbook_report(slug, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_guestbook_report: #{e}"
end
```

#### Using the create_world_home_guestbook_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldGameReportResponse>, Integer, Hash)> create_world_home_guestbook_report_with_http_info(slug, id)

```ruby
begin
  # Report a guestbook entry to moderation.
  data, status_code, headers = api_instance.create_world_home_guestbook_report_with_http_info(slug, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldGameReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_home_guestbook_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**CreateWorldGameReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_hunt_start

> <GetWorldHuntResponse> create_world_hunt_start

Start the Great Hunt this season by reading its first riddle (the Copper key's). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Start the Great Hunt this season by reading its first riddle (the Copper key's). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.
  result = api_instance.create_world_hunt_start
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_hunt_start: #{e}"
end
```

#### Using the create_world_hunt_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHuntResponse>, Integer, Hash)> create_world_hunt_start_with_http_info

```ruby
begin
  # Start the Great Hunt this season by reading its first riddle (the Copper key's). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.
  data, status_code, headers = api_instance.create_world_hunt_start_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHuntResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_hunt_start_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHuntResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_asset

> <CreateWorldInteractiveAssetResponse> create_world_interactive_asset

Upload one asset for your designs: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64. Answers its sha256 and the path to reference from MML.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Upload one asset for your designs: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64. Answers its sha256 and the path to reference from MML.
  result = api_instance.create_world_interactive_asset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_asset: #{e}"
end
```

#### Using the create_world_interactive_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldInteractiveAssetResponse>, Integer, Hash)> create_world_interactive_asset_with_http_info

```ruby
begin
  # Upload one asset for your designs: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64. Answers its sha256 and the path to reference from MML.
  data, status_code, headers = api_instance.create_world_interactive_asset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldInteractiveAssetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_asset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldInteractiveAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_design

> <GetWorldInteractiveDesignResponse> create_world_interactive_design

Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.
  result = api_instance.create_world_interactive_design
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design: #{e}"
end
```

#### Using the create_world_interactive_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldInteractiveDesignResponse>, Integer, Hash)> create_world_interactive_design_with_http_info

```ruby
begin
  # Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.
  data, status_code, headers = api_instance.create_world_interactive_design_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldInteractiveDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_design_check

> <CreateWorldInteractiveDesignCheckResponse> create_world_interactive_design_check(id)

Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.
  result = api_instance.create_world_interactive_design_check(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_check: #{e}"
end
```

#### Using the create_world_interactive_design_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldInteractiveDesignCheckResponse>, Integer, Hash)> create_world_interactive_design_check_with_http_info(id)

```ruby
begin
  # Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.
  data, status_code, headers = api_instance.create_world_interactive_design_check_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldInteractiveDesignCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldInteractiveDesignCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_design_preview

> <CreateWorldInteractiveDesignPreviewResponse> create_world_interactive_design_preview(id)

A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.
  result = api_instance.create_world_interactive_design_preview(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_preview: #{e}"
end
```

#### Using the create_world_interactive_design_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldInteractiveDesignPreviewResponse>, Integer, Hash)> create_world_interactive_design_preview_with_http_info(id)

```ruby
begin
  # A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.
  data, status_code, headers = api_instance.create_world_interactive_design_preview_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldInteractiveDesignPreviewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldInteractiveDesignPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_design_submit

> <CreateWorldInteractiveDesignSubmitResponse> create_world_interactive_design_submit(id)

Freeze the draft as a new version and send it to ops review. Up to 10 a day.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Freeze the draft as a new version and send it to ops review. Up to 10 a day.
  result = api_instance.create_world_interactive_design_submit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_submit: #{e}"
end
```

#### Using the create_world_interactive_design_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldInteractiveDesignSubmitResponse>, Integer, Hash)> create_world_interactive_design_submit_with_http_info(id)

```ruby
begin
  # Freeze the draft as a new version and send it to ops review. Up to 10 a day.
  data, status_code, headers = api_instance.create_world_interactive_design_submit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldInteractiveDesignSubmitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_design_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldInteractiveDesignSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_interactive_reset

> <CreateWorldInteractiveResetResponse> create_world_interactive_reset

Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).
  result = api_instance.create_world_interactive_reset
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_reset: #{e}"
end
```

#### Using the create_world_interactive_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldInteractiveResetResponse>, Integer, Hash)> create_world_interactive_reset_with_http_info

```ruby
begin
  # Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).
  data, status_code, headers = api_instance.create_world_interactive_reset_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldInteractiveResetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_interactive_reset_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldInteractiveResetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_job_appraisal_answer

> <CreateWorldJobAppraisalAnswerResponse> create_world_job_appraisal_answer(id)

Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.
  result = api_instance.create_world_job_appraisal_answer(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_appraisal_answer: #{e}"
end
```

#### Using the create_world_job_appraisal_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldJobAppraisalAnswerResponse>, Integer, Hash)> create_world_job_appraisal_answer_with_http_info(id)

```ruby
begin
  # Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.
  data, status_code, headers = api_instance.create_world_job_appraisal_answer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldJobAppraisalAnswerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_appraisal_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldJobAppraisalAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_job_shift_claim

> <CreateWorldJobShiftClaimResponse> create_world_job_shift_claim(id)

Claim an open shift. You work it by being in the place while it runs.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Claim an open shift. You work it by being in the place while it runs.
  result = api_instance.create_world_job_shift_claim(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_shift_claim: #{e}"
end
```

#### Using the create_world_job_shift_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldJobShiftClaimResponse>, Integer, Hash)> create_world_job_shift_claim_with_http_info(id)

```ruby
begin
  # Claim an open shift. You work it by being in the place while it runs.
  data, status_code, headers = api_instance.create_world_job_shift_claim_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldJobShiftClaimResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_shift_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldJobShiftClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_job_shift_release

> <CreateWorldJobShiftReleaseResponse> create_world_job_shift_release(id)

Give a shift you claimed back to the board.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Give a shift you claimed back to the board.
  result = api_instance.create_world_job_shift_release(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_shift_release: #{e}"
end
```

#### Using the create_world_job_shift_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldJobShiftReleaseResponse>, Integer, Hash)> create_world_job_shift_release_with_http_info(id)

```ruby
begin
  # Give a shift you claimed back to the board.
  data, status_code, headers = api_instance.create_world_job_shift_release_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldJobShiftReleaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_job_shift_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldJobShiftReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_outfit

> <CreateWorldOutfitResponse> create_world_outfit(create_world_outfit_request)

Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
create_world_outfit_request = Crossly::CreateWorldOutfitRequest.new({name: 'name_example'}) # CreateWorldOutfitRequest | 

begin
  # Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.
  result = api_instance.create_world_outfit(create_world_outfit_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_outfit: #{e}"
end
```

#### Using the create_world_outfit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldOutfitResponse>, Integer, Hash)> create_world_outfit_with_http_info(create_world_outfit_request)

```ruby
begin
  # Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.
  data, status_code, headers = api_instance.create_world_outfit_with_http_info(create_world_outfit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldOutfitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_outfit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_outfit_request** | **CreateWorldOutfitRequest** |  |  |

### Return type

**CreateWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_outfit_apply

> <CreateWorldOutfitApplyResponse> create_world_outfit_apply(id)

Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.
  result = api_instance.create_world_outfit_apply(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_outfit_apply: #{e}"
end
```

#### Using the create_world_outfit_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldOutfitApplyResponse>, Integer, Hash)> create_world_outfit_apply_with_http_info(id)

```ruby
begin
  # Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.
  data, status_code, headers = api_instance.create_world_outfit_apply_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldOutfitApplyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_outfit_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldOutfitApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party

> <CreateBreakResponse> create_world_party

Start a party with you as leader (up to 8 members).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Start a party with you as leader (up to 8 members).
  result = api_instance.create_world_party
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party: #{e}"
end
```

#### Using the create_world_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakResponse>, Integer, Hash)> create_world_party_with_http_info

```ruby
begin
  # Start a party with you as leader (up to 8 members).
  data, status_code, headers = api_instance.create_world_party_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_chat

> <WorldResponse> create_world_party_chat(id)

Say something in your party chat (up to 2000 characters).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Say something in your party chat (up to 2000 characters).
  result = api_instance.create_world_party_chat(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_chat: #{e}"
end
```

#### Using the create_world_party_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse>, Integer, Hash)> create_world_party_chat_with_http_info(id)

```ruby
begin
  # Say something in your party chat (up to 2000 characters).
  data, status_code, headers = api_instance.create_world_party_chat_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_invite

> <CreateWorldPartyInviteResponse> create_world_party_invite(id)

Invite a friend (userId) to your party.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Invite a friend (userId) to your party.
  result = api_instance.create_world_party_invite(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite: #{e}"
end
```

#### Using the create_world_party_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyInviteResponse>, Integer, Hash)> create_world_party_invite_with_http_info(id)

```ruby
begin
  # Invite a friend (userId) to your party.
  data, status_code, headers = api_instance.create_world_party_invite_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldPartyInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_invite_accept

> <CreateWorldPartyInviteAcceptResponse> create_world_party_invite_accept(invite_id)

Accept a party invite.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
invite_id = 'invite_id_example' # String | 

begin
  # Accept a party invite.
  result = api_instance.create_world_party_invite_accept(invite_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite_accept: #{e}"
end
```

#### Using the create_world_party_invite_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyInviteAcceptResponse>, Integer, Hash)> create_world_party_invite_accept_with_http_info(invite_id)

```ruby
begin
  # Accept a party invite.
  data, status_code, headers = api_instance.create_world_party_invite_accept_with_http_info(invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyInviteAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_id** | **String** |  |  |

### Return type

**CreateWorldPartyInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_invite_decline

> <CreateWorldPartyInviteAcceptResponse> create_world_party_invite_decline(invite_id)

Decline a party invite.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
invite_id = 'invite_id_example' # String | 

begin
  # Decline a party invite.
  result = api_instance.create_world_party_invite_decline(invite_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite_decline: #{e}"
end
```

#### Using the create_world_party_invite_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyInviteAcceptResponse>, Integer, Hash)> create_world_party_invite_decline_with_http_info(invite_id)

```ruby
begin
  # Decline a party invite.
  data, status_code, headers = api_instance.create_world_party_invite_decline_with_http_info(invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyInviteAcceptResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_invite_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_id** | **String** |  |  |

### Return type

**CreateWorldPartyInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_kick

> <CreateWorldPartyKickResponse> create_world_party_kick(id)

As leader, remove a member (userId).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # As leader, remove a member (userId).
  result = api_instance.create_world_party_kick(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_kick: #{e}"
end
```

#### Using the create_world_party_kick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyKickResponse>, Integer, Hash)> create_world_party_kick_with_http_info(id)

```ruby
begin
  # As leader, remove a member (userId).
  data, status_code, headers = api_instance.create_world_party_kick_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyKickResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_kick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldPartyKickResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_leader

> <CreateWorldPartyLeaderResponse> create_world_party_leader(id)

As leader, pass the lead to a member (userId).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # As leader, pass the lead to a member (userId).
  result = api_instance.create_world_party_leader(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_leader: #{e}"
end
```

#### Using the create_world_party_leader_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyLeaderResponse>, Integer, Hash)> create_world_party_leader_with_http_info(id)

```ruby
begin
  # As leader, pass the lead to a member (userId).
  data, status_code, headers = api_instance.create_world_party_leader_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyLeaderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_leader_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldPartyLeaderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_leave

> <CreateWorldPartyLeaveResponse> create_world_party_leave(id)

Leave your party (the lead passes on if you led it).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Leave your party (the lead passes on if you led it).
  result = api_instance.create_world_party_leave(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_leave: #{e}"
end
```

#### Using the create_world_party_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyLeaveResponse>, Integer, Hash)> create_world_party_leave_with_http_info(id)

```ruby
begin
  # Leave your party (the lead passes on if you led it).
  data, status_code, headers = api_instance.create_world_party_leave_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyLeaveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_leave_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldPartyLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_wishlist

> <CreateWorldPartyWishlistResponse> create_world_party_wishlist(id)

Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.
  result = api_instance.create_world_party_wishlist(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_wishlist: #{e}"
end
```

#### Using the create_world_party_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyWishlistResponse>, Integer, Hash)> create_world_party_wishlist_with_http_info(id)

```ruby
begin
  # Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.
  data, status_code, headers = api_instance.create_world_party_wishlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyWishlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_party_wishlist_vote

> <CreateWorldPartyWishlistResponse> create_world_party_wishlist_vote(id, listing_id)

Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
listing_id = 'listing_id_example' # String | 

begin
  # Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.
  result = api_instance.create_world_party_wishlist_vote(id, listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_wishlist_vote: #{e}"
end
```

#### Using the create_world_party_wishlist_vote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyWishlistResponse>, Integer, Hash)> create_world_party_wishlist_vote_with_http_info(id, listing_id)

```ruby
begin
  # Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.
  data, status_code, headers = api_instance.create_world_party_wishlist_vote_with_http_info(id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyWishlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_party_wishlist_vote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **listing_id** | **String** |  |  |

### Return type

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_place_item_want

> <CreateWorldPlaceItemWantResponse> create_world_place_item_want(slug, item_id)

Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
item_id = 'item_id_example' # String | 

begin
  # Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.
  result = api_instance.create_world_place_item_want(slug, item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_place_item_want: #{e}"
end
```

#### Using the create_world_place_item_want_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPlaceItemWantResponse>, Integer, Hash)> create_world_place_item_want_with_http_info(slug, item_id)

```ruby
begin
  # Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.
  data, status_code, headers = api_instance.create_world_place_item_want_with_http_info(slug, item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPlaceItemWantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_place_item_want_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **item_id** | **String** |  |  |

### Return type

**CreateWorldPlaceItemWantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space

> <CreateWorldSpaceResponse> create_world_space

Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.
  result = api_instance.create_world_space
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space: #{e}"
end
```

#### Using the create_world_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceResponse>, Integer, Hash)> create_world_space_with_http_info

```ruby
begin
  # Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.
  data, status_code, headers = api_instance.create_world_space_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_event

> <CreateWorldSpaceEventResponse> create_world_space_event(slug)

As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.
  result = api_instance.create_world_space_event(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_event: #{e}"
end
```

#### Using the create_world_space_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceEventResponse>, Integer, Hash)> create_world_space_event_with_http_info(slug)

```ruby
begin
  # As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.
  data, status_code, headers = api_instance.create_world_space_event_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldSpaceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_event_rsvp

> <CreateWorldSpaceEventRsvpResponse> create_world_space_event_rsvp(slug, id)

Say whether you are going to an event.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
id = 'id_example' # String | 

begin
  # Say whether you are going to an event.
  result = api_instance.create_world_space_event_rsvp(slug, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_event_rsvp: #{e}"
end
```

#### Using the create_world_space_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceEventRsvpResponse>, Integer, Hash)> create_world_space_event_rsvp_with_http_info(slug, id)

```ruby
begin
  # Say whether you are going to an event.
  data, status_code, headers = api_instance.create_world_space_event_rsvp_with_http_info(slug, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceEventRsvpResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**CreateWorldSpaceEventRsvpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_invite

> <CreateWorldSpaceInviteResponse> create_world_space_invite(slug)

Invite somebody (userId) to a Space.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Invite somebody (userId) to a Space.
  result = api_instance.create_world_space_invite(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_invite: #{e}"
end
```

#### Using the create_world_space_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceInviteResponse>, Integer, Hash)> create_world_space_invite_with_http_info(slug)

```ruby
begin
  # Invite somebody (userId) to a Space.
  data, status_code, headers = api_instance.create_world_space_invite_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldSpaceInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_join

> <CreateWorldSpaceJoinResponse> create_world_space_join(slug)

Join a Space, or ask to when it is request-only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Join a Space, or ask to when it is request-only.
  result = api_instance.create_world_space_join(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_join: #{e}"
end
```

#### Using the create_world_space_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceJoinResponse>, Integer, Hash)> create_world_space_join_with_http_info(slug)

```ruby
begin
  # Join a Space, or ask to when it is request-only.
  data, status_code, headers = api_instance.create_world_space_join_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_leave

> <CreateWorldCrewLeaveResponse> create_world_space_leave(slug)

Leave a Space.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Leave a Space.
  result = api_instance.create_world_space_leave(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_leave: #{e}"
end
```

#### Using the create_world_space_leave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldCrewLeaveResponse>, Integer, Hash)> create_world_space_leave_with_http_info(slug)

```ruby
begin
  # Leave a Space.
  data, status_code, headers = api_instance.create_world_space_leave_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldCrewLeaveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_leave_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldCrewLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_request_by_user_id

> <CreateWorldSpaceRequestByUserIdResponse> create_world_space_request_by_user_id(slug, user_id)

As host or co-host, accept or turn down a request to join.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # As host or co-host, accept or turn down a request to join.
  result = api_instance.create_world_space_request_by_user_id(slug, user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_request_by_user_id: #{e}"
end
```

#### Using the create_world_space_request_by_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceRequestByUserIdResponse>, Integer, Hash)> create_world_space_request_by_user_id_with_http_info(slug, user_id)

```ruby
begin
  # As host or co-host, accept or turn down a request to join.
  data, status_code, headers = api_instance.create_world_space_request_by_user_id_with_http_info(slug, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceRequestByUserIdResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_request_by_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**CreateWorldSpaceRequestByUserIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_space_role

> <CreateWorldSpaceRoleResponse> create_world_space_role(slug)

As host, make a member a co-host or back to a member.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # As host, make a member a co-host or back to a member.
  result = api_instance.create_world_space_role(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_role: #{e}"
end
```

#### Using the create_world_space_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldSpaceRoleResponse>, Integer, Hash)> create_world_space_role_with_http_info(slug)

```ruby
begin
  # As host, make a member a co-host or back to a member.
  data, status_code, headers = api_instance.create_world_space_role_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldSpaceRoleResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->create_world_space_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**CreateWorldSpaceRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_spatial_scene_grant

> <DeleteSpatialSceneGrantResponse> delete_spatial_scene_grant(id, grant_id)

Take somebody's access to your room away, or kill an invite nobody has used yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
grant_id = 'grant_id_example' # String | 

begin
  # Take somebody's access to your room away, or kill an invite nobody has used yet.
  result = api_instance.delete_spatial_scene_grant(id, grant_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_grant: #{e}"
end
```

#### Using the delete_spatial_scene_grant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_spatial_scene_grant_with_http_info(id, grant_id)

```ruby
begin
  # Take somebody's access to your room away, or kill an invite nobody has used yet.
  data, status_code, headers = api_instance.delete_spatial_scene_grant_with_http_info(id, grant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_grant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **grant_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_spatial_scene_node

> <DeleteSpatialSceneNodeResponse> delete_spatial_scene_node(id)

Remove units (by id, up to 500) from one of your warehouse rooms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Remove units (by id, up to 500) from one of your warehouse rooms.
  result = api_instance.delete_spatial_scene_node(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_node: #{e}"
end
```

#### Using the delete_spatial_scene_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneNodeResponse>, Integer, Hash)> delete_spatial_scene_node_with_http_info(id)

```ruby
begin
  # Remove units (by id, up to 500) from one of your warehouse rooms.
  data, status_code, headers = api_instance.delete_spatial_scene_node_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_spatial_scene_warehouse_stock

> <DeleteSpatialSceneGrantResponse> delete_spatial_scene_warehouse_stock(id)

Take an inventory item (or unit) off its rack.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Take an inventory item (or unit) off its rack.
  result = api_instance.delete_spatial_scene_warehouse_stock(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_warehouse_stock: #{e}"
end
```

#### Using the delete_spatial_scene_warehouse_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_spatial_scene_warehouse_stock_with_http_info(id)

```ruby
begin
  # Take an inventory item (or unit) off its rack.
  data, status_code, headers = api_instance.delete_spatial_scene_warehouse_stock_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_scene_warehouse_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_spatial_street_request

> <DeleteDaoProposalResponse> delete_spatial_street_request(id)

Withdraw a street request you made that has not been founded yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Withdraw a street request you made that has not been founded yet.
  result = api_instance.delete_spatial_street_request(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_street_request: #{e}"
end
```

#### Using the delete_spatial_street_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDaoProposalResponse>, Integer, Hash)> delete_spatial_street_request_with_http_info(id)

```ruby
begin
  # Withdraw a street request you made that has not been founded yet.
  data, status_code, headers = api_instance.delete_spatial_street_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDaoProposalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_spatial_street_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_block

> <DeleteWorldBlockResponse> delete_world_block(id)

Unblock somebody (by the block id from GET /v1/world/blocks).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Unblock somebody (by the block id from GET /v1/world/blocks).
  result = api_instance.delete_world_block(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_block: #{e}"
end
```

#### Using the delete_world_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldBlockResponse>, Integer, Hash)> delete_world_block_with_http_info(id)

```ruby
begin
  # Unblock somebody (by the block id from GET /v1/world/blocks).
  data, status_code, headers = api_instance.delete_world_block_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldBlockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteWorldBlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_collection_capability

> delete_world_collection_capability(chain, contract)

Withdraw your declaration for a collection.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # Withdraw your declaration for a collection.
  api_instance.delete_world_collection_capability(chain, contract)
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_collection_capability: #{e}"
end
```

#### Using the delete_world_collection_capability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_world_collection_capability_with_http_info(chain, contract)

```ruby
begin
  # Withdraw your declaration for a collection.
  data, status_code, headers = api_instance.delete_world_collection_capability_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_collection_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_follow

> <CreateWorldFollowResponse> delete_world_follow(user_id)

Unfollow somebody. Idempotent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = 'user_id_example' # String | 

begin
  # Unfollow somebody. Idempotent.
  result = api_instance.delete_world_follow(user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_follow: #{e}"
end
```

#### Using the delete_world_follow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldFollowResponse>, Integer, Hash)> delete_world_follow_with_http_info(user_id)

```ruby
begin
  # Unfollow somebody. Idempotent.
  data, status_code, headers = api_instance.delete_world_follow_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldFollowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_follow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

**CreateWorldFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_hall_loan

> <CreateBreakResponse> delete_world_hall_loan(id)

Take one of your loans off show in the Hall of Grails.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Take one of your loans off show in the Hall of Grails.
  result = api_instance.delete_world_hall_loan(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_hall_loan: #{e}"
end
```

#### Using the delete_world_hall_loan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBreakResponse>, Integer, Hash)> delete_world_hall_loan_with_http_info(id)

```ruby
begin
  # Take one of your loans off show in the Hall of Grails.
  data, status_code, headers = api_instance.delete_world_hall_loan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBreakResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_hall_loan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_home_guestbook

> <DeleteWorldHomeGuestbookResponse> delete_world_home_guestbook(slug, id)

As the home owner, hide a guestbook entry.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
id = 'id_example' # String | 

begin
  # As the home owner, hide a guestbook entry.
  result = api_instance.delete_world_home_guestbook(slug, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_home_guestbook: #{e}"
end
```

#### Using the delete_world_home_guestbook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldHomeGuestbookResponse>, Integer, Hash)> delete_world_home_guestbook_with_http_info(slug, id)

```ruby
begin
  # As the home owner, hide a guestbook entry.
  data, status_code, headers = api_instance.delete_world_home_guestbook_with_http_info(slug, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldHomeGuestbookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_home_guestbook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**DeleteWorldHomeGuestbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_interactive_design

> <DeleteWorldInteractiveDesignResponse> delete_world_interactive_design(id)

Delete a draft design, or archive a submitted one (off sale; owned copies keep working).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Delete a draft design, or archive a submitted one (off sale; owned copies keep working).
  result = api_instance.delete_world_interactive_design(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_interactive_design: #{e}"
end
```

#### Using the delete_world_interactive_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldInteractiveDesignResponse>, Integer, Hash)> delete_world_interactive_design_with_http_info(id)

```ruby
begin
  # Delete a draft design, or archive a submitted one (off sale; owned copies keep working).
  data, status_code, headers = api_instance.delete_world_interactive_design_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldInteractiveDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_interactive_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_job_shift

> <DeleteWorldJobShiftResponse> delete_world_job_shift(id)

Cancel a shift you posted that nobody has worked yet.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Cancel a shift you posted that nobody has worked yet.
  result = api_instance.delete_world_job_shift(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_job_shift: #{e}"
end
```

#### Using the delete_world_job_shift_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldJobShiftResponse>, Integer, Hash)> delete_world_job_shift_with_http_info(id)

```ruby
begin
  # Cancel a shift you posted that nobody has worked yet.
  data, status_code, headers = api_instance.delete_world_job_shift_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldJobShiftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_job_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteWorldJobShiftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_outfit

> <DeleteWorldOutfitResponse> delete_world_outfit(id)

Delete a saved look. 404 when it is not yours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a saved look. 404 when it is not yours.
  result = api_instance.delete_world_outfit(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_outfit: #{e}"
end
```

#### Using the delete_world_outfit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldOutfitResponse>, Integer, Hash)> delete_world_outfit_with_http_info(id)

```ruby
begin
  # Delete a saved look. 404 when it is not yours.
  data, status_code, headers = api_instance.delete_world_outfit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldOutfitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_outfit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**DeleteWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_party_wishlist

> <CreateWorldPartyWishlistResponse> delete_world_party_wishlist(id, listing_id)

Take a listing you added off the party wishlist; answers the wishlist.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
listing_id = 'listing_id_example' # String | 

begin
  # Take a listing you added off the party wishlist; answers the wishlist.
  result = api_instance.delete_world_party_wishlist(id, listing_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_party_wishlist: #{e}"
end
```

#### Using the delete_world_party_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldPartyWishlistResponse>, Integer, Hash)> delete_world_party_wishlist_with_http_info(id, listing_id)

```ruby
begin
  # Take a listing you added off the party wishlist; answers the wishlist.
  data, status_code, headers = api_instance.delete_world_party_wishlist_with_http_info(id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldPartyWishlistResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_party_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **listing_id** | **String** |  |  |

### Return type

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_place_ban

> <DeleteWorldPlaceBanResponse> delete_world_place_ban(slug, user_id)

Lift a ban from a place you own; they can walk in again right away.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Lift a ban from a place you own; they can walk in again right away.
  result = api_instance.delete_world_place_ban(slug, user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_place_ban: #{e}"
end
```

#### Using the delete_world_place_ban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldPlaceBanResponse>, Integer, Hash)> delete_world_place_ban_with_http_info(slug, user_id)

```ruby
begin
  # Lift a ban from a place you own; they can walk in again right away.
  data, status_code, headers = api_instance.delete_world_place_ban_with_http_info(slug, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldPlaceBanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_place_ban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**DeleteWorldPlaceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_space

> <DeleteWorldSpaceResponse> delete_world_space(slug)

As host, close a Space.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # As host, close a Space.
  result = api_instance.delete_world_space(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_space: #{e}"
end
```

#### Using the delete_world_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldSpaceResponse>, Integer, Hash)> delete_world_space_with_http_info(slug)

```ruby
begin
  # As host, close a Space.
  data, status_code, headers = api_instance.delete_world_space_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldSpaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**DeleteWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_space_event

> <DeleteWorldJobShiftResponse> delete_world_space_event(slug, id)

As host or co-host, cancel an event.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
id = 'id_example' # String | 

begin
  # As host or co-host, cancel an event.
  result = api_instance.delete_world_space_event(slug, id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_space_event: #{e}"
end
```

#### Using the delete_world_space_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldJobShiftResponse>, Integer, Hash)> delete_world_space_event_with_http_info(slug, id)

```ruby
begin
  # As host or co-host, cancel an event.
  data, status_code, headers = api_instance.delete_world_space_event_with_http_info(slug, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldJobShiftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->delete_world_space_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**DeleteWorldJobShiftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_scene_attention

> <GetSpatialSceneAttentionResponse> get_spatial_scene_attention(scene_id)

What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
scene_id = 'scene_id_example' # String | 

begin
  # What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).
  result = api_instance.get_spatial_scene_attention(scene_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_scene_attention: #{e}"
end
```

#### Using the get_spatial_scene_attention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialSceneAttentionResponse>, Integer, Hash)> get_spatial_scene_attention_with_http_info(scene_id)

```ruby
begin
  # What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).
  data, status_code, headers = api_instance.get_spatial_scene_attention_with_http_info(scene_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialSceneAttentionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_scene_attention_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scene_id** | **String** |  |  |

### Return type

**GetSpatialSceneAttentionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_scene_window

> <GetSpatialSceneWindowResponse> get_spatial_scene_window(id)

The listings you chose for the street window of your shop, in slot order (left, middle, right; empty = newest first), and `choices`: your listings that can go in it, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # The listings you chose for the street window of your shop, in slot order (left, middle, right; empty = newest first), and `choices`: your listings that can go in it, newest first.
  result = api_instance.get_spatial_scene_window(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_scene_window: #{e}"
end
```

#### Using the get_spatial_scene_window_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialSceneWindowResponse>, Integer, Hash)> get_spatial_scene_window_with_http_info(id)

```ruby
begin
  # The listings you chose for the street window of your shop, in slot order (left, middle, right; empty = newest first), and `choices`: your listings that can go in it, newest first.
  data, status_code, headers = api_instance.get_spatial_scene_window_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialSceneWindowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_scene_window_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetSpatialSceneWindowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_shop_neighbourhood

> <GetSpatialShopNeighbourhoodResponse> get_spatial_shop_neighbourhood

Your shop's neighbourhood, and whether and where it may move.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your shop's neighbourhood, and whether and where it may move.
  result = api_instance.get_spatial_shop_neighbourhood
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_shop_neighbourhood: #{e}"
end
```

#### Using the get_spatial_shop_neighbourhood_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialShopNeighbourhoodResponse>, Integer, Hash)> get_spatial_shop_neighbourhood_with_http_info

```ruby
begin
  # Your shop's neighbourhood, and whether and where it may move.
  data, status_code, headers = api_instance.get_spatial_shop_neighbourhood_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialShopNeighbourhoodResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_shop_neighbourhood_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetSpatialShopNeighbourhoodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_space

> <GetSpatialSpaceResponse> get_spatial_space

The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.
  result = api_instance.get_spatial_space
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_space: #{e}"
end
```

#### Using the get_spatial_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialSpaceResponse>, Integer, Hash)> get_spatial_space_with_http_info

```ruby
begin
  # The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.
  data, status_code, headers = api_instance.get_spatial_space_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialSpaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_space_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetSpatialSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_street_admission

> <GetSpatialStreetAdmissionResponse> get_spatial_street_admission

Street applications and invitations: yours, and those waiting on streets you own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Street applications and invitations: yours, and those waiting on streets you own.
  result = api_instance.get_spatial_street_admission
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_street_admission: #{e}"
end
```

#### Using the get_spatial_street_admission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialStreetAdmissionResponse>, Integer, Hash)> get_spatial_street_admission_with_http_info

```ruby
begin
  # Street applications and invitations: yours, and those waiting on streets you own.
  data, status_code, headers = api_instance.get_spatial_street_admission_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialStreetAdmissionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_street_admission_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetSpatialStreetAdmissionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spatial_street_decor

> <GetSpatialStreetDecorResponse> get_spatial_street_decor(slug)

The decor on a street you may dress, and what you can place.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The decor on a street you may dress, and what you can place.
  result = api_instance.get_spatial_street_decor(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_street_decor: #{e}"
end
```

#### Using the get_spatial_street_decor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialStreetDecorResponse>, Integer, Hash)> get_spatial_street_decor_with_http_info(slug)

```ruby
begin
  # The decor on a street you may dress, and what you can place.
  data, status_code, headers = api_instance.get_spatial_street_decor_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialStreetDecorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_spatial_street_decor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetSpatialStreetDecorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_arcade

> <GetWorldArcadeResponse> get_world_arcade

The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \"A player\"), plus creatorGames (creator games with a cabinet now). Games are played in the world.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \"A player\"), plus creatorGames (creator games with a cabinet now). Games are played in the world.
  result = api_instance.get_world_arcade
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_arcade: #{e}"
end
```

#### Using the get_world_arcade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldArcadeResponse>, Integer, Hash)> get_world_arcade_with_http_info

```ruby
begin
  # The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \"A player\"), plus creatorGames (creator games with a cabinet now). Games are played in the world.
  data, status_code, headers = api_instance.get_world_arcade_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldArcadeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_arcade_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldArcadeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_aurora

> <GetWorldAuroraResponse> get_world_aurora

The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.
  result = api_instance.get_world_aurora
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_aurora: #{e}"
end
```

#### Using the get_world_aurora_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAuroraResponse>, Integer, Hash)> get_world_aurora_with_http_info

```ruby
begin
  # The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.
  data, status_code, headers = api_instance.get_world_aurora_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAuroraResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_aurora_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAuroraResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_auto_shop

> <GetWorldAutoShopResponse> get_world_auto_shop

Whether Crossly keeps a world shop for you automatically: enabled, and the shop (id, name, visibility, autoCreated, address, label) or null. Change it with PATCH /v1/world/auto-shop.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Whether Crossly keeps a world shop for you automatically: enabled, and the shop (id, name, visibility, autoCreated, address, label) or null. Change it with PATCH /v1/world/auto-shop.
  result = api_instance.get_world_auto_shop
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_auto_shop: #{e}"
end
```

#### Using the get_world_auto_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAutoShopResponse>, Integer, Hash)> get_world_auto_shop_with_http_info

```ruby
begin
  # Whether Crossly keeps a world shop for you automatically: enabled, and the shop (id, name, visibility, autoCreated, address, label) or null. Change it with PATCH /v1/world/auto-shop.
  data, status_code, headers = api_instance.get_world_auto_shop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAutoShopResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_auto_shop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAutoShopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_avatar_identity

> <GetWorldAvatarIdentityResponse> get_world_avatar_identity

Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.
  result = api_instance.get_world_avatar_identity
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_identity: #{e}"
end
```

#### Using the get_world_avatar_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarIdentityResponse>, Integer, Hash)> get_world_avatar_identity_with_http_info

```ruby
begin
  # Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.
  data, status_code, headers = api_instance.get_world_avatar_identity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarIdentityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_identity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAvatarIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_avatar_loadout

> <GetWorldAvatarLoadoutResponse> get_world_avatar_loadout

What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.
  result = api_instance.get_world_avatar_loadout
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_loadout: #{e}"
end
```

#### Using the get_world_avatar_loadout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarLoadoutResponse>, Integer, Hash)> get_world_avatar_loadout_with_http_info

```ruby
begin
  # What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.
  data, status_code, headers = api_instance.get_world_avatar_loadout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarLoadoutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_loadout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAvatarLoadoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_avatar_loadout_by_user_id

> <GetWorldAvatarLoadoutResponse> get_world_avatar_loadout_by_user_id(user_id)

What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.
  result = api_instance.get_world_avatar_loadout_by_user_id(user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_loadout_by_user_id: #{e}"
end
```

#### Using the get_world_avatar_loadout_by_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarLoadoutResponse>, Integer, Hash)> get_world_avatar_loadout_by_user_id_with_http_info(user_id)

```ruby
begin
  # What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.
  data, status_code, headers = api_instance.get_world_avatar_loadout_by_user_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarLoadoutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_loadout_by_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

**GetWorldAvatarLoadoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_avatar_look

> <GetWorldAvatarLookResponse> get_world_avatar_look

Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.
  result = api_instance.get_world_avatar_look
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_look: #{e}"
end
```

#### Using the get_world_avatar_look_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarLookResponse>, Integer, Hash)> get_world_avatar_look_with_http_info

```ruby
begin
  # Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.
  data, status_code, headers = api_instance.get_world_avatar_look_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarLookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_look_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAvatarLookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_avatar_nft_badge

> <GetWorldAvatarNftBadgeResponse> get_world_avatar_nft_badge

The NFT you wear on your nameplate in the world, or null.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The NFT you wear on your nameplate in the world, or null.
  result = api_instance.get_world_avatar_nft_badge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_nft_badge: #{e}"
end
```

#### Using the get_world_avatar_nft_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarNftBadgeResponse>, Integer, Hash)> get_world_avatar_nft_badge_with_http_info

```ruby
begin
  # The NFT you wear on your nameplate in the world, or null.
  data, status_code, headers = api_instance.get_world_avatar_nft_badge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarNftBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_avatar_nft_badge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAvatarNftBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_capability

> <GetWorldCapabilityResponse> get_world_capability

What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.
  result = api_instance.get_world_capability
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability: #{e}"
end
```

#### Using the get_world_capability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCapabilityResponse>, Integer, Hash)> get_world_capability_with_http_info

```ruby
begin
  # What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.
  data, status_code, headers = api_instance.get_world_capability_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCapabilityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_capability_catalogue

> <GetWorldCapabilityCatalogueResponse> get_world_capability_catalogue

The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.
  result = api_instance.get_world_capability_catalogue
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability_catalogue: #{e}"
end
```

#### Using the get_world_capability_catalogue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCapabilityCatalogueResponse>, Integer, Hash)> get_world_capability_catalogue_with_http_info

```ruby
begin
  # The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.
  data, status_code, headers = api_instance.get_world_capability_catalogue_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCapabilityCatalogueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability_catalogue_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCapabilityCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_capability_wear

> <GetWorldCapabilityWearResponse> get_world_capability_wear

What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.
  result = api_instance.get_world_capability_wear
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability_wear: #{e}"
end
```

#### Using the get_world_capability_wear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCapabilityWearResponse>, Integer, Hash)> get_world_capability_wear_with_http_info

```ruby
begin
  # What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.
  data, status_code, headers = api_instance.get_world_capability_wear_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCapabilityWearResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_capability_wear_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCapabilityWearResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_chest

> <GetWorldChestResponse> get_world_chest

The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.
  result = api_instance.get_world_chest
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_chest: #{e}"
end
```

#### Using the get_world_chest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldChestResponse>, Integer, Hash)> get_world_chest_with_http_info

```ruby
begin
  # The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.
  data, status_code, headers = api_instance.get_world_chest_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldChestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_chest_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldChestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_collection_capability

> <GetWorldCollectionCapabilityResponse> get_world_collection_capability(chain, contract)

The live capability declaration of a collection (404 when it has none).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # The live capability declaration of a collection (404 when it has none).
  result = api_instance.get_world_collection_capability(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_collection_capability: #{e}"
end
```

#### Using the get_world_collection_capability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCollectionCapabilityResponse>, Integer, Hash)> get_world_collection_capability_with_http_info(chain, contract)

```ruby
begin
  # The live capability declaration of a collection (404 when it has none).
  data, status_code, headers = api_instance.get_world_collection_capability_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCollectionCapabilityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_collection_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWorldCollectionCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_contest_mine

> <GetWorldContestMineResponse> get_world_contest_mine

Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).
  result = api_instance.get_world_contest_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_contest_mine: #{e}"
end
```

#### Using the get_world_contest_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldContestMineResponse>, Integer, Hash)> get_world_contest_mine_with_http_info

```ruby
begin
  # Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).
  data, status_code, headers = api_instance.get_world_contest_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldContestMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_contest_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldContestMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_convention

> <GetWorldConventionResponse> get_world_convention(id)

One convention. 404 for an unknown or malformed id alike.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # One convention. 404 for an unknown or malformed id alike.
  result = api_instance.get_world_convention(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_convention: #{e}"
end
```

#### Using the get_world_convention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldConventionResponse>, Integer, Hash)> get_world_convention_with_http_info(id)

```ruby
begin
  # One convention. 404 for an unknown or malformed id alike.
  data, status_code, headers = api_instance.get_world_convention_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldConventionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_convention_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWorldConventionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_cosm_balance

> <GetWorldCosmBalanceResponse> get_world_cosm_balance

Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false = COSM is not provisioned on this deployment, not a zero balance).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false = COSM is not provisioned on this deployment, not a zero balance).
  result = api_instance.get_world_cosm_balance
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_cosm_balance: #{e}"
end
```

#### Using the get_world_cosm_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCosmBalanceResponse>, Integer, Hash)> get_world_cosm_balance_with_http_info

```ruby
begin
  # Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false = COSM is not provisioned on this deployment, not a zero balance).
  data, status_code, headers = api_instance.get_world_cosm_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCosmBalanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_cosm_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCosmBalanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_crew

> <GetWorldCrewResponse> get_world_crew

Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).
  result = api_instance.get_world_crew
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew: #{e}"
end
```

#### Using the get_world_crew_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCrewResponse>, Integer, Hash)> get_world_crew_with_http_info

```ruby
begin
  # Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).
  data, status_code, headers = api_instance.get_world_crew_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCrewResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCrewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_crew_chat

> <WorldResponse> get_world_crew_chat

Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.
  result = api_instance.get_world_crew_chat
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew_chat: #{e}"
end
```

#### Using the get_world_crew_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse>, Integer, Hash)> get_world_crew_chat_with_http_info

```ruby
begin
  # Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.
  data, status_code, headers = api_instance.get_world_crew_chat_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew_chat_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_crew_leaderboard

> <GetGameLeaderboardResponse> get_world_crew_leaderboard

The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.
  result = api_instance.get_world_crew_leaderboard
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew_leaderboard: #{e}"
end
```

#### Using the get_world_crew_leaderboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGameLeaderboardResponse>, Integer, Hash)> get_world_crew_leaderboard_with_http_info

```ruby
begin
  # The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.
  data, status_code, headers = api_instance.get_world_crew_leaderboard_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGameLeaderboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_crew_leaderboard_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetGameLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_dm

> <GetWorldDmResponse> get_world_dm(user_id)

Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
user_id = 'user_id_example' # String | 

begin
  # Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.
  result = api_instance.get_world_dm(user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_dm: #{e}"
end
```

#### Using the get_world_dm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldDmResponse>, Integer, Hash)> get_world_dm_with_http_info(user_id)

```ruby
begin
  # Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.
  data, status_code, headers = api_instance.get_world_dm_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldDmResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_dm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

**GetWorldDmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_emote_showable

> <GetWorldEmoteShowableResponse> get_world_emote_showable

The things you own that a show-off emote can hold up.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The things you own that a show-off emote can hold up.
  result = api_instance.get_world_emote_showable
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_emote_showable: #{e}"
end
```

#### Using the get_world_emote_showable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldEmoteShowableResponse>, Integer, Hash)> get_world_emote_showable_with_http_info

```ruby
begin
  # The things you own that a show-off emote can hold up.
  data, status_code, headers = api_instance.get_world_emote_showable_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldEmoteShowableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_emote_showable_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldEmoteShowableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_firefly

> <GetWorldFireflyResponse> get_world_firefly

Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.
  result = api_instance.get_world_firefly
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_firefly: #{e}"
end
```

#### Using the get_world_firefly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldFireflyResponse>, Integer, Hash)> get_world_firefly_with_http_info

```ruby
begin
  # Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.
  data, status_code, headers = api_instance.get_world_firefly_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldFireflyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_firefly_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldFireflyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_fit_stat

> <GetWorldFitStatResponse> get_world_fit_stat

Your walking storefront, last 7 days: distinct people who tapped \"Shop this\" or \"Offer\" on what you wore, and how many of each. Counts only; nobody is identified.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your walking storefront, last 7 days: distinct people who tapped \"Shop this\" or \"Offer\" on what you wore, and how many of each. Counts only; nobody is identified.
  result = api_instance.get_world_fit_stat
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_fit_stat: #{e}"
end
```

#### Using the get_world_fit_stat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldFitStatResponse>, Integer, Hash)> get_world_fit_stat_with_http_info

```ruby
begin
  # Your walking storefront, last 7 days: distinct people who tapped \"Shop this\" or \"Offer\" on what you wore, and how many of each. Counts only; nobody is identified.
  data, status_code, headers = api_instance.get_world_fit_stat_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldFitStatResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_fit_stat_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldFitStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_fit_value

> <GetWorldFitValueResponse> get_world_fit_value

What your outfit is worth on the market: cents (sum of each catalogued piece's order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # What your outfit is worth on the market: cents (sum of each catalogued piece's order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).
  result = api_instance.get_world_fit_value
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_fit_value: #{e}"
end
```

#### Using the get_world_fit_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldFitValueResponse>, Integer, Hash)> get_world_fit_value_with_http_info

```ruby
begin
  # What your outfit is worth on the market: cents (sum of each catalogued piece's order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).
  data, status_code, headers = api_instance.get_world_fit_value_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldFitValueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_fit_value_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldFitValueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game

> <GetWorldGameResponse> get_world_game(id)

One live game: its manifest, its store items and which you own.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # One live game: its manifest, its store items and which you own.
  result = api_instance.get_world_game(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game: #{e}"
end
```

#### Using the get_world_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameResponse>, Integer, Hash)> get_world_game_with_http_info(id)

```ruby
begin
  # One live game: its manifest, its store items and which you own.
  data, status_code, headers = api_instance.get_world_game_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWorldGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_leaderboard

> <GetWorldGameLeaderboardResponse> get_world_game_leaderboard(id)

A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.
  result = api_instance.get_world_game_leaderboard(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_leaderboard: #{e}"
end
```

#### Using the get_world_game_leaderboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameLeaderboardResponse>, Integer, Hash)> get_world_game_leaderboard_with_http_info(id)

```ruby
begin
  # A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.
  data, status_code, headers = api_instance.get_world_game_leaderboard_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameLeaderboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_leaderboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWorldGameLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_package

> <GetWorldGamePackageResponse> get_world_game_package(id)

One of your game packages with every version, its review state and decision note.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # One of your game packages with every version, its review state and decision note.
  result = api_instance.get_world_game_package(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_package: #{e}"
end
```

#### Using the get_world_game_package_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGamePackageResponse>, Integer, Hash)> get_world_game_package_with_http_info(id)

```ruby
begin
  # One of your game packages with every version, its review state and decision note.
  data, status_code, headers = api_instance.get_world_game_package_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGamePackageResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_package_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWorldGamePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_template

> <GetWorldGameTemplateResponse> get_world_game_template(kind)

A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id=my-game&name=My Game.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
kind = 'kind_example' # String | 

begin
  # A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id=my-game&name=My Game.
  result = api_instance.get_world_game_template(kind)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_template: #{e}"
end
```

#### Using the get_world_game_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameTemplateResponse>, Integer, Hash)> get_world_game_template_with_http_info(kind)

```ruby
begin
  # A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id=my-game&name=My Game.
  data, status_code, headers = api_instance.get_world_game_template_with_http_info(kind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameTemplateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_game_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |

### Return type

**GetWorldGameTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_hall

> <GetWorldHallResponse> get_world_hall

The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one's title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one's title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.
  result = api_instance.get_world_hall
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hall: #{e}"
end
```

#### Using the get_world_hall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHallResponse>, Integer, Hash)> get_world_hall_with_http_info

```ruby
begin
  # The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one's title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.
  data, status_code, headers = api_instance.get_world_hall_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHallResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hall_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_hall_loan

> <GetWorldHallLoanResponse> get_world_hall_loan

Lend to the Hall: this week's exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition's category. perMember is how many you may lend each week.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Lend to the Hall: this week's exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition's category. perMember is how many you may lend each week.
  result = api_instance.get_world_hall_loan
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hall_loan: #{e}"
end
```

#### Using the get_world_hall_loan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHallLoanResponse>, Integer, Hash)> get_world_hall_loan_with_http_info

```ruby
begin
  # Lend to the Hall: this week's exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition's category. perMember is how many you may lend each week.
  data, status_code, headers = api_instance.get_world_hall_loan_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHallLoanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hall_loan_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_home_placeable

> <GetWorldHomePlaceableResponse> get_world_home_placeable

What you can place in your home: your items and your furniture.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # What you can place in your home: your items and your furniture.
  result = api_instance.get_world_home_placeable
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_home_placeable: #{e}"
end
```

#### Using the get_world_home_placeable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHomePlaceableResponse>, Integer, Hash)> get_world_home_placeable_with_http_info

```ruby
begin
  # What you can place in your home: your items and your furniture.
  data, status_code, headers = api_instance.get_world_home_placeable_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHomePlaceableResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_home_placeable_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHomePlaceableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_hunt

> <GetWorldHuntResponse> get_world_hunt

Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.
  result = api_instance.get_world_hunt
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hunt: #{e}"
end
```

#### Using the get_world_hunt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHuntResponse>, Integer, Hash)> get_world_hunt_with_http_info

```ruby
begin
  # Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.
  data, status_code, headers = api_instance.get_world_hunt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHuntResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hunt_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHuntResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_hunt_scoreboard

> <GetWorldHuntScoreboardResponse> get_world_hunt_scoreboard

The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \"A player\") and total (everybody through the Gate this season).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \"A player\") and total (everybody through the Gate this season).
  result = api_instance.get_world_hunt_scoreboard
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hunt_scoreboard: #{e}"
end
```

#### Using the get_world_hunt_scoreboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldHuntScoreboardResponse>, Integer, Hash)> get_world_hunt_scoreboard_with_http_info

```ruby
begin
  # The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \"A player\") and total (everybody through the Gate this season).
  data, status_code, headers = api_instance.get_world_hunt_scoreboard_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldHuntScoreboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_hunt_scoreboard_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldHuntScoreboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_interactive_design

> <GetWorldInteractiveDesignResponse> get_world_interactive_design(id)

One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.
  result = api_instance.get_world_interactive_design(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_interactive_design: #{e}"
end
```

#### Using the get_world_interactive_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldInteractiveDesignResponse>, Integer, Hash)> get_world_interactive_design_with_http_info(id)

```ruby
begin
  # One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.
  data, status_code, headers = api_instance.get_world_interactive_design_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldInteractiveDesignResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_interactive_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**GetWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_job

> <GetWorldJobResponse> get_world_job

The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.
  result = api_instance.get_world_job
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_job: #{e}"
end
```

#### Using the get_world_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldJobResponse>, Integer, Hash)> get_world_job_with_http_info

```ruby
begin
  # The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.
  data, status_code, headers = api_instance.get_world_job_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldJobResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_job_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldJobResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_kite

> <GetWorldKiteResponse> get_world_kite

Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.
  result = api_instance.get_world_kite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_kite: #{e}"
end
```

#### Using the get_world_kite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldKiteResponse>, Integer, Hash)> get_world_kite_with_http_info

```ruby
begin
  # Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.
  data, status_code, headers = api_instance.get_world_kite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldKiteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_kite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldKiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_lantern

> <GetWorldKiteResponse> get_world_lantern

Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.
  result = api_instance.get_world_lantern
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_lantern: #{e}"
end
```

#### Using the get_world_lantern_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldKiteResponse>, Integer, Hash)> get_world_lantern_with_http_info

```ruby
begin
  # Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.
  data, status_code, headers = api_instance.get_world_lantern_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldKiteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_lantern_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldKiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_party_chat

> <WorldResponse> get_world_party_chat(id)

Your party chat: the recent lines. 404 when this is not your party.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Your party chat: the recent lines. 404 when this is not your party.
  result = api_instance.get_world_party_chat(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_party_chat: #{e}"
end
```

#### Using the get_world_party_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse>, Integer, Hash)> get_world_party_chat_with_http_info(id)

```ruby
begin
  # Your party chat: the recent lines. 404 when this is not your party.
  data, status_code, headers = api_instance.get_world_party_chat_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_party_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_board

> <GetWorldPlaceBoardResponse> get_world_place_board(slug)

The Trade Floor's wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The Trade Floor's wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).
  result = api_instance.get_world_place_board(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_board: #{e}"
end
```

#### Using the get_world_place_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceBoardResponse>, Integer, Hash)> get_world_place_board_with_http_info(slug)

```ruby
begin
  # The Trade Floor's wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).
  data, status_code, headers = api_instance.get_world_place_board_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceBoardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldPlaceBoardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_collection

> <GetWorldPlaceCollectionResponse> get_world_place_collection(slug, category, brand, model)

One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
category = 'category_example' # String | 
brand = 'brand_example' # String | 
model = 'model_example' # String | 

begin
  # One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.
  result = api_instance.get_world_place_collection(slug, category, brand, model)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_collection: #{e}"
end
```

#### Using the get_world_place_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceCollectionResponse>, Integer, Hash)> get_world_place_collection_with_http_info(slug, category, brand, model)

```ruby
begin
  # One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.
  data, status_code, headers = api_instance.get_world_place_collection_with_http_info(slug, category, brand, model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceCollectionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **category** | **String** |  |  |
| **brand** | **String** |  |  |
| **model** | **String** |  |  |

### Return type

**GetWorldPlaceCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_drop

> <GetWorldPlaceDropResponse> get_world_place_drop(slug)

The owner's next drop (name, cover, time, live) and how many people are waiting in the room.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The owner's next drop (name, cover, time, live) and how many people are waiting in the room.
  result = api_instance.get_world_place_drop(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_drop: #{e}"
end
```

#### Using the get_world_place_drop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceDropResponse>, Integer, Hash)> get_world_place_drop_with_http_info(slug)

```ruby
begin
  # The owner's next drop (name, cover, time, live) and how many people are waiting in the room.
  data, status_code, headers = api_instance.get_world_place_drop_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceDropResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_drop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldPlaceDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_item_interest

> <GetWorldPlaceItemInterestResponse> get_world_place_item_interest(slug, item_id)

How many people looked at one item in this room today.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 
item_id = 'item_id_example' # String | 

begin
  # How many people looked at one item in this room today.
  result = api_instance.get_world_place_item_interest(slug, item_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_item_interest: #{e}"
end
```

#### Using the get_world_place_item_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceItemInterestResponse>, Integer, Hash)> get_world_place_item_interest_with_http_info(slug, item_id)

```ruby
begin
  # How many people looked at one item in this room today.
  data, status_code, headers = api_instance.get_world_place_item_interest_with_http_info(slug, item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceItemInterestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_item_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **item_id** | **String** |  |  |

### Return type

**GetWorldPlaceItemInterestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_live

> <GetWorldPlaceLiveResponse> get_world_place_live(slug)

The owner's live sale: their stream and the lot on the block, or null.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The owner's live sale: their stream and the lot on the block, or null.
  result = api_instance.get_world_place_live(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_live: #{e}"
end
```

#### Using the get_world_place_live_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceLiveResponse>, Integer, Hash)> get_world_place_live_with_http_info(slug)

```ruby
begin
  # The owner's live sale: their stream and the lot on the block, or null.
  data, status_code, headers = api_instance.get_world_place_live_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceLiveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_live_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldPlaceLiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_seller

> <GetWorldPlaceSellerResponse> get_world_place_seller(slug)

The shop whose public room this is (username and name), or null.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The shop whose public room this is (username and name), or null.
  result = api_instance.get_world_place_seller(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_seller: #{e}"
end
```

#### Using the get_world_place_seller_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceSellerResponse>, Integer, Hash)> get_world_place_seller_with_http_info(slug)

```ruby
begin
  # The shop whose public room this is (username and name), or null.
  data, status_code, headers = api_instance.get_world_place_seller_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceSellerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_seller_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldPlaceSellerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_place_shop_pet

> <GetWorldPlaceShopPetResponse> get_world_place_shop_pet(slug)

The shop's pet kind, or null.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The shop's pet kind, or null.
  result = api_instance.get_world_place_shop_pet(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_shop_pet: #{e}"
end
```

#### Using the get_world_place_shop_pet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlaceShopPetResponse>, Integer, Hash)> get_world_place_shop_pet_with_http_info(slug)

```ruby
begin
  # The shop's pet kind, or null.
  data, status_code, headers = api_instance.get_world_place_shop_pet_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlaceShopPetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_place_shop_pet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldPlaceShopPetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_space

> <GetWorldSpaceResponse> get_world_space(slug)

One Space: its layout, host, events and your place in it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # One Space: its layout, host, events and your place in it.
  result = api_instance.get_world_space(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_space: #{e}"
end
```

#### Using the get_world_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldSpaceResponse>, Integer, Hash)> get_world_space_with_http_info(slug)

```ruby
begin
  # One Space: its layout, host, events and your place in it.
  data, status_code, headers = api_instance.get_world_space_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldSpaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_space_can_host

> <GetWorldSpaceCanHostResponse> get_world_space_can_host

Whether you may open a Space: sellers only, at most two active.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Whether you may open a Space: sellers only, at most two active.
  result = api_instance.get_world_space_can_host
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_space_can_host: #{e}"
end
```

#### Using the get_world_space_can_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldSpaceCanHostResponse>, Integer, Hash)> get_world_space_can_host_with_http_info

```ruby
begin
  # Whether you may open a Space: sellers only, at most two active.
  data, status_code, headers = api_instance.get_world_space_can_host_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldSpaceCanHostResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_space_can_host_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldSpaceCanHostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_trial_leaderboard

> <GetWorldTrialLeaderboardResponse> get_world_trial_leaderboard(course)

A Time Trials course's boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week's ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \"A player\". 404 for an unknown course; course 1 is commons-loop.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
course = 'course_example' # String | 

begin
  # A Time Trials course's boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week's ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \"A player\". 404 for an unknown course; course 1 is commons-loop.
  result = api_instance.get_world_trial_leaderboard(course)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_trial_leaderboard: #{e}"
end
```

#### Using the get_world_trial_leaderboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldTrialLeaderboardResponse>, Integer, Hash)> get_world_trial_leaderboard_with_http_info(course)

```ruby
begin
  # A Time Trials course's boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week's ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \"A player\". 404 for an unknown course; course 1 is commons-loop.
  data, status_code, headers = api_instance.get_world_trial_leaderboard_with_http_info(course)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldTrialLeaderboardResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_trial_leaderboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **course** | **String** |  |  |

### Return type

**GetWorldTrialLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_trial_mine

> <GetWorldTrialMineResponse> get_world_trial_mine

Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.
  result = api_instance.get_world_trial_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_trial_mine: #{e}"
end
```

#### Using the get_world_trial_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldTrialMineResponse>, Integer, Hash)> get_world_trial_mine_with_http_info

```ruby
begin
  # Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.
  data, status_code, headers = api_instance.get_world_trial_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldTrialMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_trial_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldTrialMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_wallet

> <GetWorldWalletResponse> get_world_wallet

Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.
  result = api_instance.get_world_wallet
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_wallet: #{e}"
end
```

#### Using the get_world_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldWalletResponse>, Integer, Hash)> get_world_wallet_with_http_info

```ruby
begin
  # Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.
  data, status_code, headers = api_instance.get_world_wallet_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldWalletResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_wallet_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldWalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_wish

> <GetWorldWishResponse> get_world_wish

The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow's wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow's wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.
  result = api_instance.get_world_wish
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_wish: #{e}"
end
```

#### Using the get_world_wish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldWishResponse>, Integer, Hash)> get_world_wish_with_http_info

```ruby
begin
  # The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow's wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.
  data, status_code, headers = api_instance.get_world_wish_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldWishResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->get_world_wish_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldWishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_scene_grants

> <ListSpatialSceneGrantsResponse> list_spatial_scene_grants(id)

Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.
  result = api_instance.list_spatial_scene_grants(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_scene_grants: #{e}"
end
```

#### Using the list_spatial_scene_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSpatialSceneGrantsResponse>, Integer, Hash)> list_spatial_scene_grants_with_http_info(id)

```ruby
begin
  # Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.
  data, status_code, headers = api_instance.list_spatial_scene_grants_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSpatialSceneGrantsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_scene_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListSpatialSceneGrantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_scene_warehouse_unplaced

> <ListSpatialSceneWarehouseUnplacedResponse> list_spatial_scene_warehouse_unplaced(id)

Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).
  result = api_instance.list_spatial_scene_warehouse_unplaced(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_scene_warehouse_unplaced: #{e}"
end
```

#### Using the list_spatial_scene_warehouse_unplaced_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSpatialSceneWarehouseUnplacedResponse>, Integer, Hash)> list_spatial_scene_warehouse_unplaced_with_http_info(id)

```ruby
begin
  # Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).
  data, status_code, headers = api_instance.list_spatial_scene_warehouse_unplaced_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSpatialSceneWarehouseUnplacedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_scene_warehouse_unplaced_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListSpatialSceneWarehouseUnplacedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_shared_with_me

> <ListSpatialSharedWithMeResponse> list_spatial_shared_with_me

Rooms other people let you into.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Rooms other people let you into.
  result = api_instance.list_spatial_shared_with_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_shared_with_me: #{e}"
end
```

#### Using the list_spatial_shared_with_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSpatialSharedWithMeResponse>, Integer, Hash)> list_spatial_shared_with_me_with_http_info

```ruby
begin
  # Rooms other people let you into.
  data, status_code, headers = api_instance.list_spatial_shared_with_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSpatialSharedWithMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_shared_with_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListSpatialSharedWithMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spatial_street_leases

> <ListSpatialStreetLeasesResponse> list_spatial_street_leases(slug)

Plots on a street offered for lease: weekly rent in CENTS and terms.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Plots on a street offered for lease: weekly rent in CENTS and terms.
  result = api_instance.list_spatial_street_leases(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_street_leases: #{e}"
end
```

#### Using the list_spatial_street_leases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSpatialStreetLeasesResponse>, Integer, Hash)> list_spatial_street_leases_with_http_info(slug)

```ruby
begin
  # Plots on a street offered for lease: weekly rent in CENTS and terms.
  data, status_code, headers = api_instance.list_spatial_street_leases_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSpatialStreetLeasesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_spatial_street_leases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListSpatialStreetLeasesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_avatar_closet

> <ListWorldAvatarClosetResponse> list_world_avatar_closet(opts)

Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.
  result = api_instance.list_world_avatar_closet(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_closet: #{e}"
end
```

#### Using the list_world_avatar_closet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldAvatarClosetResponse>, Integer, Hash)> list_world_avatar_closet_with_http_info(opts)

```ruby
begin
  # Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.
  data, status_code, headers = api_instance.list_world_avatar_closet_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldAvatarClosetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_closet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

**ListWorldAvatarClosetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_avatar_stock

> <ListWorldAvatarStockResponse> list_world_avatar_stock

Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.
  result = api_instance.list_world_avatar_stock
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_stock: #{e}"
end
```

#### Using the list_world_avatar_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldAvatarStockResponse>, Integer, Hash)> list_world_avatar_stock_with_http_info

```ruby
begin
  # Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.
  data, status_code, headers = api_instance.list_world_avatar_stock_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldAvatarStockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_stock_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldAvatarStockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_avatar_wearables

> <ListWorldAvatarWearablesResponse> list_world_avatar_wearables

Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.
  result = api_instance.list_world_avatar_wearables
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_wearables: #{e}"
end
```

#### Using the list_world_avatar_wearables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldAvatarWearablesResponse>, Integer, Hash)> list_world_avatar_wearables_with_http_info

```ruby
begin
  # Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.
  data, status_code, headers = api_instance.list_world_avatar_wearables_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldAvatarWearablesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_avatar_wearables_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldAvatarWearablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_best_dressed

> <ListWorldBestDressedResponse> list_world_best_dressed

This week's best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # This week's best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.
  result = api_instance.list_world_best_dressed
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_best_dressed: #{e}"
end
```

#### Using the list_world_best_dressed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldBestDressedResponse>, Integer, Hash)> list_world_best_dressed_with_http_info

```ruby
begin
  # This week's best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.
  data, status_code, headers = api_instance.list_world_best_dressed_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldBestDressedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_best_dressed_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldBestDressedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_capability_declarations

> <ListWorldCapabilityDeclarationsResponse> list_world_capability_declarations

Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).
  result = api_instance.list_world_capability_declarations
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_capability_declarations: #{e}"
end
```

#### Using the list_world_capability_declarations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldCapabilityDeclarationsResponse>, Integer, Hash)> list_world_capability_declarations_with_http_info

```ruby
begin
  # Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).
  data, status_code, headers = api_instance.list_world_capability_declarations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldCapabilityDeclarationsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_capability_declarations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldCapabilityDeclarationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_contest_standings

> <ListWorldContestStandingsResponse> list_world_contest_standings(id)

The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.
  result = api_instance.list_world_contest_standings(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_contest_standings: #{e}"
end
```

#### Using the list_world_contest_standings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldContestStandingsResponse>, Integer, Hash)> list_world_contest_standings_with_http_info(id)

```ruby
begin
  # The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.
  data, status_code, headers = api_instance.list_world_contest_standings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldContestStandingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_contest_standings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListWorldContestStandingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_contests

> <ListWorldContestsResponse> list_world_contests

Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.
  result = api_instance.list_world_contests
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_contests: #{e}"
end
```

#### Using the list_world_contests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldContestsResponse>, Integer, Hash)> list_world_contests_with_http_info

```ruby
begin
  # Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.
  data, status_code, headers = api_instance.list_world_contests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldContestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_contests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldContestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_convention_exhibitors

> <ListWorldConventionExhibitorsResponse> list_world_convention_exhibitors(id)

The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.
  result = api_instance.list_world_convention_exhibitors(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_convention_exhibitors: #{e}"
end
```

#### Using the list_world_convention_exhibitors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldConventionExhibitorsResponse>, Integer, Hash)> list_world_convention_exhibitors_with_http_info(id)

```ruby
begin
  # The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.
  data, status_code, headers = api_instance.list_world_convention_exhibitors_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldConventionExhibitorsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_convention_exhibitors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**ListWorldConventionExhibitorsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_convention_mine

> <ListWorldConventionMineResponse> list_world_convention_mine

Conventions you host and conventions you are exhibiting at.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Conventions you host and conventions you are exhibiting at.
  result = api_instance.list_world_convention_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_convention_mine: #{e}"
end
```

#### Using the list_world_convention_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldConventionMineResponse>, Integer, Hash)> list_world_convention_mine_with_http_info

```ruby
begin
  # Conventions you host and conventions you are exhibiting at.
  data, status_code, headers = api_instance.list_world_convention_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldConventionMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_convention_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldConventionMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_conventions

> <ListWorldConventionsResponse> list_world_conventions

Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).
  result = api_instance.list_world_conventions
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_conventions: #{e}"
end
```

#### Using the list_world_conventions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldConventionsResponse>, Integer, Hash)> list_world_conventions_with_http_info

```ruby
begin
  # Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).
  data, status_code, headers = api_instance.list_world_conventions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldConventionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_conventions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldConventionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_cosm_cosmetics

> <ListCosmCosmeticsResponse> list_world_cosm_cosmetics(opts)

The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
opts = {
  tier: 'premium', # String | 
  slot: 'slot_example' # String | 
}

begin
  # The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.
  result = api_instance.list_world_cosm_cosmetics(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_cosmetics: #{e}"
end
```

#### Using the list_world_cosm_cosmetics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCosmCosmeticsResponse>, Integer, Hash)> list_world_cosm_cosmetics_with_http_info(opts)

```ruby
begin
  # The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.
  data, status_code, headers = api_instance.list_world_cosm_cosmetics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCosmCosmeticsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_cosmetics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier** | **String** |  | [optional] |
| **slot** | **String** |  | [optional] |

### Return type

**ListCosmCosmeticsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_cosm_designs

> <ListWorldCosmDesignsResponse> list_world_cosm_designs

Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.
  result = api_instance.list_world_cosm_designs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_designs: #{e}"
end
```

#### Using the list_world_cosm_designs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldCosmDesignsResponse>, Integer, Hash)> list_world_cosm_designs_with_http_info

```ruby
begin
  # Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.
  data, status_code, headers = api_instance.list_world_cosm_designs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldCosmDesignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_designs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldCosmDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_cosm_inventory

> <ListWorldCosmInventoryResponse> list_world_cosm_inventory

Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.
  result = api_instance.list_world_cosm_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_inventory: #{e}"
end
```

#### Using the list_world_cosm_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldCosmInventoryResponse>, Integer, Hash)> list_world_cosm_inventory_with_http_info

```ruby
begin
  # Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.
  data, status_code, headers = api_instance.list_world_cosm_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldCosmInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_cosm_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldCosmInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_catalogue

> <ListWorldDecorCatalogueResponse> list_world_decor_catalogue(opts)

The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
opts = {
  surface: 'avatar' # String | 
}

begin
  # The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.
  result = api_instance.list_world_decor_catalogue(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_catalogue: #{e}"
end
```

#### Using the list_world_decor_catalogue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorCatalogueResponse>, Integer, Hash)> list_world_decor_catalogue_with_http_info(opts)

```ruby
begin
  # The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.
  data, status_code, headers = api_instance.list_world_decor_catalogue_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorCatalogueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_catalogue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **surface** | **String** |  | [optional] |

### Return type

**ListWorldDecorCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_designs

> <ListWorldDecorDesignsResponse> list_world_decor_designs

Your decor designs and their review state. available is false until COSM is provisioned.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your decor designs and their review state. available is false until COSM is provisioned.
  result = api_instance.list_world_decor_designs
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_designs: #{e}"
end
```

#### Using the list_world_decor_designs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorDesignsResponse>, Integer, Hash)> list_world_decor_designs_with_http_info

```ruby
begin
  # Your decor designs and their review state. available is false until COSM is provisioned.
  data, status_code, headers = api_instance.list_world_decor_designs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorDesignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_designs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDecorDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_inventory

> <ListWorldDecorInventoryResponse> list_world_decor_inventory

Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.
  result = api_instance.list_world_decor_inventory
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_inventory: #{e}"
end
```

#### Using the list_world_decor_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorInventoryResponse>, Integer, Hash)> list_world_decor_inventory_with_http_info

```ruby
begin
  # Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.
  data, status_code, headers = api_instance.list_world_decor_inventory_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorInventoryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_inventory_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDecorInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_market

> <ListWorldDecorMarketResponse> list_world_decor_market

Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.
  result = api_instance.list_world_decor_market
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_market: #{e}"
end
```

#### Using the list_world_decor_market_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorMarketResponse>, Integer, Hash)> list_world_decor_market_with_http_info

```ruby
begin
  # Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.
  data, status_code, headers = api_instance.list_world_decor_market_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorMarketResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_market_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDecorMarketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_mine

> <ListWorldDecorMineResponse> list_world_decor_mine

Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.
  result = api_instance.list_world_decor_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_mine: #{e}"
end
```

#### Using the list_world_decor_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorMineResponse>, Integer, Hash)> list_world_decor_mine_with_http_info

```ruby
begin
  # Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.
  data, status_code, headers = api_instance.list_world_decor_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDecorMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_stalls

> <ListStallMineResponse> list_world_decor_stalls

Your stall bookings, to dress their booths.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your stall bookings, to dress their booths.
  result = api_instance.list_world_decor_stalls
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_stalls: #{e}"
end
```

#### Using the list_world_decor_stalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStallMineResponse>, Integer, Hash)> list_world_decor_stalls_with_http_info

```ruby
begin
  # Your stall bookings, to dress their booths.
  data, status_code, headers = api_instance.list_world_decor_stalls_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStallMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_stalls_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListStallMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_decor_streets

> <ListWorldDecorStreetsResponse> list_world_decor_streets

Streets you may dress.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Streets you may dress.
  result = api_instance.list_world_decor_streets
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_streets: #{e}"
end
```

#### Using the list_world_decor_streets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDecorStreetsResponse>, Integer, Hash)> list_world_decor_streets_with_http_info

```ruby
begin
  # Streets you may dress.
  data, status_code, headers = api_instance.list_world_decor_streets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDecorStreetsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_decor_streets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDecorStreetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_dms

> <ListWorldDmsResponse> list_world_dms

Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.
  result = api_instance.list_world_dms
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_dms: #{e}"
end
```

#### Using the list_world_dms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldDmsResponse>, Integer, Hash)> list_world_dms_with_http_info

```ruby
begin
  # Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.
  data, status_code, headers = api_instance.list_world_dms_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldDmsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_dms_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldDmsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_following_rooms

> <ListWorldFollowingRoomsResponse> list_world_following_rooms

The public rooms of people you follow, to walk into.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The public rooms of people you follow, to walk into.
  result = api_instance.list_world_following_rooms
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_following_rooms: #{e}"
end
```

#### Using the list_world_following_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldFollowingRoomsResponse>, Integer, Hash)> list_world_following_rooms_with_http_info

```ruby
begin
  # The public rooms of people you follow, to walk into.
  data, status_code, headers = api_instance.list_world_following_rooms_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldFollowingRoomsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_following_rooms_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldFollowingRoomsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_follows

> <ListWorldFollowsResponse> list_world_follows

Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).
  result = api_instance.list_world_follows
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_follows: #{e}"
end
```

#### Using the list_world_follows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldFollowsResponse>, Integer, Hash)> list_world_follows_with_http_info

```ruby
begin
  # Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).
  data, status_code, headers = api_instance.list_world_follows_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldFollowsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_follows_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldFollowsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_friend_here

> <ListWorldFriendsResponse> list_world_friend_here

Your friends in Crossly World right now, and where (when they share it).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your friends in Crossly World right now, and where (when they share it).
  result = api_instance.list_world_friend_here
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_friend_here: #{e}"
end
```

#### Using the list_world_friend_here_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldFriendsResponse>, Integer, Hash)> list_world_friend_here_with_http_info

```ruby
begin
  # Your friends in Crossly World right now, and where (when they share it).
  data, status_code, headers = api_instance.list_world_friend_here_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldFriendsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_friend_here_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldFriendsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_friends

> <ListWorldFriendsResponse> list_world_friends

Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.
  result = api_instance.list_world_friends
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_friends: #{e}"
end
```

#### Using the list_world_friends_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldFriendsResponse>, Integer, Hash)> list_world_friends_with_http_info

```ruby
begin
  # Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.
  data, status_code, headers = api_instance.list_world_friends_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldFriendsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_friends_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldFriendsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_game_packages

> <ListWorldGamePackagesResponse> list_world_game_packages

Your game packages, each with its latest version and review state.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your game packages, each with its latest version and review state.
  result = api_instance.list_world_game_packages
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_game_packages: #{e}"
end
```

#### Using the list_world_game_packages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldGamePackagesResponse>, Integer, Hash)> list_world_game_packages_with_http_info

```ruby
begin
  # Your game packages, each with its latest version and review state.
  data, status_code, headers = api_instance.list_world_game_packages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldGamePackagesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_game_packages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldGamePackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_game_rewards

> <ListWorldGameRewardsResponse> list_world_game_rewards

Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).
  result = api_instance.list_world_game_rewards
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_game_rewards: #{e}"
end
```

#### Using the list_world_game_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldGameRewardsResponse>, Integer, Hash)> list_world_game_rewards_with_http_info

```ruby
begin
  # Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).
  data, status_code, headers = api_instance.list_world_game_rewards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldGameRewardsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_game_rewards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldGameRewardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_games

> <ListWorldGamesResponse> list_world_games

The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.
  result = api_instance.list_world_games
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_games: #{e}"
end
```

#### Using the list_world_games_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldGamesResponse>, Integer, Hash)> list_world_games_with_http_info

```ruby
begin
  # The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.
  data, status_code, headers = api_instance.list_world_games_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldGamesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_games_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_home_building

> <ListWorldHomeBuildingResponse> list_world_home_building

Homes whose owner made you a co-builder.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Homes whose owner made you a co-builder.
  result = api_instance.list_world_home_building
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_home_building: #{e}"
end
```

#### Using the list_world_home_building_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldHomeBuildingResponse>, Integer, Hash)> list_world_home_building_with_http_info

```ruby
begin
  # Homes whose owner made you a co-builder.
  data, status_code, headers = api_instance.list_world_home_building_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldHomeBuildingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_home_building_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldHomeBuildingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_interactive_catalogue

> <ListWorldInteractiveCatalogueResponse> list_world_interactive_catalogue

Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.
  result = api_instance.list_world_interactive_catalogue
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_interactive_catalogue: #{e}"
end
```

#### Using the list_world_interactive_catalogue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldInteractiveCatalogueResponse>, Integer, Hash)> list_world_interactive_catalogue_with_http_info

```ruby
begin
  # Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.
  data, status_code, headers = api_instance.list_world_interactive_catalogue_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldInteractiveCatalogueResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_interactive_catalogue_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldInteractiveCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_interactive_designs

> <ListWorldInteractiveDesignsResponse> list_world_interactive_designs(opts)

Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null = none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null = not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. `archived`: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen on crossly.net/shop/decor?tab=interactive.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
opts = {
  archived: 'exclude' # String | 
}

begin
  # Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null = none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null = not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. `archived`: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen on crossly.net/shop/decor?tab=interactive.
  result = api_instance.list_world_interactive_designs(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_interactive_designs: #{e}"
end
```

#### Using the list_world_interactive_designs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldInteractiveDesignsResponse>, Integer, Hash)> list_world_interactive_designs_with_http_info(opts)

```ruby
begin
  # Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null = none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null = not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. `archived`: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen on crossly.net/shop/decor?tab=interactive.
  data, status_code, headers = api_instance.list_world_interactive_designs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldInteractiveDesignsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_interactive_designs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived** | **String** |  | [optional] |

### Return type

**ListWorldInteractiveDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_job_posted

> <ListJobShiftsResponse> list_world_job_posted

Shifts you posted for your rooms, with who claimed each and how it went.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Shifts you posted for your rooms, with who claimed each and how it went.
  result = api_instance.list_world_job_posted
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_job_posted: #{e}"
end
```

#### Using the list_world_job_posted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListJobShiftsResponse>, Integer, Hash)> list_world_job_posted_with_http_info

```ruby
begin
  # Shifts you posted for your rooms, with who claimed each and how it went.
  data, status_code, headers = api_instance.list_world_job_posted_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListJobShiftsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_job_posted_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListJobShiftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_outfits

> <ListWorldOutfitsResponse> list_world_outfits

Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.
  result = api_instance.list_world_outfits
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_outfits: #{e}"
end
```

#### Using the list_world_outfits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldOutfitsResponse>, Integer, Hash)> list_world_outfits_with_http_info

```ruby
begin
  # Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.
  data, status_code, headers = api_instance.list_world_outfits_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldOutfitsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_outfits_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldOutfitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_bans

> <ListWorldPlaceBansResponse> list_world_place_bans(slug)

Who is banned from a place you own (your boutique or home).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Who is banned from a place you own (your boutique or home).
  result = api_instance.list_world_place_bans(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_bans: #{e}"
end
```

#### Using the list_world_place_bans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceBansResponse>, Integer, Hash)> list_world_place_bans_with_http_info(slug)

```ruby
begin
  # Who is banned from a place you own (your boutique or home).
  data, status_code, headers = api_instance.list_world_place_bans_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceBansResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_bans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceBansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_bundles

> <ListWorldPlaceBundlesResponse> list_world_place_bundles(slug)

The owner's bundle deals mapped onto this room's items (itemIds null = any N from the shop). The discount is decided at checkout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The owner's bundle deals mapped onto this room's items (itemIds null = any N from the shop). The discount is decided at checkout.
  result = api_instance.list_world_place_bundles(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_bundles: #{e}"
end
```

#### Using the list_world_place_bundles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceBundlesResponse>, Integer, Hash)> list_world_place_bundles_with_http_info(slug)

```ruby
begin
  # The owner's bundle deals mapped onto this room's items (itemIds null = any N from the shop). The discount is decided at checkout.
  data, status_code, headers = api_instance.list_world_place_bundles_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceBundlesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_bundles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceBundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_collections

> <ListWorldPlaceCollectionsResponse> list_world_place_collections(slug)

The owner's collection rooms: one per category, brand and model they collect.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The owner's collection rooms: one per category, brand and model they collect.
  result = api_instance.list_world_place_collections(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_collections: #{e}"
end
```

#### Using the list_world_place_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceCollectionsResponse>, Integer, Hash)> list_world_place_collections_with_http_info(slug)

```ruby
begin
  # The owner's collection rooms: one per category, brand and model they collect.
  data, status_code, headers = api_instance.list_world_place_collections_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceCollectionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_offers

> <ListWorldPlaceOffersResponse> list_world_place_offers(slug)

What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.
  result = api_instance.list_world_place_offers(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_offers: #{e}"
end
```

#### Using the list_world_place_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceOffersResponse>, Integer, Hash)> list_world_place_offers_with_http_info(slug)

```ruby
begin
  # What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.
  data, status_code, headers = api_instance.list_world_place_offers_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceOffersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_radar

> <ListWorldPlaceRadarResponse> list_world_place_radar(slug)

What you have that someone here wants, and what is here that you want: matched on catalog ids.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # What you have that someone here wants, and what is here that you want: matched on catalog ids.
  result = api_instance.list_world_place_radar(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_radar: #{e}"
end
```

#### Using the list_world_place_radar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceRadarResponse>, Integer, Hash)> list_world_place_radar_with_http_info(slug)

```ruby
begin
  # What you have that someone here wants, and what is here that you want: matched on catalog ids.
  data, status_code, headers = api_instance.list_world_place_radar_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceRadarResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_radar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceRadarResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_trade_tables

> <ListWorldPlaceTradeTablesResponse> list_world_place_trade_tables(slug)

The open trade tables in a place: who is sitting and what is laid on the mat.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # The open trade tables in a place: who is sitting and what is laid on the mat.
  result = api_instance.list_world_place_trade_tables(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_trade_tables: #{e}"
end
```

#### Using the list_world_place_trade_tables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceTradeTablesResponse>, Integer, Hash)> list_world_place_trade_tables_with_http_info(slug)

```ruby
begin
  # The open trade tables in a place: who is sitting and what is laid on the mat.
  data, status_code, headers = api_instance.list_world_place_trade_tables_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceTradeTablesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_trade_tables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceTradeTablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_place_trades

> <ListWorldPlaceTradesResponse> list_world_place_trades(slug)

Items in this room open to trades, each with its trade post path.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Items in this room open to trades, each with its trade post path.
  result = api_instance.list_world_place_trades(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_trades: #{e}"
end
```

#### Using the list_world_place_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldPlaceTradesResponse>, Integer, Hash)> list_world_place_trades_with_http_info(slug)

```ruby
begin
  # Items in this room open to trades, each with its trade post path.
  data, status_code, headers = api_instance.list_world_place_trades_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldPlaceTradesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_place_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldPlaceTradesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_provenance

> <ListWorldProvenanceResponse> list_world_provenance

Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds=a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \"Found at The Sneaker Vault, Oct 2026\" }]. Yours only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds=a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \"Found at The Sneaker Vault, Oct 2026\" }]. Yours only.
  result = api_instance.list_world_provenance
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_provenance: #{e}"
end
```

#### Using the list_world_provenance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldProvenanceResponse>, Integer, Hash)> list_world_provenance_with_http_info

```ruby
begin
  # Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds=a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \"Found at The Sneaker Vault, Oct 2026\" }]. Yours only.
  data, status_code, headers = api_instance.list_world_provenance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldProvenanceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_provenance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldProvenanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_quests

> <ListWorldQuestsResponse> list_world_quests

Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.
  result = api_instance.list_world_quests
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_quests: #{e}"
end
```

#### Using the list_world_quests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldQuestsResponse>, Integer, Hash)> list_world_quests_with_http_info

```ruby
begin
  # Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.
  data, status_code, headers = api_instance.list_world_quests_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldQuestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_quests_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldQuestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_space_mine

> <ListWorldSpacesResponse> list_world_space_mine

Spaces you belong to.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Spaces you belong to.
  result = api_instance.list_world_space_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_mine: #{e}"
end
```

#### Using the list_world_space_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldSpacesResponse>, Integer, Hash)> list_world_space_mine_with_http_info

```ruby
begin
  # Spaces you belong to.
  data, status_code, headers = api_instance.list_world_space_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldSpacesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldSpacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_space_requests

> <ListWorldSpaceRequestsResponse> list_world_space_requests(slug)

As host or co-host, who asked to join.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # As host or co-host, who asked to join.
  result = api_instance.list_world_space_requests(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_requests: #{e}"
end
```

#### Using the list_world_space_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldSpaceRequestsResponse>, Integer, Hash)> list_world_space_requests_with_http_info(slug)

```ruby
begin
  # As host or co-host, who asked to join.
  data, status_code, headers = api_instance.list_world_space_requests_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldSpaceRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**ListWorldSpaceRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_space_whats_on

> <ListWorldSpaceWhatsOnResponse> list_world_space_whats_on

Live and upcoming events across Spaces (streets=1 and stage=1 add street and Main Stage events).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Live and upcoming events across Spaces (streets=1 and stage=1 add street and Main Stage events).
  result = api_instance.list_world_space_whats_on
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_whats_on: #{e}"
end
```

#### Using the list_world_space_whats_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldSpaceWhatsOnResponse>, Integer, Hash)> list_world_space_whats_on_with_http_info

```ruby
begin
  # Live and upcoming events across Spaces (streets=1 and stage=1 add street and Main Stage events).
  data, status_code, headers = api_instance.list_world_space_whats_on_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldSpaceWhatsOnResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_space_whats_on_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldSpaceWhatsOnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_spaces

> <ListWorldSpacesResponse> list_world_spaces

The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).
  result = api_instance.list_world_spaces
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_spaces: #{e}"
end
```

#### Using the list_world_spaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldSpacesResponse>, Integer, Hash)> list_world_spaces_with_http_info

```ruby
begin
  # The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).
  data, status_code, headers = api_instance.list_world_spaces_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldSpacesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_spaces_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldSpacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_streaks

> <ListWorldStreaksResponse> list_world_streaks

The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.
  result = api_instance.list_world_streaks
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_streaks: #{e}"
end
```

#### Using the list_world_streaks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldStreaksResponse>, Integer, Hash)> list_world_streaks_with_http_info

```ruby
begin
  # The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.
  data, status_code, headers = api_instance.list_world_streaks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldStreaksResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_streaks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldStreaksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_trade_mine

> <ListWorldTradeMineResponse> list_world_trade_mine

Your trades and each item progress through the authentication gate (verified or failed).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your trades and each item progress through the authentication gate (verified or failed).
  result = api_instance.list_world_trade_mine
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_mine: #{e}"
end
```

#### Using the list_world_trade_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldTradeMineResponse>, Integer, Hash)> list_world_trade_mine_with_http_info

```ruby
begin
  # Your trades and each item progress through the authentication gate (verified or failed).
  data, status_code, headers = api_instance.list_world_trade_mine_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldTradeMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_mine_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldTradeMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_trade_table_binder

> <ListWorldTradeTableBinderResponse> list_world_trade_table_binder

Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).
  result = api_instance.list_world_trade_table_binder
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_table_binder: #{e}"
end
```

#### Using the list_world_trade_table_binder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldTradeTableBinderResponse>, Integer, Hash)> list_world_trade_table_binder_with_http_info

```ruby
begin
  # Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).
  data, status_code, headers = api_instance.list_world_trade_table_binder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldTradeTableBinderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_table_binder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldTradeTableBinderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_trade_table_listings

> <ListWorldTradeTableListingsResponse> list_world_trade_table_listings

Your open Trade Block trade listings a trade table can be opened on in the world, each with its items' names.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your open Trade Block trade listings a trade table can be opened on in the world, each with its items' names.
  result = api_instance.list_world_trade_table_listings
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_table_listings: #{e}"
end
```

#### Using the list_world_trade_table_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldTradeTableListingsResponse>, Integer, Hash)> list_world_trade_table_listings_with_http_info

```ruby
begin
  # Your open Trade Block trade listings a trade table can be opened on in the world, each with its items' names.
  data, status_code, headers = api_instance.list_world_trade_table_listings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldTradeTableListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->list_world_trade_table_listings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldTradeTableListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_scene_cosmetic

> <UpdateSpatialSceneCosmeticResponse> update_spatial_scene_cosmetic(id)

Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. `clear` lists keys to reset.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. `clear` lists keys to reset.
  result = api_instance.update_spatial_scene_cosmetic(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_cosmetic: #{e}"
end
```

#### Using the update_spatial_scene_cosmetic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSpatialSceneCosmeticResponse>, Integer, Hash)> update_spatial_scene_cosmetic_with_http_info(id)

```ruby
begin
  # Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. `clear` lists keys to reset.
  data, status_code, headers = api_instance.update_spatial_scene_cosmetic_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSpatialSceneCosmeticResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_cosmetic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateSpatialSceneCosmeticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_scene_node

> <UpdateSpatialSceneNodeResponse> update_spatial_scene_node(id, node_id)

Move a rack in one of your warehouse rooms (position in metres).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 
node_id = 'node_id_example' # String | 

begin
  # Move a rack in one of your warehouse rooms (position in metres).
  result = api_instance.update_spatial_scene_node(id, node_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_node: #{e}"
end
```

#### Using the update_spatial_scene_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSpatialSceneNodeResponse>, Integer, Hash)> update_spatial_scene_node_with_http_info(id, node_id)

```ruby
begin
  # Move a rack in one of your warehouse rooms (position in metres).
  data, status_code, headers = api_instance.update_spatial_scene_node_with_http_info(id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSpatialSceneNodeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **node_id** | **String** |  |  |

### Return type

**UpdateSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_scene_setting

> <SpatialSceneResponse2> update_spatial_scene_setting(id)

How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.
  result = api_instance.update_spatial_scene_setting(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_setting: #{e}"
end
```

#### Using the update_spatial_scene_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialSceneResponse2>, Integer, Hash)> update_spatial_scene_setting_with_http_info(id)

```ruby
begin
  # How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.
  data, status_code, headers = api_instance.update_spatial_scene_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialSceneResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SpatialSceneResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_scene_shop_layout

> <UpdateSpatialSceneShopLayoutResponse> update_spatial_scene_shop_layout(id)

Save your shop room's sections and displays (validated server-side; the response is the stored layout).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Save your shop room's sections and displays (validated server-side; the response is the stored layout).
  result = api_instance.update_spatial_scene_shop_layout(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_shop_layout: #{e}"
end
```

#### Using the update_spatial_scene_shop_layout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSpatialSceneShopLayoutResponse>, Integer, Hash)> update_spatial_scene_shop_layout_with_http_info(id)

```ruby
begin
  # Save your shop room's sections and displays (validated server-side; the response is the stored layout).
  data, status_code, headers = api_instance.update_spatial_scene_shop_layout_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSpatialSceneShopLayoutResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_shop_layout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateSpatialSceneShopLayoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_scene_window

> <UpdateSpatialSceneWindowResponse> update_spatial_scene_window(id)

Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.
  result = api_instance.update_spatial_scene_window(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_window: #{e}"
end
```

#### Using the update_spatial_scene_window_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSpatialSceneWindowResponse>, Integer, Hash)> update_spatial_scene_window_with_http_info(id)

```ruby
begin
  # Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.
  data, status_code, headers = api_instance.update_spatial_scene_window_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSpatialSceneWindowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_scene_window_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateSpatialSceneWindowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_street_decor

> <GetSpatialStreetDecorResponse> update_spatial_street_decor(slug)

Dress a street you own with decor you hold (validated against your inventory).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Dress a street you own with decor you hold (validated against your inventory).
  result = api_instance.update_spatial_street_decor(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_street_decor: #{e}"
end
```

#### Using the update_spatial_street_decor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSpatialStreetDecorResponse>, Integer, Hash)> update_spatial_street_decor_with_http_info(slug)

```ruby
begin
  # Dress a street you own with decor you hold (validated against your inventory).
  data, status_code, headers = api_instance.update_spatial_street_decor_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSpatialStreetDecorResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_street_decor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**GetSpatialStreetDecorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spatial_street_owned

> <SpatialStreetResponse> update_spatial_street_owned(id)

Who may open a shop on a street you own (open, apply or invite).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Who may open a shop on a street you own (open, apply or invite).
  result = api_instance.update_spatial_street_owned(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_street_owned: #{e}"
end
```

#### Using the update_spatial_street_owned_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpatialStreetResponse>, Integer, Hash)> update_spatial_street_owned_with_http_info(id)

```ruby
begin
  # Who may open a shop on a street you own (open, apply or invite).
  data, status_code, headers = api_instance.update_spatial_street_owned_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpatialStreetResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_spatial_street_owned_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**SpatialStreetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_auto_shop

> <GetWorldAutoShopResponse> update_world_auto_shop(update_world_auto_shop_request)

Turn your automatic world shop off ({ enabled: false } -- an auto-created shop is made private, never deleted) or back on. Answers the new status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
update_world_auto_shop_request = Crossly::UpdateWorldAutoShopRequest.new({enabled: false}) # UpdateWorldAutoShopRequest | 

begin
  # Turn your automatic world shop off ({ enabled: false } -- an auto-created shop is made private, never deleted) or back on. Answers the new status.
  result = api_instance.update_world_auto_shop(update_world_auto_shop_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_auto_shop: #{e}"
end
```

#### Using the update_world_auto_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAutoShopResponse>, Integer, Hash)> update_world_auto_shop_with_http_info(update_world_auto_shop_request)

```ruby
begin
  # Turn your automatic world shop off ({ enabled: false } -- an auto-created shop is made private, never deleted) or back on. Answers the new status.
  data, status_code, headers = api_instance.update_world_auto_shop_with_http_info(update_world_auto_shop_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAutoShopResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_auto_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_auto_shop_request** | **UpdateWorldAutoShopRequest** |  |  |

### Return type

**GetWorldAutoShopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_avatar_identity

> <UpdateWorldAvatarIdentityResponse> update_world_avatar_identity

Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.
  result = api_instance.update_world_avatar_identity
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_identity: #{e}"
end
```

#### Using the update_world_avatar_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldAvatarIdentityResponse>, Integer, Hash)> update_world_avatar_identity_with_http_info

```ruby
begin
  # Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.
  data, status_code, headers = api_instance.update_world_avatar_identity_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldAvatarIdentityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_identity_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateWorldAvatarIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_avatar_look

> <UpdateWorldAvatarLookResponse> update_world_avatar_look

Save your world look to the account, so every device starts from it. look: null stays anonymous.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Save your world look to the account, so every device starts from it. look: null stays anonymous.
  result = api_instance.update_world_avatar_look
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_look: #{e}"
end
```

#### Using the update_world_avatar_look_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldAvatarLookResponse>, Integer, Hash)> update_world_avatar_look_with_http_info

```ruby
begin
  # Save your world look to the account, so every device starts from it. look: null stays anonymous.
  data, status_code, headers = api_instance.update_world_avatar_look_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldAvatarLookResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_look_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateWorldAvatarLookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_avatar_nft_badge

> <GetWorldAvatarNftBadgeResponse> update_world_avatar_nft_badge

Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.
  result = api_instance.update_world_avatar_nft_badge
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_nft_badge: #{e}"
end
```

#### Using the update_world_avatar_nft_badge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldAvatarNftBadgeResponse>, Integer, Hash)> update_world_avatar_nft_badge_with_http_info

```ruby
begin
  # Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.
  data, status_code, headers = api_instance.update_world_avatar_nft_badge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldAvatarNftBadgeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_avatar_nft_badge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldAvatarNftBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_capability_wear

> <GetWorldCapabilityWearResponse> update_world_capability_wear

Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.
  result = api_instance.update_world_capability_wear
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_capability_wear: #{e}"
end
```

#### Using the update_world_capability_wear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCapabilityWearResponse>, Integer, Hash)> update_world_capability_wear_with_http_info

```ruby
begin
  # Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.
  data, status_code, headers = api_instance.update_world_capability_wear_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCapabilityWearResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_capability_wear_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldCapabilityWearResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_collection_capability

> <GetWorldCollectionCapabilityResponse> update_world_collection_capability(chain, contract)

Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
chain = 'chain_example' # String | 
contract = 'contract_example' # String | 

begin
  # Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.
  result = api_instance.update_world_collection_capability(chain, contract)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_collection_capability: #{e}"
end
```

#### Using the update_world_collection_capability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldCollectionCapabilityResponse>, Integer, Hash)> update_world_collection_capability_with_http_info(chain, contract)

```ruby
begin
  # Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.
  data, status_code, headers = api_instance.update_world_collection_capability_with_http_info(chain, contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldCollectionCapabilityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_collection_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** |  |  |
| **contract** | **String** |  |  |

### Return type

**GetWorldCollectionCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_convention_status

> <UpdateWorldConventionStatusResponse> update_world_convention_status(id)

Open, start, end or cancel a convention you host.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Open, start, end or cancel a convention you host.
  result = api_instance.update_world_convention_status(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_convention_status: #{e}"
end
```

#### Using the update_world_convention_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldConventionStatusResponse>, Integer, Hash)> update_world_convention_status_with_http_info(id)

```ruby
begin
  # Open, start, end or cancel a convention you host.
  data, status_code, headers = api_instance.update_world_convention_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldConventionStatusResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_convention_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWorldConventionStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_cosm_design_chain_auto_unlock

> <CreateCosmDesignerChainAutoUnlockResponse> update_world_cosm_design_chain_auto_unlock(id)

Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.
  result = api_instance.update_world_cosm_design_chain_auto_unlock(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_cosm_design_chain_auto_unlock: #{e}"
end
```

#### Using the update_world_cosm_design_chain_auto_unlock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCosmDesignerChainAutoUnlockResponse>, Integer, Hash)> update_world_cosm_design_chain_auto_unlock_with_http_info(id)

```ruby
begin
  # Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.
  data, status_code, headers = api_instance.update_world_cosm_design_chain_auto_unlock_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCosmDesignerChainAutoUnlockResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_cosm_design_chain_auto_unlock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**CreateCosmDesignerChainAutoUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_emote_wheel

> <UpdateWorldEmoteWheelResponse> update_world_emote_wheel(update_world_emote_wheel_request)

Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
update_world_emote_wheel_request = Crossly::UpdateWorldEmoteWheelRequest.new({wheel: ['wheel_example']}) # UpdateWorldEmoteWheelRequest | 

begin
  # Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).
  result = api_instance.update_world_emote_wheel(update_world_emote_wheel_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_emote_wheel: #{e}"
end
```

#### Using the update_world_emote_wheel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldEmoteWheelResponse>, Integer, Hash)> update_world_emote_wheel_with_http_info(update_world_emote_wheel_request)

```ruby
begin
  # Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).
  data, status_code, headers = api_instance.update_world_emote_wheel_with_http_info(update_world_emote_wheel_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldEmoteWheelResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_emote_wheel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_emote_wheel_request** | **UpdateWorldEmoteWheelRequest** |  |  |

### Return type

**UpdateWorldEmoteWheelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_fit_value_share

> <UpdateWorldFitValueShareResponse> update_world_fit_value_share

Whether people in a room can see what your outfit is worth.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Whether people in a room can see what your outfit is worth.
  result = api_instance.update_world_fit_value_share
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_fit_value_share: #{e}"
end
```

#### Using the update_world_fit_value_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldFitValueShareResponse>, Integer, Hash)> update_world_fit_value_share_with_http_info

```ruby
begin
  # Whether people in a room can see what your outfit is worth.
  data, status_code, headers = api_instance.update_world_fit_value_share_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldFitValueShareResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_fit_value_share_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**UpdateWorldFitValueShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_home

> <WorldHomeResponse> update_world_home

Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.
  result = api_instance.update_world_home
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home: #{e}"
end
```

#### Using the update_world_home_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldHomeResponse>, Integer, Hash)> update_world_home_with_http_info

```ruby
begin
  # Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.
  data, status_code, headers = api_instance.update_world_home_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldHomeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_home_builder

> <UpdateWorldHomeBuilderResponse> update_world_home_builder(update_world_home_builder_request)

Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
update_world_home_builder_request = Crossly::UpdateWorldHomeBuilderRequest.new({user_ids: ['user_ids_example']}) # UpdateWorldHomeBuilderRequest | 

begin
  # Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.
  result = api_instance.update_world_home_builder(update_world_home_builder_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_builder: #{e}"
end
```

#### Using the update_world_home_builder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldHomeBuilderResponse>, Integer, Hash)> update_world_home_builder_with_http_info(update_world_home_builder_request)

```ruby
begin
  # Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.
  data, status_code, headers = api_instance.update_world_home_builder_with_http_info(update_world_home_builder_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldHomeBuilderResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_builder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_home_builder_request** | **UpdateWorldHomeBuilderRequest** |  |  |

### Return type

**UpdateWorldHomeBuilderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_home_layout

> <WorldHomeResponse> update_world_home_layout

Arrange your home: the full layout (up to 200 pieces you own), validated server-side.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new

begin
  # Arrange your home: the full layout (up to 200 pieces you own), validated server-side.
  result = api_instance.update_world_home_layout
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_layout: #{e}"
end
```

#### Using the update_world_home_layout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldHomeResponse>, Integer, Hash)> update_world_home_layout_with_http_info

```ruby
begin
  # Arrange your home: the full layout (up to 200 pieces you own), validated server-side.
  data, status_code, headers = api_instance.update_world_home_layout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldHomeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_layout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_home_layout_by_slug

> <WorldHomeResponse> update_world_home_layout_by_slug(slug)

Rearrange a home you co-build (never adding the owner bought pieces).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Rearrange a home you co-build (never adding the owner bought pieces).
  result = api_instance.update_world_home_layout_by_slug(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_layout_by_slug: #{e}"
end
```

#### Using the update_world_home_layout_by_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldHomeResponse>, Integer, Hash)> update_world_home_layout_by_slug_with_http_info(slug)

```ruby
begin
  # Rearrange a home you co-build (never adding the owner bought pieces).
  data, status_code, headers = api_instance.update_world_home_layout_by_slug_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldHomeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_home_layout_by_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_interactive_design_draft

> <UpdateWorldInteractiveDesignDraftResponse> update_world_interactive_design_draft(id)

Save the draft MML source (up to 64 KB); the response carries its static check.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Save the draft MML source (up to 64 KB); the response carries its static check.
  result = api_instance.update_world_interactive_design_draft(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_interactive_design_draft: #{e}"
end
```

#### Using the update_world_interactive_design_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldInteractiveDesignDraftResponse>, Integer, Hash)> update_world_interactive_design_draft_with_http_info(id)

```ruby
begin
  # Save the draft MML source (up to 64 KB); the response carries its static check.
  data, status_code, headers = api_instance.update_world_interactive_design_draft_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldInteractiveDesignDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_interactive_design_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWorldInteractiveDesignDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_listing_holders_only

> <UpdateWorldListingHoldersOnlyResponse> update_world_listing_holders_only(id)

Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.
  result = api_instance.update_world_listing_holders_only(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_listing_holders_only: #{e}"
end
```

#### Using the update_world_listing_holders_only_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldListingHoldersOnlyResponse>, Integer, Hash)> update_world_listing_holders_only_with_http_info(id)

```ruby
begin
  # Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.
  data, status_code, headers = api_instance.update_world_listing_holders_only_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldListingHoldersOnlyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_listing_holders_only_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWorldListingHoldersOnlyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_outfit

> <UpdateWorldOutfitResponse> update_world_outfit(id, update_world_outfit_request)

Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_world_outfit_request = Crossly::UpdateWorldOutfitRequest.new({name: 'name_example'}) # UpdateWorldOutfitRequest | 

begin
  # Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.
  result = api_instance.update_world_outfit(id, update_world_outfit_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_outfit: #{e}"
end
```

#### Using the update_world_outfit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldOutfitResponse>, Integer, Hash)> update_world_outfit_with_http_info(id, update_world_outfit_request)

```ruby
begin
  # Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.
  data, status_code, headers = api_instance.update_world_outfit_with_http_info(id, update_world_outfit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldOutfitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_outfit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_world_outfit_request** | **UpdateWorldOutfitRequest** |  |  |

### Return type

**UpdateWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_pet_active

> <UpdateWorldPetActiveResponse> update_world_pet_active(update_world_pet_active_request)

Walk one of your pets with you in the world, or none (kind: null).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
update_world_pet_active_request = Crossly::UpdateWorldPetActiveRequest.new({kind: 'cat'}) # UpdateWorldPetActiveRequest | 

begin
  # Walk one of your pets with you in the world, or none (kind: null).
  result = api_instance.update_world_pet_active(update_world_pet_active_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_pet_active: #{e}"
end
```

#### Using the update_world_pet_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldPetActiveResponse>, Integer, Hash)> update_world_pet_active_with_http_info(update_world_pet_active_request)

```ruby
begin
  # Walk one of your pets with you in the world, or none (kind: null).
  data, status_code, headers = api_instance.update_world_pet_active_with_http_info(update_world_pet_active_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldPetActiveResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_pet_active_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_pet_active_request** | **UpdateWorldPetActiveRequest** |  |  |

### Return type

**UpdateWorldPetActiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_quest_pin

> <UpdateWorldQuestPinResponse> update_world_quest_pin(update_world_quest_pin_request)

Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
update_world_quest_pin_request = Crossly::UpdateWorldQuestPinRequest.new({pin: 'pin_example'}) # UpdateWorldQuestPinRequest | 

begin
  # Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.
  result = api_instance.update_world_quest_pin(update_world_quest_pin_request)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_quest_pin: #{e}"
end
```

#### Using the update_world_quest_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldQuestPinResponse>, Integer, Hash)> update_world_quest_pin_with_http_info(update_world_quest_pin_request)

```ruby
begin
  # Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.
  data, status_code, headers = api_instance.update_world_quest_pin_with_http_info(update_world_quest_pin_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldQuestPinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_quest_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_quest_pin_request** | **UpdateWorldQuestPinRequest** |  |  |

### Return type

**UpdateWorldQuestPinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_room_holder_gate

> <UpdateWorldRoomHolderGateResponse> update_world_room_holder_gate(id)

Make your room holders-only (its collection rooms follow). Send null to open it again. Returns `{ gate }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Make your room holders-only (its collection rooms follow). Send null to open it again. Returns `{ gate }`.
  result = api_instance.update_world_room_holder_gate(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_room_holder_gate: #{e}"
end
```

#### Using the update_world_room_holder_gate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldRoomHolderGateResponse>, Integer, Hash)> update_world_room_holder_gate_with_http_info(id)

```ruby
begin
  # Make your room holders-only (its collection rooms follow). Send null to open it again. Returns `{ gate }`.
  data, status_code, headers = api_instance.update_world_room_holder_gate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldRoomHolderGateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_room_holder_gate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWorldRoomHolderGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_space

> <UpdateWorldSpaceResponse> update_world_space(slug)

As host, change a Space name, about or membership.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # As host, change a Space name, about or membership.
  result = api_instance.update_world_space(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_space: #{e}"
end
```

#### Using the update_world_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldSpaceResponse>, Integer, Hash)> update_world_space_with_http_info(slug)

```ruby
begin
  # As host, change a Space name, about or membership.
  data, status_code, headers = api_instance.update_world_space_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldSpaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**UpdateWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_space_holder_gate

> <UpdateWorldRoomHolderGateResponse> update_world_space_holder_gate(slug)

Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns `{ gate }`.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
slug = 'slug_example' # String | 

begin
  # Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns `{ gate }`.
  result = api_instance.update_world_space_holder_gate(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_space_holder_gate: #{e}"
end
```

#### Using the update_world_space_holder_gate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldRoomHolderGateResponse>, Integer, Hash)> update_world_space_holder_gate_with_http_info(slug)

```ruby
begin
  # Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns `{ gate }`.
  data, status_code, headers = api_instance.update_world_space_holder_gate_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldRoomHolderGateResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_space_holder_gate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**UpdateWorldRoomHolderGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_stall_booking_booth

> <UpdateWorldStallBookingBoothResponse> update_world_stall_booking_booth(id)

Dress the booth of a stall you booked (decor you hold).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldApi.new
id = 'id_example' # String | 

begin
  # Dress the booth of a stall you booked (decor you hold).
  result = api_instance.update_world_stall_booking_booth(id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_stall_booking_booth: #{e}"
end
```

#### Using the update_world_stall_booking_booth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldStallBookingBoothResponse>, Integer, Hash)> update_world_stall_booking_booth_with_http_info(id)

```ruby
begin
  # Dress the booth of a stall you booked (decor you hold).
  data, status_code, headers = api_instance.update_world_stall_booking_booth_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldStallBookingBoothResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldApi->update_world_stall_booking_booth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**UpdateWorldStallBookingBoothResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

