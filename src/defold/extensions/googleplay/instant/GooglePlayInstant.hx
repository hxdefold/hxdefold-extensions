package defold.extensions.googleplay.instant;

import lua.Table.AnyTable;
import defold.types.*;


@:native("instantapp")
extern class GooglePlayInstant
{
    /**
     * Shows a dialog that allows the user to install the current instant app.  
     */
    static function show_install_prompt(): Void;

    /**
     * Checks if application loaded as instant experience.  
     * 
     * @return Returns true if this application is an instant app.
     */
    static function is_instant_app(): Bool;

    /**
     * Gets the maximum size in bytes of the cookie data an instant app can store on the device.  
     * 
     * @return The maximum size in bytes of the cookie data an instant app can store on the device.
     */
    static function get_cookie_max_size(): Int;

    /**
     * Load byte array from cookies that were saved in instant application.  
     * 
     * @return The byte array data of cookies saved in instant application.
     */
    static function get_cookie(): String;

    /**
     * Save byte array in cookies to be able get access to this data in installable application. 
     * 
     * @param bytes The byte array data will be saved in cookies for access in installable application. 
     */
    static function set_cookie(bytes: String): Void;
}
