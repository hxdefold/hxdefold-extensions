package defold.extensions.webview;

import lua.Table.AnyTable;
import defold.types.*;


@:native("webview")
extern class WebView
{
    /**
     * Creates a webview instance. It can show HTML pages as well as evaluate Javascript. The view remains hidden until the first call. There can exist a maximum of 4 webviews at the same time.
     * On iOS, the callback will never get a `webview.CALLBACK_RESULT_EVAL_ERROR`, due to the iOS SDK implementation." 
     * 
     * @param callback A callback which receives info about finished requests taking the following parameters: 
     */
    static function create(callback: UNKNOWN): Void;

    /**
     * Destroys an instance of a webview. 
     * 
     * @param webview_id The webview id (returned by the `webview.create()` call) 
     */
    static function destroy(webview_id: UNKNOWN): Void;

    /**
     * Opens a web page in the webview, using HTML data. Once the request is done, the callback (registered in `webview.create()`) is invoked. 
     * 
     * @param webview_id The webview id
     * @param html The HTML data to display
     * @param options A table of options for the request. See `webview.open()` 
     */
    static function open_raw(webview_id: UNKNOWN, html: UNKNOWN, options: UNKNOWN): Void;

    /**
     * Evaluates JavaScript within the context of the currently loaded page (if any). Once the request is done, the callback (registered in `webview.create()`) is invoked. The callback will get the result in the `data["result"]` field. 
     * 
     * @param webview_id The webview id
     * @param code The JavaScript code to evaluate 
     */
    static function eval(webview_id: UNKNOWN, code: UNKNOWN): Void;

    /**
     * Shows or hides a webview 
     * 
     * @param webview_id The webview id
     * @param visible If `0`, hides the webview. If non zero, shows the view 
     */
    static function set_visible(webview_id: UNKNOWN, visible: UNKNOWN): Void;

    /**
     * Returns the visibility state of the webview. 
     * 
     * @param webview_id The webview id 
     */
    static function is_visible(webview_id: UNKNOWN): Void;

    /**
     * Sets the position and size of the webview 
     * 
     * @param webview_id The webview id
     * @param x The x position of the webview
     * @param y The y position of the webview
     * @param width The width of the webview (-1 to match screen width)
     * @param height The height of the webview (-1 to match screen height) 
     */
    static function set_position(webview_id: UNKNOWN, x: UNKNOWN, y: UNKNOWN, width: UNKNOWN, height: UNKNOWN): Void;
}
