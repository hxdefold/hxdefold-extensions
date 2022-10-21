package defold.extensions.siwa;

import lua.Table.AnyTable;
import defold.types.*;
import defold.extensions.siwa.AuthenticateData;


@:native("siwa")
extern class Siwa
{
    /**
     * Check if Sign in with Apple is available (iOS 13+).
     */
    static function is_supported(): Bool;

    /**
     * Get the credential state of a user.
     *
     * @param user_id User id to get credential state for.
     * @param callback Credential state callback function.
     */
    static function get_credential_state<T>(user_id: UserId, callback: (self: T, data: CredentialStateData)->Void): Void;

    /**
     * Show the Sign in with Apple UI
     *
     * @param callback Authentication callback function.
     */
    static function authenticate<T>(callback: (self: T, data: AuthenticateData)->Void): Void;
}
