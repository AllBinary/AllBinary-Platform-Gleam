// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleGravityVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gravityUtil", jr.call_static("GravityUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        jr.call(jr.get_field(this, "gravityUtil"), "process_2", [jr.call_inherited(this, "SimpleGravityVelocityMovement", "getVelocityProperties_0", []), jr.get_field(jr.get_field(this, "gravityUtil"), "GAME_GRAVITY_VELOCITY")])
        jr.call_super("BasicConstantVelocityMovement", this, "process_1", [l_layer])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal] = jargs
        jr.super_init("BasicConstantVelocityMovement", this, [l_speed_basic_decimal, jr.new("VelocityProperties", [jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", [])), jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", []))])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleGravityVelocityMovement",
        "org.allbinary.physics.movement.SimpleGravityVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [#("gravityUtil", jr.JNull)],
        [],
        [
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m3__process), 
            jr.Method("jinit_1", ["BasicDecimal"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

