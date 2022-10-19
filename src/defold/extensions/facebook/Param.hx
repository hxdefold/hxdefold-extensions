package defold.extensions.facebook;


@:native("facebook")
@:enum extern abstract Param(Int)
{
    /**
     * Parameter key used to specify an ID for the content being logged about
     * The parameter key could be an EAN, article identifier, etc., depending on the nature of the app.
     */
    var PARAM_CONTENT_ID;

    /**
     * Parameter key used to specify a generic content type/family for the logged event
     * The key is an arbitrary type/family (e.g. "music", "photo", "video") depending on the nature of the app.
     */
    var PARAM_CONTENT_TYPE;

    /**
     * Parameter key used to specify currency used with logged event
     * Use a currency value key, e.g. "USD", "EUR", "GBP" etc. See See ISO-4217 for specific values.
     */
    var PARAM_CURRENCY;

    /**
     * Parameter key used to specify a description appropriate to the event being logged
     * Use this for app specific event description, for instance the name of the achievement unlocked in the facebook.EVENT_UNLOCKED_ACHIEVEMENT event.
     */
    var PARAM_DESCRIPTION;

    /**
     * Parameter key used to specify the level achieved
     */
    var PARAM_LEVEL;

    /**
     * Parameter key used to specify the maximum rating available
     * Set to specify the max rating available for the facebook.EVENT_RATED event. E.g., "5" or "10".
     */
    var PARAM_MAX_RATING_VALUE;

    /**
     * Parameter key used to specify how many items are being processed
     * Set to specify the number of items being processed for an facebook.EVENT_INITIATED_CHECKOUT or facebook.EVENT_PURCHASED event.
     */
    var PARAM_NUM_ITEMS;

    /**
     * Parameter key used to specify whether payment info is available
     * Set to specify if payment info is available for the facebook.EVENT_INITIATED_CHECKOUT event.
     */
    var PARAM_PAYMENT_INFO_AVAILABLE;

    /**
     * Parameter key used to specify method user has used to register for the app
     * Set to specify what registation method a user used for the app, e.g. "Facebook", "email", "Twitter", etc.
     */
    var PARAM_REGISTRATION_METHOD;

    /**
     * Parameter key used to specify user search string
     * Set this to the the string that the user provided for a search operation.
     */
    var PARAM_SEARCH_STRING;

    /**
     * Parameter key used to specify source application package
     */
    var PARAM_SOURCE_APPLICATION;

    /**
     * Parameter key used to specify activity success
     * Set this key to indicate whether the activity being logged about was successful or not.
     */
    var PARAM_SUCCESS;
}
