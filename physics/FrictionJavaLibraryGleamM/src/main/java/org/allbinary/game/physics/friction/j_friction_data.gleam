// Generated Code Do Not Modify
// package org.allbinary.game.physics.friction
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FrictionData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getfrictiondenominator(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("FrictionData", "FRICTION_DENOMINATOR"))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FrictionData",
        "org.allbinary.game.physics.friction.FrictionData",
        "Object",
        [],
        False,
        [],
        [#("FRICTION_DENOMINATOR", jr.as_i(jr.JInt(100)))],
        [
            jr.Method("getFrictionDenominator_0", [], True, c1_m3__getfrictiondenominator), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

