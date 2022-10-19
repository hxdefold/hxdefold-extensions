package defold.extensions.firebase;

import lua.Table.AnyTable;
import defold.types.*;


@:native("firebase")
extern class Firebase
{
    /**
     * Initialise Firebase  
     */
    static function init(): Void;

    /**
     * Get the Firebase Installation auth token 
     * 
     * @param callback Function to invoke with the auth token (self, token) 
     */
    static function get_installation_auth_token(callback: ()->Void): Void;
}
