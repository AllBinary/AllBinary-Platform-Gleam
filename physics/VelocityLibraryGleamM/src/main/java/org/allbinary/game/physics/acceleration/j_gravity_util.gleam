// Generated Code Do Not Modify
// package org.allbinary.game.physics.acceleration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GravityUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "GAME_GRAVITY_VELOCITY", jr.as_i(jr.JInt(1800)))
    jr.set_field(this, "MAX_GAME_VELOCITY", jr.as_i(jr.JInt(18000)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GravityUtil", "instance", jr.new("GravityUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GravityUtil", "instance")
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_custom_gravity] = jargs
    let l_custom_gravity = jr.as_i(l_custom_gravity)
        jr.call(jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", []), "addint_1", [l_custom_gravity])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GravityUtil",
        "org.allbinary.game.physics.acceleration.GravityUtil",
        "Object",
        [],
        False,
        [#("GAME_GRAVITY_VELOCITY", jr.JInt(0)), #("MAX_GAME_VELOCITY", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("process_2", ["BasicVelocityProperties", "int"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

