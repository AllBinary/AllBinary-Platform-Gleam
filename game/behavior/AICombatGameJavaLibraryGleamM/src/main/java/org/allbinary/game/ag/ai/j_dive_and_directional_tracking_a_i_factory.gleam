// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DiveAndDirectionalTrackingAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        let l_visitor_can_be_null = jr.cell(jr.call(l_hashtable, "get_1", [jr.get_static("BasicAI", "AI_VISITOR")]))
        case jr.truth(jr.eq(jr.get(l_visitor_can_be_null), jr.JNull)) {
            True -> {
            jr.set(l_visitor_can_be_null, jr.call_static("ThrustAIVisitorFactory", "getInstance_0", []))
            Nil
        }
            False -> Nil
        }
        let l_hashtable2 = jr.call(jr.new("BasicProbabilityAIDataFactory", []), "getInstance_0", [])
        jr.call(l_hashtable2, "put_2", [jr.get_static("BasicAI", "AI_VISITOR"), jr.call_static("LastKeyAIVisitorFactory", "getInstance_0", [])])
        let l_artificial_intelligence_interface = jr.call(jr.new("BasicRandomAIFactory", []), "getInstance_3", [l_hashtable2, l_owner_layer_interface, l_game_input])
    jr.new("DiveAndDirectionalTrackingAI", [l_owner_layer_interface, l_artificial_intelligence_interface, l_game_input, jr.get(l_visitor_can_be_null)])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DiveAndDirectionalTrackingAIFactory",
        "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory",
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

