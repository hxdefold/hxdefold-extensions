package defold.extensions.facebook;

import lua.Table.AnyTable;
import defold.types.*;


@:native("facebook")
extern class Facebook
{
    /**
     * Login to Facebook and request a set of publish permissions.
     * The user is prompted to authorize the application using the login dialog of the specific platform. Even if the user is already logged in to Facebook this function can still be used to request additional publish permissions.
     * A comprehensive list of permissions can be found in the [Facebook permissions](https://developers.facebook.com/docs/facebook-login/permissions) documentation, as well as in their [guide to best practices for login management](https://developers.facebook.com/docs/facebook-login/best-practices). 
     * 
     * @param permissions table with the requested publish permission strings.
     * @param audience The audience that should be able to see the publications. Can be any of
     * - `facebook.AUDIENCE_NONE`
     * - `facebook.AUDIENCE_ONLYME`
     * - `facebook.AUDIENCE_FRIENDS`
     * - `facebook.AUDIENCE_EVERYONE`
     * @param callback Callback function that is executed when the permission request dialog is closed. 
     */
    static function login_with_permissions(permissions: UNKNOWN, audience: Audience, callback: UNKNOWN): Void;

    /**
     * Logout from Facebook  
     */
    static function logout(): Void;

    /**
     * Initialize Facebook SDK (if facebook.autoinit is 0 in game.project)  
     */
    static function init(): Void;

    /**
     * Get the current Facebook access token.
     * This function returns the currently stored access token after a previous successful login. If it returns nil no access token exists and you need to perform a login to get the wanted permissions.  
     * 
     * @return the access token or nil if the user is not logged in
     */
    static function access_token(): String;

    /**
     * Get the currently granted permissions.
     * This function returns a table with all the currently granted permission strings.  
     * 
     * @return The permissions
     */
    static function permissions(): AnyTable;

    /**
     * Post an event to Facebook Analytics
     * This function will post an event to Facebook Analytics where it can be used in the Facebook Insights system. 
     * 
     * @param event An event can either be one of the predefined constants below or a text string which can be used to define a custom event that is registered with Facebook Analytics.
     * - `facebook.EVENT_ACHIEVED_LEVEL` - `facebook.EVENT_ADDED_PAYMENT_INFO` - `facebook.EVENT_ADDED_TO_CART` - `facebook.EVENT_ADDED_TO_WISHLIST` - `facebook.EVENT_COMPLETED_REGISTRATION` - `facebook.EVENT_COMPLETED_TUTORIAL` - `facebook.EVENT_INITIATED_CHECKOUT` - `facebook.EVENT_PURCHASED` - `facebook.EVENT_RATED` - `facebook.EVENT_SEARCHED` - `facebook.EVENT_SPENT_CREDITS` - `facebook.EVENT_TIME_BETWEEN_SESSIONS` - `facebook.EVENT_UNLOCKED_ACHIEVEMENT` - `facebook.EVENT_VIEWED_CONTENT`
     * @param value A numeric value for the event. This should represent the value of the event, such as the level achieved, price for an item or number of orcs killed.
     * @param params Optional table with parameters and their values. A key in the table can either be one of the predefined constants below or a text which can be used to define a custom parameter.
     * - `facebook.PARAM_CONTENT_ID` - `facebook.PARAM_CONTENT_TYPE` - `facebook.PARAM_CURRENCY` - `facebook.PARAM_DESCRIPTION` - `facebook.PARAM_LEVEL` - `facebook.PARAM_MAX_RATING_VALUE` - `facebook.PARAM_NUM_ITEMS` - `facebook.PARAM_PAYMENT_INFO_AVAILABLE` - `facebook.PARAM_REGISTRATION_METHOD` - `facebook.PARAM_SEARCH_STRING` - `facebook.PARAM_SOURCE_APPLICATION` - `facebook.PARAM_SUCCESS` 
     */
    static function post_event(event: Event, value: UNKNOWN, params: Param): Void;

    /**
     * Enable event usage with Facebook Analytics This function will enable event usage for Facebook Analytics which means that Facebook will be able to use event data for ad-tracking.
     * [icon:attention] Event usage cannot be controlled and is always enabled for the Facebook Canvas platform, therefore this function has no effect on Facebook Canvas.  
     */
    static function enable_event_usage(): Void;

    /**
     * Disable event usage with Facebook Analytics This function will disable event usage for Facebook Analytics which means that Facebook won't be able to use event data for ad-tracking. Events will still be sent to Facebook for insights.
     * [icon:attention] Event usage cannot be controlled and is always enabled for the Facebook Canvas platform, therefore this function has no effect on Facebook Canvas.  
     */
    static function disable_event_usage(): Void;

    /**
     * Enable advertiser tracking This function will set AdvertiserTrackingEnabled (the 'ATE' flag) to true on iOS, to inform Audience Network to use the data to deliver personalized ads for users on iOS 14 and above.  
     */
    static function enable_advertiser_tracking(): Void;

    /**
     * Disable advertiser tracking This function will set AdvertiserTrackingEnabled (the 'ATE' flag) to false on iOS, to inform Audience Network not to use the data to deliver personalized ads for users on iOS 14 and above.  
     */
    static function disable_advertiser_tracking(): Void;

    /**
     * Show facebook web dialog
     * Display a Facebook web dialog of the type specified in the `dialog` parameter.
     * 
     * The `param` table should be set up according to the requirements of each dialog type. Note that some parameters are mandatory. Below is the list of available dialogs and where to find Facebook's developer documentation on parameters and response data.
     * 
     * `"apprequests"`
     * Shows a Game Request dialog. Game Requests allows players to invite their friends to play a game. Available parameters
     * - [type:string] `title`
     * - [type:string] `message`
     * - [type:number] `action_type`
     * - [type:number] `filters`
     * - [type:string] `data`
     * - [type:string] `object_id`
     * - [type:table] `suggestions`
     * - [type:table] `recipients`
     * - [type:string] `to`
     * 
     * 
     * On success, the "result" table parameter passed to the callback function will include the following fields
     * - [type:string] `request_id`
     * - [type:table] `to`
     * 
     * [Details for each parameter](https://developers.facebook.com/docs/games/services/gamerequests/v2.6#dialogparameters)
     * 
     * `"feed"`
     * The Feed Dialog allows people to publish individual stories to their timeline.
     * 
     * - [type:string] `caption`
     * - [type:string] `description`
     * - [type:string] `picture`
     * - [type:string] `link`
     * - [type:table] `people_ids`
     * - [type:string] `place_id`
     * - [type:string] `ref`
     * 
     * 
     * On success, the "result" table parameter passed to the callback function will include the following fields
     * - [type:string] `post_id`
     * 
     * [Details for each parameter](https://developers.facebook.com/docs/sharing/reference/feed-dialog/v2.6#params)
     * 
     * `"appinvite"`
     * The App Invite dialog is available only on iOS and Android. Note that the `url` parameter corresponds to the appLinkURL (iOS) and setAppLinkUrl (Android) properties.
     * - [type:string] `url`
     * - [type:string] `preview_image`
     * [Details for each parameter](https://developers.facebook.com/docs/reference/ios/current/class/FBSDKAppInviteContent) 
     * 
     * @param dialog Dialog to show
     * - `"apprequests"`
     * - `"feed"`
     * - `"appinvite"`
     * @param param table with dialog parameters
     * @param callback Callback function that is called when the dialog is closed. 
     */
    static function show_dialog(dialog: UNKNOWN, param: UNKNOWN, callback: UNKNOWN): Void;

    /**
     * Get the version of the Facebook SDK used by the extension.  
     * 
     * @return The Facebook SDK version
     */
    static function get_version(): String;

    /**
     * Allows receiving deferred deep link URL and parameters.
     * [More info about Referred Deep Links](https://developers.facebook.com/docs/app-ads/deep-linking/) 
     * 
     * @param callback Callback function that is called when information is ready. 
     */
    static function deferred_deep_link(callback: UNKNOWN): Void;
}
