// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyedLayerProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DestroyedLayerProcessor", "DESTROYED_LAYER_PROCESSOR", jr.get_static("BasicLayerProcessor", "NULL_LAYER_PROCESSOR"))
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("DestroyedLayerProcessor", "DESTROYED_LAYER_PROCESSOR", jr.new("DestroyedLayerProcessor", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DestroyedLayerProcessor", "DESTROYED_LAYER_PROCESSOR")
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_list = jr.call_inherited(this, "DestroyedLayerProcessor", "getList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_destroyed_event_handler = jr.call_static("DestroyedEventHandler", "getInstance_0", [])
        let l_destroy_event_circular_static_pool = jr.call_static("DestroyEventCircularStaticPool", "getInstance_0", [])
        let l_destroyed_event = jr.cell(jr.JNull)
        let l_layer_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_layer_interface_can_be_null = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            case jr.truth(jr.ne(l_layer_interface_can_be_null, jr.JNull)) {
                True -> {
                jr.set(l_layer_interface, l_layer_interface_can_be_null)
                jr.call(l_all_binary_layer_manager, "remove_1", [jr.get(l_layer_interface)])
                jr.set(l_destroyed_event, jr.call(l_destroy_event_circular_static_pool, "getInstanceForLayer_1", [jr.get(l_layer_interface)]))
                jr.call(l_destroyed_event_handler, "fireEvent_1", [jr.get(l_destroyed_event)])
                Nil
            }
                False -> {
                let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                Nil
            }
            }
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
        "DestroyedLayerProcessor",
        "org.allbinary.game.combat.destroy.DestroyedLayerProcessor",
        "BasicLayerProcessor",
        [],
        False,
        [],
        [#("DESTROYED_LAYER_PROCESSOR", jr.JNull)],
        [
            jr.Method("init_0", [], True, c1_m3__init), 
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("process_1", ["AllBinaryLayerManager"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

