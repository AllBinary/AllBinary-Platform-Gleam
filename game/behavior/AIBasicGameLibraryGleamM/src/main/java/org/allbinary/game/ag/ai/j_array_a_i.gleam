// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ArrayAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "artificialIntelligenceInterfaceArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "artificialIntelligenceInterfaceArray"), jr.get(l_index)), "processAI_1", [l_all_binary_layer_manager])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m4__getartificialintelligenceinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "artificialIntelligenceInterfaceArray")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "artificialIntelligenceInterfaceArray", l_artificial_intelligence_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ArrayAI",
        "org.allbinary.game.ag.ai.ArrayAI",
        "BasicAI",
        [],
        False,
        [#("artificialIntelligenceInterfaceArray", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m3__processai), 
            jr.Method("getArtificialIntelligenceInterface_0", [], False, c1_m4__getartificialintelligenceinterface), 
            jr.Method("jinit_3", ["ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

