package defold.extensions.iap;


@:native("iap")
@:enum extern abstract Provider(Int)
{
    /**
     * provider id for Amazon
     */
    var PROVIDER_ID_AMAZON;

    /**
     * provider id for Apple
     */
    var PROVIDER_ID_APPLE;

    /**
     * provider id for Facebook
     */
    var PROVIDER_ID_FACEBOOK;

    /**
     * iap provider id for Google
     */
    var PROVIDER_ID_GOOGLE;
}
