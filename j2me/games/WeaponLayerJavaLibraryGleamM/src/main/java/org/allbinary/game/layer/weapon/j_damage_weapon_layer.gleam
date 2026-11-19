// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DamageWeaponLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_remote_info, l_movement, l_animation_interface, l_destroyed_animation_interface, l_rectangle, l_view_position, l_username, l_actor_session_id, l_id, l_multi_player_type] = jargs
    let l_actor_session_id = jr.as_i(l_actor_session_id)
    let l_id = jr.as_i(l_id)
    let l_multi_player_type = jr.as_i(l_multi_player_type)
        jr.super_init("WeaponLayer", this, [l_name, l_remote_info, l_multi_player_type, l_movement, l_animation_interface, l_destroyed_animation_interface, l_rectangle, l_view_position])
        c1_jfields(this)
        jr.call_inherited(this, "DamageWeaponLayer", "setCollidableInferface_1", [jr.new("CollidableDamageWeaponBehavior", [jr.JBool(True)])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DamageWeaponLayer",
        "org.allbinary.game.layer.weapon.DamageWeaponLayer",
        "WeaponLayer",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_11", ["String", "RemoteInfo", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase", "String", "int", "int", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

