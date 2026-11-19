// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberOnOwnGroupSequenceAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_layer_interface = jr.call_inherited(this, "NumberOnOwnGroupSequenceAI", "getOwnerLayerInterface_0", [])
        let l_index = jr.as_i(jr.call_inherited(this, "NumberOnOwnGroupSequenceAI", "getIndex_0", []))
        case jr.truth(jr.gt(jr.alen(jr.get_field(this, "numberOnSameTeam")), l_index)) {
            True -> {
            let l_size = jr.as_i(jr.call(jr.call_static("GroupLayerManagerListener", "getInstance_0", []), "getGroupSizeFromInterface_1", [l_layer_interface]))
            case jr.truth(jr.gt(jr.call(jr.aget(jr.get_field(this, "numberOnSameTeam"), l_index), "intValue_0", []), l_size)) {
                True -> {
                jr.call_inherited(this, "NumberOnOwnGroupSequenceAI", "next_0", [])
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
    let assert [l_number_on_same_team, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("SequenceAI", this, [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "numberOnSameTeam", l_number_on_same_team)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberOnOwnGroupSequenceAI",
        "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI",
        "SequenceAI",
        [],
        False,
        [#("numberOnSameTeam", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m3__processai), 
            jr.Method("jinit_4", ["IntegerArr", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

