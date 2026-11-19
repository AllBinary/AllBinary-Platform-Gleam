// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogControllerHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SCALE_VALUE", jr.as_i(jr.get_field(jr.call_static("AnalogControllerConfigurationFactory", "getInstance_0", []), "SCALE_VALUE")))
    jr.set_field(this, "rightTimeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "leftTimeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "downTimeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "upTimeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__right(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
        jr.set_field(jr.get_field(this, "rightTimeElapsedHelper"), "delay", jr.as_i(jr.shr(jr.sub(jr.get_field(this, "SCALE_VALUE"), l_x_analog_value), jr.get_field(this, "reduceTimeFactor"))))
        case jr.truth(jr.call(jr.get_field(this, "rightTimeElapsedHelper"), "isTimeTNT_0", [])) {
            True -> {
            jr.call(l_collidable_destroyable_damageable_layer, "right_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__left(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
        jr.set_field(jr.get_field(this, "leftTimeElapsedHelper"), "delay", jr.as_i(jr.shr(jr.add(jr.get_field(this, "SCALE_VALUE"), l_x_analog_value), jr.get_field(this, "reduceTimeFactor"))))
        case jr.truth(jr.call(jr.get_field(this, "leftTimeElapsedHelper"), "isTimeTNT_0", [])) {
            True -> {
            jr.call(l_collidable_destroyable_damageable_layer, "left_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__up(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
        jr.set_field(jr.get_field(this, "upTimeElapsedHelper"), "delay", jr.as_i(jr.shr(jr.sub(jr.get_field(this, "SCALE_VALUE"), l_x_analog_value), jr.get_field(this, "reduceTimeFactor"))))
        case jr.truth(jr.call(jr.get_field(this, "upTimeElapsedHelper"), "isTimeTNT_0", [])) {
            True -> {
            jr.call(l_collidable_destroyable_damageable_layer, "up_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__down(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
        jr.set_field(jr.get_field(this, "downTimeElapsedHelper"), "delay", jr.as_i(jr.shr(jr.add(jr.get_field(this, "SCALE_VALUE"), l_x_analog_value), jr.get_field(this, "reduceTimeFactor"))))
        case jr.truth(jr.call(jr.get_field(this, "downTimeElapsedHelper"), "isTimeTNT_0", [])) {
            True -> {
            jr.call(l_collidable_destroyable_damageable_layer, "down_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_reduce_time_factor] = jargs
    let l_reduce_time_factor = jr.as_i(l_reduce_time_factor)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "reduceTimeFactor", jr.as_i(l_reduce_time_factor))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogControllerHelper",
        "org.allbinary.android.input.motion.AnalogControllerHelper",
        "Object",
        [],
        False,
        [#("reduceTimeFactor", jr.JInt(0)), #("SCALE_VALUE", jr.JInt(0)), #("rightTimeElapsedHelper", jr.JNull), #("leftTimeElapsedHelper", jr.JNull), #("downTimeElapsedHelper", jr.JNull), #("upTimeElapsedHelper", jr.JNull)],
        [],
        [
            jr.Method("right_2", ["CollidableDestroyableDamageableLayer", "int"], False, c1_m8__right), 
            jr.Method("left_2", ["CollidableDestroyableDamageableLayer", "int"], False, c1_m9__left), 
            jr.Method("up_2", ["CollidableDestroyableDamageableLayer", "int"], False, c1_m10__up), 
            jr.Method("down_2", ["CollidableDestroyableDamageableLayer", "int"], False, c1_m11__down), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

