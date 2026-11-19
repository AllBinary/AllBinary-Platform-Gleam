// Generated Code Do Not Modify
// package org.allbinary.game.tracking
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrackingEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("TrackingEvent", [jr.call_static("TrackingEventHandler", "getInstance_0", [])])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrackingEventFactory",
        "org.allbinary.game.tracking.TrackingEventFactory",
        "Object",
        ["AllBinaryEventObjectFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

