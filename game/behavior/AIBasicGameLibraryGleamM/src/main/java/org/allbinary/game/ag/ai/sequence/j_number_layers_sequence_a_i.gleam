// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.sequence
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberLayersSequenceAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.eq(jr.call_inherited(this, "NumberLayersSequenceAI", "getIndex_0", []), jr.JInt(0))) {
            True -> {
            case jr.truth(jr.lt(jr.call(l_all_binary_layer_manager, "getSize_0", []), jr.get_field(this, "numberOfLayersLeft"))) {
                True -> {
                jr.call_inherited(this, "NumberLayersSequenceAI", "setIndex_1", [jr.JInt(1)])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.call_super("SequenceAI", this, "processAI_1", [l_all_binary_layer_manager])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_number_of_enemies_left, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
    let l_number_of_enemies_left = jr.as_i(l_number_of_enemies_left)
        jr.super_init("SequenceAI", this, [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "numberOfLayersLeft", jr.as_i(l_number_of_enemies_left))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberLayersSequenceAI",
        "org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI",
        "SequenceAI",
        [],
        False,
        [#("numberOfLayersLeft", jr.JInt(0))],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m3__processai), 
            jr.Method("jinit_4", ["int", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

