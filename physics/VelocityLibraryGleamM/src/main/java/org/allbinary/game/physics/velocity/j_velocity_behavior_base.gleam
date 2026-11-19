// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VelocityBehaviorBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__reduce(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
    jr.JNull
}

fn c1_m2__reducex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
    jr.JNull
}

fn c1_m3__reducey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VelocityBehaviorBase",
        "org.allbinary.game.physics.velocity.VelocityBehaviorBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("reduce_3", ["BasicVelocityProperties", "int", "int"], False, c1_m1__reduce), 
            jr.Method("reduceX_3", ["BasicVelocityProperties", "int", "int"], False, c1_m2__reducex), 
            jr.Method("reduceY_3", ["BasicVelocityProperties", "int", "int"], False, c1_m3__reducey), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

