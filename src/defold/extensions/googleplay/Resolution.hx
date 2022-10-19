package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Resolution(Int)
{
    /**
     * Official [GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/SnapshotsClient.html#RESOLUTION_POLICY_MANUAL) for this constant
     */
    var RESOLUTION_POLICY_MANUAL;

    /**
     * Official [GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/SnapshotsClient.html#RESOLUTION_POLICY_LONGEST_PLAYTIME) for this constant
     */
    var RESOLUTION_POLICY_LONGEST_PLAYTIME;

    /**
     * Official [GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/SnapshotsClient.html#RESOLUTION_POLICY_LAST_KNOWN_GOOD) for this constant
     */
    var RESOLUTION_POLICY_LAST_KNOWN_GOOD;

    /**
     * Official [GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/SnapshotsClient.html#RESOLUTION_POLICY_MOST_RECENTLY_MODIFIED) for this constant
     */
    var RESOLUTION_POLICY_MOST_RECENTLY_MODIFIED;

    /**
     * Official [GPGS documentation](https://developers.google.com/android/reference/com/google/android/gms/games/SnapshotsClient.html#RESOLUTION_POLICY_HIGHEST_PROGRESS) for this constant
     */
    var RESOLUTION_POLICY_HIGHEST_PROGRESS;
}
