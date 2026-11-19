// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullInputMappingEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullInputMappingEventListener", "NULL_INPUT_MAPPING_EVENT_LISTENER", jr.new("NullInputMappingEventListener", []))
    jr.JNull
}

fn c1_m2__oninputmappingevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_mapping_event] = jargs
    jr.JNull
}

fn c1_m3__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullInputMappingEventListener",
        "org.allbinary.game.input.mapping.event.NullInputMappingEventListener",
        "Object",
        ["InputMappingEventListenerInterface"],
        False,
        [],
        [#("NULL_INPUT_MAPPING_EVENT_LISTENER", jr.JNull)],
        [
            jr.Method("onInputMappingEvent_1", ["InputMappingEvent"], False, c1_m2__oninputmappingevent), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m3__onevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

