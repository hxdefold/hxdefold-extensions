package defold.extensions.firebase.remoteconfig;


@:native("remoteconfig")
@:enum extern abstract Remoteconfig.settings(Int)
{
    /**
     * Event generated when remote config settings have been updated
     */
    var remoteconfig.SETTINGS_UPDATED;

    /**
     * Event generated when an error occurred during updating settings
     */
    var remoteconfig.SETTINGS_ERROR;
}
