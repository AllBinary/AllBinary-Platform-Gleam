// Generated Code Do Not Modify
// package org.allbinary.logic.util.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullEventListener", "NULL_EVENT_LISTENER", jr.new("NullEventListener", []))
    jr.JNull
}

fn c1_m2__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullEventListener",
        "org.allbinary.logic.util.event.NullEventListener",
        "Object",
        ["EventListenerInterface"],
        False,
        [],
        [#("NULL_EVENT_LISTENER", jr.JNull)],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m2__onevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

