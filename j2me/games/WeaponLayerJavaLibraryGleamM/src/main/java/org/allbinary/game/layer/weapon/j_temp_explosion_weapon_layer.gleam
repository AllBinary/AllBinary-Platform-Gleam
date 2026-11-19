// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TempExplosionWeaponLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "weaponProperties_TempExplosionWeaponLayer", jr.new("WeaponProperties", [jr.JLong(-1), jr.JLong(-1), jr.JInt(0), jr.JInt(1000), jr.to_s(jr.JInt(0))]))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.call(jr.call_inherited(this, "TempExplosionWeaponLayer", "getCollidableInferface_0", []), "collide_2", [this, this])
            jr.set_inherited(this, "TempExplosionWeaponLayer", "totalDamage", jr.add(jr.call_inherited(this, "TempExplosionWeaponLayer", "getInitDamage_0", []), jr.JInt(1)))
            Nil
        }
            False -> Nil
        }
        jr.call_super("SimpleWeaponLayer", this, "processTick_1", [l_all_binary_layer_manager])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_movement, l_animation_interface, l_rectangle, l_view_position, l_time_delay] = jargs
    let l_time_delay = jr.as_i(l_time_delay)
        jr.super_init("SimpleWeaponLayer", this, [l_name, jr.get_static("RemoteInfo", "REMOTE_INFO"), jr.JInt(-1), l_movement, l_animation_interface, jr.call_static("SimpleWeaponLayer", "createDestroyed_0", []), l_rectangle, l_view_position])
        c1_jfields(this)
        jr.set_field(jr.get_field(this, "timeDelayHelper"), "delay", jr.as_i(l_time_delay))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TempExplosionWeaponLayer",
        "org.allbinary.game.layer.weapon.TempExplosionWeaponLayer",
        "SimpleWeaponLayer",
        [],
        False,
        [#("weaponProperties_TempExplosionWeaponLayer", jr.JNull), #("timeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("processTick_1", ["AllBinaryLayerManager"], False, c1_m4__processtick), 
            jr.Method("jinit_6", ["String", "Movement", "Animation", "Rectangle", "ViewPositionBase", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

