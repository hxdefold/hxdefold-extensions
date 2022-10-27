package defold.extensions.firebase;

import lua.Table.AnyTable;
import defold.types.*;


@:native("firebase")
extern class Firebase
{
    /**
     * Initialise Firebase
     */
    static function init(): FirebaseInitReturnValues;

    /**
     * Get the Firebase Installation auth token
     *
     * @param callback Function to invoke with the auth token (self, token)
     */
    static function get_installation_auth_token<T>(callback: (self: T, token: String)->Void): Void;
}


@:multiReturn
extern class FirebaseInitReturnValues
{
    var ok: Bool;
    var error: String;
}
