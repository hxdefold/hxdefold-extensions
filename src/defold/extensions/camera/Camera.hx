package defold.extensions.camera;

import lua.Table.AnyTable;
import defold.types.*;


@:native("camera")
extern class Camera
{
    /**
     * Start camera capture using the specified camera (front/back) and capture quality. This may trigger a camera usage permission popup. When the popup has been dismissed the callback will be invoked with camera start status.  
     */
    static function start_capture(): Void;

    /**
     * Stops a previously started capture session.  
     */
    static function stop_capture(): Void;

    /**
     * Gets the info from the current capture session.  
     */
    static function get_info(): Void;

    /**
     * Get captured frame.  
     */
    static function get_frame(): Void;
}
