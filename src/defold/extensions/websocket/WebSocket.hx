package defold.extensions.websocket;

import lua.Table.AnyTable;
import defold.types.*;


@:native("websocket")
extern class WebSocket
{
    /**
     * Connects to a remote address
     *
     * @param url url of the remote connection
     * @param params optional parameters as properties. The following parameters can be set
     * @param callback callback that receives all messages from the connection
     * @return the connection
     */
    static function connect<T>(url: String, params: AnyTable, callback: (self: T, connection: WebSocket, data: MessageData)->Void): WebSocket;

    /**
     * Explicitly close a websocket
     *
     * @param connection the websocket connection
     */
    static function disconnect(connection: WebSocket): Void;

    /**
     * Send data on a websocket
     *
     * @param connection the websocket connection
     * @param message the message to send
     * @param options options for this particular message. May be `nil`
     */
    static function send(connection: WebSocket, message: String, ?options: AnyTable): Void;
}
