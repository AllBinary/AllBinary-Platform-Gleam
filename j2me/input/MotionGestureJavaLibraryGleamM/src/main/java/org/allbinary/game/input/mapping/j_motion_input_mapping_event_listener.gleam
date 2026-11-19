// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionInputMappingEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m2__oninputmappingevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_mapping_event] = jargs
        jr.call(jr.call_static("GameKeyCompleteMotionGestureInputEventFactory", "getInstance_0", []), "updateAll_0", [])
        jr.call(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "updateAll_1", [jr.call(l_input_mapping_event, "getInputToGameKeyMapping_0", [])])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionInputMappingEventListener",
        "org.allbinary.game.input.mapping.MotionInputMappingEventListener",
        "Object",
        ["InputMappingEventListenerInterface"],
        False,
        [],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m1__onevent), 
            jr.Method("onInputMappingEvent_1", ["InputMappingEvent"], False, c1_m2__oninputmappingevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

