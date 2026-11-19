// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstanceAt_2", [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "lastIndex", jr.as_i(jr.JInt(-1)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__sethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_array_p] = jargs
        jr.call_super("HighScoresHelperBase", this, "setHighScoresArray_1", [l_high_scores_array_p])
        jr.call(jr.get_field(this, "circularIndexUtil"), "setSize_1", [jr.alen(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP"))])
    jr.JNull
}

fn c1_m4__getnexthighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_high_scores = jr.cell(jr.aget(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])))
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { case jr.truth(case jr.truth(jr.lt(jr.call(jr.get(l_high_scores), "getTotal_0", []), jr.JInt(1))) { True -> jr.JBool(True) False -> jr.eq(jr.get_field(this, "lastIndex"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])) }) { True -> jr.lt(jr.get(l_index), jr.alen(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP"))) False -> jr.JBool(False) } }, fn() {
            jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
            jr.set(l_high_scores, jr.aget(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])))
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
        jr.set_field(this, "lastIndex", jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])))
    jr.get(l_high_scores)
}

fn c1_m5__isanyhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.lt(jr.alen(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP")), jr.JInt(1))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            let l_any_scores = jr.cell(jr.JBool(False))
            let l_high_scores = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_high_scores, jr.aget(jr.get_inherited(this, "HighScoresHelper", "highScoresArrayP"), jr.get(l_index)))
            case jr.truth(jr.gt(jr.call(jr.get(l_high_scores), "getTotal_0", []), jr.JInt(0))) {
                True -> {
                jr.set(l_any_scores, jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.get(l_any_scores))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("HighScoresHelperBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresHelper",
        "org.allbinary.game.score.HighScoresHelper",
        "HighScoresHelperBase",
        [],
        False,
        [#("circularIndexUtil", jr.JNull), #("lastIndex", jr.JInt(0))],
        [],
        [
            jr.Method("setHighScoresArray_1", ["HighScoresArr"], False, c1_m2__sethighscoresarray), 
            jr.Method("getNextHighScores_0", [], False, c1_m4__getnexthighscores), 
            jr.Method("isAnyHighScores_0", [], False, c1_m5__isanyhighscores), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

