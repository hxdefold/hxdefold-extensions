package defold.extensions.firebase.analytics;

import lua.Table.AnyTable;
import defold.types.*;


@:native("analytics")
extern class FirebaseAnalytics
{
    /**
     * Initialise analytics  
     */
    static function init(): Void;

    /**
     * Log an event with one string parameter. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/logevent) 
     * 
     * @param name Event name
     * @param PARAMeter_name Parameter name
     * @param PARAMeter_value Parameter value 
     */
    static function log_string(name: String, PARAMeter_name: String, PARAMeter_value: String): Void;

    /**
     * Log an event with one integer parameter. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/logevent_4) 
     * 
     * @param name Event name
     * @param PARAMeter_name Parameter name
     * @param PARAMeter_value Parameter value 
     */
    static function log_int(name: String, PARAMeter_name: String, PARAMeter_value: Int): Void;

    /**
     * Log an event with one float parameter. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/logevent_2) 
     * 
     * @param name Event name
     * @param PARAMeter_name Parameter name
     * @param PARAMeter_value Parameter value 
     */
    static function log_number(name: String, PARAMeter_name: String, PARAMeter_value: Int): Void;

    /**
     * Log an event with table parameters. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/logevent_6) 
     * 
     * @param name Event name
     * @param PARAMeters_table Table with parameters (key-value pairs) 
     */
    static function log_table(name: String, PARAMeters_table: AnyTable): Void;

    /**
     * DEPRECATED. Use log_string(analytics.EVENT_SCREENVIEW, "screen name", "screen class").  
     */
    static function set_screen(): Void;

    /**
     * Sets the user ID property. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/setuserid) 
     * 
     * @param user_id User ID property 
     */
    static function set_user_id(user_id: String): Void;

    /**
     * Set a user property to the given value. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/setuserproperty) 
     * 
     * @param name User property name
     * @param property User property value 
     */
    static function set_user_property(name: String, property: String): Void;

    /**
     * Clears all data for this app from the device and resets the app instance id. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/resetata)  
     */
    static function reset(): Void;

    /**
     * Get the instance ID from the service. (Official docs https://firebase.google.com/docs/reference/cpp/namespace/firebase/getnstanceid) 
     * 
     * @param callback Function to invoke with the id (self, id) 
     */
    static function get_id(callback: ()->Void): Void;
}
