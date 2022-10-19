package defold.extensions.push;


@:native("push")
@:enum extern abstract Priority(Int)
{
    /**
     * This priority is for items might not be shown to the user except under special circumstances, such as detailed notification logs. Only available on Android. [icon:android]
     */
    var PRIORITY_MIN;

    /**
     * Priority for items that are less important. Only available on Android. [icon:android]
     */
    var PRIORITY_LOW;

    /**
     * The default notification priority. Only available on Android. [icon:android]
     */
    var PRIORITY_DEFAULT;

    /**
     * Priority for more important notifications or alerts. Only available on Android. [icon:android]
     */
    var PRIORITY_HIGH;

    /**
     * Set this priority for your application's most important items that require the user's prompt attention or input. Only available on Android. [icon:android]
     */
    var PRIORITY_MAX;
}
