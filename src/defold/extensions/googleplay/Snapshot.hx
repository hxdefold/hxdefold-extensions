package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Snapshot(Int)
{
    /**
     * The second parameter for 'gpgs.snapshot_resolve_conflict()' method, which means that you want to choose the current snapshot as a snapshot for conflict solving.
     */
    var SNAPSHOT_CURRENT;

    /**
     * The second parameter for 'gpgs.snapshot_resolve_conflict()' method, which means that you want to choose the conflicting snapshot as a snapshot for conflict solving.
     */
    var SNAPSHOT_CONFLICTING;
}
