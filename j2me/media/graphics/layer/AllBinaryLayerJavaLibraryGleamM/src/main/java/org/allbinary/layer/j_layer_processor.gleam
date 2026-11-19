// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager, l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m5__isprocessorlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m6__getlayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "layerManager")
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_layer_manager = jr.call(this, "getLayerManager_0", [])
        let l_size = jr.as_i(jr.call(l_layer_manager, "getSize_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(this, "processAt_3", [l_all_binary_layer_manager, jr.call(l_layer_manager, "getLayerAt_1", [jr.get(l_index)]), jr.get(l_index)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "layerManager", l_layer_manager)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerProcessor",
        "org.allbinary.layer.LayerProcessor",
        "Object",
        ["LayerProcessorInterface"],
        False,
        [#("commonStrings", jr.JNull), #("layerManager", jr.JNull)],
        [],
        [
            jr.Method("processAt_3", ["AllBinaryLayerManager", "AllBinaryLayer", "int"], False, c1_m4__processat), 
            jr.Method("isProcessorLayer_1", ["AllBinaryLayer"], False, c1_m5__isprocessorlayer), 
            jr.Method("getLayerManager_0", [], False, c1_m6__getlayermanager), 
            jr.Method("process_1", ["AllBinaryLayerManager"], False, c1_m7__process), 
            jr.Method("jinit_1", ["LayerManager"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

