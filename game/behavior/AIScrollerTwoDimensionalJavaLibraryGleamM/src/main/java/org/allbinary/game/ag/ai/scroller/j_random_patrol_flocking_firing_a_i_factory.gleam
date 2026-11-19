// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RandomPatrolFlockingFiringAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        let l_artificial_intelligence_interface = jr.new_array("L", 1, [jr.JInt(2)])
        jr.aset(l_artificial_intelligence_interface, jr.JInt(0), jr.new("RandomPatrolAI", [l_hashtable, l_owner_layer_interface, l_game_input]))
        jr.aset(l_artificial_intelligence_interface, jr.JInt(1), jr.new("TimedFireAI", [jr.JInt(1800), l_owner_layer_interface, l_game_input]))
    jr.new("ArrayAI", [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RandomPatrolFlockingFiringAIFactory",
        "org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory",
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

