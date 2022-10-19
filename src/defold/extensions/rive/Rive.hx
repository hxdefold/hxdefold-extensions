package defold.extensions.rive;

import lua.Table.AnyTable;
import defold.types.*;


@:native("rive")
extern class Rive
{
    /**
     * Plays the specified animation on a Rive model 
     * 
     * @param url The Rive model for which to play an animation
     * @param anim_id Id of the animation to play
     * @param playback Playback mode of the animation (from go.PLAYBACK_*)
     * @param options Playback options
     * @param complete_function function to call when the animation has completed 
     */
    static function play_anim<T>(url: Url, anim_id: Hash, playback: Int, options: AnyTable, complete_function: (self: T, message_id: Hash, animation_id: Hash, playback: Int, message: AnyTable, sender: Url)->Void): Void;

    /**
     * Plays the specified animation on a Rive model 
     * 
     * @param url The Rive model for which to play an animation
     * @param state_machine_id Id of the state machine to play
     * @param options Playback options 
     */
    static function play_state_machine(url: Url, state_machine_id: Hash, options: AnyTable): Void;

    /**
     * Cancels all running animations on a specified spine model component 
     * 
     * @param url The Rive model for which to cancel the animation 
     */
    static function cancel(url: Url): Void;

    /**
     * Returns the id of the game object that corresponds to a specified skeleton bone. 
     * 
     * @param url The Rive model to query
     * @param bone_id Id of the corresponding bone 
     */
    static function get_go(url: Url, bone_id: Hash): Void;
}
