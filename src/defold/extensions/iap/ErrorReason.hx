package defold.extensions.iap;


@:native("iap")
@:enum extern abstract ErrorReason(Int)
{
    /**
     * unspecified error reason
     */
    var REASON_UNSPECIFIED;

    /**
     * user canceled reason
     */
    var REASON_USER_CANCELED;
}
