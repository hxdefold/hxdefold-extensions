package defold.extensions.safearea;


@:native("safearea")
@:enum extern abstract Status(Int)
{
    /**
     * 
     */
    var STATUS_OK;

    /**
     * 
     */
    var STATUS_NOT_AVAILABLE;

    /**
     * 
     */
    var STATUS_NOT_READY_YET;
}
