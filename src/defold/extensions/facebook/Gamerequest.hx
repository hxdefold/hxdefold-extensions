package defold.extensions.facebook;


@:native("facebook")
@:enum extern abstract Gamerequest(Int)
{
    /**
     * Game request action type "none" for "apprequests" dialog
     */
    var GAMEREQUEST_ACTIONTYPE_NONE;

    /**
     * Game request action type "send" for "apprequests" dialog
     */
    var GAMEREQUEST_ACTIONTYPE_SEND;

    /**
     * Game request action type "askfor" for "apprequests" dialog
     */
    var GAMEREQUEST_ACTIONTYPE_ASKFOR;

    /**
     * Game request action type "turn" for "apprequests" dialog
     */
    var GAMEREQUEST_ACTIONTYPE_TURN;

    /**
     * Game request filter type "none" for "apprequests" dialog
     */
    var GAMEREQUEST_FILTER_NONE;

    /**
     * Game request filter type "app_users" for "apprequests" dialog
     */
    var GAMEREQUEST_FILTER_APPUSERS;

    /**
     * Game request filter type "app_non_users" for "apprequests" dialog
     */
    var GAMEREQUEST_FILTER_APPNONUSERS;
}
