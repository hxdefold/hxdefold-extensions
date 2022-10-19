package defold.extensions.push;


@:native("push")
@:enum extern abstract Notification(Int)
{
    /**
     * Badge notification type.
     */
    var NOTIFICATION_BADGE;

    /**
     * Sound notification type.
     */
    var NOTIFICATION_SOUND;

    /**
     * Alert notification type.
     */
    var NOTIFICATION_ALERT;
}
