// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleWeaponLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "getProcedural_1", [jr.get_field(jr.call_static("ExplosionResources", "getInstance_0", []), "THIRD_EXPLOSION_RESOURCE")]), "getInstanceAnimation_1", [jr.call(jr.call_static("NullIndexedAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_remote_info, l_multi_player_type, l_movement, l_animation_interface, l_destroyed_animation_interface, l_rectangle, l_view_position] = jargs
    let l_multi_player_type = jr.as_i(l_multi_player_type)
        jr.super_init("WeaponLayer", this, [l_name, l_remote_info, l_multi_player_type, l_movement, l_animation_interface, l_destroyed_animation_interface, l_rectangle, l_view_position])
        c1_jfields(this)
        jr.call_inherited(this, "SimpleWeaponLayer", "setCollidableInferface_1", [jr.new("CollidableWeaponBehavior", [jr.JBool(True)])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleWeaponLayer",
        "org.allbinary.game.layer.weapon.SimpleWeaponLayer",
        "WeaponLayer",
        [],
        False,
        [],
        [],
        [
            jr.Method("createDestroyed_0", [], True, c1_m1__createdestroyed), 
            jr.Method("jinit_8", ["String", "RemoteInfo", "int", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

