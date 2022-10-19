package defold.extensions.siwa;


@:native("siwa")
@:enum extern abstract Status(Int)
{
    /**
     * The system hasn’t determined whether the user might be a real person.
     */
    var STATUS_UNKNOWN;

    /**
     * The system can’t determine this user’s status as a real person.
     */
    var STATUS_UNSUPPORTED;

    /**
     * The user appears to be a real person.
     */
    var STATUS_LIKELY_REAL;
}
