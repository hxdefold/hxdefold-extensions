package defold.extensions.adinfo;

import lua.Table.AnyTable;
import defold.types.*;


/**
 * Retrieve an advertising identifier for a device or user. Advertisers use this to id so they can deliver customized advertising.
 * The id is used for tracking and identifying a user (without revealing personal information).
 * On iOS this extension also supports the App Tracking Transparency framework.
 */
@:native("adinfo")
extern class AdInfo
{
    /**
     * Get a table with advertising information. [icon:attention] function returns nil if values do not ready
     */
    static function get<T>(callback: (self: T, info: Info)->Void): Void;
}
