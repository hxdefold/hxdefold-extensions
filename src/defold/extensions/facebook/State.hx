package defold.extensions.facebook;


@:native("facebook")
@:enum extern abstract State(Int)
{
    /**
     * The Facebook login session is open
     */
    var STATE_OPEN;

    /**
     * The Facebook login session has closed because login failed
     */
    var STATE_CLOSED_LOGIN_FAILED;
}
