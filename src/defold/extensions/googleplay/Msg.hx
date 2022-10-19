package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Msg(Int)
{
    /**
     * The message type that GPGS sends when finishing the asynchronous operation after calling `gpgs.login()`
     */
    var MSG_SIGN_IN;

    /**
     * The message type that GPGS sends when finishing the asynchronous operation after calling `gpgs.silent_login()`
     */
    var MSG_SILENT_SIGN_IN;

    /**
     * The message type that GPGS sends when finishing the asynchronous operation after calling `gpgs.logout()`
     */
    var MSG_SIGN_OUT;

    /**
     * The message type that GPGS sends when finishing the asynchronous operation after calling `gpgs.snapshot_display_saves()`
     */
    var MSG_SHOW_SNAPSHOTS;

    /**
     * The message type that GPGS sends when finishing the asynchronous operation after calling `gpgs.snapshot_open()`
     */
    var MSG_LOAD_SNAPSHOT;
}
