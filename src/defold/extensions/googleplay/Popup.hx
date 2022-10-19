package defold.extensions.googleplay;


@:native("gpgs")
@:enum extern abstract Popup(Int)
{
    /**
     * The login popup position at the top-left corner.
     */
    var POPUP_POS_TOP_LEFT;

    /**
     * The login popup position at the top-center.
     */
    var POPUP_POS_TOP_CENTER;

    /**
     * The login popup position at the top-right corner.
     */
    var POPUP_POS_TOP_RIGHT;

    /**
     * The login popup position at the center-left.
     */
    var POPUP_POS_CENTER_LEFT;

    /**
     * The login popup position at the center of the screen.
     */
    var POPUP_POS_CENTER;

    /**
     * The login popup position at the center-right.
     */
    var POPUP_POS_CENTER_RIGHT;

    /**
     * The login popup position at the bottom-left corner.
     */
    var POPUP_POS_BOTTOM_LEFT;

    /**
     * The login popup position at the bottom-centre.
     */
    var POPUP_POS_BOTTOM_CENTER;

    /**
     * The login popup position at the bottom-right corner.
     */
    var POPUP_POS_BOTTOM_RIGHT;
}
