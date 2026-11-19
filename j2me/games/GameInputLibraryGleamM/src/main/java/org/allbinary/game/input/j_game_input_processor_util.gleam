// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputProcessorUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_processor_array] = jargs
        let l_no_input_processor = jr.call_static("GameInputProcessor", "getInstance_0", [])
        let l_total = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_total) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_input_processor_can_be_null = jr.aget(l_input_processor_array, jr.get(l_index))
            case jr.truth(jr.eq(l_input_processor_can_be_null, jr.JNull)) {
                True -> {
                jr.aset(l_input_processor_array, jr.get(l_index), l_no_input_processor)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputProcessorUtil",
        "org.allbinary.game.input.GameInputProcessorUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_1", ["GameInputProcessorArr"], True, c1_m1__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

