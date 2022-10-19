package defold.extensions.webview;


@:native("webview")
@:enum extern abstract Callback(Int)
{
    /**
     * 
     */
    var CALLBACK_RESULT_URL_OK;

    /**
     * 
     */
    var CALLBACK_RESULT_URL_ERROR;

    /**
     * 
     */
    var CALLBACK_RESULT_URL_LOADING;

    /**
     * 
     */
    var CALLBACK_RESULT_EVAL_OK;

    /**
     * 
     */
    var CALLBACK_RESULT_EVAL_ERROR;
}
