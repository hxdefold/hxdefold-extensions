package defold.extensions.safearea;

import lua.Table.AnyTable;
import defold.types.*;


@:native("safearea")
extern class SafeArea
{
    /**
     * returns table with top, left, right, bottom values of insets and status  
     */
    static function get_insets(): AnyTable;
}
