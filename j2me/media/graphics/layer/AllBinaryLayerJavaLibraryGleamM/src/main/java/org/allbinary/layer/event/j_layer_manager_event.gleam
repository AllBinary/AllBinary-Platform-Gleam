// Generated Code Do Not Modify
// package org.allbinary.layer.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerManagerEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "layerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
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

fn c1_m6__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("LayerManagerEvent: \n")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("LayerInterface: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call(this, "getLayerInterface_0", []), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr("\nCRUD: ")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "crud")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_crud] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_layer_manager])
        c1_jfields(this)
        jr.set_field(this, "crud", l_crud)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerManagerEvent",
        "org.allbinary.layer.event.LayerManagerEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("layerInterface", jr.JNull), #("crud", jr.JNull)],
        [],
        [
            jr.Method("getLayerInterface_0", [], False, c1_m4__getlayerinterface), 
            jr.Method("setLayerInterface_1", ["AllBinaryLayer"], False, c1_m5__setlayerinterface), 
            jr.Method("toString_0", [], False, c1_m6__tostring), 
            jr.Method("jinit_2", ["LayerManager", "String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

