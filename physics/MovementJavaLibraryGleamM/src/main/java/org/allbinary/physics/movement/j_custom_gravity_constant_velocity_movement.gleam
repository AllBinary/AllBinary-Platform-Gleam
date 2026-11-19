// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomGravityConstantVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gravityUtil", jr.call_static("GravityUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        jr.call_super("BasicConstantVelocityMovement", this, "process_1", [l_layer])
        jr.call(jr.get_field(this, "gravityUtil"), "process_2", [jr.call_inherited(this, "CustomGravityConstantVelocityMovement", "getVelocityProperties_0", []), jr.get_field(this, "customGravity")])
        let l_velocity_properties = jr.call_inherited(this, "CustomGravityConstantVelocityMovement", "getVelocityProperties_0", [])
        jr.call(l_velocity_properties, "limitMaxYForwardVelocity_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal, l_custom_gravity] = jargs
    let l_custom_gravity = jr.as_i(l_custom_gravity)
        jr.super_init("BasicConstantVelocityMovement", this, [l_speed_basic_decimal, jr.new("VelocityProperties", [jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", [])), jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", []))])])
        c1_jfields(this)
        jr.set_field(this, "customGravity", jr.as_i(l_custom_gravity))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomGravityConstantVelocityMovement",
        "org.allbinary.physics.movement.CustomGravityConstantVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [#("customGravity", jr.JInt(0)), #("gravityUtil", jr.JNull)],
        [],
        [
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m4__process), 
            jr.Method("jinit_2", ["BasicDecimal", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

