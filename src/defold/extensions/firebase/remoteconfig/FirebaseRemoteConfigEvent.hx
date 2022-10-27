package defold.extensions.firebase.remoteconfig;


@:native("firebase.remoteconfig")
@:enum extern abstract FirebaseRemoteConfigEvent(Int)
{
    /**
     * Event generated when remote config has been initialized and is ready for use
     */
    var CONFIG_INITIALIZED;

    /**
     * Event generated when an error occurred.
     */
    var CONFIG_ERROR;

    /**
     * Event generated when the default values have been set
     */
    var CONFIG_DEFAULTS_SET;

    /**
     * Event generated when the remote config has been fetched
     */
    var CONFIG_FETCHED;

    /**
     * Event generated when the remote config has been activated
     */
    var CONFIG_ACTIVATED;

    /**
     * Event generated when remote config settings have been updated
     */
    var SETTINGS_UPDATED;

    /**
     * Event generated when an error occurred during updating settings
     */
    var SETTINGS_ERROR;
}
