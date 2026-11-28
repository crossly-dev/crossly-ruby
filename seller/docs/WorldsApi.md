# Crossly::WorldsApi

All URIs are relative to *https://crossly.net/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_world_experience**](WorldsApi.md#create_world_experience) | **POST** /v1/worlds/experiences | Create an experience with a start place (no version yet). Counts against the plan&#39;s experience limit. |
| [**create_world_experience_access**](WorldsApi.md#create_world_experience_access) | **POST** /v1/worlds/experiences/{experienceId}/access | Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish). |
| [**create_world_experience_alert_ack**](WorldsApi.md#create_world_experience_alert_ack) | **POST** /v1/worlds/experiences/{experienceId}/alerts/{alertId}/ack | Acknowledge an alert. |
| [**create_world_experience_analytic_query**](WorldsApi.md#create_world_experience_analytic_query) | **POST** /v1/worlds/experiences/{experienceId}/analytics/query | Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed. |
| [**create_world_experience_archive**](WorldsApi.md#create_world_experience_archive) | **POST** /v1/worlds/experiences/{experienceId}/archive | Archive: closes it, drains its servers, frees its plan slot; data is kept. |
| [**create_world_experience_ban**](WorldsApi.md#create_world_experience_ban) | **POST** /v1/worlds/experiences/{experienceId}/bans | Ban a player from your experience: { sub, duration (seconds, null &#x3D; permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server. |
| [**create_world_experience_close**](WorldsApi.md#create_world_experience_close) | **POST** /v1/worlds/experiences/{experienceId}/close | Make the experience private again (owner-only joins). |
| [**create_world_experience_config_rollback**](WorldsApi.md#create_world_experience_config_rollback) | **POST** /v1/worlds/experiences/{experienceId}/configs/rollback | Instant rollback: an earlier version becomes the newest one. |
| [**create_world_experience_event**](WorldsApi.md#create_world_experience_event) | **POST** /v1/worlds/experiences/{experienceId}/events | Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end. |
| [**create_world_experience_event_cancel**](WorldsApi.md#create_world_experience_event_cancel) | **POST** /v1/worlds/experiences/{experienceId}/events/{eventId}/cancel | Cancel a scheduled event, or end a live one now. |
| [**create_world_experience_experiment**](WorldsApi.md#create_world_experience_experiment) | **POST** /v1/worlds/experiences/{experienceId}/experiments | Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout &#x3D; 100), targeting, a primary metric and guardrails, minimum 7 days. |
| [**create_world_experience_experiment_ship**](WorldsApi.md#create_world_experience_experiment_ship) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/ship | Ship a variant: its values become the base config for everyone and the experiment ends. |
| [**create_world_experience_experiment_start**](WorldsApi.md#create_world_experience_experiment_start) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/start | Start: running servers begin assigning players by their per-experience id. |
| [**create_world_experience_experiment_stop**](WorldsApi.md#create_world_experience_experiment_stop) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/stop | Stop: every player sees the base config again. |
| [**create_world_experience_join**](WorldsApi.md#create_world_experience_join) | **POST** /v1/worlds/experiences/{experienceId}/join | Join as the token&#39;s owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots. |
| [**create_world_experience_localization_import**](WorldsApi.md#create_world_experience_localization_import) | **POST** /v1/worlds/experiences/{experienceId}/localization/import | Import a sheet: { csv } with a \&quot;key\&quot; column then one column per language code; rows @name and @description carry the game listing. { dryRun: true } previews (issues with line and column) without saving; an error refuses the whole import. |
| [**create_world_experience_moderation_appeal**](WorldsApi.md#create_world_experience_moderation_appeal) | **POST** /v1/worlds/experiences/{experienceId}/moderation/appeals | Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified. |
| [**create_world_experience_open**](WorldsApi.md#create_world_experience_open) | **POST** /v1/worlds/experiences/{experienceId}/open | Open the experience to players (needs a published start place). |
| [**create_world_experience_place**](WorldsApi.md#create_world_experience_place) | **POST** /v1/worlds/experiences/{experienceId}/places | Add a place (at most 10 per experience in P1). |
| [**create_world_experience_place_check**](WorldsApi.md#create_world_experience_place_check) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/checks | Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing. |
| [**create_world_experience_place_publish**](WorldsApi.md#create_world_experience_place_publish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/publishes | Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list. |
| [**create_world_experience_place_start**](WorldsApi.md#create_world_experience_place_start) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/start | Make this the start place (where a plain join lands). |
| [**create_world_experience_place_test**](WorldsApi.md#create_world_experience_place_test) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/test | Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots. |
| [**create_world_experience_place_version**](WorldsApi.md#create_world_experience_place_version) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions | Upload a version bundle (crossly-worlds-project/1). Not live until published. |
| [**create_world_experience_place_version_publish**](WorldsApi.md#create_world_experience_place_version_publish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/publish | Make a version current (publish or roll back). New joins land on it; older servers drain as they empty. |
| [**create_world_experience_place_version_rollback**](WorldsApi.md#create_world_experience_place_version_rollback) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/rollback | Make an earlier reviewed version current again. Unreviewed versions go through …/publishes. |
| [**create_world_experience_playtester**](WorldsApi.md#create_world_experience_playtester) | **POST** /v1/worlds/experiences/{experienceId}/playtesters | Add a playtester by Crossly handle (max 200 per game). |
| [**create_world_experience_publish_cancel**](WorldsApi.md#create_world_experience_publish_cancel) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/cancel | Give up a publish that is not live. |
| [**create_world_experience_publish_halt**](WorldsApi.md#create_world_experience_publish_halt) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/halt | Stop a rollout: new joins go back to the current version. |
| [**create_world_experience_publish_rollout**](WorldsApi.md#create_world_experience_publish_rollout) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/rollout | Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically. |
| [**create_world_experience_publish_submit**](WorldsApi.md#create_world_experience_publish_submit) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/submit | Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically. |
| [**create_world_experience_reserved_server**](WorldsApi.md#create_world_experience_reserved_server) | **POST** /v1/worlds/experiences/{experienceId}/reserved-servers | An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once. |
| [**create_world_experience_restore**](WorldsApi.md#create_world_experience_restore) | **POST** /v1/worlds/experiences/{experienceId}/restore | Restore an archived game, or a deleted one within 30 days; it comes back private. |
| [**create_world_experience_server_shutdown**](WorldsApi.md#create_world_experience_server_shutdown) | **POST** /v1/worlds/experiences/{experienceId}/servers/shutdown | Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version). |
| [**create_world_experience_transfer_request**](WorldsApi.md#create_world_experience_transfer_request) | **POST** /v1/worlds/experiences/{experienceId}/transfer-requests | Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days. |
| [**create_world_mature_verify**](WorldsApi.md#create_world_mature_verify) | **POST** /v1/worlds/mature/verify | Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified. |
| [**create_world_parental_accept**](WorldsApi.md#create_world_parental_accept) | **POST** /v1/worlds/parental/accept | Accept a child&#39;s invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change. |
| [**create_world_parental_children_pin**](WorldsApi.md#create_world_parental_children_pin) | **POST** /v1/worlds/parental/children/{childId}/pin | Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes. |
| [**create_world_parental_children_unlink**](WorldsApi.md#create_world_parental_children_unlink) | **POST** /v1/worlds/parental/children/{childId}/unlink | Remove the parent link (and its limits) with your PIN: { pin }. |
| [**create_world_parental_invite**](WorldsApi.md#create_world_parental_invite) | **POST** /v1/worlds/parental/invite | An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code. |
| [**create_world_rating_compute**](WorldsApi.md#create_world_rating_compute) | **POST** /v1/worlds/rating/compute | Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals. |
| [**create_world_report**](WorldsApi.md#create_world_report) | **POST** /v1/worlds/reports | Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only. |
| [**create_world_transfer_request_accept**](WorldsApi.md#create_world_transfer_request_accept) | **POST** /v1/worlds/transfer-requests/{requestId}/accept | Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you. |
| [**create_world_transfer_request_cancel**](WorldsApi.md#create_world_transfer_request_cancel) | **POST** /v1/worlds/transfer-requests/{requestId}/cancel | Cancel a transfer request you sent while it waits. |
| [**create_world_transfer_request_decline**](WorldsApi.md#create_world_transfer_request_decline) | **POST** /v1/worlds/transfer-requests/{requestId}/decline | Decline a transfer asked of you; nothing changes. |
| [**delete_world_experience**](WorldsApi.md#delete_world_experience) | **DELETE** /v1/worlds/experiences/{experienceId} | Delete a game (a tombstone, restorable for 30 days). Body { confirmName } &#x3D; the game&#39;s name. |
| [**delete_world_experience_ban**](WorldsApi.md#delete_world_experience_ban) | **DELETE** /v1/worlds/experiences/{experienceId}/bans/{sub} | Lift your experience&#39;s ban on a player. Bans placed by Crossly safety are lifted only by appeal. |
| [**delete_world_experience_localization**](WorldsApi.md#delete_world_experience_localization) | **DELETE** /v1/worlds/experiences/{experienceId}/localization/{locale} | Remove one language (its name, description and strings). |
| [**delete_world_experience_playtester**](WorldsApi.md#delete_world_experience_playtester) | **DELETE** /v1/worlds/experiences/{experienceId}/playtesters/{userId} | Remove a playtester. |
| [**delete_world_parental_invite**](WorldsApi.md#delete_world_parental_invite) | **DELETE** /v1/worlds/parental/invite | Withdraw a pending parent invite. |
| [**get_world_chart**](WorldsApi.md#get_world_chart) | **GET** /v1/worlds/charts/{chart} | A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre&#x3D; cuts it to one genre. Organic only: nothing paid. |
| [**get_world_discover_experience**](WorldsApi.md#get_world_discover_experience) | **GET** /v1/worlds/discover/experiences/{key} | An experience&#39;s thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:&lt;id&gt;, classic:&lt;id&gt;, tcg:&lt;game&gt;, cards:&lt;game&gt;. |
| [**get_world_discover_row**](WorldsApi.md#get_world_discover_row) | **GET** /v1/worlds/discover/rows | The Play hub&#39;s rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New &amp; Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \&quot;Sponsored\&quot;, never in the first two rows or a row&#39;s first two places. |
| [**get_world_experience**](WorldsApi.md#get_world_experience) | **GET** /v1/worlds/experiences/{experienceId} | One of your experiences with its places, live CCU and server count. |
| [**get_world_experience_access_limit**](WorldsApi.md#get_world_experience_access_limit) | **GET** /v1/worlds/experiences/{experienceId}/access-limits | The game&#39;s crew-only and country limits, and the owner&#39;s crew. |
| [**get_world_experience_alert_setting**](WorldsApi.md#get_world_experience_alert_setting) | **GET** /v1/worlds/experiences/{experienceId}/alerts/settings | Alert rules (threshold, on/off, inbox, webhook) and quiet hours. |
| [**get_world_experience_analytic**](WorldsApi.md#get_world_experience_analytic) | **GET** /v1/worlds/experiences/{experienceId}/analytics/{report} | An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from&#x3D;&amp;to&#x3D; (YYYY-MM-DD), retention ?segment&#x3D;, funnels ?funnel&#x3D;, economy ?currency&#x3D;. |
| [**get_world_experience_ban**](WorldsApi.md#get_world_experience_ban) | **GET** /v1/worlds/experiences/{experienceId}/bans/{sub} | The live ban on one player, or 404. |
| [**get_world_experience_chat_setting**](WorldsApi.md#get_world_experience_chat_setting) | **GET** /v1/worlds/experiences/{experienceId}/chat-settings | The game&#39;s text chat setting and filter level. |
| [**get_world_experience_config**](WorldsApi.md#get_world_experience_config) | **GET** /v1/worlds/experiences/{experienceId}/configs | The remote config document ({ values, rules }) and its version. |
| [**get_world_experience_experiment**](WorldsApi.md#get_world_experience_experiment) | **GET** /v1/worlds/experiences/{experienceId}/experiments/{experimentId} | Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate. |
| [**get_world_experience_localization**](WorldsApi.md#get_world_experience_localization) | **GET** /v1/worlds/experiences/{experienceId}/localization | A game&#39;s translations: per language its name, description and in-game strings (key -&gt; text), the English source (the game&#39;s Details and string table) and what each language still misses. |
| [**get_world_experience_localization_export**](WorldsApi.md#get_world_experience_localization_export) | **GET** /v1/worlds/experiences/{experienceId}/localization/export | The game&#39;s translations as one CSV sheet (key, en, then each language; ?locales&#x3D;es,fr picks the columns). |
| [**get_world_experience_maturity**](WorldsApi.md#get_world_experience_maturity) | **GET** /v1/worlds/experiences/{experienceId}/maturity | The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish. |
| [**get_world_experience_moderation**](WorldsApi.md#get_world_experience_moderation) | **GET** /v1/worlds/experiences/{experienceId}/moderation | Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans. |
| [**get_world_experience_moderation_appeal**](WorldsApi.md#get_world_experience_moderation_appeal) | **GET** /v1/worlds/experiences/{experienceId}/moderation/appeals | What you can appeal on your game and every appeal of it: data.targets (Crossly&#39;s actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer&#39;s note). |
| [**get_world_experience_place_draft**](WorldsApi.md#get_world_experience_place_draft) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/draft | The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place. |
| [**get_world_experience_publish**](WorldsApi.md#get_world_experience_publish) | **GET** /v1/worlds/experiences/{experienceId}/publishes/{requestId} | One publish with its review state and rollout. |
| [**get_world_experience_shop**](WorldsApi.md#get_world_experience_shop) | **GET** /v1/worlds/experiences/{experienceId}/shop | An open experience&#39;s way back to commerce: its creator&#39;s shop and how many live listings it has. |
| [**get_world_experience_showcase**](WorldsApi.md#get_world_experience_showcase) | **GET** /v1/worlds/experiences/{experienceId}/showcase | The listings the game&#39;s page showcases, and the owner&#39;s live Crossly listings that can be picked. |
| [**get_world_friend_playing**](WorldsApi.md#get_world_friend_playing) | **GET** /v1/worlds/friends/playing | Your friends (mutual follows) and where each is playing right now, with the link that joins them. |
| [**get_world_game_by_game**](WorldsApi.md#get_world_game_by_game) | **GET** /v1/worlds/games/{game} | A game&#39;s page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key. |
| [**get_world_game_mine**](WorldsApi.md#get_world_game_mine) | **GET** /v1/worlds/games/mine/{gameId} | A game&#39;s summary: status, timeline, the sub-pages you may open, health and next steps. |
| [**get_world_game_mine_assets_used**](WorldsApi.md#get_world_game_mine_assets_used) | **GET** /v1/worlds/games/mine/{gameId}/assets-used | Everything a game&#39;s published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place&#39;s current version; a Classic game its latest reviewed package version. |
| [**get_world_game_server**](WorldsApi.md#get_world_game_server) | **GET** /v1/worlds/games/{game}/servers | A Crossly Carnival game&#39;s public servers that are up: players, max, whether a stranger still fits, your friends on each (friends&#39; servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }. |
| [**get_world_link_card_game**](WorldsApi.md#get_world_link_card_game) | **GET** /v1/worlds/links/card-game/{game} | Where to play a card game: Crossly&#39;s own game, its Commons tables, and creator worlds that tag it. |
| [**get_world_link_listing**](WorldsApi.md#get_world_link_listing) | **GET** /v1/worlds/links/listing/{slug} | \&quot;Try it in Crossly Carnival\&quot;: open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports. |
| [**get_world_link_seller**](WorldsApi.md#get_world_link_seller) | **GET** /v1/worlds/links/seller/{username} | \&quot;Games by this seller\&quot;: the seller&#39;s open games, best first. |
| [**get_world_mature**](WorldsApi.md#get_world_mature) | **GET** /v1/worlds/mature | Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status. |
| [**get_world_me_pref**](WorldsApi.md#get_world_me_pref) | **GET** /v1/worlds/me/prefs | Your Crossly Carnival choices (whether games may see your Crossly wallet address). |
| [**get_world_parental_children**](WorldsApi.md#get_world_parental_children) | **GET** /v1/worlds/parental/children/{childId} | One linked account with ?days&#x3D; (1-90) of playtime per experience. |
| [**get_world_parental_me**](WorldsApi.md#get_world_parental_me) | **GET** /v1/worlds/parental/me | This account&#39;s parent link: none, pending (an invite is out) or active (the parent&#39;s name and the limits they set). |
| [**get_world_plaza**](WorldsApi.md#get_world_plaza) | **GET** /v1/worlds/plaza | The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new &amp; rising row, the featured stage&#39;s editorial pick and four chart boards, with players now and friends inside. |
| [**get_world_policy_me**](WorldsApi.md#get_world_policy_me) | **GET** /v1/worlds/policy/me | What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \&quot;no\&quot;. |
| [**get_world_rating_questionnaire**](WorldsApi.md#get_world_rating_questionnaire) | **GET** /v1/worlds/rating/questionnaire | The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted. |
| [**get_world_search**](WorldsApi.md#get_world_search) | **GET** /v1/worlds/search | Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart. |
| [**get_world_transfer_request**](WorldsApi.md#get_world_transfer_request) | **GET** /v1/worlds/transfer-requests/{requestId} | One ownership transfer request (only its two people can read it), with the actions you may take. |
| [**get_world_transparency**](WorldsApi.md#get_world_transparency) | **GET** /v1/worlds/transparency/{month} | One month&#39;s transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans. |
| [**list_world_appeals**](WorldsApi.md#list_world_appeals) | **GET** /v1/worlds/appeals | Your appeals and their decisions. |
| [**list_world_experience_alerts**](WorldsApi.md#list_world_experience_alerts) | **GET** /v1/worlds/experiences/{experienceId}/alerts | Alerts that fired, newest first. |
| [**list_world_experience_audit**](WorldsApi.md#list_world_experience_audit) | **GET** /v1/worlds/experiences/{experienceId}/audit | The live-ops audit log: every config, experiment, event and alert change, who made it, when. |
| [**list_world_experience_bans**](WorldsApi.md#list_world_experience_bans) | **GET** /v1/worlds/experiences/{experienceId}/bans | Players banned from your experience (by pairwise sub), oldest first (cursor). |
| [**list_world_experience_config_versions**](WorldsApi.md#list_world_experience_config_versions) | **GET** /v1/worlds/experiences/{experienceId}/configs/versions | Config history, newest first: who changed which keys, when. |
| [**list_world_experience_events**](WorldsApi.md#list_world_experience_events) | **GET** /v1/worlds/experiences/{experienceId}/events | Scheduled and live events (?includeEnded&#x3D;true for history). |
| [**list_world_experience_experiments**](WorldsApi.md#list_world_experience_experiments) | **GET** /v1/worlds/experiences/{experienceId}/experiments | A/B experiments, newest first, with their live verdict. |
| [**list_world_experience_moderation_reports**](WorldsApi.md#list_world_experience_moderation_reports) | **GET** /v1/worlds/experiences/{experienceId}/moderation/reports | Reports about your experience, newest first (cursor). Reporter identity, account ids and other players&#39; words are removed. |
| [**list_world_experience_place_publishes**](WorldsApi.md#list_world_experience_place_publishes) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/publishes | Publishes of a place, newest first: state, checks, rating, access, review, rollout. |
| [**list_world_experience_place_versions**](WorldsApi.md#list_world_experience_place_versions) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions | Version history of a place, newest first; &#x60;current&#x60; marks the live one. |
| [**list_world_experience_places**](WorldsApi.md#list_world_experience_places) | **GET** /v1/worlds/experiences/{experienceId}/places | The places of an experience, start place first. |
| [**list_world_experience_playtesters**](WorldsApi.md#list_world_experience_playtesters) | **GET** /v1/worlds/experiences/{experienceId}/playtesters | People who may join while the game is private. |
| [**list_world_experience_servers**](WorldsApi.md#list_world_experience_servers) | **GET** /v1/worlds/experiences/{experienceId}/servers | Live servers: place, version, region, players, health. |
| [**list_world_experiences**](WorldsApi.md#list_world_experiences) | **GET** /v1/worlds/experiences | Your experiences, newest first; cursor-paged (?cursor&#x3D;&amp;limit&#x3D;). |
| [**list_world_favorites**](WorldsApi.md#list_world_favorites) | **GET** /v1/worlds/favorites | Your favourite experiences that are still open, newest first. |
| [**list_world_game_mine**](WorldsApi.md#list_world_game_mine) | **GET** /v1/worlds/games/mine | Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&amp;status&amp;engine&amp;genre&amp;template&amp;owner&amp;flag&amp;sort; sort&#x3D;revenue &#x3D; highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic). |
| [**list_world_parental_children**](WorldsApi.md#list_world_parental_children) | **GET** /v1/worlds/parental/children | Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience. |
| [**list_world_recent**](WorldsApi.md#list_world_recent) | **GET** /v1/worlds/recent | Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded). |
| [**list_world_regions**](WorldsApi.md#list_world_regions) | **GET** /v1/worlds/regions | Live server regions with a probe URL each: GET it a few times, send the round trips as &#x60;pings&#x60; with the join to land in the nearest region. |
| [**list_world_shop_listings**](WorldsApi.md#list_world_shop_listings) | **GET** /v1/worlds/shop-listings | Your live Crossly listings a game can show and sell (shop objects bind to their id). |
| [**list_world_transfer_requests**](WorldsApi.md#list_world_transfer_requests) | **GET** /v1/worlds/transfer-requests | Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&amp;status&amp;experienceId). |
| [**list_world_transparency**](WorldsApi.md#list_world_transparency) | **GET** /v1/worlds/transparency | Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only). |
| [**update_world_experience**](WorldsApi.md#update_world_experience) | **PATCH** /v1/worlds/experiences/{experienceId} | Edit name, description, genre, rating or icon. |
| [**update_world_experience_access_limit**](WorldsApi.md#update_world_experience_access_limit) | **PUT** /v1/worlds/experiences/{experienceId}/access-limits | Limit who can play: { crewOnly } (only members of the owner&#39;s crew), { countryMode: all|allow|block, countries: [&#39;US&#39;, ...] }. The owner and team are never limited. |
| [**update_world_experience_alert_setting**](WorldsApi.md#update_world_experience_alert_setting) | **PUT** /v1/worlds/experiences/{experienceId}/alerts/settings | Change alert rules and quiet hours. |
| [**update_world_experience_chat_setting**](WorldsApi.md#update_world_experience_chat_setting) | **PUT** /v1/worlds/experiences/{experienceId}/chat-settings | Turn text chat off or use the strict filter for everyone (never looser than the platform). |
| [**update_world_experience_config**](WorldsApi.md#update_world_experience_config) | **PUT** /v1/worlds/experiences/{experienceId}/configs | Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409). |
| [**update_world_experience_config_value**](WorldsApi.md#update_world_experience_config_value) | **PATCH** /v1/worlds/experiences/{experienceId}/configs/values | Set and/or remove individual config keys. |
| [**update_world_experience_event**](WorldsApi.md#update_world_experience_event) | **PATCH** /v1/worlds/experiences/{experienceId}/events/{eventId} | Reschedule or change a scheduled event; a live event may only move its end. |
| [**update_world_experience_experiment**](WorldsApi.md#update_world_experience_experiment) | **PATCH** /v1/worlds/experiences/{experienceId}/experiments/{experimentId} | Edit a draft (a running experiment may only rename or reword). |
| [**update_world_experience_localization**](WorldsApi.md#update_world_experience_localization) | **PUT** /v1/worlds/experiences/{experienceId}/localization | Save languages: { locales: { es: { name, description, strings: { \&quot;shop.title\&quot;: \&quot;Tienda\&quot; } } } }. Each language sent replaces that language; the rest stay. English holds the source string table (its name and description are the Details). |
| [**update_world_experience_maturity**](WorldsApi.md#update_world_experience_maturity) | **PUT** /v1/worlds/experiences/{experienceId}/maturity | Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect). |
| [**update_world_experience_place**](WorldsApi.md#update_world_experience_place) | **PATCH** /v1/worlds/experiences/{experienceId}/places/{placeId} | Place settings: name, max players (1-50), fill target, social slots, empty shutdown. |
| [**update_world_experience_place_draft**](WorldsApi.md#update_world_experience_place_draft) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/draft | Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict. |
| [**update_world_experience_place_version_note**](WorldsApi.md#update_world_experience_place_version_note) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/notes | Edit a release version&#39;s changelog (the game page&#39;s What&#39;s new): { notes } up to 2000 characters. |
| [**update_world_experience_publish**](WorldsApi.md#update_world_experience_publish) | **PATCH** /v1/worlds/experiences/{experienceId}/publishes/{requestId} | Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement. |
| [**update_world_experience_showcase**](WorldsApi.md#update_world_experience_showcase) | **PUT** /v1/worlds/experiences/{experienceId}/showcase | Set the showcased listings: { listingIds } (Crossly shop slugs of the owner&#39;s live listings, max 12, in order). |
| [**update_world_favorite**](WorldsApi.md#update_world_favorite) | **PUT** /v1/worlds/favorites | Favourite or un-favourite an experience (idempotent). |
| [**update_world_mature**](WorldsApi.md#update_world_mature) | **PUT** /v1/worlds/mature | Switch \&quot;Show Mature experiences\&quot; on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check. |
| [**update_world_me_pref**](WorldsApi.md#update_world_me_pref) | **PUT** /v1/worlds/me/prefs | Set your Crossly Carnival choices. |
| [**update_world_parental_children**](WorldsApi.md#update_world_parental_children) | **PATCH** /v1/worlds/parental/children/{childId} | Change a linked account&#39;s limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 &#x3D; no purchases, null &#x3D; no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout. |
| [**update_world_vote**](WorldsApi.md#update_world_vote) | **PUT** /v1/worlds/votes | Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal. |


## create_world_experience

> <CreateWorldExperienceResponse> create_world_experience(opts)

Create an experience with a start place (no version yet). Counts against the plan's experience limit.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  create_world_experience_request: Crossly::CreateWorldExperienceRequest.new({name: 'name_example'}) # CreateWorldExperienceRequest | 
}

begin
  # Create an experience with a start place (no version yet). Counts against the plan's experience limit.
  result = api_instance.create_world_experience(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience: #{e}"
end
```

#### Using the create_world_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceResponse>, Integer, Hash)> create_world_experience_with_http_info(opts)

```ruby
begin
  # Create an experience with a start place (no version yet). Counts against the plan's experience limit.
  data, status_code, headers = api_instance.create_world_experience_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_experience_request** | **CreateWorldExperienceRequest** |  | [optional] |

### Return type

**CreateWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_access

> <WorldExperienceResponse> create_world_experience_access(experience_id, opts)

Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_access_request: Crossly::CreateWorldExperienceAccessRequest.new({visibility: 'unlisted'}) # CreateWorldExperienceAccessRequest | 
}

begin
  # Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).
  result = api_instance.create_world_experience_access(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_access: #{e}"
end
```

#### Using the create_world_experience_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> create_world_experience_access_with_http_info(experience_id, opts)

```ruby
begin
  # Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).
  data, status_code, headers = api_instance.create_world_experience_access_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_access_request** | **CreateWorldExperienceAccessRequest** |  | [optional] |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_alert_ack

> <CreateWorldExperienceAlertAckResponse> create_world_experience_alert_ack(experience_id, alert_id)

Acknowledge an alert.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
alert_id = 'alert_id_example' # String | 

begin
  # Acknowledge an alert.
  result = api_instance.create_world_experience_alert_ack(experience_id, alert_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_alert_ack: #{e}"
end
```

#### Using the create_world_experience_alert_ack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceAlertAckResponse>, Integer, Hash)> create_world_experience_alert_ack_with_http_info(experience_id, alert_id)

```ruby
begin
  # Acknowledge an alert.
  data, status_code, headers = api_instance.create_world_experience_alert_ack_with_http_info(experience_id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceAlertAckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_alert_ack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **alert_id** | **String** |  |  |

### Return type

**CreateWorldExperienceAlertAckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_analytic_query

> <CreateWorldExperienceAnalyticQueryResponse> create_world_experience_analytic_query(experience_id, opts)

Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_analytic_query_request: Crossly::CreateWorldExperienceAnalyticQueryRequest.new({name: 'name_example'}) # CreateWorldExperienceAnalyticQueryRequest | 
}

begin
  # Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.
  result = api_instance.create_world_experience_analytic_query(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_analytic_query: #{e}"
end
```

#### Using the create_world_experience_analytic_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceAnalyticQueryResponse>, Integer, Hash)> create_world_experience_analytic_query_with_http_info(experience_id, opts)

```ruby
begin
  # Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.
  data, status_code, headers = api_instance.create_world_experience_analytic_query_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceAnalyticQueryResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_analytic_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_analytic_query_request** | **CreateWorldExperienceAnalyticQueryRequest** |  | [optional] |

### Return type

**CreateWorldExperienceAnalyticQueryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_archive

> <WorldExperienceResponse> create_world_experience_archive(experience_id)

Archive: closes it, drains its servers, frees its plan slot; data is kept.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Archive: closes it, drains its servers, frees its plan slot; data is kept.
  result = api_instance.create_world_experience_archive(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_archive: #{e}"
end
```

#### Using the create_world_experience_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> create_world_experience_archive_with_http_info(experience_id)

```ruby
begin
  # Archive: closes it, drains its servers, frees its plan slot; data is kept.
  data, status_code, headers = api_instance.create_world_experience_archive_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_archive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_ban

> <GetWorldExperienceBanResponse> create_world_experience_ban(experience_id, opts)

Ban a player from your experience: { sub, duration (seconds, null = permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_ban_request: Crossly::CreateWorldExperienceBanRequest.new({sub: 'sub_example', reason: 'reason_example'}) # CreateWorldExperienceBanRequest | 
}

begin
  # Ban a player from your experience: { sub, duration (seconds, null = permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.
  result = api_instance.create_world_experience_ban(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_ban: #{e}"
end
```

#### Using the create_world_experience_ban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceBanResponse>, Integer, Hash)> create_world_experience_ban_with_http_info(experience_id, opts)

```ruby
begin
  # Ban a player from your experience: { sub, duration (seconds, null = permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.
  data, status_code, headers = api_instance.create_world_experience_ban_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceBanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_ban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_ban_request** | **CreateWorldExperienceBanRequest** |  | [optional] |

### Return type

**GetWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_close

> <WorldExperienceResponse> create_world_experience_close(experience_id)

Make the experience private again (owner-only joins).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Make the experience private again (owner-only joins).
  result = api_instance.create_world_experience_close(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_close: #{e}"
end
```

#### Using the create_world_experience_close_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> create_world_experience_close_with_http_info(experience_id)

```ruby
begin
  # Make the experience private again (owner-only joins).
  data, status_code, headers = api_instance.create_world_experience_close_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_close_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_config_rollback

> <WorldExperienceConfigResponse> create_world_experience_config_rollback(experience_id, opts)

Instant rollback: an earlier version becomes the newest one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_config_rollback_request: Crossly::CreateWorldExperienceConfigRollbackRequest.new({version: 3.56}) # CreateWorldExperienceConfigRollbackRequest | 
}

begin
  # Instant rollback: an earlier version becomes the newest one.
  result = api_instance.create_world_experience_config_rollback(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_config_rollback: #{e}"
end
```

#### Using the create_world_experience_config_rollback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceConfigResponse>, Integer, Hash)> create_world_experience_config_rollback_with_http_info(experience_id, opts)

```ruby
begin
  # Instant rollback: an earlier version becomes the newest one.
  data, status_code, headers = api_instance.create_world_experience_config_rollback_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceConfigResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_config_rollback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_config_rollback_request** | **CreateWorldExperienceConfigRollbackRequest** |  | [optional] |

### Return type

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_event

> <WorldExperienceEventResponse> create_world_experience_event(experience_id, opts)

Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_event_request: Crossly::CreateWorldExperienceEventRequest.new({name: 'name_example', starts_at: 'starts_at_example', ends_at: 'ends_at_example'}) # CreateWorldExperienceEventRequest | 
}

begin
  # Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.
  result = api_instance.create_world_experience_event(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_event: #{e}"
end
```

#### Using the create_world_experience_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceEventResponse>, Integer, Hash)> create_world_experience_event_with_http_info(experience_id, opts)

```ruby
begin
  # Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.
  data, status_code, headers = api_instance.create_world_experience_event_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_event_request** | **CreateWorldExperienceEventRequest** |  | [optional] |

### Return type

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_event_cancel

> <WorldExperienceEventResponse> create_world_experience_event_cancel(experience_id, event_id)

Cancel a scheduled event, or end a live one now.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
event_id = 'event_id_example' # String | 

begin
  # Cancel a scheduled event, or end a live one now.
  result = api_instance.create_world_experience_event_cancel(experience_id, event_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_event_cancel: #{e}"
end
```

#### Using the create_world_experience_event_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceEventResponse>, Integer, Hash)> create_world_experience_event_cancel_with_http_info(experience_id, event_id)

```ruby
begin
  # Cancel a scheduled event, or end a live one now.
  data, status_code, headers = api_instance.create_world_experience_event_cancel_with_http_info(experience_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_event_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **event_id** | **String** |  |  |

### Return type

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_experiment

> <WorldExperienceExperimentResponse> create_world_experience_experiment(experience_id, opts)

Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout = 100), targeting, a primary metric and guardrails, minimum 7 days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_experiment_request: Crossly::CreateWorldExperienceExperimentRequest.new({key: 'key_example', variants: [Crossly::CreateWorldExperienceExperimentRequestVariants.new({name: 'name_example', weight: 3.56})]}) # CreateWorldExperienceExperimentRequest | 
}

begin
  # Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout = 100), targeting, a primary metric and guardrails, minimum 7 days.
  result = api_instance.create_world_experience_experiment(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment: #{e}"
end
```

#### Using the create_world_experience_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperimentResponse>, Integer, Hash)> create_world_experience_experiment_with_http_info(experience_id, opts)

```ruby
begin
  # Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout = 100), targeting, a primary metric and guardrails, minimum 7 days.
  data, status_code, headers = api_instance.create_world_experience_experiment_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_experiment_request** | **CreateWorldExperienceExperimentRequest** |  | [optional] |

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_experiment_ship

> <WorldExperienceExperimentResponse> create_world_experience_experiment_ship(experience_id, experiment_id, opts)

Ship a variant: its values become the base config for everyone and the experiment ends.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
experiment_id = 'experiment_id_example' # String | 
opts = {
  create_world_experience_experiment_ship_request: Crossly::CreateWorldExperienceExperimentShipRequest.new({variant: 'variant_example'}) # CreateWorldExperienceExperimentShipRequest | 
}

begin
  # Ship a variant: its values become the base config for everyone and the experiment ends.
  result = api_instance.create_world_experience_experiment_ship(experience_id, experiment_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_ship: #{e}"
end
```

#### Using the create_world_experience_experiment_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperimentResponse>, Integer, Hash)> create_world_experience_experiment_ship_with_http_info(experience_id, experiment_id, opts)

```ruby
begin
  # Ship a variant: its values become the base config for everyone and the experiment ends.
  data, status_code, headers = api_instance.create_world_experience_experiment_ship_with_http_info(experience_id, experiment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **experiment_id** | **String** |  |  |
| **create_world_experience_experiment_ship_request** | **CreateWorldExperienceExperimentShipRequest** |  | [optional] |

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_experiment_start

> <WorldExperienceExperimentResponse> create_world_experience_experiment_start(experience_id, experiment_id)

Start: running servers begin assigning players by their per-experience id.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
experiment_id = 'experiment_id_example' # String | 

begin
  # Start: running servers begin assigning players by their per-experience id.
  result = api_instance.create_world_experience_experiment_start(experience_id, experiment_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_start: #{e}"
end
```

#### Using the create_world_experience_experiment_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperimentResponse>, Integer, Hash)> create_world_experience_experiment_start_with_http_info(experience_id, experiment_id)

```ruby
begin
  # Start: running servers begin assigning players by their per-experience id.
  data, status_code, headers = api_instance.create_world_experience_experiment_start_with_http_info(experience_id, experiment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **experiment_id** | **String** |  |  |

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_experiment_stop

> <WorldExperienceExperimentResponse> create_world_experience_experiment_stop(experience_id, experiment_id, opts)

Stop: every player sees the base config again.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
experiment_id = 'experiment_id_example' # String | 
opts = {
  reason_request2: Crossly::ReasonRequest2.new # ReasonRequest2 | 
}

begin
  # Stop: every player sees the base config again.
  result = api_instance.create_world_experience_experiment_stop(experience_id, experiment_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_stop: #{e}"
end
```

#### Using the create_world_experience_experiment_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperimentResponse>, Integer, Hash)> create_world_experience_experiment_stop_with_http_info(experience_id, experiment_id, opts)

```ruby
begin
  # Stop: every player sees the base config again.
  data, status_code, headers = api_instance.create_world_experience_experiment_stop_with_http_info(experience_id, experiment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_experiment_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **experiment_id** | **String** |  |  |
| **reason_request2** | **ReasonRequest2** |  | [optional] |

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_join

> <CreateWorldExperienceJoinResponse> create_world_experience_join(experience_id, opts)

Join as the token's owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_join_request: Crossly::CreateWorldExperienceJoinRequest.new # CreateWorldExperienceJoinRequest | 
}

begin
  # Join as the token's owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.
  result = api_instance.create_world_experience_join(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_join: #{e}"
end
```

#### Using the create_world_experience_join_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceJoinResponse>, Integer, Hash)> create_world_experience_join_with_http_info(experience_id, opts)

```ruby
begin
  # Join as the token's owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.
  data, status_code, headers = api_instance.create_world_experience_join_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceJoinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_join_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_join_request** | **CreateWorldExperienceJoinRequest** |  | [optional] |

### Return type

**CreateWorldExperienceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_localization_import

> <CreateWorldExperienceLocalizationImportResponse> create_world_experience_localization_import(experience_id, opts)

Import a sheet: { csv } with a \"key\" column then one column per language code; rows @name and @description carry the game listing. { dryRun: true } previews (issues with line and column) without saving; an error refuses the whole import.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_inventory_csv_import_request: Crossly::CreateInventoryCsvImportRequest.new({csv: 'csv_example'}) # CreateInventoryCsvImportRequest | 
}

begin
  # Import a sheet: { csv } with a \"key\" column then one column per language code; rows @name and @description carry the game listing. { dryRun: true } previews (issues with line and column) without saving; an error refuses the whole import.
  result = api_instance.create_world_experience_localization_import(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_localization_import: #{e}"
end
```

#### Using the create_world_experience_localization_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceLocalizationImportResponse>, Integer, Hash)> create_world_experience_localization_import_with_http_info(experience_id, opts)

```ruby
begin
  # Import a sheet: { csv } with a \"key\" column then one column per language code; rows @name and @description carry the game listing. { dryRun: true } previews (issues with line and column) without saving; an error refuses the whole import.
  data, status_code, headers = api_instance.create_world_experience_localization_import_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceLocalizationImportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_localization_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_inventory_csv_import_request** | **CreateInventoryCsvImportRequest** |  | [optional] |

### Return type

**CreateWorldExperienceLocalizationImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_moderation_appeal

> <CreateWorldExperienceModerationAppealResponse> create_world_experience_moderation_appeal(experience_id)

Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.
  result = api_instance.create_world_experience_moderation_appeal(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_moderation_appeal: #{e}"
end
```

#### Using the create_world_experience_moderation_appeal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceModerationAppealResponse>, Integer, Hash)> create_world_experience_moderation_appeal_with_http_info(experience_id)

```ruby
begin
  # Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.
  data, status_code, headers = api_instance.create_world_experience_moderation_appeal_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceModerationAppealResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_moderation_appeal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**CreateWorldExperienceModerationAppealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_open

> <WorldExperienceResponse> create_world_experience_open(experience_id)

Open the experience to players (needs a published start place).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Open the experience to players (needs a published start place).
  result = api_instance.create_world_experience_open(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_open: #{e}"
end
```

#### Using the create_world_experience_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> create_world_experience_open_with_http_info(experience_id)

```ruby
begin
  # Open the experience to players (needs a published start place).
  data, status_code, headers = api_instance.create_world_experience_open_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place

> <WorldExperiencePlaceResponse> create_world_experience_place(experience_id, opts)

Add a place (at most 10 per experience in P1).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_place_request: Crossly::CreateWorldExperiencePlaceRequest.new # CreateWorldExperiencePlaceRequest | 
}

begin
  # Add a place (at most 10 per experience in P1).
  result = api_instance.create_world_experience_place(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place: #{e}"
end
```

#### Using the create_world_experience_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceResponse>, Integer, Hash)> create_world_experience_place_with_http_info(experience_id, opts)

```ruby
begin
  # Add a place (at most 10 per experience in P1).
  data, status_code, headers = api_instance.create_world_experience_place_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_place_request** | **CreateWorldExperiencePlaceRequest** |  | [optional] |

### Return type

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_check

> <CreateWorldExperiencePlaceCheckResponse> create_world_experience_place_check(experience_id, place_id, opts)

Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_check_request: Crossly::CreateWorldExperiencePlaceCheckRequest.new({project: 3.56}) # CreateWorldExperiencePlaceCheckRequest | 
}

begin
  # Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.
  result = api_instance.create_world_experience_place_check(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_check: #{e}"
end
```

#### Using the create_world_experience_place_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceCheckResponse>, Integer, Hash)> create_world_experience_place_check_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.
  data, status_code, headers = api_instance.create_world_experience_place_check_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceCheckResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_check_request** | **CreateWorldExperiencePlaceCheckRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaceCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_publish

> <WorldExperienceResponse2> create_world_experience_place_publish(experience_id, place_id, opts)

Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_publish_request: Crossly::CreateWorldExperiencePlacePublishRequest.new # CreateWorldExperiencePlacePublishRequest | 
}

begin
  # Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.
  result = api_instance.create_world_experience_place_publish(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_publish: #{e}"
end
```

#### Using the create_world_experience_place_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> create_world_experience_place_publish_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.
  data, status_code, headers = api_instance.create_world_experience_place_publish_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_publish_request** | **CreateWorldExperiencePlacePublishRequest** |  | [optional] |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_start

> <WorldExperiencePlaceResponse> create_world_experience_place_start(experience_id, place_id)

Make this the start place (where a plain join lands).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Make this the start place (where a plain join lands).
  result = api_instance.create_world_experience_place_start(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_start: #{e}"
end
```

#### Using the create_world_experience_place_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceResponse>, Integer, Hash)> create_world_experience_place_start_with_http_info(experience_id, place_id)

```ruby
begin
  # Make this the start place (where a plain join lands).
  data, status_code, headers = api_instance.create_world_experience_place_start_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_test

> <CreateWorldExperiencePlaceTestResponse> create_world_experience_place_test(experience_id, place_id)

Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.
  result = api_instance.create_world_experience_place_test(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_test: #{e}"
end
```

#### Using the create_world_experience_place_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaceTestResponse>, Integer, Hash)> create_world_experience_place_test_with_http_info(experience_id, place_id)

```ruby
begin
  # Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.
  data, status_code, headers = api_instance.create_world_experience_place_test_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaceTestResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**CreateWorldExperiencePlaceTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_version

> <WorldExperiencePlaceVersionResponse> create_world_experience_place_version(experience_id, place_id, opts)

Upload a version bundle (crossly-worlds-project/1). Not live until published.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_version_request: Crossly::CreateWorldExperiencePlaceVersionRequest.new({bundle: 3.56}) # CreateWorldExperiencePlaceVersionRequest | 
}

begin
  # Upload a version bundle (crossly-worlds-project/1). Not live until published.
  result = api_instance.create_world_experience_place_version(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version: #{e}"
end
```

#### Using the create_world_experience_place_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceVersionResponse>, Integer, Hash)> create_world_experience_place_version_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Upload a version bundle (crossly-worlds-project/1). Not live until published.
  data, status_code, headers = api_instance.create_world_experience_place_version_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_version_request** | **CreateWorldExperiencePlaceVersionRequest** |  | [optional] |

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_place_version_publish

> <WorldExperiencePlaceVersionResponse> create_world_experience_place_version_publish(experience_id, place_id, version_id)

Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
version_id = 'version_id_example' # String | 

begin
  # Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.
  result = api_instance.create_world_experience_place_version_publish(experience_id, place_id, version_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version_publish: #{e}"
end
```

#### Using the create_world_experience_place_version_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceVersionResponse>, Integer, Hash)> create_world_experience_place_version_publish_with_http_info(experience_id, place_id, version_id)

```ruby
begin
  # Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.
  data, status_code, headers = api_instance.create_world_experience_place_version_publish_with_http_info(experience_id, place_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **version_id** | **String** |  |  |

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_place_version_rollback

> <WorldExperiencePlaceVersionResponse> create_world_experience_place_version_rollback(experience_id, place_id, version_id)

Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
version_id = 'version_id_example' # String | 

begin
  # Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.
  result = api_instance.create_world_experience_place_version_rollback(experience_id, place_id, version_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version_rollback: #{e}"
end
```

#### Using the create_world_experience_place_version_rollback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceVersionResponse>, Integer, Hash)> create_world_experience_place_version_rollback_with_http_info(experience_id, place_id, version_id)

```ruby
begin
  # Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.
  data, status_code, headers = api_instance.create_world_experience_place_version_rollback_with_http_info(experience_id, place_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceVersionResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_place_version_rollback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **version_id** | **String** |  |  |

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_playtester

> <CreateWorldExperiencePlaytesterResponse> create_world_experience_playtester(experience_id, opts)

Add a playtester by Crossly handle (max 200 per game).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_playtester_request: Crossly::CreateWorldExperiencePlaytesterRequest.new({handle: 'handle_example'}) # CreateWorldExperiencePlaytesterRequest | 
}

begin
  # Add a playtester by Crossly handle (max 200 per game).
  result = api_instance.create_world_experience_playtester(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_playtester: #{e}"
end
```

#### Using the create_world_experience_playtester_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperiencePlaytesterResponse>, Integer, Hash)> create_world_experience_playtester_with_http_info(experience_id, opts)

```ruby
begin
  # Add a playtester by Crossly handle (max 200 per game).
  data, status_code, headers = api_instance.create_world_experience_playtester_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperiencePlaytesterResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_playtester_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_playtester_request** | **CreateWorldExperiencePlaytesterRequest** |  | [optional] |

### Return type

**CreateWorldExperiencePlaytesterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_publish_cancel

> <WorldExperienceResponse2> create_world_experience_publish_cancel(experience_id, request_id)

Give up a publish that is not live.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 

begin
  # Give up a publish that is not live.
  result = api_instance.create_world_experience_publish_cancel(experience_id, request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_cancel: #{e}"
end
```

#### Using the create_world_experience_publish_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> create_world_experience_publish_cancel_with_http_info(experience_id, request_id)

```ruby
begin
  # Give up a publish that is not live.
  data, status_code, headers = api_instance.create_world_experience_publish_cancel_with_http_info(experience_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_publish_halt

> <WorldExperienceResponse2> create_world_experience_publish_halt(experience_id, request_id, opts)

Stop a rollout: new joins go back to the current version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 
opts = {
  reason_request2: Crossly::ReasonRequest2.new # ReasonRequest2 | 
}

begin
  # Stop a rollout: new joins go back to the current version.
  result = api_instance.create_world_experience_publish_halt(experience_id, request_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_halt: #{e}"
end
```

#### Using the create_world_experience_publish_halt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> create_world_experience_publish_halt_with_http_info(experience_id, request_id, opts)

```ruby
begin
  # Stop a rollout: new joins go back to the current version.
  data, status_code, headers = api_instance.create_world_experience_publish_halt_with_http_info(experience_id, request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_halt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |
| **reason_request2** | **ReasonRequest2** |  | [optional] |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_publish_rollout

> <WorldExperienceResponse2> create_world_experience_publish_rollout(experience_id, request_id, opts)

Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 
opts = {
  create_world_experience_publish_rollout_request: Crossly::CreateWorldExperiencePublishRolloutRequest.new({percent: 3.56}) # CreateWorldExperiencePublishRolloutRequest | 
}

begin
  # Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.
  result = api_instance.create_world_experience_publish_rollout(experience_id, request_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_rollout: #{e}"
end
```

#### Using the create_world_experience_publish_rollout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> create_world_experience_publish_rollout_with_http_info(experience_id, request_id, opts)

```ruby
begin
  # Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.
  data, status_code, headers = api_instance.create_world_experience_publish_rollout_with_http_info(experience_id, request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_rollout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |
| **create_world_experience_publish_rollout_request** | **CreateWorldExperiencePublishRolloutRequest** |  | [optional] |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_publish_submit

> <WorldExperienceResponse2> create_world_experience_publish_submit(experience_id, request_id)

Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 

begin
  # Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.
  result = api_instance.create_world_experience_publish_submit(experience_id, request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_submit: #{e}"
end
```

#### Using the create_world_experience_publish_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> create_world_experience_publish_submit_with_http_info(experience_id, request_id)

```ruby
begin
  # Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.
  data, status_code, headers = api_instance.create_world_experience_publish_submit_with_http_info(experience_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_publish_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_reserved_server

> <CreateWorldExperienceReservedServerResponse> create_world_experience_reserved_server(experience_id, opts)

An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_reserved_server_request: Crossly::CreateWorldExperienceReservedServerRequest.new({place_id: 'place_id_example'}) # CreateWorldExperienceReservedServerRequest | 
}

begin
  # An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.
  result = api_instance.create_world_experience_reserved_server(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_reserved_server: #{e}"
end
```

#### Using the create_world_experience_reserved_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceReservedServerResponse>, Integer, Hash)> create_world_experience_reserved_server_with_http_info(experience_id, opts)

```ruby
begin
  # An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.
  data, status_code, headers = api_instance.create_world_experience_reserved_server_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceReservedServerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_reserved_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_reserved_server_request** | **CreateWorldExperienceReservedServerRequest** |  | [optional] |

### Return type

**CreateWorldExperienceReservedServerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_restore

> <WorldExperienceResponse> create_world_experience_restore(experience_id)

Restore an archived game, or a deleted one within 30 days; it comes back private.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Restore an archived game, or a deleted one within 30 days; it comes back private.
  result = api_instance.create_world_experience_restore(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_restore: #{e}"
end
```

#### Using the create_world_experience_restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> create_world_experience_restore_with_http_info(experience_id)

```ruby
begin
  # Restore an archived game, or a deleted one within 30 days; it comes back private.
  data, status_code, headers = api_instance.create_world_experience_restore_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_experience_server_shutdown

> <CreateWorldExperienceServerShutdownResponse> create_world_experience_server_shutdown(experience_id, opts)

Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_server_shutdown_request: Crossly::CreateWorldExperienceServerShutdownRequest.new # CreateWorldExperienceServerShutdownRequest | 
}

begin
  # Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).
  result = api_instance.create_world_experience_server_shutdown(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_server_shutdown: #{e}"
end
```

#### Using the create_world_experience_server_shutdown_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldExperienceServerShutdownResponse>, Integer, Hash)> create_world_experience_server_shutdown_with_http_info(experience_id, opts)

```ruby
begin
  # Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).
  data, status_code, headers = api_instance.create_world_experience_server_shutdown_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldExperienceServerShutdownResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_server_shutdown_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_server_shutdown_request** | **CreateWorldExperienceServerShutdownRequest** |  | [optional] |

### Return type

**CreateWorldExperienceServerShutdownResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_experience_transfer_request

> <WorldResponse2> create_world_experience_transfer_request(experience_id, opts)

Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_experience_transfer_request_request: Crossly::CreateWorldExperienceTransferRequestRequest.new({to: 'to_example'}) # CreateWorldExperienceTransferRequestRequest | 
}

begin
  # Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.
  result = api_instance.create_world_experience_transfer_request(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_transfer_request: #{e}"
end
```

#### Using the create_world_experience_transfer_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse2>, Integer, Hash)> create_world_experience_transfer_request_with_http_info(experience_id, opts)

```ruby
begin
  # Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.
  data, status_code, headers = api_instance.create_world_experience_transfer_request_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_experience_transfer_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_experience_transfer_request_request** | **CreateWorldExperienceTransferRequestRequest** |  | [optional] |

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_mature_verify

> <CreateWorldMatureVerifyResponse> create_world_mature_verify(opts)

Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  create_world_mature_verify_request: Crossly::CreateWorldMatureVerifyRequest.new # CreateWorldMatureVerifyRequest | 
}

begin
  # Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.
  result = api_instance.create_world_mature_verify(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_mature_verify: #{e}"
end
```

#### Using the create_world_mature_verify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldMatureVerifyResponse>, Integer, Hash)> create_world_mature_verify_with_http_info(opts)

```ruby
begin
  # Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.
  data, status_code, headers = api_instance.create_world_mature_verify_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldMatureVerifyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_mature_verify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_mature_verify_request** | **CreateWorldMatureVerifyRequest** |  | [optional] |

### Return type

**CreateWorldMatureVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_parental_accept

> <WorldParentalResponse> create_world_parental_accept(opts)

Accept a child's invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  create_world_parental_accept_request: Crossly::CreateWorldParentalAcceptRequest.new({code: 'code_example', pin: 'pin_example'}) # CreateWorldParentalAcceptRequest | 
}

begin
  # Accept a child's invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.
  result = api_instance.create_world_parental_accept(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_accept: #{e}"
end
```

#### Using the create_world_parental_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldParentalResponse>, Integer, Hash)> create_world_parental_accept_with_http_info(opts)

```ruby
begin
  # Accept a child's invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.
  data, status_code, headers = api_instance.create_world_parental_accept_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldParentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_parental_accept_request** | **CreateWorldParentalAcceptRequest** |  | [optional] |

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_parental_children_pin

> <CreateWorldParentalChildrenPinResponse> create_world_parental_children_pin(child_id, opts)

Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
child_id = 'child_id_example' # String | 
opts = {
  create_world_parental_children_pin_request: Crossly::CreateWorldParentalChildrenPinRequest.new({pin: 'pin_example', new_pin: 'new_pin_example'}) # CreateWorldParentalChildrenPinRequest | 
}

begin
  # Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.
  result = api_instance.create_world_parental_children_pin(child_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_children_pin: #{e}"
end
```

#### Using the create_world_parental_children_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldParentalChildrenPinResponse>, Integer, Hash)> create_world_parental_children_pin_with_http_info(child_id, opts)

```ruby
begin
  # Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.
  data, status_code, headers = api_instance.create_world_parental_children_pin_with_http_info(child_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldParentalChildrenPinResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_children_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_id** | **String** |  |  |
| **create_world_parental_children_pin_request** | **CreateWorldParentalChildrenPinRequest** |  | [optional] |

### Return type

**CreateWorldParentalChildrenPinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_parental_children_unlink

> <CreateWorldParentalChildrenUnlinkResponse> create_world_parental_children_unlink(child_id, opts)

Remove the parent link (and its limits) with your PIN: { pin }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
child_id = 'child_id_example' # String | 
opts = {
  create_world_parental_children_unlink_request: Crossly::CreateWorldParentalChildrenUnlinkRequest.new({pin: 'pin_example'}) # CreateWorldParentalChildrenUnlinkRequest | 
}

begin
  # Remove the parent link (and its limits) with your PIN: { pin }.
  result = api_instance.create_world_parental_children_unlink(child_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_children_unlink: #{e}"
end
```

#### Using the create_world_parental_children_unlink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldParentalChildrenUnlinkResponse>, Integer, Hash)> create_world_parental_children_unlink_with_http_info(child_id, opts)

```ruby
begin
  # Remove the parent link (and its limits) with your PIN: { pin }.
  data, status_code, headers = api_instance.create_world_parental_children_unlink_with_http_info(child_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldParentalChildrenUnlinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_children_unlink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_id** | **String** |  |  |
| **create_world_parental_children_unlink_request** | **CreateWorldParentalChildrenUnlinkRequest** |  | [optional] |

### Return type

**CreateWorldParentalChildrenUnlinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_parental_invite

> <CreateWorldParentalInviteResponse> create_world_parental_invite

An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.
  result = api_instance.create_world_parental_invite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_invite: #{e}"
end
```

#### Using the create_world_parental_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldParentalInviteResponse>, Integer, Hash)> create_world_parental_invite_with_http_info

```ruby
begin
  # An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.
  data, status_code, headers = api_instance.create_world_parental_invite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldParentalInviteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_parental_invite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldParentalInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_rating_compute

> <CreateWorldRatingComputeResponse> create_world_rating_compute(opts)

Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  create_world_rating_compute_request: Crossly::CreateWorldRatingComputeRequest.new({answers: { key: 3.56}}) # CreateWorldRatingComputeRequest | 
}

begin
  # Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.
  result = api_instance.create_world_rating_compute(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_rating_compute: #{e}"
end
```

#### Using the create_world_rating_compute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldRatingComputeResponse>, Integer, Hash)> create_world_rating_compute_with_http_info(opts)

```ruby
begin
  # Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.
  data, status_code, headers = api_instance.create_world_rating_compute_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldRatingComputeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_rating_compute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_world_rating_compute_request** | **CreateWorldRatingComputeRequest** |  | [optional] |

### Return type

**CreateWorldRatingComputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_world_report

> <CreateWorldReportResponse> create_world_report

Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.
  result = api_instance.create_world_report
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_report: #{e}"
end
```

#### Using the create_world_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorldReportResponse>, Integer, Hash)> create_world_report_with_http_info

```ruby
begin
  # Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.
  data, status_code, headers = api_instance.create_world_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorldReportResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**CreateWorldReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_transfer_request_accept

> <WorldResponse2> create_world_transfer_request_accept(request_id)

Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
request_id = 'request_id_example' # String | 

begin
  # Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.
  result = api_instance.create_world_transfer_request_accept(request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_accept: #{e}"
end
```

#### Using the create_world_transfer_request_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse2>, Integer, Hash)> create_world_transfer_request_accept_with_http_info(request_id)

```ruby
begin
  # Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.
  data, status_code, headers = api_instance.create_world_transfer_request_accept_with_http_info(request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_transfer_request_cancel

> <WorldResponse2> create_world_transfer_request_cancel(request_id)

Cancel a transfer request you sent while it waits.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
request_id = 'request_id_example' # String | 

begin
  # Cancel a transfer request you sent while it waits.
  result = api_instance.create_world_transfer_request_cancel(request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_cancel: #{e}"
end
```

#### Using the create_world_transfer_request_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse2>, Integer, Hash)> create_world_transfer_request_cancel_with_http_info(request_id)

```ruby
begin
  # Cancel a transfer request you sent while it waits.
  data, status_code, headers = api_instance.create_world_transfer_request_cancel_with_http_info(request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_world_transfer_request_decline

> <WorldResponse2> create_world_transfer_request_decline(request_id)

Decline a transfer asked of you; nothing changes.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
request_id = 'request_id_example' # String | 

begin
  # Decline a transfer asked of you; nothing changes.
  result = api_instance.create_world_transfer_request_decline(request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_decline: #{e}"
end
```

#### Using the create_world_transfer_request_decline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse2>, Integer, Hash)> create_world_transfer_request_decline_with_http_info(request_id)

```ruby
begin
  # Decline a transfer asked of you; nothing changes.
  data, status_code, headers = api_instance.create_world_transfer_request_decline_with_http_info(request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->create_world_transfer_request_decline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience

> <DeleteWorldExperienceResponse> delete_world_experience(experience_id, opts)

Delete a game (a tombstone, restorable for 30 days). Body { confirmName } = the game's name.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  delete_world_experience_request: Crossly::DeleteWorldExperienceRequest.new({confirm_name: 'confirm_name_example'}) # DeleteWorldExperienceRequest | 
}

begin
  # Delete a game (a tombstone, restorable for 30 days). Body { confirmName } = the game's name.
  result = api_instance.delete_world_experience(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience: #{e}"
end
```

#### Using the delete_world_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperienceResponse>, Integer, Hash)> delete_world_experience_with_http_info(experience_id, opts)

```ruby
begin
  # Delete a game (a tombstone, restorable for 30 days). Body { confirmName } = the game's name.
  data, status_code, headers = api_instance.delete_world_experience_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **delete_world_experience_request** | **DeleteWorldExperienceRequest** |  | [optional] |

### Return type

**DeleteWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_world_experience_ban

> <DeleteWorldExperienceBanResponse> delete_world_experience_ban(experience_id, sub)

Lift your experience's ban on a player. Bans placed by Crossly safety are lifted only by appeal.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
sub = 'sub_example' # String | 

begin
  # Lift your experience's ban on a player. Bans placed by Crossly safety are lifted only by appeal.
  result = api_instance.delete_world_experience_ban(experience_id, sub)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_ban: #{e}"
end
```

#### Using the delete_world_experience_ban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorldExperienceBanResponse>, Integer, Hash)> delete_world_experience_ban_with_http_info(experience_id, sub)

```ruby
begin
  # Lift your experience's ban on a player. Bans placed by Crossly safety are lifted only by appeal.
  data, status_code, headers = api_instance.delete_world_experience_ban_with_http_info(experience_id, sub)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorldExperienceBanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_ban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **sub** | **String** |  |  |

### Return type

**DeleteWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_localization

> <WorldExperienceLocalizationResponse> delete_world_experience_localization(experience_id, locale)

Remove one language (its name, description and strings).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
locale = 'locale_example' # String | 

begin
  # Remove one language (its name, description and strings).
  result = api_instance.delete_world_experience_localization(experience_id, locale)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_localization: #{e}"
end
```

#### Using the delete_world_experience_localization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceLocalizationResponse>, Integer, Hash)> delete_world_experience_localization_with_http_info(experience_id, locale)

```ruby
begin
  # Remove one language (its name, description and strings).
  data, status_code, headers = api_instance.delete_world_experience_localization_with_http_info(experience_id, locale)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceLocalizationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_localization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **locale** | **String** |  |  |

### Return type

**WorldExperienceLocalizationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_experience_playtester

> <DeleteSpatialSceneGrantResponse> delete_world_experience_playtester(experience_id, user_id)

Remove a playtester.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove a playtester.
  result = api_instance.delete_world_experience_playtester(experience_id, user_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_playtester: #{e}"
end
```

#### Using the delete_world_experience_playtester_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSpatialSceneGrantResponse>, Integer, Hash)> delete_world_experience_playtester_with_http_info(experience_id, user_id)

```ruby
begin
  # Remove a playtester.
  data, status_code, headers = api_instance.delete_world_experience_playtester_with_http_info(experience_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSpatialSceneGrantResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_experience_playtester_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_world_parental_invite

> <DeleteDaoProposalResponse> delete_world_parental_invite

Withdraw a pending parent invite.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Withdraw a pending parent invite.
  result = api_instance.delete_world_parental_invite
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_parental_invite: #{e}"
end
```

#### Using the delete_world_parental_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDaoProposalResponse>, Integer, Hash)> delete_world_parental_invite_with_http_info

```ruby
begin
  # Withdraw a pending parent invite.
  data, status_code, headers = api_instance.delete_world_parental_invite_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDaoProposalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->delete_world_parental_invite_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_chart

> <GetWorldChartResponse> get_world_chart(chart, opts)

A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre= cuts it to one genre. Organic only: nothing paid.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
chart = 'chart_example' # String | 
opts = {
  genre: 'shopping', # String | 
  limit: 8.14 # Float | 
}

begin
  # A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre= cuts it to one genre. Organic only: nothing paid.
  result = api_instance.get_world_chart(chart, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_chart: #{e}"
end
```

#### Using the get_world_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldChartResponse>, Integer, Hash)> get_world_chart_with_http_info(chart, opts)

```ruby
begin
  # A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre= cuts it to one genre. Organic only: nothing paid.
  data, status_code, headers = api_instance.get_world_chart_with_http_info(chart, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldChartResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chart** | **String** |  |  |
| **genre** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**GetWorldChartResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_discover_experience

> <WorldResponse3> get_world_discover_experience(key)

An experience's thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:<id>, classic:<id>, tcg:<game>, cards:<game>.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
key = 'key_example' # String | 

begin
  # An experience's thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:<id>, classic:<id>, tcg:<game>, cards:<game>.
  result = api_instance.get_world_discover_experience(key)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_discover_experience: #{e}"
end
```

#### Using the get_world_discover_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse3>, Integer, Hash)> get_world_discover_experience_with_http_info(key)

```ruby
begin
  # An experience's thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:<id>, classic:<id>, tcg:<game>, cards:<game>.
  data, status_code, headers = api_instance.get_world_discover_experience_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse3>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_discover_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_discover_row

> <GetWorldDiscoverRowResponse> get_world_discover_row

The Play hub's rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New & Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \"Sponsored\", never in the first two rows or a row's first two places.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # The Play hub's rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New & Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \"Sponsored\", never in the first two rows or a row's first two places.
  result = api_instance.get_world_discover_row
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_discover_row: #{e}"
end
```

#### Using the get_world_discover_row_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldDiscoverRowResponse>, Integer, Hash)> get_world_discover_row_with_http_info

```ruby
begin
  # The Play hub's rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New & Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \"Sponsored\", never in the first two rows or a row's first two places.
  data, status_code, headers = api_instance.get_world_discover_row_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldDiscoverRowResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_discover_row_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldDiscoverRowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience

> <GetWorldExperienceResponse> get_world_experience(experience_id)

One of your experiences with its places, live CCU and server count.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # One of your experiences with its places, live CCU and server count.
  result = api_instance.get_world_experience(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience: #{e}"
end
```

#### Using the get_world_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceResponse>, Integer, Hash)> get_world_experience_with_http_info(experience_id)

```ruby
begin
  # One of your experiences with its places, live CCU and server count.
  data, status_code, headers = api_instance.get_world_experience_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_access_limit

> <GetWorldExperienceAccessLimitResponse> get_world_experience_access_limit(experience_id)

The game's crew-only and country limits, and the owner's crew.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The game's crew-only and country limits, and the owner's crew.
  result = api_instance.get_world_experience_access_limit(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_access_limit: #{e}"
end
```

#### Using the get_world_experience_access_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAccessLimitResponse>, Integer, Hash)> get_world_experience_access_limit_with_http_info(experience_id)

```ruby
begin
  # The game's crew-only and country limits, and the owner's crew.
  data, status_code, headers = api_instance.get_world_experience_access_limit_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAccessLimitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_access_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceAccessLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_alert_setting

> <GetWorldExperienceAlertSettingResponse> get_world_experience_alert_setting(experience_id)

Alert rules (threshold, on/off, inbox, webhook) and quiet hours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Alert rules (threshold, on/off, inbox, webhook) and quiet hours.
  result = api_instance.get_world_experience_alert_setting(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_alert_setting: #{e}"
end
```

#### Using the get_world_experience_alert_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAlertSettingResponse>, Integer, Hash)> get_world_experience_alert_setting_with_http_info(experience_id)

```ruby
begin
  # Alert rules (threshold, on/off, inbox, webhook) and quiet hours.
  data, status_code, headers = api_instance.get_world_experience_alert_setting_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAlertSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_alert_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceAlertSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_analytic

> <GetWorldExperienceAnalyticResponse> get_world_experience_analytic(experience_id, report, opts)

An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from=&to= (YYYY-MM-DD), retention ?segment=, funnels ?funnel=, economy ?currency=.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
report = 'report_example' # String | 
opts = {
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  segment: 'segment_example', # String | 
  funnel: 'funnel_example', # String | 
  currency: 'currency_example' # String | 
}

begin
  # An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from=&to= (YYYY-MM-DD), retention ?segment=, funnels ?funnel=, economy ?currency=.
  result = api_instance.get_world_experience_analytic(experience_id, report, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_analytic: #{e}"
end
```

#### Using the get_world_experience_analytic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAnalyticResponse>, Integer, Hash)> get_world_experience_analytic_with_http_info(experience_id, report, opts)

```ruby
begin
  # An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from=&to= (YYYY-MM-DD), retention ?segment=, funnels ?funnel=, economy ?currency=.
  data, status_code, headers = api_instance.get_world_experience_analytic_with_http_info(experience_id, report, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAnalyticResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_analytic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **report** | **String** |  |  |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **segment** | **String** |  | [optional] |
| **funnel** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |

### Return type

**GetWorldExperienceAnalyticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_ban

> <GetWorldExperienceBanResponse> get_world_experience_ban(experience_id, sub)

The live ban on one player, or 404.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
sub = 'sub_example' # String | 

begin
  # The live ban on one player, or 404.
  result = api_instance.get_world_experience_ban(experience_id, sub)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_ban: #{e}"
end
```

#### Using the get_world_experience_ban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceBanResponse>, Integer, Hash)> get_world_experience_ban_with_http_info(experience_id, sub)

```ruby
begin
  # The live ban on one player, or 404.
  data, status_code, headers = api_instance.get_world_experience_ban_with_http_info(experience_id, sub)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceBanResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_ban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **sub** | **String** |  |  |

### Return type

**GetWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_chat_setting

> <GetWorldExperienceChatSettingResponse> get_world_experience_chat_setting(experience_id)

The game's text chat setting and filter level.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The game's text chat setting and filter level.
  result = api_instance.get_world_experience_chat_setting(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_chat_setting: #{e}"
end
```

#### Using the get_world_experience_chat_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceChatSettingResponse>, Integer, Hash)> get_world_experience_chat_setting_with_http_info(experience_id)

```ruby
begin
  # The game's text chat setting and filter level.
  data, status_code, headers = api_instance.get_world_experience_chat_setting_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceChatSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_chat_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceChatSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_config

> <WorldExperienceConfigResponse> get_world_experience_config(experience_id)

The remote config document ({ values, rules }) and its version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The remote config document ({ values, rules }) and its version.
  result = api_instance.get_world_experience_config(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_config: #{e}"
end
```

#### Using the get_world_experience_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceConfigResponse>, Integer, Hash)> get_world_experience_config_with_http_info(experience_id)

```ruby
begin
  # The remote config document ({ values, rules }) and its version.
  data, status_code, headers = api_instance.get_world_experience_config_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceConfigResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_experiment

> <GetWorldExperienceExperimentResponse> get_world_experience_experiment(experience_id, experiment_id)

Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
experiment_id = 'experiment_id_example' # String | 

begin
  # Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.
  result = api_instance.get_world_experience_experiment(experience_id, experiment_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_experiment: #{e}"
end
```

#### Using the get_world_experience_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceExperimentResponse>, Integer, Hash)> get_world_experience_experiment_with_http_info(experience_id, experiment_id)

```ruby
begin
  # Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.
  data, status_code, headers = api_instance.get_world_experience_experiment_with_http_info(experience_id, experiment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **experiment_id** | **String** |  |  |

### Return type

**GetWorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_localization

> <WorldExperienceLocalizationResponse> get_world_experience_localization(experience_id)

A game's translations: per language its name, description and in-game strings (key -> text), the English source (the game's Details and string table) and what each language still misses.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # A game's translations: per language its name, description and in-game strings (key -> text), the English source (the game's Details and string table) and what each language still misses.
  result = api_instance.get_world_experience_localization(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_localization: #{e}"
end
```

#### Using the get_world_experience_localization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceLocalizationResponse>, Integer, Hash)> get_world_experience_localization_with_http_info(experience_id)

```ruby
begin
  # A game's translations: per language its name, description and in-game strings (key -> text), the English source (the game's Details and string table) and what each language still misses.
  data, status_code, headers = api_instance.get_world_experience_localization_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceLocalizationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_localization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**WorldExperienceLocalizationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_localization_export

> String get_world_experience_localization_export(experience_id, opts)

The game's translations as one CSV sheet (key, en, then each language; ?locales=es,fr picks the columns).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  locales: 'locales_example' # String | 
}

begin
  # The game's translations as one CSV sheet (key, en, then each language; ?locales=es,fr picks the columns).
  result = api_instance.get_world_experience_localization_export(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_localization_export: #{e}"
end
```

#### Using the get_world_experience_localization_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_world_experience_localization_export_with_http_info(experience_id, opts)

```ruby
begin
  # The game's translations as one CSV sheet (key, en, then each language; ?locales=es,fr picks the columns).
  data, status_code, headers = api_instance.get_world_experience_localization_export_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_localization_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **locales** | **String** |  | [optional] |

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_maturity

> <GetWorldExperienceMaturityResponse> get_world_experience_maturity(experience_id)

The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.
  result = api_instance.get_world_experience_maturity(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_maturity: #{e}"
end
```

#### Using the get_world_experience_maturity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceMaturityResponse>, Integer, Hash)> get_world_experience_maturity_with_http_info(experience_id)

```ruby
begin
  # The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.
  data, status_code, headers = api_instance.get_world_experience_maturity_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceMaturityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_maturity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceMaturityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_moderation

> <GetWorldExperienceModerationResponse> get_world_experience_moderation(experience_id)

Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.
  result = api_instance.get_world_experience_moderation(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_moderation: #{e}"
end
```

#### Using the get_world_experience_moderation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceModerationResponse>, Integer, Hash)> get_world_experience_moderation_with_http_info(experience_id)

```ruby
begin
  # Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.
  data, status_code, headers = api_instance.get_world_experience_moderation_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceModerationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_moderation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceModerationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_moderation_appeal

> <GetWorldExperienceModerationAppealResponse> get_world_experience_moderation_appeal(experience_id)

What you can appeal on your game and every appeal of it: data.targets (Crossly's actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer's note).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # What you can appeal on your game and every appeal of it: data.targets (Crossly's actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer's note).
  result = api_instance.get_world_experience_moderation_appeal(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_moderation_appeal: #{e}"
end
```

#### Using the get_world_experience_moderation_appeal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceModerationAppealResponse>, Integer, Hash)> get_world_experience_moderation_appeal_with_http_info(experience_id)

```ruby
begin
  # What you can appeal on your game and every appeal of it: data.targets (Crossly's actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer's note).
  data, status_code, headers = api_instance.get_world_experience_moderation_appeal_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceModerationAppealResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_moderation_appeal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceModerationAppealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_place_draft

> <GetWorldExperiencePlaceDraftResponse> get_world_experience_place_draft(experience_id, place_id)

The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.
  result = api_instance.get_world_experience_place_draft(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_place_draft: #{e}"
end
```

#### Using the get_world_experience_place_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceDraftResponse>, Integer, Hash)> get_world_experience_place_draft_with_http_info(experience_id, place_id)

```ruby
begin
  # The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.
  data, status_code, headers = api_instance.get_world_experience_place_draft_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_place_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**GetWorldExperiencePlaceDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_publish

> <WorldExperienceResponse2> get_world_experience_publish(experience_id, request_id)

One publish with its review state and rollout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 

begin
  # One publish with its review state and rollout.
  result = api_instance.get_world_experience_publish(experience_id, request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_publish: #{e}"
end
```

#### Using the get_world_experience_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> get_world_experience_publish_with_http_info(experience_id, request_id)

```ruby
begin
  # One publish with its review state and rollout.
  data, status_code, headers = api_instance.get_world_experience_publish_with_http_info(experience_id, request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_shop

> <GetWorldExperienceShopResponse> get_world_experience_shop(experience_id)

An open experience's way back to commerce: its creator's shop and how many live listings it has.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # An open experience's way back to commerce: its creator's shop and how many live listings it has.
  result = api_instance.get_world_experience_shop(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_shop: #{e}"
end
```

#### Using the get_world_experience_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceShopResponse>, Integer, Hash)> get_world_experience_shop_with_http_info(experience_id)

```ruby
begin
  # An open experience's way back to commerce: its creator's shop and how many live listings it has.
  data, status_code, headers = api_instance.get_world_experience_shop_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceShopResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceShopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_experience_showcase

> <GetWorldExperienceShowcaseResponse> get_world_experience_showcase(experience_id)

The listings the game's page showcases, and the owner's live Crossly listings that can be picked.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The listings the game's page showcases, and the owner's live Crossly listings that can be picked.
  result = api_instance.get_world_experience_showcase(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_showcase: #{e}"
end
```

#### Using the get_world_experience_showcase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceShowcaseResponse>, Integer, Hash)> get_world_experience_showcase_with_http_info(experience_id)

```ruby
begin
  # The listings the game's page showcases, and the owner's live Crossly listings that can be picked.
  data, status_code, headers = api_instance.get_world_experience_showcase_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceShowcaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_experience_showcase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**GetWorldExperienceShowcaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_friend_playing

> <GetWorldFriendPlayingResponse> get_world_friend_playing

Your friends (mutual follows) and where each is playing right now, with the link that joins them.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Your friends (mutual follows) and where each is playing right now, with the link that joins them.
  result = api_instance.get_world_friend_playing
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_friend_playing: #{e}"
end
```

#### Using the get_world_friend_playing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldFriendPlayingResponse>, Integer, Hash)> get_world_friend_playing_with_http_info

```ruby
begin
  # Your friends (mutual follows) and where each is playing right now, with the link that joins them.
  data, status_code, headers = api_instance.get_world_friend_playing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldFriendPlayingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_friend_playing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldFriendPlayingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_by_game

> <GetWorldGameByGameResponse> get_world_game_by_game(game)

A game's page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
game = 'game_example' # String | 

begin
  # A game's page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.
  result = api_instance.get_world_game_by_game(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_by_game: #{e}"
end
```

#### Using the get_world_game_by_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameByGameResponse>, Integer, Hash)> get_world_game_by_game_with_http_info(game)

```ruby
begin
  # A game's page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.
  data, status_code, headers = api_instance.get_world_game_by_game_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameByGameResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_by_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetWorldGameByGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_mine

> <GetWorldGameMineResponse> get_world_game_mine(game_id)

A game's summary: status, timeline, the sub-pages you may open, health and next steps.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
game_id = 'game_id_example' # String | 

begin
  # A game's summary: status, timeline, the sub-pages you may open, health and next steps.
  result = api_instance.get_world_game_mine(game_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_mine: #{e}"
end
```

#### Using the get_world_game_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameMineResponse>, Integer, Hash)> get_world_game_mine_with_http_info(game_id)

```ruby
begin
  # A game's summary: status, timeline, the sub-pages you may open, health and next steps.
  data, status_code, headers = api_instance.get_world_game_mine_with_http_info(game_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_mine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game_id** | **String** |  |  |

### Return type

**GetWorldGameMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_mine_assets_used

> <GetWorldGameMineAssetsUsedResponse> get_world_game_mine_assets_used(game_id)

Everything a game's published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place's current version; a Classic game its latest reviewed package version.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
game_id = 'game_id_example' # String | 

begin
  # Everything a game's published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place's current version; a Classic game its latest reviewed package version.
  result = api_instance.get_world_game_mine_assets_used(game_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_mine_assets_used: #{e}"
end
```

#### Using the get_world_game_mine_assets_used_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameMineAssetsUsedResponse>, Integer, Hash)> get_world_game_mine_assets_used_with_http_info(game_id)

```ruby
begin
  # Everything a game's published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place's current version; a Classic game its latest reviewed package version.
  data, status_code, headers = api_instance.get_world_game_mine_assets_used_with_http_info(game_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameMineAssetsUsedResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_mine_assets_used_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game_id** | **String** |  |  |

### Return type

**GetWorldGameMineAssetsUsedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_game_server

> <GetWorldGameServerResponse> get_world_game_server(game)

A Crossly Carnival game's public servers that are up: players, max, whether a stranger still fits, your friends on each (friends' servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
game = 'game_example' # String | 

begin
  # A Crossly Carnival game's public servers that are up: players, max, whether a stranger still fits, your friends on each (friends' servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.
  result = api_instance.get_world_game_server(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_server: #{e}"
end
```

#### Using the get_world_game_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldGameServerResponse>, Integer, Hash)> get_world_game_server_with_http_info(game)

```ruby
begin
  # A Crossly Carnival game's public servers that are up: players, max, whether a stranger still fits, your friends on each (friends' servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.
  data, status_code, headers = api_instance.get_world_game_server_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldGameServerResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_game_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**GetWorldGameServerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_link_card_game

> <WorldLinkResponse> get_world_link_card_game(game)

Where to play a card game: Crossly's own game, its Commons tables, and creator worlds that tag it.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
game = 'game_example' # String | 

begin
  # Where to play a card game: Crossly's own game, its Commons tables, and creator worlds that tag it.
  result = api_instance.get_world_link_card_game(game)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_card_game: #{e}"
end
```

#### Using the get_world_link_card_game_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldLinkResponse>, Integer, Hash)> get_world_link_card_game_with_http_info(game)

```ruby
begin
  # Where to play a card game: Crossly's own game, its Commons tables, and creator worlds that tag it.
  data, status_code, headers = api_instance.get_world_link_card_game_with_http_info(game)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_card_game_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **game** | **String** |  |  |

### Return type

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_link_listing

> <WorldLinkResponse> get_world_link_listing(slug)

\"Try it in Crossly Carnival\": open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
slug = 'slug_example' # String | 

begin
  # \"Try it in Crossly Carnival\": open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.
  result = api_instance.get_world_link_listing(slug)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_listing: #{e}"
end
```

#### Using the get_world_link_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldLinkResponse>, Integer, Hash)> get_world_link_listing_with_http_info(slug)

```ruby
begin
  # \"Try it in Crossly Carnival\": open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.
  data, status_code, headers = api_instance.get_world_link_listing_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |

### Return type

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_link_seller

> <WorldLinkResponse> get_world_link_seller(username)

\"Games by this seller\": the seller's open games, best first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
username = 'username_example' # String | 

begin
  # \"Games by this seller\": the seller's open games, best first.
  result = api_instance.get_world_link_seller(username)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_seller: #{e}"
end
```

#### Using the get_world_link_seller_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldLinkResponse>, Integer, Hash)> get_world_link_seller_with_http_info(username)

```ruby
begin
  # \"Games by this seller\": the seller's open games, best first.
  data, status_code, headers = api_instance.get_world_link_seller_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldLinkResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_link_seller_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |

### Return type

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_mature

> <GetWorldMatureResponse> get_world_mature

Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.
  result = api_instance.get_world_mature
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_mature: #{e}"
end
```

#### Using the get_world_mature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldMatureResponse>, Integer, Hash)> get_world_mature_with_http_info

```ruby
begin
  # Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.
  data, status_code, headers = api_instance.get_world_mature_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldMatureResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_mature_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldMatureResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_me_pref

> <GetWorldMePrefResponse> get_world_me_pref

Your Crossly Carnival choices (whether games may see your Crossly wallet address).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Your Crossly Carnival choices (whether games may see your Crossly wallet address).
  result = api_instance.get_world_me_pref
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_me_pref: #{e}"
end
```

#### Using the get_world_me_pref_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldMePrefResponse>, Integer, Hash)> get_world_me_pref_with_http_info

```ruby
begin
  # Your Crossly Carnival choices (whether games may see your Crossly wallet address).
  data, status_code, headers = api_instance.get_world_me_pref_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldMePrefResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_me_pref_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldMePrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_parental_children

> <WorldParentalResponse> get_world_parental_children(child_id, opts)

One linked account with ?days= (1-90) of playtime per experience.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
child_id = 'child_id_example' # String | 
opts = {
  days: 8.14 # Float | 
}

begin
  # One linked account with ?days= (1-90) of playtime per experience.
  result = api_instance.get_world_parental_children(child_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_parental_children: #{e}"
end
```

#### Using the get_world_parental_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldParentalResponse>, Integer, Hash)> get_world_parental_children_with_http_info(child_id, opts)

```ruby
begin
  # One linked account with ?days= (1-90) of playtime per experience.
  data, status_code, headers = api_instance.get_world_parental_children_with_http_info(child_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldParentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_parental_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_id** | **String** |  |  |
| **days** | **Float** |  | [optional] |

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_parental_me

> <GetWorldParentalMeResponse> get_world_parental_me

This account's parent link: none, pending (an invite is out) or active (the parent's name and the limits they set).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # This account's parent link: none, pending (an invite is out) or active (the parent's name and the limits they set).
  result = api_instance.get_world_parental_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_parental_me: #{e}"
end
```

#### Using the get_world_parental_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldParentalMeResponse>, Integer, Hash)> get_world_parental_me_with_http_info

```ruby
begin
  # This account's parent link: none, pending (an invite is out) or active (the parent's name and the limits they set).
  data, status_code, headers = api_instance.get_world_parental_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldParentalMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_parental_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldParentalMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_plaza

> <GetWorldPlazaResponse> get_world_plaza

The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new & rising row, the featured stage's editorial pick and four chart boards, with players now and friends inside.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new & rising row, the featured stage's editorial pick and four chart boards, with players now and friends inside.
  result = api_instance.get_world_plaza
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_plaza: #{e}"
end
```

#### Using the get_world_plaza_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPlazaResponse>, Integer, Hash)> get_world_plaza_with_http_info

```ruby
begin
  # The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new & rising row, the featured stage's editorial pick and four chart boards, with players now and friends inside.
  data, status_code, headers = api_instance.get_world_plaza_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPlazaResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_plaza_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldPlazaResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_policy_me

> <GetWorldPolicyMeResponse> get_world_policy_me

What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \"no\".

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \"no\".
  result = api_instance.get_world_policy_me
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_policy_me: #{e}"
end
```

#### Using the get_world_policy_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldPolicyMeResponse>, Integer, Hash)> get_world_policy_me_with_http_info

```ruby
begin
  # What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \"no\".
  data, status_code, headers = api_instance.get_world_policy_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldPolicyMeResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_policy_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldPolicyMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_rating_questionnaire

> <GetWorldRatingQuestionnaireResponse> get_world_rating_questionnaire

The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.
  result = api_instance.get_world_rating_questionnaire
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_rating_questionnaire: #{e}"
end
```

#### Using the get_world_rating_questionnaire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldRatingQuestionnaireResponse>, Integer, Hash)> get_world_rating_questionnaire_with_http_info

```ruby
begin
  # The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.
  data, status_code, headers = api_instance.get_world_rating_questionnaire_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldRatingQuestionnaireResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_rating_questionnaire_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**GetWorldRatingQuestionnaireResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_search

> <GetWorldSearchResponse> get_world_search(opts)

Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  q: 'q_example', # String | 
  genre: 'shopping', # String | 
  rating: 'everyone', # String | 
  device: 'desktop', # String | 
  players: 8.14, # Float | 
  min_thumbs: 8.14, # Float | 
  live: '0', # String | 
  friends: '0', # String | 
  limit: 8.14 # Float | 
}

begin
  # Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.
  result = api_instance.get_world_search(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_search: #{e}"
end
```

#### Using the get_world_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldSearchResponse>, Integer, Hash)> get_world_search_with_http_info(opts)

```ruby
begin
  # Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.
  data, status_code, headers = api_instance.get_world_search_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldSearchResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **rating** | **String** |  | [optional] |
| **device** | **String** |  | [optional] |
| **players** | **Float** |  | [optional] |
| **min_thumbs** | **Float** |  | [optional] |
| **live** | **String** |  | [optional] |
| **friends** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**GetWorldSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_transfer_request

> <WorldResponse2> get_world_transfer_request(request_id)

One ownership transfer request (only its two people can read it), with the actions you may take.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
request_id = 'request_id_example' # String | 

begin
  # One ownership transfer request (only its two people can read it), with the actions you may take.
  result = api_instance.get_world_transfer_request(request_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_transfer_request: #{e}"
end
```

#### Using the get_world_transfer_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse2>, Integer, Hash)> get_world_transfer_request_with_http_info(request_id)

```ruby
begin
  # One ownership transfer request (only its two people can read it), with the actions you may take.
  data, status_code, headers = api_instance.get_world_transfer_request_with_http_info(request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_transfer_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_world_transparency

> <GetWorldTransparencyResponse> get_world_transparency(month)

One month's transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
month = 'month_example' # String | 

begin
  # One month's transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.
  result = api_instance.get_world_transparency(month)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_transparency: #{e}"
end
```

#### Using the get_world_transparency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldTransparencyResponse>, Integer, Hash)> get_world_transparency_with_http_info(month)

```ruby
begin
  # One month's transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.
  data, status_code, headers = api_instance.get_world_transparency_with_http_info(month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldTransparencyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->get_world_transparency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** |  |  |

### Return type

**GetWorldTransparencyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_appeals

> <ListWorldAppealsResponse> list_world_appeals

Your appeals and their decisions.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Your appeals and their decisions.
  result = api_instance.list_world_appeals
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_appeals: #{e}"
end
```

#### Using the list_world_appeals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldAppealsResponse>, Integer, Hash)> list_world_appeals_with_http_info

```ruby
begin
  # Your appeals and their decisions.
  data, status_code, headers = api_instance.list_world_appeals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldAppealsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_appeals_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldAppealsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_alerts

> <ListWorldExperienceAlertsResponse> list_world_experience_alerts(experience_id, opts)

Alerts that fired, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  limit: 8.14, # Float | 
  cursor: 'cursor_example' # String | 
}

begin
  # Alerts that fired, newest first.
  result = api_instance.list_world_experience_alerts(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_alerts: #{e}"
end
```

#### Using the list_world_experience_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceAlertsResponse>, Integer, Hash)> list_world_experience_alerts_with_http_info(experience_id, opts)

```ruby
begin
  # Alerts that fired, newest first.
  data, status_code, headers = api_instance.list_world_experience_alerts_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceAlertsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

**ListWorldExperienceAlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_audit

> <ListWorldExperienceAuditResponse> list_world_experience_audit(experience_id, opts)

The live-ops audit log: every config, experiment, event and alert change, who made it, when.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  limit: 8.14, # Float | 
  cursor: 'cursor_example' # String | 
}

begin
  # The live-ops audit log: every config, experiment, event and alert change, who made it, when.
  result = api_instance.list_world_experience_audit(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_audit: #{e}"
end
```

#### Using the list_world_experience_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceAuditResponse>, Integer, Hash)> list_world_experience_audit_with_http_info(experience_id, opts)

```ruby
begin
  # The live-ops audit log: every config, experiment, event and alert change, who made it, when.
  data, status_code, headers = api_instance.list_world_experience_audit_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceAuditResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

**ListWorldExperienceAuditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_bans

> <ListWorldExperienceBansResponse> list_world_experience_bans(experience_id, opts)

Players banned from your experience (by pairwise sub), oldest first (cursor).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Players banned from your experience (by pairwise sub), oldest first (cursor).
  result = api_instance.list_world_experience_bans(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_bans: #{e}"
end
```

#### Using the list_world_experience_bans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceBansResponse>, Integer, Hash)> list_world_experience_bans_with_http_info(experience_id, opts)

```ruby
begin
  # Players banned from your experience (by pairwise sub), oldest first (cursor).
  data, status_code, headers = api_instance.list_world_experience_bans_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceBansResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_bans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListWorldExperienceBansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_config_versions

> <ListWorldExperienceConfigVersionsResponse> list_world_experience_config_versions(experience_id, opts)

Config history, newest first: who changed which keys, when.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  limit: 8.14, # Float | 
  cursor: 'cursor_example' # String | 
}

begin
  # Config history, newest first: who changed which keys, when.
  result = api_instance.list_world_experience_config_versions(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_config_versions: #{e}"
end
```

#### Using the list_world_experience_config_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceConfigVersionsResponse>, Integer, Hash)> list_world_experience_config_versions_with_http_info(experience_id, opts)

```ruby
begin
  # Config history, newest first: who changed which keys, when.
  data, status_code, headers = api_instance.list_world_experience_config_versions_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceConfigVersionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_config_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

**ListWorldExperienceConfigVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_events

> <ListWorldExperienceEventsResponse> list_world_experience_events(experience_id, opts)

Scheduled and live events (?includeEnded=true for history).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  include_ended: 'true' # String | 
}

begin
  # Scheduled and live events (?includeEnded=true for history).
  result = api_instance.list_world_experience_events(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_events: #{e}"
end
```

#### Using the list_world_experience_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceEventsResponse>, Integer, Hash)> list_world_experience_events_with_http_info(experience_id, opts)

```ruby
begin
  # Scheduled and live events (?includeEnded=true for history).
  data, status_code, headers = api_instance.list_world_experience_events_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceEventsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **include_ended** | **String** |  | [optional] |

### Return type

**ListWorldExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_experiments

> <ListWorldExperienceExperimentsResponse> list_world_experience_experiments(experience_id)

A/B experiments, newest first, with their live verdict.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # A/B experiments, newest first, with their live verdict.
  result = api_instance.list_world_experience_experiments(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_experiments: #{e}"
end
```

#### Using the list_world_experience_experiments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceExperimentsResponse>, Integer, Hash)> list_world_experience_experiments_with_http_info(experience_id)

```ruby
begin
  # A/B experiments, newest first, with their live verdict.
  data, status_code, headers = api_instance.list_world_experience_experiments_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceExperimentsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_experiments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceExperimentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_moderation_reports

> <ListWorldExperienceModerationReportsResponse> list_world_experience_moderation_reports(experience_id, opts)

Reports about your experience, newest first (cursor). Reporter identity, account ids and other players' words are removed.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Reports about your experience, newest first (cursor). Reporter identity, account ids and other players' words are removed.
  result = api_instance.list_world_experience_moderation_reports(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_moderation_reports: #{e}"
end
```

#### Using the list_world_experience_moderation_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceModerationReportsResponse>, Integer, Hash)> list_world_experience_moderation_reports_with_http_info(experience_id, opts)

```ruby
begin
  # Reports about your experience, newest first (cursor). Reporter identity, account ids and other players' words are removed.
  data, status_code, headers = api_instance.list_world_experience_moderation_reports_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceModerationReportsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_moderation_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListWorldExperienceModerationReportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_place_publishes

> <ListWorldExperiencePlacePublishesResponse> list_world_experience_place_publishes(experience_id, place_id)

Publishes of a place, newest first: state, checks, rating, access, review, rollout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Publishes of a place, newest first: state, checks, rating, access, review, rollout.
  result = api_instance.list_world_experience_place_publishes(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_place_publishes: #{e}"
end
```

#### Using the list_world_experience_place_publishes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlacePublishesResponse>, Integer, Hash)> list_world_experience_place_publishes_with_http_info(experience_id, place_id)

```ruby
begin
  # Publishes of a place, newest first: state, checks, rating, access, review, rollout.
  data, status_code, headers = api_instance.list_world_experience_place_publishes_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlacePublishesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_place_publishes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlacePublishesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_place_versions

> <ListWorldExperiencePlaceVersionsResponse> list_world_experience_place_versions(experience_id, place_id)

Version history of a place, newest first; `current` marks the live one.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 

begin
  # Version history of a place, newest first; `current` marks the live one.
  result = api_instance.list_world_experience_place_versions(experience_id, place_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_place_versions: #{e}"
end
```

#### Using the list_world_experience_place_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlaceVersionsResponse>, Integer, Hash)> list_world_experience_place_versions_with_http_info(experience_id, place_id)

```ruby
begin
  # Version history of a place, newest first; `current` marks the live one.
  data, status_code, headers = api_instance.list_world_experience_place_versions_with_http_info(experience_id, place_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlaceVersionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_place_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlaceVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_places

> <ListWorldExperiencePlacesResponse> list_world_experience_places(experience_id)

The places of an experience, start place first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # The places of an experience, start place first.
  result = api_instance.list_world_experience_places(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_places: #{e}"
end
```

#### Using the list_world_experience_places_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlacesResponse>, Integer, Hash)> list_world_experience_places_with_http_info(experience_id)

```ruby
begin
  # The places of an experience, start place first.
  data, status_code, headers = api_instance.list_world_experience_places_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlacesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_places_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_playtesters

> <ListWorldExperiencePlaytestersResponse> list_world_experience_playtesters(experience_id)

People who may join while the game is private.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # People who may join while the game is private.
  result = api_instance.list_world_experience_playtesters(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_playtesters: #{e}"
end
```

#### Using the list_world_experience_playtesters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencePlaytestersResponse>, Integer, Hash)> list_world_experience_playtesters_with_http_info(experience_id)

```ruby
begin
  # People who may join while the game is private.
  data, status_code, headers = api_instance.list_world_experience_playtesters_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencePlaytestersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_playtesters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperiencePlaytestersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experience_servers

> <ListWorldExperienceServersResponse> list_world_experience_servers(experience_id)

Live servers: place, version, region, players, health.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 

begin
  # Live servers: place, version, region, players, health.
  result = api_instance.list_world_experience_servers(experience_id)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_servers: #{e}"
end
```

#### Using the list_world_experience_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperienceServersResponse>, Integer, Hash)> list_world_experience_servers_with_http_info(experience_id)

```ruby
begin
  # Live servers: place, version, region, players, health.
  data, status_code, headers = api_instance.list_world_experience_servers_with_http_info(experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperienceServersResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experience_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |

### Return type

**ListWorldExperienceServersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_experiences

> <ListWorldExperiencesResponse> list_world_experiences(opts)

Your experiences, newest first; cursor-paged (?cursor=&limit=).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 8.14 # Float | 
}

begin
  # Your experiences, newest first; cursor-paged (?cursor=&limit=).
  result = api_instance.list_world_experiences(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experiences: #{e}"
end
```

#### Using the list_world_experiences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldExperiencesResponse>, Integer, Hash)> list_world_experiences_with_http_info(opts)

```ruby
begin
  # Your experiences, newest first; cursor-paged (?cursor=&limit=).
  data, status_code, headers = api_instance.list_world_experiences_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldExperiencesResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_experiences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

**ListWorldExperiencesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_favorites

> <ListWorldRecentResponse> list_world_favorites

Your favourite experiences that are still open, newest first.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Your favourite experiences that are still open, newest first.
  result = api_instance.list_world_favorites
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_favorites: #{e}"
end
```

#### Using the list_world_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldRecentResponse>, Integer, Hash)> list_world_favorites_with_http_info

```ruby
begin
  # Your favourite experiences that are still open, newest first.
  data, status_code, headers = api_instance.list_world_favorites_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldRecentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_favorites_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_game_mine

> <ListWorldGameMineResponse> list_world_game_mine(opts)

Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&status&engine&genre&template&owner&flag&sort; sort=revenue = highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  q: 'q_example', # String | 
  status: 'active', # String | 
  engine: 'all', # String | 
  genre: 'genre_example', # String | 
  template: 'template_example', # String | 
  owner: 'all', # String | 
  flag: 'all', # String | 
  sort: 'name' # String | 
}

begin
  # Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&status&engine&genre&template&owner&flag&sort; sort=revenue = highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).
  result = api_instance.list_world_game_mine(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_game_mine: #{e}"
end
```

#### Using the list_world_game_mine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldGameMineResponse>, Integer, Hash)> list_world_game_mine_with_http_info(opts)

```ruby
begin
  # Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&status&engine&genre&template&owner&flag&sort; sort=revenue = highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).
  data, status_code, headers = api_instance.list_world_game_mine_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldGameMineResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_game_mine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **engine** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **template** | **String** |  | [optional] |
| **owner** | **String** |  | [optional] |
| **flag** | **String** |  | [optional] |
| **sort** | **String** |  | [optional] |

### Return type

**ListWorldGameMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_parental_children

> <ListWorldParentalChildrenResponse> list_world_parental_children

Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.
  result = api_instance.list_world_parental_children
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_parental_children: #{e}"
end
```

#### Using the list_world_parental_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldParentalChildrenResponse>, Integer, Hash)> list_world_parental_children_with_http_info

```ruby
begin
  # Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.
  data, status_code, headers = api_instance.list_world_parental_children_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldParentalChildrenResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_parental_children_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldParentalChildrenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_recent

> <ListWorldRecentResponse> list_world_recent

Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).
  result = api_instance.list_world_recent
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_recent: #{e}"
end
```

#### Using the list_world_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldRecentResponse>, Integer, Hash)> list_world_recent_with_http_info

```ruby
begin
  # Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).
  data, status_code, headers = api_instance.list_world_recent_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldRecentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_recent_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_regions

> <ListWorldRegionsResponse> list_world_regions

Live server regions with a probe URL each: GET it a few times, send the round trips as `pings` with the join to land in the nearest region.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Live server regions with a probe URL each: GET it a few times, send the round trips as `pings` with the join to land in the nearest region.
  result = api_instance.list_world_regions
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_regions: #{e}"
end
```

#### Using the list_world_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldRegionsResponse>, Integer, Hash)> list_world_regions_with_http_info

```ruby
begin
  # Live server regions with a probe URL each: GET it a few times, send the round trips as `pings` with the join to land in the nearest region.
  data, status_code, headers = api_instance.list_world_regions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldRegionsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_regions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldRegionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_shop_listings

> <ListWorldShopListingsResponse> list_world_shop_listings(opts)

Your live Crossly listings a game can show and sell (shop objects bind to their id).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  q: 'q_example', # String | 
  limit: 8.14, # Float | 
  experience_id: 'experience_id_example' # String | 
}

begin
  # Your live Crossly listings a game can show and sell (shop objects bind to their id).
  result = api_instance.list_world_shop_listings(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_shop_listings: #{e}"
end
```

#### Using the list_world_shop_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldShopListingsResponse>, Integer, Hash)> list_world_shop_listings_with_http_info(opts)

```ruby
begin
  # Your live Crossly listings a game can show and sell (shop objects bind to their id).
  data, status_code, headers = api_instance.list_world_shop_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldShopListingsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_shop_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  | [optional] |
| **limit** | **Float** |  | [optional] |
| **experience_id** | **String** |  | [optional] |

### Return type

**ListWorldShopListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_transfer_requests

> <ListWorldTransferRequestsResponse> list_world_transfer_requests(opts)

Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&status&experienceId).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  direction: 'all', # String | 
  status: 'all', # String | 
  experience_id: 'experience_id_example' # String | 
}

begin
  # Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&status&experienceId).
  result = api_instance.list_world_transfer_requests(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_transfer_requests: #{e}"
end
```

#### Using the list_world_transfer_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldTransferRequestsResponse>, Integer, Hash)> list_world_transfer_requests_with_http_info(opts)

```ruby
begin
  # Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&status&experienceId).
  data, status_code, headers = api_instance.list_world_transfer_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldTransferRequestsResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_transfer_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direction** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **experience_id** | **String** |  | [optional] |

### Return type

**ListWorldTransferRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_world_transparency

> <ListWorldTransparencyResponse> list_world_transparency

Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new

begin
  # Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).
  result = api_instance.list_world_transparency
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_transparency: #{e}"
end
```

#### Using the list_world_transparency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorldTransparencyResponse>, Integer, Hash)> list_world_transparency_with_http_info

```ruby
begin
  # Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).
  data, status_code, headers = api_instance.list_world_transparency_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorldTransparencyResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->list_world_transparency_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**ListWorldTransparencyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_world_experience

> <WorldExperienceResponse> update_world_experience(experience_id, opts)

Edit name, description, genre, rating or icon.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_request: Crossly::UpdateWorldExperienceRequest.new # UpdateWorldExperienceRequest | 
}

begin
  # Edit name, description, genre, rating or icon.
  result = api_instance.update_world_experience(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience: #{e}"
end
```

#### Using the update_world_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse>, Integer, Hash)> update_world_experience_with_http_info(experience_id, opts)

```ruby
begin
  # Edit name, description, genre, rating or icon.
  data, status_code, headers = api_instance.update_world_experience_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_request** | **UpdateWorldExperienceRequest** |  | [optional] |

### Return type

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_access_limit

> <GetWorldExperienceAccessLimitResponse> update_world_experience_access_limit(experience_id, opts)

Limit who can play: { crewOnly } (only members of the owner's crew), { countryMode: all|allow|block, countries: ['US', ...] }. The owner and team are never limited.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_access_limit_request: Crossly::UpdateWorldExperienceAccessLimitRequest.new # UpdateWorldExperienceAccessLimitRequest | 
}

begin
  # Limit who can play: { crewOnly } (only members of the owner's crew), { countryMode: all|allow|block, countries: ['US', ...] }. The owner and team are never limited.
  result = api_instance.update_world_experience_access_limit(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_access_limit: #{e}"
end
```

#### Using the update_world_experience_access_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAccessLimitResponse>, Integer, Hash)> update_world_experience_access_limit_with_http_info(experience_id, opts)

```ruby
begin
  # Limit who can play: { crewOnly } (only members of the owner's crew), { countryMode: all|allow|block, countries: ['US', ...] }. The owner and team are never limited.
  data, status_code, headers = api_instance.update_world_experience_access_limit_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAccessLimitResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_access_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_access_limit_request** | **UpdateWorldExperienceAccessLimitRequest** |  | [optional] |

### Return type

**GetWorldExperienceAccessLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_alert_setting

> <GetWorldExperienceAlertSettingResponse> update_world_experience_alert_setting(experience_id, opts)

Change alert rules and quiet hours.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_alert_setting_request: Crossly::UpdateWorldExperienceAlertSettingRequest.new # UpdateWorldExperienceAlertSettingRequest | 
}

begin
  # Change alert rules and quiet hours.
  result = api_instance.update_world_experience_alert_setting(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_alert_setting: #{e}"
end
```

#### Using the update_world_experience_alert_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceAlertSettingResponse>, Integer, Hash)> update_world_experience_alert_setting_with_http_info(experience_id, opts)

```ruby
begin
  # Change alert rules and quiet hours.
  data, status_code, headers = api_instance.update_world_experience_alert_setting_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceAlertSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_alert_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_alert_setting_request** | **UpdateWorldExperienceAlertSettingRequest** |  | [optional] |

### Return type

**GetWorldExperienceAlertSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_chat_setting

> <GetWorldExperienceChatSettingResponse> update_world_experience_chat_setting(experience_id, opts)

Turn text chat off or use the strict filter for everyone (never looser than the platform).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_chat_setting_request: Crossly::UpdateWorldExperienceChatSettingRequest.new # UpdateWorldExperienceChatSettingRequest | 
}

begin
  # Turn text chat off or use the strict filter for everyone (never looser than the platform).
  result = api_instance.update_world_experience_chat_setting(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_chat_setting: #{e}"
end
```

#### Using the update_world_experience_chat_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperienceChatSettingResponse>, Integer, Hash)> update_world_experience_chat_setting_with_http_info(experience_id, opts)

```ruby
begin
  # Turn text chat off or use the strict filter for everyone (never looser than the platform).
  data, status_code, headers = api_instance.update_world_experience_chat_setting_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperienceChatSettingResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_chat_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_chat_setting_request** | **UpdateWorldExperienceChatSettingRequest** |  | [optional] |

### Return type

**GetWorldExperienceChatSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_config

> <WorldExperienceConfigResponse> update_world_experience_config(experience_id, opts)

Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_config_request: Crossly::UpdateWorldExperienceConfigRequest.new # UpdateWorldExperienceConfigRequest | 
}

begin
  # Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).
  result = api_instance.update_world_experience_config(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_config: #{e}"
end
```

#### Using the update_world_experience_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceConfigResponse>, Integer, Hash)> update_world_experience_config_with_http_info(experience_id, opts)

```ruby
begin
  # Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).
  data, status_code, headers = api_instance.update_world_experience_config_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceConfigResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_config_request** | **UpdateWorldExperienceConfigRequest** |  | [optional] |

### Return type

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_config_value

> <WorldExperienceConfigResponse> update_world_experience_config_value(experience_id, opts)

Set and/or remove individual config keys.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_config_value_request: Crossly::UpdateWorldExperienceConfigValueRequest.new # UpdateWorldExperienceConfigValueRequest | 
}

begin
  # Set and/or remove individual config keys.
  result = api_instance.update_world_experience_config_value(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_config_value: #{e}"
end
```

#### Using the update_world_experience_config_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceConfigResponse>, Integer, Hash)> update_world_experience_config_value_with_http_info(experience_id, opts)

```ruby
begin
  # Set and/or remove individual config keys.
  data, status_code, headers = api_instance.update_world_experience_config_value_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceConfigResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_config_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_config_value_request** | **UpdateWorldExperienceConfigValueRequest** |  | [optional] |

### Return type

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_event

> <WorldExperienceEventResponse> update_world_experience_event(experience_id, event_id, opts)

Reschedule or change a scheduled event; a live event may only move its end.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
event_id = 'event_id_example' # String | 
opts = {
  update_world_experience_event_request: Crossly::UpdateWorldExperienceEventRequest.new # UpdateWorldExperienceEventRequest | 
}

begin
  # Reschedule or change a scheduled event; a live event may only move its end.
  result = api_instance.update_world_experience_event(experience_id, event_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_event: #{e}"
end
```

#### Using the update_world_experience_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceEventResponse>, Integer, Hash)> update_world_experience_event_with_http_info(experience_id, event_id, opts)

```ruby
begin
  # Reschedule or change a scheduled event; a live event may only move its end.
  data, status_code, headers = api_instance.update_world_experience_event_with_http_info(experience_id, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceEventResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **event_id** | **String** |  |  |
| **update_world_experience_event_request** | **UpdateWorldExperienceEventRequest** |  | [optional] |

### Return type

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_experiment

> <WorldExperienceExperimentResponse> update_world_experience_experiment(experience_id, experiment_id, opts)

Edit a draft (a running experiment may only rename or reword).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
experiment_id = 'experiment_id_example' # String | 
opts = {
  update_world_experience_experiment_request: Crossly::UpdateWorldExperienceExperimentRequest.new # UpdateWorldExperienceExperimentRequest | 
}

begin
  # Edit a draft (a running experiment may only rename or reword).
  result = api_instance.update_world_experience_experiment(experience_id, experiment_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_experiment: #{e}"
end
```

#### Using the update_world_experience_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceExperimentResponse>, Integer, Hash)> update_world_experience_experiment_with_http_info(experience_id, experiment_id, opts)

```ruby
begin
  # Edit a draft (a running experiment may only rename or reword).
  data, status_code, headers = api_instance.update_world_experience_experiment_with_http_info(experience_id, experiment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceExperimentResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **experiment_id** | **String** |  |  |
| **update_world_experience_experiment_request** | **UpdateWorldExperienceExperimentRequest** |  | [optional] |

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_localization

> <WorldExperienceLocalizationResponse> update_world_experience_localization(experience_id, opts)

Save languages: { locales: { es: { name, description, strings: { \"shop.title\": \"Tienda\" } } } }. Each language sent replaces that language; the rest stay. English holds the source string table (its name and description are the Details).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_world_experience_localization_request: Crossly::UpdateWorldExperienceLocalizationRequest.new({locales: { key: 3.56}}) # UpdateWorldExperienceLocalizationRequest | 
}

begin
  # Save languages: { locales: { es: { name, description, strings: { \"shop.title\": \"Tienda\" } } } }. Each language sent replaces that language; the rest stay. English holds the source string table (its name and description are the Details).
  result = api_instance.update_world_experience_localization(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_localization: #{e}"
end
```

#### Using the update_world_experience_localization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceLocalizationResponse>, Integer, Hash)> update_world_experience_localization_with_http_info(experience_id, opts)

```ruby
begin
  # Save languages: { locales: { es: { name, description, strings: { \"shop.title\": \"Tienda\" } } } }. Each language sent replaces that language; the rest stay. English holds the source string table (its name and description are the Details).
  data, status_code, headers = api_instance.update_world_experience_localization_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceLocalizationResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_localization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_world_experience_localization_request** | **UpdateWorldExperienceLocalizationRequest** |  | [optional] |

### Return type

**WorldExperienceLocalizationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_maturity

> <UpdateWorldExperienceMaturityResponse> update_world_experience_maturity(experience_id, opts)

Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  create_world_rating_compute_request: Crossly::CreateWorldRatingComputeRequest.new({answers: { key: 3.56}}) # CreateWorldRatingComputeRequest | 
}

begin
  # Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).
  result = api_instance.update_world_experience_maturity(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_maturity: #{e}"
end
```

#### Using the update_world_experience_maturity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceMaturityResponse>, Integer, Hash)> update_world_experience_maturity_with_http_info(experience_id, opts)

```ruby
begin
  # Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).
  data, status_code, headers = api_instance.update_world_experience_maturity_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceMaturityResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_maturity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **create_world_rating_compute_request** | **CreateWorldRatingComputeRequest** |  | [optional] |

### Return type

**UpdateWorldExperienceMaturityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_place

> <WorldExperiencePlaceResponse> update_world_experience_place(experience_id, place_id, opts)

Place settings: name, max players (1-50), fill target, social slots, empty shutdown.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  create_world_experience_place_request: Crossly::CreateWorldExperiencePlaceRequest.new # CreateWorldExperiencePlaceRequest | 
}

begin
  # Place settings: name, max players (1-50), fill target, social slots, empty shutdown.
  result = api_instance.update_world_experience_place(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place: #{e}"
end
```

#### Using the update_world_experience_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperiencePlaceResponse>, Integer, Hash)> update_world_experience_place_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Place settings: name, max players (1-50), fill target, social slots, empty shutdown.
  data, status_code, headers = api_instance.update_world_experience_place_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperiencePlaceResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **create_world_experience_place_request** | **CreateWorldExperiencePlaceRequest** |  | [optional] |

### Return type

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_place_draft

> <GetWorldExperiencePlaceDraftResponse> update_world_experience_place_draft(experience_id, place_id, opts)

Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
opts = {
  update_world_experience_place_draft_request: Crossly::UpdateWorldExperiencePlaceDraftRequest.new({project: 3.56, base_revision: 3.56}) # UpdateWorldExperiencePlaceDraftRequest | 
}

begin
  # Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.
  result = api_instance.update_world_experience_place_draft(experience_id, place_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place_draft: #{e}"
end
```

#### Using the update_world_experience_place_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldExperiencePlaceDraftResponse>, Integer, Hash)> update_world_experience_place_draft_with_http_info(experience_id, place_id, opts)

```ruby
begin
  # Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.
  data, status_code, headers = api_instance.update_world_experience_place_draft_with_http_info(experience_id, place_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldExperiencePlaceDraftResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **update_world_experience_place_draft_request** | **UpdateWorldExperiencePlaceDraftRequest** |  | [optional] |

### Return type

**GetWorldExperiencePlaceDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_place_version_note

> <UpdateWorldExperiencePlaceVersionNoteResponse> update_world_experience_place_version_note(experience_id, place_id, version_id, opts)

Edit a release version's changelog (the game page's What's new): { notes } up to 2000 characters.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
place_id = 'place_id_example' # String | 
version_id = 'version_id_example' # String | 
opts = {
  update_world_experience_place_version_note_request: Crossly::UpdateWorldExperiencePlaceVersionNoteRequest.new({notes: 'notes_example'}) # UpdateWorldExperiencePlaceVersionNoteRequest | 
}

begin
  # Edit a release version's changelog (the game page's What's new): { notes } up to 2000 characters.
  result = api_instance.update_world_experience_place_version_note(experience_id, place_id, version_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place_version_note: #{e}"
end
```

#### Using the update_world_experience_place_version_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperiencePlaceVersionNoteResponse>, Integer, Hash)> update_world_experience_place_version_note_with_http_info(experience_id, place_id, version_id, opts)

```ruby
begin
  # Edit a release version's changelog (the game page's What's new): { notes } up to 2000 characters.
  data, status_code, headers = api_instance.update_world_experience_place_version_note_with_http_info(experience_id, place_id, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperiencePlaceVersionNoteResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_place_version_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **place_id** | **String** |  |  |
| **version_id** | **String** |  |  |
| **update_world_experience_place_version_note_request** | **UpdateWorldExperiencePlaceVersionNoteRequest** |  | [optional] |

### Return type

**UpdateWorldExperiencePlaceVersionNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_publish

> <WorldExperienceResponse2> update_world_experience_publish(experience_id, request_id, opts)

Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
request_id = 'request_id_example' # String | 
opts = {
  update_world_experience_publish_request: Crossly::UpdateWorldExperiencePublishRequest.new # UpdateWorldExperiencePublishRequest | 
}

begin
  # Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.
  result = api_instance.update_world_experience_publish(experience_id, request_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_publish: #{e}"
end
```

#### Using the update_world_experience_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldExperienceResponse2>, Integer, Hash)> update_world_experience_publish_with_http_info(experience_id, request_id, opts)

```ruby
begin
  # Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.
  data, status_code, headers = api_instance.update_world_experience_publish_with_http_info(experience_id, request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldExperienceResponse2>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **request_id** | **String** |  |  |
| **update_world_experience_publish_request** | **UpdateWorldExperiencePublishRequest** |  | [optional] |

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_experience_showcase

> <UpdateWorldExperienceShowcaseResponse> update_world_experience_showcase(experience_id, opts)

Set the showcased listings: { listingIds } (Crossly shop slugs of the owner's live listings, max 12, in order).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
experience_id = 'experience_id_example' # String | 
opts = {
  update_brand_drop_listing_request: Crossly::UpdateBrandDropListingRequest.new({listing_ids: ['listing_ids_example']}) # UpdateBrandDropListingRequest | 
}

begin
  # Set the showcased listings: { listingIds } (Crossly shop slugs of the owner's live listings, max 12, in order).
  result = api_instance.update_world_experience_showcase(experience_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_showcase: #{e}"
end
```

#### Using the update_world_experience_showcase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorldExperienceShowcaseResponse>, Integer, Hash)> update_world_experience_showcase_with_http_info(experience_id, opts)

```ruby
begin
  # Set the showcased listings: { listingIds } (Crossly shop slugs of the owner's live listings, max 12, in order).
  data, status_code, headers = api_instance.update_world_experience_showcase_with_http_info(experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorldExperienceShowcaseResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_experience_showcase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** |  |  |
| **update_brand_drop_listing_request** | **UpdateBrandDropListingRequest** |  | [optional] |

### Return type

**UpdateWorldExperienceShowcaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_favorite

> <WorldResponse3> update_world_favorite(opts)

Favourite or un-favourite an experience (idempotent).

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  update_world_favorite_request: Crossly::UpdateWorldFavoriteRequest.new({key: 'key_example', favorite: false}) # UpdateWorldFavoriteRequest | 
}

begin
  # Favourite or un-favourite an experience (idempotent).
  result = api_instance.update_world_favorite(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_favorite: #{e}"
end
```

#### Using the update_world_favorite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse3>, Integer, Hash)> update_world_favorite_with_http_info(opts)

```ruby
begin
  # Favourite or un-favourite an experience (idempotent).
  data, status_code, headers = api_instance.update_world_favorite_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse3>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_favorite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_favorite_request** | **UpdateWorldFavoriteRequest** |  | [optional] |

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_mature

> <GetWorldMatureResponse> update_world_mature(opts)

Switch \"Show Mature experiences\" on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  update_world_mature_request: Crossly::UpdateWorldMatureRequest.new({show_mature: false}) # UpdateWorldMatureRequest | 
}

begin
  # Switch \"Show Mature experiences\" on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.
  result = api_instance.update_world_mature(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_mature: #{e}"
end
```

#### Using the update_world_mature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldMatureResponse>, Integer, Hash)> update_world_mature_with_http_info(opts)

```ruby
begin
  # Switch \"Show Mature experiences\" on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.
  data, status_code, headers = api_instance.update_world_mature_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldMatureResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_mature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_mature_request** | **UpdateWorldMatureRequest** |  | [optional] |

### Return type

**GetWorldMatureResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_me_pref

> <GetWorldMePrefResponse> update_world_me_pref(opts)

Set your Crossly Carnival choices.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  update_world_me_pref_request: Crossly::UpdateWorldMePrefRequest.new({share_wallet_address: false}) # UpdateWorldMePrefRequest | 
}

begin
  # Set your Crossly Carnival choices.
  result = api_instance.update_world_me_pref(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_me_pref: #{e}"
end
```

#### Using the update_world_me_pref_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorldMePrefResponse>, Integer, Hash)> update_world_me_pref_with_http_info(opts)

```ruby
begin
  # Set your Crossly Carnival choices.
  data, status_code, headers = api_instance.update_world_me_pref_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorldMePrefResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_me_pref_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_me_pref_request** | **UpdateWorldMePrefRequest** |  | [optional] |

### Return type

**GetWorldMePrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_parental_children

> <WorldParentalResponse> update_world_parental_children(child_id, opts)

Change a linked account's limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 = no purchases, null = no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
child_id = 'child_id_example' # String | 
opts = {
  update_world_parental_children_request: Crossly::UpdateWorldParentalChildrenRequest.new({pin: 'pin_example', settings: Crossly::UpdateWorldParentalChildrenRequestSettings.new}) # UpdateWorldParentalChildrenRequest | 
}

begin
  # Change a linked account's limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 = no purchases, null = no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.
  result = api_instance.update_world_parental_children(child_id, opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_parental_children: #{e}"
end
```

#### Using the update_world_parental_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldParentalResponse>, Integer, Hash)> update_world_parental_children_with_http_info(child_id, opts)

```ruby
begin
  # Change a linked account's limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 = no purchases, null = no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.
  data, status_code, headers = api_instance.update_world_parental_children_with_http_info(child_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldParentalResponse>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_parental_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_id** | **String** |  |  |
| **update_world_parental_children_request** | **UpdateWorldParentalChildrenRequest** |  | [optional] |

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_world_vote

> <WorldResponse3> update_world_vote(opts)

Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.

### Examples

```ruby
require 'time'
require 'crossly'
# setup authorization
Crossly.configure do |config|
  # Configure Bearer authorization: PersonalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Crossly::WorldsApi.new
opts = {
  update_world_vote_request: Crossly::UpdateWorldVoteRequest.new({key: 'key_example', vote: 'up'}) # UpdateWorldVoteRequest | 
}

begin
  # Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.
  result = api_instance.update_world_vote(opts)
  p result
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_vote: #{e}"
end
```

#### Using the update_world_vote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorldResponse3>, Integer, Hash)> update_world_vote_with_http_info(opts)

```ruby
begin
  # Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.
  data, status_code, headers = api_instance.update_world_vote_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorldResponse3>
rescue Crossly::ApiError => e
  puts "Error when calling WorldsApi->update_world_vote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_world_vote_request** | **UpdateWorldVoteRequest** |  | [optional] |

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

