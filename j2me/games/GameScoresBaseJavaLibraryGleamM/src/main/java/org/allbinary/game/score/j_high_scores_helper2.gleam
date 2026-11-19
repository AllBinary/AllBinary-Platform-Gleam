// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresHelper2

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstanceAt_2", [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "selectedHighScores", jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setselectedhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_selected_high_scores] = jargs
        jr.set_field(this, "selectedHighScores", l_selected_high_scores)
    jr.JNull
}

fn c1_m4__getselectedhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "selectedHighScores")
}

fn c1_m5__sethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_array_p] = jargs
        jr.call_super("HighScoresHelperBase", this, "setHighScoresArray_1", [l_high_scores_array_p])
        jr.call(jr.get_field(this, "circularIndexUtil"), "setSize_1", [jr.alen(jr.get_inherited(this, "HighScoresHelper2", "highScoresArrayP"))])
        jr.call(this, "selectHighScores_0", [])
    jr.JNull
}

fn c1_m6__selecthighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.alen(jr.get_inherited(this, "HighScoresHelper2", "highScoresArrayP")), jr.JInt(0))) {
            True -> {
            jr.call(this, "setSelectedHighScores_1", [jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", [])])
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
            let l_high_scores = jr.cell(jr.aget(jr.get_inherited(this, "HighScoresHelper2", "highScoresArrayP"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])))
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { case jr.truth(jr.lt(jr.call(jr.get(l_high_scores), "getTotal_0", []), jr.JInt(1))) { True -> jr.lt(jr.get(l_index), jr.alen(jr.get_inherited(this, "HighScoresHelper2", "highScoresArrayP"))) False -> jr.JBool(False) } }, fn() {
            jr.set(l_high_scores, jr.aget(jr.get_inherited(this, "HighScoresHelper2", "highScoresArrayP"), jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])))
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
            jr.call(this, "setSelectedHighScores_1", [jr.get(l_high_scores)])
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
        "HighScoresHelper2",
        "org.allbinary.game.score.HighScoresHelper2",
        "HighScoresHelperBase",
        [],
        False,
        [#("circularIndexUtil", jr.JNull), #("selectedHighScores", jr.JNull)],
        [],
        [
            jr.Method("setSelectedHighScores_1", ["HighScores"], False, c1_m3__setselectedhighscores), 
            jr.Method("getSelectedHighScores_0", [], False, c1_m4__getselectedhighscores), 
            jr.Method("setHighScoresArray_1", ["HighScoresArr"], False, c1_m5__sethighscoresarray), 
            jr.Method("selectHighScores_0", [], False, c1_m6__selecthighscores), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

