// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoMovementFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "movement", jr.new("Movement", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoMovementFactory", "instance", jr.new("NoMovementFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoMovementFactory", "instance")
}

fn c1_m4__getmovmentinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "movement")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoMovementFactory",
        "org.allbinary.physics.movement.NoMovementFactory",
        "Object",
        [],
        False,
        [#("movement", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getMovmentInstance_0", [], False, c1_m4__getmovmentinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

