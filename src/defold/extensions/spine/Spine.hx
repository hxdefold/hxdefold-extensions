package defold.extensions.spine;

import lua.Table.AnyTable;
import defold.types.*;


@:native("spine")
extern class Spine
{
    /**
     * Plays the specified animation on a Spine model. A [ref:spine_animation_done] message is sent to the callback (or message handler). Any spine events will also be handled in the same way. [icon:attention] The callback is not called (or message sent) if the animation is cancelled with [ref:spine.cancel]. The callback is called (or message sent) only for animations that play with the following playback modes * `go.PLAYBACK_ONCE_FORWARD` * `go.PLAYBACK_ONCE_BACKWARD` * `go.PLAYBACK_ONCE_PINGPONG`
     *
     * @param url The Spine model for which to play an animation
     * @param anim_id Id of the animation to play
     * @param playback Playback mode of the animation (from go.PLAYBACK_*)
     * @param options Playback options
     * @param callback_function function to call when the animation has completed or a Spine event occured
     */
    static function play_anim<T>(url: HashOrStringOrUrl, anim_id: Hash, playback: Int, options: AnyTable, callback_function: (self: T, message_id: Hash, animation_id: Hash, track: Int, playback: Int, event_id: Hash, t: Float, integer: Int, float: Float, string: Hash, message: AnyTable, sender: Url)->Void): Void;

    /**
     * Cancels all running animations on a specified spine model component
     *
     * @param url The Spine model for which to cancel the animation
     * @param options Cancel options
     */
    static function cancel(url: HashOrStringOrUrl, options: AnyTable): Void;

    /**
     * Returns the id of the game object that corresponds to a specified skeleton bone.
     *
     * @param url The Spine model to query
     * @param bone_id Id of the corresponding bone
     */
    static function get_go(url: HashOrStringOrUrl, bone_id: Hash): Hash;

    /**
     * Sets the spine skin on a spine model.
     *
     * @param url The Spine model to query
     * @param skin Id of the corresponding skin
     */
    static function set_skin(url: HashOrStringOrUrl, skin: HashOrString): Void;

    /**
     * Set the attachment of a lot on a spine model.
     *
     * @param url The Spine model to query
     * @param slot Id of the slot
     * @param attachment Id of the attachment
     */
    static function set_attachment(url: HashOrStringOrUrl, slot: HashOrString, attachment: HashOrString): Void;

    /**
     * Resets a shader constant for a spine model component. (Previously set with `go.set()`)
     *
     * @param url The Spine model to query
     * @param constant name of the constant
     */
    static function reset_constant(url: HashOrStringOrUrl, constant: HashOrString): Void;

    /**
     * reset the IK constraint target position to default of a spinemodel.
     *
     * @param url The Spine model
     * @param ik_constraint_id id of the corresponding IK constraint
     */
    static function reset_ik_target(url: HashOrStringOrUrl, ik_constraint_id: HashOrString): Void;

    /**
     * set the target position of an IK constraint object.
     *
     * @param url The Spine model
     * @param ik_constraint_id id of the corresponding IK constraint
     * @param position target position
     */
    static function set_ik_target_position(url: HashOrStringOrUrl, ik_constraint_id: HashOrString, position: Vector3): Void;

    /**
     * set the IK constraint object target position to follow position.
     *
     * @param url The Spine model to query
     * @param ik_constraint_id id of the corresponding IK constraint
     * @param target_url target game object
     */
    static function set_ik_target(url: HashOrStringOrUrl, ik_constraint_id: HashOrString, target_url: HashOrStringOrUrl): Void;
}
