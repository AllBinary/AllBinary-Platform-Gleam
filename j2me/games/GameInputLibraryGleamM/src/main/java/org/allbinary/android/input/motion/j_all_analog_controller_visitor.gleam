// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllAnalogControllerVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_analog_location_input_processor] = jargs
        let l_analog_location_input_list = jr.call(jr.call_static("AnalogLocationInputFactory", "getInstance_0", []), "getList_0", [])
        let l_analog_location_input = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_analog_location_input_list, "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_analog_location_input, jr.call(l_analog_location_input_list, "get_1", [jr.get(l_index)]))
            jr.call(l_analog_location_input_processor, "process_2", [l_allbinary_layer_manager, jr.get(l_analog_location_input)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AnalogControllerVisitor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllAnalogControllerVisitor",
        "org.allbinary.android.input.motion.AllAnalogControllerVisitor",
        "AnalogControllerVisitor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_2", ["AllBinaryLayerManager", "AnalogLocationInputProcessor"], False, c1_m1__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

