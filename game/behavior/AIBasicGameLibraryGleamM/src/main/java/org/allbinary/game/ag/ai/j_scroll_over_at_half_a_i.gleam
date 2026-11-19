// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScrollOverAtHalfAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_owner_layer_interface = jr.call_inherited(this, "ScrollOverAtHalfAI", "getOwnerLayerInterface_0", [])
        let l_x = jr.as_i(jr.call(l_owner_layer_interface, "getXP_0", []))
        let l_y = jr.as_i(jr.call(l_owner_layer_interface, "getYP_0", []))
        let l_half_width = jr.as_i(jr.call(l_owner_layer_interface, "getHalfWidth_0", []))
        let l_half_height = jr.as_i(jr.call(l_owner_layer_interface, "getHalfHeight_0", []))
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        case jr.truth(jr.gt(l_x, jr.sub(jr.call(l_display_info, "getLastWidth_0", []), l_half_width))) {
            True -> {
            jr.call(l_owner_layer_interface, "setPosition_3", [jr.add(l_half_width, jr.JInt(1)), l_y, jr.call(l_owner_layer_interface, "getZP_0", [])])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(l_y, jr.sub(jr.call(l_display_info, "getLastHeight_0", []), l_half_height))) {
            True -> {
            jr.call(l_owner_layer_interface, "setPosition_3", [l_x, jr.add(l_half_height, jr.JInt(1)), jr.call(l_owner_layer_interface, "getZP_0", [])])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(l_x, jr.neg(l_half_width))) {
            True -> {
            jr.call(l_owner_layer_interface, "setPosition_3", [jr.sub(jr.call(l_display_info, "getLastWidth_0", []), l_half_width), l_y, jr.call(l_owner_layer_interface, "getZP_0", [])])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(l_y, jr.neg(l_half_height))) {
            True -> {
            jr.call(l_owner_layer_interface, "setPosition_3", [l_x, jr.sub(jr.call(l_display_info, "getLastHeight_0", []), l_half_height), jr.call(l_owner_layer_interface, "getZP_0", [])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScrollOverAtHalfAI",
        "org.allbinary.game.ag.ai.ScrollOverAtHalfAI",
        "BasicAI",
        [],
        False,
        [],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m2__processai), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

