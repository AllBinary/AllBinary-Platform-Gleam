// Generated Code Do Not Modify
// package org.allbinary.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ArtificialIntelligence

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ArtificialIntelligence", "instance", jr.new("ArtificialIntelligence", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ArtificialIntelligence", "instance")
}

fn c1_m5__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager] = jargs
    jr.JNull
}

fn c1_m6__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(1))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ArtificialIntelligence",
        "org.allbinary.ai.ArtificialIntelligence",
        "Object",
        ["ArtificialIntelligenceInterface"],
        False,
        [],
        [#("AI_ID", jr.as_i(jr.JInt(2))), #("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m5__processai), 
            jr.Method("getId_0", [], False, c1_m6__getid), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

