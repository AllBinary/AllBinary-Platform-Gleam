// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoBasicConstantVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("BasicConstantVelocityMovement", this, [jr.get_static("BasicDecimal", "ZERO_BIGDECIMAL"), jr.new("BasicVelocityProperties", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoBasicConstantVelocityMovement",
        "org.allbinary.physics.movement.NoBasicConstantVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m2__process), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

