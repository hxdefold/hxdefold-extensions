package defold.extensions.push;

import lua.Table.AnyTable;
import defold.types.*;


@:native("push")
extern class Push
{
    /**
     * Send a request for push notifications. Note that the notifications table parameter is iOS only and will be ignored on Android. 
     * 
     * @param notifications The types of notifications to listen to. [icon:ios]
     * @param callback Register callback function. 
     */
    static function register<T>(notifications: AnyTable, callback: (self: T, token: String, error: AnyTable)->Void): Void;

    /**
     * Sets a listener function to listen to push notifications. 
     * 
     * @param listener Listener callback function. 
     */
    static function set_listener<T>(listener: (self: T, payload: AnyTable, origin: Int, activated: Bool)->Void): Void;

    /**
     * Set the badge count for application icon. This function is only available on iOS. [icon:ios] 
     * 
     * @param count Badge count 
     */
    static function set_badge_count(count: Int): Void;

    /**
     * Local push notifications are scheduled with this function.
     * The returned `id` value is uniquely identifying the scheduled notification and can be stored for later reference. 
     * 
     * @param time Number of seconds into the future until the notification should be triggered.
     * @param title Localized title to be displayed to the user if the application is not running.
     * @param alert Localized body message of the notification to be displayed to the user if the application is not running.
     * @param payload JSON string to be passed to the registered listener function.
     * @param notification_settings Table with notification and platform specific fields 
     * @return Unique id that can be used to cancel or inspect the notification
     */
    static function schedule(time: Int, title: String, alert: String, payload: String, notification_settings: AnyTable): Int;

    /**
     * Use this function to cancel a previously scheduled local push notification.
     * The notification is identified by a numeric id as returned by `push.schedule()`. 
     * 
     * @param id The numeric id of the local push notification 
     */
    static function cancel(id: Int): Void;

    /**
     * Use this function to cancel a previously issued local push notifications.  
     */
    static function cancel_all_issued(): Void;

    /**
     * Returns a table with all data associated with a specified local push notification.
     * The notification is identified by a numeric id as returned by `push.schedule()`. 
     * 
     * @param id The numeric id of the local push notification. 
     * @return Table with all data associated with the notification.
     */
    static function get_scheduled(id: Int): AnyTable;

    /**
     * Returns a table with all data associated with all scheduled local push notifications.
     * The table contains key, value pairs where the key is the push notification id and the value is a table with the notification data, corresponding to the data given by `push.get_scheduled(id)`.  
     * 
     * @return Table with all data associated with all scheduled notifications.
     */
    static function get_all_scheduled(): AnyTable;
}
