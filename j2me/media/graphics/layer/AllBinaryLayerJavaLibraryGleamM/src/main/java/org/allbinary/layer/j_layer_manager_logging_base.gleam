// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerManagerLoggingBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.JNull
}

fn c1_m2__appendat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_m3__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.JNull
}

fn c1_m4__removeresult(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_layer_interface, l_result] = jargs
    jr.JNull
}

fn c1_m5__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerManagerLoggingBase",
        "org.allbinary.layer.LayerManagerLoggingBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("append_1", ["AllBinaryLayer"], False, c1_m1__append), 
            jr.Method("appendAt_2", ["AllBinaryLayer", "int"], False, c1_m2__appendat), 
            jr.Method("remove_1", ["AllBinaryLayer"], False, c1_m3__remove), 
            jr.Method("removeResult_3", ["LayerManager", "AllBinaryLayer", "boolean"], False, c1_m4__removeresult), 
            jr.Method("clear_0", [], False, c1_m5__clear), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

