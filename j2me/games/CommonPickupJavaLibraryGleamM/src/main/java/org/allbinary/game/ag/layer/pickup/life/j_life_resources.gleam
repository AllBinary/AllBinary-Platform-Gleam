// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LifeResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "RESOURCE", jr.JStr("life_drop_20_by_20.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LifeResources", "SINGLETON", jr.new("LifeResources", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LifeResources", "SINGLETON")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LifeResources",
        "org.allbinary.game.ag.layer.pickup.life.LifeResources",
        "Object",
        [],
        False,
        [#("RESOURCE", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

