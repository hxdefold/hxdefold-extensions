package defold.extensions.firebase.remoteconfig;


@:native("remoteconfig")
@:enum extern abstract Remoteconfig.config(Int)
{
    /**
     * Event generated when remote config has been initialized and is ready for use
     */
    var remoteconfig.CONFIG_INITIALIZED;

    /**
     * Event generated when an error occurred.
     */
    var remoteconfig.CONFIG_ERROR;

    /**
     * Event generated when the default values have been set
     */
    var remoteconfig.CONFIG_DEFAULTS_SET;

    /**
     * Event generated when the remote config has been fetched
     */
    var remoteconfig.CONFIG_FETCHED;

    /**
     * Event generated when the remote config has been activated
     */
    var remoteconfig.CONFIG_ACTIVATED;
}
