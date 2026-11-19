// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingleLayerLayerProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_layer_manager = jr.call_inherited(this, "SingleLayerLayerProcessor", "getLayerManager_0", [])
        jr.call_inherited(this, "SingleLayerLayerProcessor", "processAt_3", [l_all_binary_layer_manager, jr.call(l_layer_manager, "getLayerAt_1", [jr.JInt(0)]), jr.JInt(0)])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("LayerProcessor", this, [jr.new("SingleLayerLayerManager", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SingleLayerLayerProcessor",
        "org.allbinary.layer.SingleLayerLayerProcessor",
        "LayerProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_1", ["AllBinaryLayerManager"], False, c1_m2__process), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

