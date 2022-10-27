package defold.extensions.firebase.remoteconfig;

import haxe.io.Bytes;
import lua.Table.AnyTable;
import defold.types.*;


@:native("remoteconfig")
extern class FirebaseRemoteConfig
{
    /**
     * Initialise Firebase Remote Config. Generates CONFIG_INITIALIZE or CONFIG_ERROR
     *
     * @param callback Function to call when a remote config event has happened
     */
    static function init<T>(callback: (self: T, event: FirebaseRemoteConfigEvent)->Void): Void;

    /**
     * Fetches config data from the server. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#fetch). Generates CONFIG_FETCHED or CONFIG_ERROR
     */
    static function fetch(): Void;

    /**
     * Asynchronously activates the most recently fetched configs, so that the fetched key value pairs take effect. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#activate). Generates CONFIG_ACTIVATED or CONFIG_ERROR
     */
    static function activate(): Void;

    /**
     * Asynchronously fetches and then activates the fetched configs. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#fetchandactivate). Generates CONFIG_FETCHED and CONFIG_ACTIVATED or CONFIG_ERROR
     */
    static function fetch_and_activate(): Void;

    /**
     * Returns the value associated with a key, converted to a bool. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#getboolean)
     *
     * @param key Key of the value to be retrieved
     */
    static function get_boolean(key: String): Bool;

    /**
     * Returns the value associated with a key, as a vector of raw byte-data. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#getdata)
     *
     * @param key Key of the value to be retrieved
     */
    static function get_data(key: String): Bytes;

    /**
     * Returns the value associated with a key, converted to a double. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#getdouble)
     *
     * @param key Key of the value to be retrieved
     */
    static function get_number(key: String): Float;

    /**
     * Returns the value associated with a key, converted to a string. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#getstring)
     *
     * @param key Key of the value to be retrieved
     */
    static function get_string(key: String): String;

    /**
     * Gets the set of all keys. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#getkeys)
     */
    static function get_keys(): Array<String>;

    /**
     * Sets the default values. (Official docs https://firebase.google.com/docs/reference/cpp/class/firebase/remote-config/remote-config#setdefaults)
     *
     * @param defaults Key-value pairs representing the default values. Generates CONFIG_DEFAULTS_SET or CONFIG_ERROR
     */
    static function set_defaults(defaults: Map<String, Dynamic>): Void;

    /**
     * Sets the minimum fetch interval. (Official docs https://firebase.google.com/docs/reference/cpp/struct/firebase/remote-config/config-settings)
     *
     * @param minimum_fetch_interval The minimum interval in milliseconds between successive fetch calls. Generates SETTINGS_UPDATED or SETTINGS_ERROR
     */
    static function set_minimum_fetch_interval(minimum_fetch_interval: Int): Void;
}
