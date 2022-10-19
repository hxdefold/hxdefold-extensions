package defold.extensions.review;

import lua.Table.AnyTable;
import defold.types.*;


@:native("review")
extern class Review
{
    /**
     * Open native review/rating popup  
     */
    static function request_review(): Void;

    /**
     * Available only on iOS 10.3+. Android 5.0+ (API 21+) and the Google Play Store has to be installed.  
     */
    static function is_supported(): Void;
}
