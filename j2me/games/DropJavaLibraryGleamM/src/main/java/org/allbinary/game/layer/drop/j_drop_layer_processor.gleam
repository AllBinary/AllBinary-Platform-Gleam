// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DropLayerProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DropLayerProcessor", "LAYER_PROCESSOR", jr.new("DropLayerProcessor", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DropLayerProcessor", "LAYER_PROCESSOR")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_list = jr.call_inherited(this, "DropLayerProcessor", "getList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_layer_interface = jr.cell(jr.JNull)
        let l_drop_layer_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_layer_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.set(l_drop_layer_interface, jr.get(l_layer_interface))
            jr.set(l_layer_interface, jr.call(jr.get(l_drop_layer_interface), "getDroppedLayer_0", []))
            jr.call(l_all_binary_layer_manager, "append_1", [jr.get(l_layer_interface)])
            Nil
        })
            Nil
        }
        jr.call(l_list, "clear_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicLayerProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DropLayerProcessor",
        "org.allbinary.game.layer.drop.DropLayerProcessor",
        "BasicLayerProcessor",
        [],
        False,
        [],
        [#("LAYER_PROCESSOR", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_1", ["AllBinaryLayerManager"], False, c1_m4__process), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

