// Generated Code Do Not Modify
// package org.allbinary.game.physics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FrictionProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__friction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
        jr.call(jr.get_static("DragVelocityBehavior", "instance"), "reduce_3", [l_velocity_properties, l_nominator, jr.call_static("FrictionData", "getFrictionDenominator_0", [])])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FrictionProperties",
        "org.allbinary.game.physics.FrictionProperties",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("friction_2", ["VelocityProperties", "int"], False, c1_m2__friction), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

