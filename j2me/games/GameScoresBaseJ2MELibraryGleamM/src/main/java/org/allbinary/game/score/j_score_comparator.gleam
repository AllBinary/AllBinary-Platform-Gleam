// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScoreComparator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getbestscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(case jr.truth(jr.get_field(this, "isHighestBest")) { True -> jr.get_static("Long", "MAX_VALUE") False -> jr.JInt(0) })
}

fn c1_m5__compare(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_record_one, l_record_two] = jargs
    jr.method(fn() {
            let l_byte_array_input_stream_one = jr.new("ByteArrayInputStream", [l_record_one])
            let l_input_stream_one = jr.new("DataInputStream", [l_byte_array_input_stream_one])
            let l_byte_array_input_stream_two = jr.new("ByteArrayInputStream", [l_record_two])
            let l_input_stream_two = jr.new("DataInputStream", [l_byte_array_input_stream_two])
            let l_score_one = jr.cell(jr.as_j(jr.JLong(0)))
            let l_score_two = jr.cell(jr.as_j(jr.JLong(0)))
            jr.try_catch(fn() {
            jr.call(l_input_stream_one, "readUTF_0", [])
            jr.call(l_input_stream_two, "readUTF_0", [])
            jr.set(l_score_one, jr.as_j(jr.call(l_input_stream_one, "readLong_0", [])))
            jr.set(l_score_two, jr.as_j(jr.call(l_input_stream_two, "readLong_0", [])))
            Nil
        }, [#(["EOFException"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("compare"), l_e])
            Nil
        } }), #(["IOException"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("compare"), l_e])
            Nil
        } }), #(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("compare"), l_e])
            Nil
        } })], fn() { Nil })
            case jr.truth(jr.get_field(this, "isHighestBest")) {
            True -> {
            jr.ret(jr.as_i(jr.call(this, "getHighTooLow_2", [jr.get(l_score_one), jr.get(l_score_two)])))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.call(this, "getLowTooHigh_2", [jr.get(l_score_one), jr.get(l_score_two)])))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m6__gethightoolow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_score_one, l_score_two] = jargs
    let l_score_one = jr.as_j(l_score_one)
    let l_score_two = jr.as_j(l_score_two)
    jr.method(fn() {
            case jr.truth(jr.gt(l_score_one, l_score_two)) {
            True -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "PRECEDES")))
            Nil
        }
            False -> case jr.truth(jr.lt(l_score_one, l_score_two)) {
            True -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "FOLLOWS")))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "EQUIVALENT")))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_m7__getlowtoohigh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_score_one, l_score_two] = jargs
    let l_score_one = jr.as_j(l_score_one)
    let l_score_two = jr.as_j(l_score_two)
    jr.method(fn() {
            case jr.truth(jr.lt(l_score_one, l_score_two)) {
            True -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "PRECEDES")))
            Nil
        }
            False -> case jr.truth(jr.gt(l_score_one, l_score_two)) {
            True -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "FOLLOWS")))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.get_static("RecordComparator", "EQUIVALENT")))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_highest_best] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "isHighestBest", l_is_highest_best)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScoreComparator",
        "org.allbinary.game.score.ScoreComparator",
        "Object",
        ["RecordComparator"],
        False,
        [#("logUtil", jr.JNull), #("isHighestBest", jr.JBool(False))],
        [],
        [
            jr.Method("getBestScore_0", [], False, c1_m4__getbestscore), 
            jr.Method("compare_2", ["byteArr", "byteArr"], False, c1_m5__compare), 
            jr.Method("getHighTooLow_2", ["long", "long"], False, c1_m6__gethightoolow), 
            jr.Method("getLowTooHigh_2", ["long", "long"], False, c1_m7__getlowtoohigh), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

