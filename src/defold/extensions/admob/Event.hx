package defold.extensions.admob;


@:native("admob")
@:enum extern abstract Event(Int)
{
    /**
     * 
     */
    var EVENT_CLOSED;

    /**
     * 
     */
    var EVENT_FAILED_TO_SHOW;

    /**
     * 
     */
    var EVENT_OPENING;

    /**
     * 
     */
    var EVENT_FAILED_TO_LOAD;

    /**
     * 
     */
    var EVENT_LOADED;

    /**
     * 
     */
    var EVENT_NOT_LOADED;

    /**
     * 
     */
    var EVENT_EARNED_REWARD;

    /**
     * 
     */
    var EVENT_COMPLETE;

    /**
     * 
     */
    var EVENT_CLICKED;

    /**
     * 
     */
    var EVENT_DESTROYED;

    /**
     * 
     */
    var EVENT_JSON_ERROR;

    /**
     * 
     */
    var EVENT_IMPRESSION_RECORDED;

    /**
     * 
     */
    var EVENT_STATUS_AUTORIZED;

    /**
     * 
     */
    var EVENT_STATUS_DENIED;

    /**
     * 
     */
    var EVENT_STATUS_NOT_DETERMINED;

    /**
     * 
     */
    var EVENT_STATUS_RESTRICTED;

    /**
     * 
     */
    var EVENT_NOT_SUPPORTED;
}
