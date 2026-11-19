// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchScreenTypesFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "FINGER", jr.new("TouchScreenType", [jr.JStr("Finger")]))
    jr.set_field(this, "NOTOUCH", jr.new("TouchScreenType", [jr.JStr("No Touch")]))
    jr.set_field(this, "STYLUS", jr.new("TouchScreenType", [jr.JStr("Stylus")]))
    jr.set_field(this, "UNDEFINED", jr.new("TouchScreenType", [jr.JStr("Undefined")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchScreenTypesFactory", "instance", jr.new("TouchScreenTypesFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchScreenTypesFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchScreenTypesFactory",
        "org.allbinary.input.motion.button.TouchScreenTypesFactory",
        "Object",
        [],
        False,
        [#("FINGER", jr.JNull), #("NOTOUCH", jr.JNull), #("STYLUS", jr.JNull), #("UNDEFINED", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

