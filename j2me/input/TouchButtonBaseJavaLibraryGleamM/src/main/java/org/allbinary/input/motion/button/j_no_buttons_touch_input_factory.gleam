// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoButtonsTouchInputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoButtonsTouchInputFactory", "instance", jr.new("BaseTouchInput", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoButtonsTouchInputFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoButtonsTouchInputFactory",
        "org.allbinary.input.motion.button.NoButtonsTouchInputFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

