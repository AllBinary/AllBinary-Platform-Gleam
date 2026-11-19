// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputMappingEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "inputToGameKeyMapping", jr.call_static("InputToGameKeyMapping", "getNullInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setinputtogamekeymapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        jr.set_field(this, "inputToGameKeyMapping", l_input_to_game_key_mapping)
    jr.JNull
}

fn c1_m4__getinputtogamekeymapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputToGameKeyMapping")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputMappingEvent",
        "org.allbinary.game.input.mapping.event.InputMappingEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("inputToGameKeyMapping", jr.JNull)],
        [],
        [
            jr.Method("setInputToGameKeyMapping_1", ["InputToGameKeyMapping"], False, c1_m3__setinputtogamekeymapping), 
            jr.Method("getInputToGameKeyMapping_0", [], False, c1_m4__getinputtogamekeymapping), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

