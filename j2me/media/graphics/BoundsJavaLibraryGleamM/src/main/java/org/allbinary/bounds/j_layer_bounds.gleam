// Generated Code Do Not Modify
// package org.allbinary.bounds
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerBounds

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getrectanglep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rectangle")
}

fn c1_m5__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bounds_visitor_interface] = jargs
    jr.JNull
}

fn c1_m6__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m7__onboundschangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bounds_change_event] = jargs
        jr.set_field(this, "rectangle", jr.call(l_bounds_change_event, "getRectangle_0", []))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "rectangle", l_rectangle)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerBounds",
        "org.allbinary.bounds.LayerBounds",
        "Object",
        ["BoundsChangeEventListener"],
        False,
        [#("logUtil", jr.JNull), #("rectangle", jr.JNull)],
        [],
        [
            jr.Method("getRectangleP_0", [], False, c1_m4__getrectanglep), 
            jr.Method("visit_1", ["BoundsVisitorInterface"], False, c1_m5__visit), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m6__onevent), 
            jr.Method("onBoundsChangeEvent_1", ["BoundsChangeEvent"], False, c1_m7__onboundschangeevent), 
            jr.Method("jinit_1", ["Rectangle"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

