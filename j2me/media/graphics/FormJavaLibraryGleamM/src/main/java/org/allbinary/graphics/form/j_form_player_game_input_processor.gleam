// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FormPlayerGameInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call(jr.get_field(this, "playerGameInputCompositeInterface"), "getPlayerGameInput_0", []), "update_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input_composite_interface] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "playerGameInputCompositeInterface", l_player_game_input_composite_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FormPlayerGameInputProcessor",
        "org.allbinary.graphics.form.FormPlayerGameInputProcessor",
        "Processor",
        [],
        False,
        [#("playerGameInputCompositeInterface", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["PlayerGameInputCompositeInterface"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

