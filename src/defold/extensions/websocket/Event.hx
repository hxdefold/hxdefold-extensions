package defold.extensions.websocket;


@:native("websocket")
@:enum extern abstract Event(Int)
{
    /**
     * The websocket was connected
     */
    var EVENT_CONNECTED;

    /**
     * The websocket disconnected
     */
    var EVENT_DISCONNECTED;

    /**
     * The websocket received data
     */
    var EVENT_MESSAGE;

    /**
     * The websocket encountered an error
     */
    var EVENT_ERROR;
}
