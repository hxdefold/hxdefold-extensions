package defold.extensions.facebook;


@:native("facebook")
@:enum extern abstract Audience(Int)
{
    /**
     * Publish permission to reach no audience
     */
    var AUDIENCE_NONE;

    /**
     * Publish permission to reach only me (private to current user)
     */
    var AUDIENCE_ONLYME;

    /**
     * Publish permission to reach user friends
     */
    var AUDIENCE_FRIENDS;

    /**
     * Publish permission to reach everyone
     */
    var AUDIENCE_EVERYONE;
}
