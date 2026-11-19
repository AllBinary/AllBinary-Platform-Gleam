// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullPlayerGameInputComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullPlayerGameInputComposite", "NULL_PLAYER_GAME_INPUT_COMPOSITE", jr.new("NullPlayerGameInputComposite", []))
    jr.JNull
}

fn c1_m2__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m3__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager] = jargs
    jr.JNull
}

fn c1_m4__initinputprocessors(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__getplayergameinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("NoPlayerGameInput", "getInstance_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullPlayerGameInputComposite",
        "org.allbinary.game.input.NullPlayerGameInputComposite",
        "Object",
        ["PlayerGameInputCompositeInterface"],
        False,
        [],
        [#("NULL_PLAYER_GAME_INPUT_COMPOSITE", jr.JNull)],
        [
            jr.Method("getName_0", [], False, c1_m2__getname), 
            jr.Method("processInput_1", ["AllBinaryLayerManager"], False, c1_m3__processinput), 
            jr.Method("initInputProcessors_0", [], False, c1_m4__initinputprocessors), 
            jr.Method("getPlayerGameInput_0", [], False, c1_m5__getplayergameinput), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

