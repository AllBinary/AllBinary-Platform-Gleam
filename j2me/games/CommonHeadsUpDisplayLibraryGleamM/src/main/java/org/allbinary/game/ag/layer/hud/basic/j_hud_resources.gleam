// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HudResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "RESOURCE_LIFE", jr.JStr("/hud_life_10_by_10.png"))
    jr.set_field(this, "RESOURCE_HEALTH", jr.JStr("/hud_health_10_by_10.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HudResources", "instance", jr.new("HudResources", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HudResources", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HudResources",
        "org.allbinary.game.ag.layer.hud.basic.HudResources",
        "Object",
        [],
        False,
        [#("RESOURCE_LIFE", jr.JNull), #("RESOURCE_HEALTH", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

