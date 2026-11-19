// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DiveAndDirectionalTrackingAICompositeVisitorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dive_bomb_a_i] = jargs
    jr.call_static("Visitor", "getInstance_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DiveAndDirectionalTrackingAICompositeVisitorFactory",
        "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["DiveAndDirectionalTrackingAI"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

