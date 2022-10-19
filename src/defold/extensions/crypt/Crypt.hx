package defold.extensions.crypt;

import lua.Table.AnyTable;
import defold.types.*;


@:native("crypt")
extern class Crypt
{
    /**
     *  
     * 
     * @param buffer  
     */
    static function hash_sha1(buffer: UNKNOWN): Void;

    /**
     *  
     * 
     * @param buffer  
     */
    static function hash_sha256(buffer: UNKNOWN): Void;

    /**
     *  
     * 
     * @param buffer  
     */
    static function hash_sha512(buffer: UNKNOWN): Void;

    /**
     *  
     * 
     * @param buffer  
     */
    static function hash_md5(buffer: UNKNOWN): Void;

    /**
     *  
     * 
     * @param input  
     */
    static function encode_base64(input: UNKNOWN): Void;

    /**
     *  
     * 
     * @param input  
     */
    static function decode_base64(input: UNKNOWN): Void;
}
