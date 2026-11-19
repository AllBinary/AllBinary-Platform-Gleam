// Generated Code Do Not Modify
// package org.allbinary.logic.util.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EventStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PERFORMANCE_MESSAGE", jr.JStr("Use Custom onEvent Methods for needed optimization"))
    jr.set_field(this, "TOTAL_LISTENERS", jr.JStr("Total Listeners: "))
    jr.set_field(this, "LISTENER_LABEL", jr.JStr(" Listener: "))
    jr.set_field(this, "FIRE_EVENT", jr.JStr("fireEvent"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("EventStrings", "instance", jr.new("EventStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("EventStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EventStrings",
        "org.allbinary.logic.util.event.EventStrings",
        "Object",
        [],
        False,
        [#("PERFORMANCE_MESSAGE", jr.JNull), #("TOTAL_LISTENERS", jr.JNull), #("LISTENER_LABEL", jr.JNull), #("FIRE_EVENT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

