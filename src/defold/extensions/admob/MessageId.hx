package defold.extensions.admob;


@:native("admob")
@:enum extern abstract MessageId(Int)
{
    /**
     *
     */
    var MSG_INITIALIZATION;

    /**
     *
     */
    var MSG_INTERSTITIAL;

    /**
     *
     */
    var MSG_REWARDED;

    /**
     *
     */
    var MSG_BANNER;

    /**
     *
     */
    var MSG_IDFA;
}
