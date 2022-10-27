package defold.extensions.iap;

import lua.Table.AnyTable;
import defold.types.*;


@:native("iap")
extern class Iap
{
    /**
     * Purchase a product.
     *
     * @param id product to buy
     * @param options optional parameters as properties. The following parameters can be set
     */
    static function buy(id: TransactionId, options: AnyTable): Void;

    /**
     * Explicitly finish a product transaction. [icon:attention] Calling iap.finish is required on a successful transaction if `auto_finish_transactions` is disabled in project settings. Calling this function with `auto_finish_transactions` set will be ignored and a warning is printed. The `transaction.state` field must equal `iap.TRANS_STATE_PURCHASED`.
     *
     * @param transaction transaction table parameter as supplied in listener callback
     */
    static function finish(transaction: Transaction): Void;

    /**
     * Acknowledge a transaction. [icon:attention] Calling iap.acknowledge is required on a successful transaction on Google Play unless iap.finish is called. The transaction.state field must equal iap.TRANS_STATE_PURCHASED.
     *
     * @param transaction transaction table parameter as supplied in listener callback
     */
    static function acknowledge(transaction: Transaction): Void;

    /**
     * Get current iap provider
     *
     * @return one of the following values
     * - `iap.PROVIDER_ID_GOOGLE`
     * - `iap.PROVIDER_ID_AMAZON`
     * - `iap.PROVIDER_ID_APPLE`
     * - `iap.PROVIDER_ID_FACEBOOK`
     */
    static function get_provider_id(): Provider;

    /**
     * Get a list of all avaliable iap products.
     *
     * @param ids table (array) of identifiers to get products from
     * @param callback result callback taking the following parameters
     */
    static function list<T>(ids: Array<TransactionId>, callback: (self: T, products: Array<Product>, error: TransactionError)->Void): Void;

    /**
     * Restore previously purchased products.
     *
     * @return value is `true` if current store supports handling restored transactions, otherwise `false`.
     */
    static function restore(): Bool;

    /**
     * Set the callback function to receive purchase transaction events.
     *
     * @param listener listener callback function. Pass an empty function if you no longer wish to receive callbacks.
     */
    static function set_listener<T>(listener: (self: T, transaction: Transaction, error: TransactionError)->Void): Void;
}
