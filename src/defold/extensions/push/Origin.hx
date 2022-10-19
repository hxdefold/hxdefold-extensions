package defold.extensions.push;


@:native("push")
@:enum extern abstract Origin(Int)
{
    /**
     * Local push origin.
     */
    var ORIGIN_LOCAL;

    /**
     * Remote push origin.
     */
    var ORIGIN_REMOTE;
}
