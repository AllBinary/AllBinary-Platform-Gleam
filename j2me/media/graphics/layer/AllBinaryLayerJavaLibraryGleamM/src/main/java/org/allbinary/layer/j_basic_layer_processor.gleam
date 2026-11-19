// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicLayerProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicLayerProcessor", "NULL_LAYER_PROCESSOR", jr.new("BasicLayerProcessor", []))
    jr.JNull
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_layer_interface]))) {
            True -> {
            jr.call(jr.get_field(this, "list"), "add_1", [l_layer_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m7__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicLayerProcessor",
        "org.allbinary.layer.BasicLayerProcessor",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("list", jr.JNull)],
        [#("NULL_LAYER_PROCESSOR", jr.JNull)],
        [
            jr.Method("add_1", ["AllBinaryLayer"], False, c1_m5__add), 
            jr.Method("process_1", ["AllBinaryLayerManager"], False, c1_m6__process), 
            jr.Method("getList_0", [], False, c1_m7__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

