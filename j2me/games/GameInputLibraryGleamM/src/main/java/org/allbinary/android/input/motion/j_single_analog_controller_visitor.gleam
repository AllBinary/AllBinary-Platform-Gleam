// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingleAnalogControllerVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_analog_location_input_processor] = jargs
        let l_analog_location_input = jr.call(jr.call_static("AnalogLocationInputFactory", "getInstance_0", []), "getInstanceForPlayer_1", [jr.get_field(this, "playerInputId")])
        jr.call(l_analog_location_input_processor, "process_2", [l_allbinary_layer_manager, l_analog_location_input])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
    jr.super_init("AnalogControllerVisitor", this, [])
    c1_jfields(this)
        jr.set_field(this, "playerInputId", jr.as_i(l_player_input_id))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SingleAnalogControllerVisitor",
        "org.allbinary.android.input.motion.SingleAnalogControllerVisitor",
        "AnalogControllerVisitor",
        [],
        False,
        [#("playerInputId", jr.JInt(0))],
        [],
        [
            jr.Method("process_2", ["AllBinaryLayerManager", "AnalogLocationInputProcessor"], False, c1_m3__process), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

