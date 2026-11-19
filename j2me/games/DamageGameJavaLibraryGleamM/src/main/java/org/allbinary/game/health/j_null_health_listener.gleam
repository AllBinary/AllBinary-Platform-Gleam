// Generated Code Do Not Modify
// package org.allbinary.game.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullHealthListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullHealthListener", "NULL_HEALTH_LISTENER", jr.new("NullHealthListener", []))
    jr.JNull
}

fn c1_m2__onhealthchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullHealthListener",
        "org.allbinary.game.health.NullHealthListener",
        "Object",
        ["HealthListenerInterface"],
        False,
        [],
        [#("NULL_HEALTH_LISTENER", jr.JNull)],
        [
            jr.Method("onHealthChange_0", [], False, c1_m2__onhealthchange), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

