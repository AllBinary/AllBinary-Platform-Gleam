// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpinnerAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        let l_direction = jr.array_of("I", [jr.get_static("Canvas", "LEFT")])
    jr.new("SpinnerAI", [l_direction, l_owner_layer_interface, l_game_input])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpinnerAIFactory",
        "org.allbinary.game.ag.ai.SpinnerAIFactory",
        "Object",
        ["ArtificialIntelligenceInterfaceFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

