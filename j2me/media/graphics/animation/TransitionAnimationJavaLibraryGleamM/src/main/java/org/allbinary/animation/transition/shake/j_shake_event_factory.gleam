// Generated Code Do Not Modify
// package org.allbinary.animation.transition.shake
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShakeEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MICRO", jr.new("ShakeEvent", []))
    jr.set_field(this, "SMALL", jr.new("ShakeEvent", []))
    jr.set_field(this, "MEDIUM", jr.new("ShakeEvent", []))
    jr.set_field(this, "LARGE", jr.new("ShakeEvent", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ShakeEventFactory", "instance", jr.new("ShakeEventFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ShakeEventFactory", "instance")
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShakeEventFactory",
        "org.allbinary.animation.transition.shake.ShakeEventFactory",
        "Object",
        [],
        False,
        [#("MICRO", jr.JNull), #("SMALL", jr.JNull), #("MEDIUM", jr.JNull), #("LARGE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m7__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

