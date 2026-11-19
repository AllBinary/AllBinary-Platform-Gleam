// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpinnerAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.get_field(this, "isEven")) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.aget(jr.get_field(this, "direction"), jr.JInt(0))])
            jr.set_field(this, "isEven", jr.JBool(False))
            Nil
        }
            False -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
            jr.set_field(this, "isEven", jr.JBool(True))
            Nil
        }
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "direction", l_direction)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpinnerAI",
        "org.allbinary.game.ag.ai.SpinnerAI",
        "BasicAI",
        [],
        False,
        [#("isEven", jr.JBool(False)), #("direction", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("jinit_3", ["intArr", "AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

