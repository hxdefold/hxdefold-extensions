package defold.extensions.admob;


@:native("admob")
@:enum extern abstract Msg(Int)
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
