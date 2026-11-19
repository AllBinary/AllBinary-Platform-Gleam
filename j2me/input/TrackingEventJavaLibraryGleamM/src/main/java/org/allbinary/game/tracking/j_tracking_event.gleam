// Generated Code Do Not Modify
// package org.allbinary.game.tracking
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrackingEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "layerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call_inherited(this, "TrackingEvent", "setSource_1", [l_any_type])
    jr.JNull
}

fn c1_m4__getlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "layerInterface")
}

fn c1_m5__setlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.set_field(this, "layerInterface", l_layer_interface)
    jr.JNull
}

fn c1_m6__setlayerinterfaceforcircularstaticpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.set_field(this, "layerInterface", l_layer_interface)
    jr.JNull
}

fn c1_m7__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("TrackingEvent: \n")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("LayerInterface: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "layerInterface"), "toString_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_interface] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_all_binary_layer_interface])
        c1_jfields(this)
        case jr.truth(jr.ne(l_all_binary_layer_interface, jr.call_static("TrackingEventHandler", "getInstance_0", []))) {
            True -> {
            jr.call(this, "setLayerInterface_1", [l_all_binary_layer_interface])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrackingEvent",
        "org.allbinary.game.tracking.TrackingEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("layerInterface", jr.JNull)],
        [],
        [
            jr.Method("init_1", ["Object"], False, c1_m3__init), 
            jr.Method("getLayerInterface_0", [], False, c1_m4__getlayerinterface), 
            jr.Method("setLayerInterface_1", ["AllBinaryLayer"], False, c1_m5__setlayerinterface), 
            jr.Method("setLayerInterfaceForCircularStaticPool_1", ["AllBinaryLayer"], False, c1_m6__setlayerinterfaceforcircularstaticpool), 
            jr.Method("toString_0", [], False, c1_m7__tostring), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

