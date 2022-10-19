package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Status(Int)
{
    /**
     * An operation success.
     */
    var STATUS_SUCCESS;

    /**
     * An operation failed. Check the error field in the massage table.
     */
    var STATUS_FAILED;

    /**
     * A user wants to create new save as a result of `gpgs.snapshot_display_saves()` method. Turn off this button in `gpgs.snapshot_display_saves()` if you don't want to have this functionality.
     */
    var STATUS_CREATE_NEW_SAVE;

    /**
     * The result of the calling `gpgs.snapshot_open()` or 'gpgs.snapshot_resolve_conflict()' is a conflict. You need to make decision on how to solve this conflict using 'gpgs.snapshot_resolve_conflict()'.
     */
    var STATUS_CONFLICT;
}
