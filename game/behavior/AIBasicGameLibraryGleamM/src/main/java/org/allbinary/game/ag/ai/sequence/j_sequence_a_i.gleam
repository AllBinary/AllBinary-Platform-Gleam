// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.sequence
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SequenceAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call(jr.aget(jr.call_inherited(this, "SequenceAI", "getArtificialIntelligenceInterface_0", []), jr.get_field(this, "index")), "processAI_1", [l_all_binary_layer_manager])
    jr.JNull
}

fn c1_m5__next(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)
        let l_artificial_intelligence_interface = jr.call(this, "getSelectedArtificialIntelligenceInterface_0", [])
        case jr.truth(jr.eq(jr.call(l_artificial_intelligence_interface, "getId_0", []), jr.get_static("ArtificialIntelligence", "AI_ID"))) {
            True -> {
            let l_artificial_intelligence_transition_interface = l_artificial_intelligence_interface
            jr.call(l_artificial_intelligence_transition_interface, "transition_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__getindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "index"))
}

fn c1_m7__setindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.set_field(this, "index", jr.as_i(l_index))
    jr.JNull
}

fn c1_m8__getselectedartificialintelligenceinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.aget(jr.call_inherited(this, "SequenceAI", "getArtificialIntelligenceInterface_0", []), jr.get_field(this, "index"))
}

fn c1_m9__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SequenceAI", "SEQUENCE_AI")
}

fn c1_m10__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call_super("ArrayAI", this, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Selected AI: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getSelectedArtificialIntelligenceInterface_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_artificial_intelligence_interface_array, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("ArrayAI", this, [l_artificial_intelligence_interface_array, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SequenceAI",
        "org.allbinary.game.ag.ai.sequence.SequenceAI",
        "ArrayAI",
        [],
        False,
        [#("index", jr.JInt(0))],
        [#("SEQUENCE_AI", jr.JStr("Sequence AI"))],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("next_0", [], False, c1_m5__next), 
            jr.Method("getIndex_0", [], False, c1_m6__getindex), 
            jr.Method("setIndex_1", ["int"], False, c1_m7__setindex), 
            jr.Method("getSelectedArtificialIntelligenceInterface_0", [], False, c1_m8__getselectedartificialintelligenceinterface), 
            jr.Method("getName_0", [], False, c1_m9__getname), 
            jr.Method("toString_0", [], False, c1_m10__tostring), 
            jr.Method("jinit_3", ["ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

