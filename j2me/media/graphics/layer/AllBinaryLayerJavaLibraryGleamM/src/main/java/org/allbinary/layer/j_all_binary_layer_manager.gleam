// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryLayerManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "layerManagerEventHandler", jr.call_static("LayerManagerEventHandler", "getInstance_0", []))
    jr.set_field(this, "createLayerManagerEvent", jr.new("LayerManagerEvent", [this, jr.get_field(jr.get_field(this, "layerManagerEventHandler"), "CREATE")]))
    jr.set_field(this, "deleteLayerManagerEvent", jr.new("LayerManagerEvent", [this, jr.get_field(jr.get_field(this, "layerManagerEventHandler"), "DELETE")]))
    jr.set_field(this, "basicLayerProcessorArray", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getlayerprocessorarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicLayerProcessorArray")
}

fn c1_m7__setlayerprocessorarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_processor_array] = jargs
        jr.set_field(this, "basicLayerProcessorArray", l_layer_processor_array)
    jr.JNull
}

fn c1_m8__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicLayerProcessorArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_layer_processor_interface = jr.aget(jr.get_field(this, "basicLayerProcessorArray"), jr.get(l_index))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        case jr.truth(jr.not(jr.call_inherited(this, "AllBinaryLayerManager", "contains_1", [l_layer_interface]))) {
            True -> {
            jr.call(this, "appendProcessors_1", [l_layer_interface])
            jr.call_super("LayerManager", this, "append_1", [l_layer_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__appendat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
        case jr.truth(jr.not(jr.call_inherited(this, "AllBinaryLayerManager", "contains_1", [l_layer_interface]))) {
            True -> {
            jr.call(this, "appendProcessors_1", [l_layer_interface])
            jr.call_super("LayerManager", this, "appendAt_2", [l_layer_interface, l_index])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__appendprocessors(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.call(jr.get_field(this, "createLayerManagerEvent"), "setLayerInterface_1", [l_layer_interface])
        jr.call(jr.get_field(this, "layerManagerEventHandler"), "fireEvent_1", [jr.get_field(this, "createLayerManagerEvent")])
        let l_layer_processor_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "basicLayerProcessorArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_layer_processor_interface, jr.aget(jr.get_field(this, "basicLayerProcessorArray"), jr.get(l_index)))
            case jr.truth(jr.call(jr.get(l_layer_processor_interface), "isProcessorLayer_1", [l_layer_interface])) {
                True -> {
                jr.call(jr.call(jr.get(l_layer_processor_interface), "getLayerManager_0", []), "append_1", [l_layer_interface])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m12__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.call(jr.get_field(this, "deleteLayerManagerEvent"), "setLayerInterface_1", [l_layer_interface])
        jr.call(jr.get_field(this, "layerManagerEventHandler"), "fireDeleteEvent_1", [jr.get_field(this, "deleteLayerManagerEvent")])
        let l_layer_processor_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "basicLayerProcessorArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_layer_processor_interface, jr.aget(jr.get_field(this, "basicLayerProcessorArray"), jr.get(l_index)))
            jr.call(jr.call(jr.get(l_layer_processor_interface), "getLayerManager_0", []), "remove_1", [l_layer_interface])
            Nil
        })
            Nil
        }
        jr.call_super("LayerManager", this, "remove_1", [l_layer_interface])
    jr.JNull
}

fn c1_m13__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_layer_processor_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicLayerProcessorArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_layer_processor_interface, jr.aget(jr.get_field(this, "basicLayerProcessorArray"), jr.get(l_index)))
            jr.call(jr.get(l_layer_processor_interface), "process_1", [this])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m14__cleanup(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_layer_processor_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicLayerProcessorArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_layer_processor_interface, jr.aget(jr.get_field(this, "basicLayerProcessorArray"), jr.get(l_index)))
            jr.call(jr.call(jr.get(l_layer_processor_interface), "getLayerManager_0", []), "cleanup_0", [])
            Nil
        })
            Nil
        }
        jr.call_super("LayerManager", this, "cleanup_0", [])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("LayerManager", this, [jr.call_static("LayerManagerNoDebug", "getInstance_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryLayerManager",
        "org.allbinary.layer.AllBinaryLayerManager",
        "LayerManager",
        [],
        False,
        [#("layerManagerEventHandler", jr.JNull), #("createLayerManagerEvent", jr.JNull), #("deleteLayerManagerEvent", jr.JNull), #("basicLayerProcessorArray", jr.JNull)],
        [],
        [
            jr.Method("getLayerProcessorArray_0", [], False, c1_m6__getlayerprocessorarray), 
            jr.Method("setLayerProcessorArray_1", ["LayerProcessorArr"], False, c1_m7__setlayerprocessorarray), 
            jr.Method("log_0", [], False, c1_m8__log), 
            jr.Method("append_1", ["AllBinaryLayer"], False, c1_m9__append), 
            jr.Method("appendAt_2", ["AllBinaryLayer", "int"], False, c1_m10__appendat), 
            jr.Method("appendProcessors_1", ["AllBinaryLayer"], False, c1_m11__appendprocessors), 
            jr.Method("remove_1", ["AllBinaryLayer"], False, c1_m12__remove), 
            jr.Method("process_0", [], False, c1_m13__process), 
            jr.Method("cleanup_0", [], False, c1_m14__cleanup), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

