// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.sequence
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberLayersSequenceAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_number_of_enemies_left, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
    let l_number_of_enemies_left = jr.as_i(l_number_of_enemies_left)
    jr.new("NumberLayersSequenceAI", [l_number_of_enemies_left, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberLayersSequenceAIFactory",
        "org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_4", ["int", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

