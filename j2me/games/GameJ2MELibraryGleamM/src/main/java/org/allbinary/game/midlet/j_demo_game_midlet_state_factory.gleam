// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoGameMidletStateFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.new("DemoGameMidletState", []))
    jr.set_field(this, "START_DEMO", jr.new("DemoGameMidletState", []))
    jr.set_field(this, "START_GAME", jr.new("DemoGameMidletState", []))
    jr.set_field(this, "START_INPUT_MAPPING", jr.new("DemoGameMidletState", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DemoGameMidletStateFactory", "STATE", jr.new("DemoGameMidletStateFactory", []))
    jr.JNull
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DemoGameMidletStateFactory", "STATE")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoGameMidletStateFactory",
        "org.allbinary.game.midlet.DemoGameMidletStateFactory",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull), #("START_DEMO", jr.JNull), #("START_GAME", jr.JNull), #("START_INPUT_MAPPING", jr.JNull)],
        [#("STATE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m7__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

