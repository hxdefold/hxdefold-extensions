package defold.extensions.iap;


@:native("iap")
@:enum extern abstract TransactionState(Int)
{
    /**
     * transaction failed state
     */
    var TRANS_STATE_FAILED;

    /**
     * transaction purchased state
     */
    var TRANS_STATE_PURCHASED;

    /**
     * transaction purchasing state This is an intermediate mode followed by TRANS_STATE_PURCHASED. Store provider support dependent.
     */
    var TRANS_STATE_PURCHASING;

    /**
     * transaction restored state This is only available on store providers supporting restoring purchases.
     */
    var TRANS_STATE_RESTORED;

    /**
     * transaction unverified state, requires verification of purchase
     */
    var TRANS_STATE_UNVERIFIED;
}
