// Generated Code Do Not Modify
// package org.allbinary.layer.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerManagerEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
    jr.JNull
}

fn c1_m2__oncreatelayermanagerevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
    jr.JNull
}

fn c1_m3__ondeletelayermanagerevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerManagerEventListener",
        "org.allbinary.layer.event.LayerManagerEventListener",
        "Object",
        ["LayerManagerEventListenerInterface"],
        False,
        [],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m1__onevent), 
            jr.Method("onCreateLayerManagerEvent_1", ["LayerManagerEvent"], False, c1_m2__oncreatelayermanagerevent), 
            jr.Method("onDeleteLayerManagerEvent_1", ["LayerManagerEvent"], False, c1_m3__ondeletelayermanagerevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

