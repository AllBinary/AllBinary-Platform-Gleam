// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LockedResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "LOCKED_DEMO_GAME_FEATURE_RESOURCE", jr.JStr("/locked_demo_game_feature_64_by_64.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LockedResources", "instance", jr.new("LockedResources", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LockedResources", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LockedResources",
        "org.allbinary.logic.system.security.licensing.LockedResources",
        "Object",
        [],
        False,
        [#("LOCKED_DEMO_GAME_FEATURE_RESOURCE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

