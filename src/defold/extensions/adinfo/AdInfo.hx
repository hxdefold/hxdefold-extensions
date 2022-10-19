package defold.extensions.adinfo;

import lua.Table.AnyTable;
import defold.types.*;


@:native("adinfo")
extern class AdInfo
{
    /**
     * Get a table with advertising information. [icon:attention] function returns nil if values do not ready  
     */
    static function get(): Void;
}
