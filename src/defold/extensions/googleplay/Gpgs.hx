package defold.extensions.googleplay;

import lua.Table.AnyTable;
import defold.types.*;


@:native("gpgs")
extern class Gpgs
{
    /**
     * Check if Google Play Services are available & ready on the device.
     *
     * @return Status of Google Play Services on the device.
     */
    static function is_supported(): Bool;

    /**
     * Login to GPGS using a button.
     */
    static function login(): Void;

    /**
     * Silent login to GPGS.
     * This function is trying to retrieve the currently signed-in player’s account.
     * [icon:attention] By default login methods request `GoogleSignInOptions.DEFAULT_GAMES_SIGN_IN`. But if you use Disk, we have to request extra scope `Drive.SCOPE_APPFOLDER`. Or if you use ID token, we have to request ID token with provided client_id. If so it causes the first time silent sign-in to fail, except for users who have already signed in successfully on a different device. Turn off GPGS features you don't want to use in `game.project`.
     */
    static function silent_login(): Void;

    /**
     * Logout from GPGS
     */
    static function logout(): Void;

    /**
     * Get the current GPGS player display name.
     *
     * @return The player's display name.
     */
    static function get_display_name(): String;

    /**
     * Get the current GPGS player id.
     *
     * @return The player ID.
     */
    static function get_id(): String;

    /**
     * Get the current GPGS player id token. Available only if "gpgs.client_id" is configured in game.project and "gpgs.request_id_token = 1".
     *
     * @return The player ID token.
     */
    static function get_id_token(): String;

    /**
     * Returns a one-time server auth code to send to your web server which can be exchanged for access token
     *
     * @return The server auth code for logged in account.
     */
    static function get_server_auth_code(): String;

    /**
     * Check if a user is logged in currently.
     *
     * @return Current login state.
     */
    static function is_logged_in(): Bool;

    /**
     * This method sets the position for the login popup.
     *
     * @param position An position can be one of the predefined constants below
     * - `gpgs.POPUP_POS_TOP_LEFT`
     * - `gpgs.POPUP_POS_TOP_CENTER`
     * - `gpgs.POPUP_POS_TOP_RIGHT`
     * - `gpgs.POPUP_POS_CENTER_LEFT`
     * - `gpgs.POPUP_POS_CENTER`
     * - `gpgs.POPUP_POS_CENTER_RIGHT`
     * - `gpgs.POPUP_POS_BOTTOM_LEFT`
     * - `gpgs.POPUP_POS_BOTTOM_CENTER`
     * - `gpgs.POPUP_POS_BOTTOM_RIGHT`
     *
     * Default value is `gpgs.POPUP_POS_TOP_CENTER`
     */
    static function set_popup_position(position: PopupPosition): Void;

    /**
     * Set callback for receiving messages from GPGS.
     *
     * @param callback A callback taking the following parameters
     */
    static function set_callback<T>(callback: (self: T, message_id: PopupMessageId, message: Dynamic)->Void): Void;

    /**
     * Provides a default saved games selection user interface.
     *
     * @param popupTitle The title to display in the action bar. By default "Game Saves".
     * @param allowAddButton Whether or not to display a "create new snapshot" option in the selection UI. By default `true`.
     * @param allowDelete Whether or not to provide a delete overflow menu option for each snapshot in the selection UI. By default `true`.
     * @param maxNumberOfSavedGamesToShow The maximum number of snapshots to display in the UI. By default 5.
     */
    static function snapshot_display_saves(popupTitle: String, allowAddButton: Bool, allowDelete: Bool, maxNumberOfSavedGamesToShow: Int): Void;

    /**
     * Opens a snapshot with the given `saveName`. If `createIfNotFound` is set to `true`, the specified snapshot will be created if it does not already exist.
     *
     * @param saveName The name of the snapshot file to open. Must be between 1 and 100 non-URL-reserved characters (a-z, A-Z, 0-9, or the symbols "-", ".", "_", or "~").
     * @param createIfNotFound If `true`, the snapshot will be created if one cannot be found.
     * @param conflictPolicy The conflict resolution policy to use for this snapshot that can be one of the predefined constants below
     * - `gpgs.RESOLUTION_POLICY_MANUAL`
     * - `gpgs.RESOLUTION_POLICY_LONGEST_PLAYTIME`
     * - `gpgs.RESOLUTION_POLICY_LAST_KNOWN_GOOD`
     * - `gpgs.RESOLUTION_POLICY_MOST_RECENTLY_MODIFIED`
     * - `gpgs.RESOLUTION_POLICY_HIGHEST_PROGRESS`
     *
     * Default value is `gpgs.RESOLUTION_POLICY_LAST_KNOWN_GOOD`
     */
    static function snapshot_open(saveName: String, createIfNotFound: Bool, conflictPolicy: Resolution): Void;

    /**
     * Save the currently opened save on the server and close it.
     *
     * @param metadata A table with metadata for a save. It contains the fields below
     */
    static function snapshot_commit_and_close(metadata: SnapshotMetadata): Void;

    /**
     * Returns the currently opened snapshot data.
     *
     * @return The byte array data of the currently opened snapshot. `nil` if something goes wrong.
     */
    static function snapshot_get_data(): SnapshotGetDataReturnValues;

    /**
     * Sets the data for the currently opened snapshot.
     *
     * @param data The data to set.
     * @return True if data was set for the currently opened snapshot.
     */
    static function snapshot_set_data(data: String): SnapshotSetDataReturnValues;

    /**
     * Check if a snapshot was opened.
     *
     * @return A current snapshot state.
     */
    static function snapshot_is_opened(): Bool;

    /**
     * Returns the maximum data size per snapshot cover image in bytes.
     *
     * @return The maximum data size per snapshot cover image in bytes.
     */
    static function snapshot_get_max_image_size(): Int;

    /**
     * Returns the maximum data size per snapshot in bytes.
     *
     * @return The maximum data size per snapshot in bytes.
     */
    static function snapshot_get_max_save_size(): Int;

    /**
     * Returns the conflicting snapshot data.
     *
     * @return The byte array data of the conflicting snapshot. `nil` if something goes wrong.
     */
    static function snapshot_get_conflicting_data(): SnapshotGetConflictingDataReturnValues;

    /**
     * Resolves a conflict using the data from the provided snapshot.
     *
     * @param conflictId The conflict id that you want to resolve. Provided in `message` table with `STATUS_CONFLICT` message type.
     * @param snapshotId Type of the snapshot you want to use for conflict solving that can be one of the predefined constants below
     * - `gpgs.SNAPSHOT_CURRENT`
     * - `gpgs.SNAPSHOT_CONFLICTING`
     */
    static function snapshot_resolve_conflict(conflictId: Status, snapshotId: Snapshot): Void;

    /**
     * Submit a score to a leaderboard for the currently signed-in player.
     *
     * @param leaderboardId
     * @param score
     */
    static function leaderboard_submit_score(leaderboardId: String, score: Int): Void;

    /**
     * Asynchronously gets the top page of scores for a leaderboard.
     *
     * @param leaderboardId
     * @param time_span One of the gpgs.TIME_SPAN_ constants
     * @param collection One of the gpgs.COLLECTION_ constants
     * @param max_results Between 1-25
     */
    static function leaderboard_get_top_scores(leaderboardId: String, time_span: Int, collection: Int, max_results: Int): Void;

    /**
     * Asynchronously gets a player-centered page of scores for a leaderboard.
     *
     * @param leaderboardId
     * @param time_span One of the gpgs.TIME_SPAN_ constants
     * @param collection One of the gpgs.COLLECTION_ constants
     * @param max_results Between 1-25
     */
    static function leaderboard_get_player_centered_scores(leaderboardId: String, time_span: Int, collection: Int, max_results: Int): Void;

    /**
     * Show a leaderboard for a game specified by a leaderboardId.
     *
     * @param leaderboardId
     * @param time_span One of the gpgs.TIME_SPAN_ constants
     * @param collection One of the gpgs.COLLECTION_ constants
     */
    static function leaderboard_show(leaderboardId: String, time_span: Int, collection: Int): Void;

    /**
     * Show the list of leaderboards.
     */
    static function leaderboard_list(): Void;

    /**
     * Asynchronously gets a player-centered page of scores for a leaderboard.
     *
     * @param leaderboardId
     * @param time_span One of the gpgs.TIME_SPAN_ constants
     * @param collection One of the gpgs.COLLECTION_ constants
     */
    static function leaderboard_get_player_score(leaderboardId: String, time_span: Int, collection: Int): Void;

    /**
     * Reveal achievement
     *
     * @param achievementId
     */
    static function achievement_reveal(achievementId: String): Void;

    /**
     * Unlock achievement
     *
     * @param achievementId
     */
    static function achievement_unlock(achievementId: String): Void;

    /**
     * Set achievement progress
     *
     * @param achievementId
     * @param steps
     */
    static function achievement_set(achievementId: String, steps: Int): Void;

    /**
     * Increase achievement progress
     *
     * @param achievementId
     * @param steps
     */
    static function achievement_increment(achievementId: String, steps: Int): Void;

    /**
     * Show achivements
     */
    static function achievement_show(): Void;

    /**
     *
     */
    static function achievement_get(): Void;

    /**
     *
     *
     * @param eventId
     * @param amount
     */
    static function event_increment(eventId: String, amount: Int): Void;

    /**
     *
     */
    static function event_get(): Void;
}


@:multiReturn
extern class SnapshotGetDataReturnValues
{
    /** The byte array data of the currently opened snapshot. `nil` if something goes wrong. */
    var bytes: String;

    /** An error message if something goes wrong. */
    var error: String;
}


@:multiReturn
extern class SnapshotSetDataReturnValues
{
    /** True if data was set for the currently opened snapshot. */
    var success: Bool;

    /** An error message if something goes wrong. */
    var error: String;
}


@:multiReturn
extern class SnapshotGetConflictingDataReturnValues
{
    /** The byte array data of the conflicting snapshot.  `nil` if something goes wrong. */
    var bytes: String;

    /** An error message if something goes wrong. */
    var error: String;
}
