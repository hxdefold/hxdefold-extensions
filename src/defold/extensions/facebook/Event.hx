package defold.extensions.facebook;


@:native("facebook")
@:enum extern abstract Event(Int)
{
    /**
     * Log this event when the user has achieved a level
     */
    var EVENT_ACHIEVED_LEVEL;

    /**
     * Log this event when the user has entered their payment info
     */
    var EVENT_ADDED_PAYMENT_INFO;

    /**
     * Log this event when the user has added an item to their cart The value_to_sum passed to facebook.post_event should be the item's price.
     */
    var EVENT_ADDED_TO_CART;

    /**
     * Log this event when the user has added an item to their wish list The value_to_sum passed to facebook.post_event should be the item's price.
     */
    var EVENT_ADDED_TO_WISHLIST;

    /**
     * Log this event when a user has completed registration with the app
     */
    var EVENT_COMPLETED_REGISTRATION;

    /**
     * Log this event when the user has completed a tutorial in the app
     */
    var EVENT_COMPLETED_TUTORIAL;

    /**
     * Log this event when the user has entered the checkout process The value_to_sum passed to facebook.post_event should be the total price in the cart.
     */
    var EVENT_INITIATED_CHECKOUT;

    /**
     * Log this event when the user has completed a purchase. The value_to_sum passed to facebook.post_event should be the numeric rating.
     */
    var EVENT_PURCHASED;

    /**
     * Log this event when the user has rated an item in the app
     */
    var EVENT_RATED;

    /**
     * Log this event when a user has performed a search within the app
     */
    var EVENT_SEARCHED;

    /**
     * Log this event when the user has spent app credits The value_to_sum passed to facebook.post_event should be the number of credits spent.
     */
    var EVENT_SPENT_CREDITS;

    /**
     * Log this event when measuring the time between user sessions
     */
    var EVENT_TIME_BETWEEN_SESSIONS;

    /**
     * Log this event when the user has unlocked an achievement in the app
     */
    var EVENT_UNLOCKED_ACHIEVEMENT;

    /**
     * Log this event when a user has viewed a form of content in the app
     */
    var EVENT_VIEWED_CONTENT;
}
