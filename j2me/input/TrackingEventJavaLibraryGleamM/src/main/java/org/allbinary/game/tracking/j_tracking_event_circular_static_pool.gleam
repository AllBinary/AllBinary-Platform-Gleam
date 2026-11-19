// Generated Code Do Not Modify
// package org.allbinary.game.tracking
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrackingEventCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EVENT_POOL", jr.new("AllBinaryEventCircularPool", [jr.JInt(20)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TrackingEventCircularStaticPool", "instance", jr.new("TrackingEventCircularStaticPool", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TrackingEventCircularStaticPool", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "EVENT_POOL"), "initAllBinaryEventCircularPool_1", [jr.new("TrackingEventFactory", [])])
    jr.JNull
}

fn c1_m5__getnextinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        let l_tracking_event = jr.call(jr.get_field(this, "EVENT_POOL"), "getNextInstance_0", [])
        jr.call(l_tracking_event, "setLayerInterfaceForCircularStaticPool_1", [l_layer_interface])
    l_tracking_event
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrackingEventCircularStaticPool",
        "org.allbinary.game.tracking.TrackingEventCircularStaticPool",
        "Object",
        [],
        False,
        [#("EVENT_POOL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("getNextInstance_1", ["AllBinaryLayer"], False, c1_m5__getnextinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

