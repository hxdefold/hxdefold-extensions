package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Error(Int)
{
    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_NOT_FOUND) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_NOT_FOUND;

    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_CREATION_FAILED) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_CREATION_FAILED;

    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE;

    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_COMMIT_FAILED) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_COMMIT_FAILED;

    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_FOLDER_UNAVAILABLE) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_FOLDER_UNAVAILABLE;

    /**
     * This constant is used in `message.error_status` table when `MSG_LOAD_SNAPSHOT` is `STATUS_FAILED`. [Official GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/GamesStatusCodes.html#STATUS_SNAPSHOT_CONFLICT_MISSING) for this constant
     */
    var ERROR_STATUS_SNAPSHOT_CONFLICT_MISSING;
}
