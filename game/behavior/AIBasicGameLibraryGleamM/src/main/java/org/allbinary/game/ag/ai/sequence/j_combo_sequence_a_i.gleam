// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.sequence
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ComboSequenceAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_artificial_intelligence_interface_array = jr.call_inherited(this, "ComboSequenceAI", "getArtificialIntelligenceInterface_0", [])
        let l_size = jr.as_i(jr.alen(l_artificial_intelligence_interface_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call_inherited(this, "ComboSequenceAI", "setIndex_1", [jr.get(l_index)])
            jr.call_super("SequenceAI", this, "processAI_1", [l_all_binary_layer_manager])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("SequenceAI", this, [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ComboSequenceAI",
        "org.allbinary.game.ag.ai.sequence.ComboSequenceAI",
        "SequenceAI",
        [],
        False,
        [],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m2__processai), 
            jr.Method("jinit_3", ["ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

