// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.tactical
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicRandomAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "i_random", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "keyArray", jr.array_of("I", [jr.get_static("Canvas", "UP"), jr.get_static("Canvas", "DOWN"), jr.get_static("Canvas", "LEFT"), jr.get_static("Canvas", "RIGHT"), jr.get_static("Canvas", "KEY_NUM1"), jr.get_static("Canvas", "KEY_NUM7"), jr.get_static("Canvas", "KEY_NUM9")]))
    jr.set_field(this, "myRandomFactory", jr.call_static("MyRandomFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.call(jr.call(jr.get_field(this, "inputProbability"), "getTimeDelayHelper_0", []), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.set_field(this, "i_random", jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getAbsoluteNextInt_1", [jr.call(jr.get_field(this, "inputProbability"), "getMax_0", [])])))
            let l_repeat = jr.cell(jr.JBool(False))
            let l_repeat_likelyhood_integer_array = jr.call(jr.get_field(this, "inputProbability"), "getRepeatLikelyhoodIntegerArray_0", [])
            case jr.truth(case jr.truth(jr.ne(jr.call_inherited(this, "BasicRandomAI", "getLastKey_0", []), jr.JInt(-1))) { True -> jr.ge(jr.call(jr.aget(l_repeat_likelyhood_integer_array, jr.call_inherited(this, "BasicRandomAI", "getLastKey_0", [])), "intValue_0", []), jr.get_field(this, "i_random")) False -> jr.JBool(False) }) {
                True -> {
                jr.set(l_repeat, jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.not(jr.get(l_repeat))) {
                True -> {
                let l_likelyhood_integer_array = jr.call(jr.get_field(this, "inputProbability"), "getLikelyhoodIntegerArray_0", [])
                jr.set_field(this, "i_random", jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getAbsoluteNextInt_1", [jr.call(jr.get_field(this, "inputProbability"), "getMax_0", [])])))
                let l_size = jr.as_i(jr.alen(jr.get_field(this, "keyArray")))
                let l_likelyhood_integer_key_array = jr.cell(jr.JNull)
                {
                    let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                    let l_key = jr.as_i(jr.aget(jr.get_field(this, "keyArray"), jr.get(l_index)))
                    jr.set(l_likelyhood_integer_key_array, jr.aget(l_likelyhood_integer_array, l_key))
                    case jr.truth(case jr.truth(jr.ge(jr.alen(l_likelyhood_integer_array), l_key)) { True -> jr.ne(jr.aget(jr.get(l_likelyhood_integer_key_array), jr.JInt(0)), jr.JNull) False -> jr.JBool(False) }) {
                        True -> {
                        case jr.truth(case jr.truth(jr.ge(jr.get_field(this, "i_random"), jr.call(jr.aget(jr.get(l_likelyhood_integer_key_array), jr.JInt(0)), "intValue_0", []))) { True -> jr.lt(jr.get_field(this, "i_random"), jr.call(jr.aget(jr.get(l_likelyhood_integer_key_array), jr.JInt(1)), "intValue_0", [])) False -> jr.JBool(False) }) {
                            True -> {
                            jr.call_inherited(this, "BasicRandomAI", "setLastKey_1", [l_key])
                            jr.brk("")
                            Nil
                        }
                            False -> Nil
                        }
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                })
                    Nil
                }
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "visitor"), "visit_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input, l_input_probability, l_visitor] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "inputProbability", l_input_probability)
        jr.set_field(this, "visitor", l_visitor)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicRandomAI",
        "org.allbinary.game.ag.ai.tactical.BasicRandomAI",
        "BasicAI",
        [],
        False,
        [#("i_random", jr.JInt(0)), #("inputProbability", jr.JNull), #("visitor", jr.JNull), #("keyArray", jr.JNull), #("myRandomFactory", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m7__processai), 
            jr.Method("jinit_4", ["AllBinaryLayer", "GameInput", "InputProbability", "Visitor"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

