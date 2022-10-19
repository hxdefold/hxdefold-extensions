package defold.extensions.siwa;


@:native("siwa")
@:enum extern abstract State(Int)
{
    /**
     * The user can’t be found.
     */
    var STATE_NOT_FOUND;

    /**
     * Unknown credential state.
     */
    var STATE_UNKNOWN;

    /**
     * The user is authorized.
     */
    var STATE_AUTHORIZED;

    /**
     * Authorization for the given user has been revoked.
     */
    var STATE_REVOKED;
}
