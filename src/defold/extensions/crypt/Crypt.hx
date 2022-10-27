package defold.extensions.crypt;

import haxe.io.Bytes;
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
    static function hash_sha1(buffer: String): Bytes;

    /**
     *
     *
     * @param buffer
     */
    static function hash_sha256(buffer: String): Bytes;

    /**
     *
     *
     * @param buffer
     */
    static function hash_sha512(buffer: String): Bytes;

    /**
     *
     *
     * @param buffer
     */
    static function hash_md5(buffer: String): Bytes;

    /**
     *
     *
     * @param input
     */
    static function encode_base64(input: String): String;

    /**
     *
     *
     * @param input
     */
    static function decode_base64(input: String): String;
}
