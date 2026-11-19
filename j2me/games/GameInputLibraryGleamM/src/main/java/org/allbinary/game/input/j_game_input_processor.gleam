// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInputProcessor", "instance", jr.new("GameInputProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameInputProcessor", "instance")
}

fn c1_m4__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m5__processreleasedevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m6__processanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event, l_analog_value] = jargs
    let l_analog_value = jr.as_i(l_analog_value)
    jr.JNull
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_key_as_integer] = jargs
    jr.JNull
}

fn c1_m8__processreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_key_as_integer] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputProcessor",
        "org.allbinary.game.input.GameInputProcessor",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m4__processevent), 
            jr.Method("processReleasedEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m5__processreleasedevent), 
            jr.Method("processAnalog_3", ["AllBinaryLayerManager", "GameKeyEvent", "int"], False, c1_m6__processanalog), 
            jr.Method("process_2", ["AllBinaryLayerManager", "Integer"], False, c1_m7__process), 
            jr.Method("processReleased_2", ["AllBinaryLayerManager", "Integer"], False, c1_m8__processreleased), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

