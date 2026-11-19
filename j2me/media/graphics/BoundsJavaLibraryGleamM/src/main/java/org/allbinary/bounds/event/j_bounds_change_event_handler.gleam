// Generated Code Do Not Modify
// package org.allbinary.bounds.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BoundsChangeEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BoundsChangeEventHandler", "SINGLETON", jr.new("BoundsChangeEventHandler", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BoundsChangeEventHandler", "SINGLETON")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_bounds_change_event_listener = l_event_listener_interface
        jr.call(l_bounds_change_event_listener, "onBoundsChangeEvent_1", [l_event_object])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BoundsChangeEventHandler",
        "org.allbinary.bounds.event.BoundsChangeEventHandler",
        "BasicEventHandler",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m4__process), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

