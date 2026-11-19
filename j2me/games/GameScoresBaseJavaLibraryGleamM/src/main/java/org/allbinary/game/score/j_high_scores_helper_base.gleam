// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresHelperBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "highScoresArrayP", jr.get_field(jr.call_static("LastFetchHighScoresFactory", "getInstance_0", []), "highScoresArray"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__sethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_array_p] = jargs
        case jr.truth(jr.ne(l_high_scores_array_p, jr.JNull)) {
            True -> {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(l_common_strings, "START")]), "appendint_1", [jr.alen(l_high_scores_array_p)]), "toString_0", []), this, jr.JStr("setHighScoresArray")])
            Nil
        }
            False -> {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(l_common_strings, "START"), this, jr.JStr("setHighScoresArray")])
            Nil
        }
        }
        jr.set_field(this, "highScoresArrayP", l_high_scores_array_p)
    jr.JNull
}

fn c1_m4__getnexthighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", [])
}

fn c1_m5__isanyhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__setselectedhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_selected_high_scores] = jargs
    jr.JNull
}

fn c1_m7__getselectedhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", [])
}

fn c1_m8__gethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoresArrayP")
}

fn c1_m9__selecthighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresHelperBase",
        "org.allbinary.game.score.HighScoresHelperBase",
        "Object",
        ["HighScoresHelperBaseInterface"],
        False,
        [#("logUtil", jr.JNull), #("highScoresArrayP", jr.JNull)],
        [],
        [
            jr.Method("setHighScoresArray_1", ["HighScoresArr"], False, c1_m3__sethighscoresarray), 
            jr.Method("getNextHighScores_0", [], False, c1_m4__getnexthighscores), 
            jr.Method("isAnyHighScores_0", [], False, c1_m5__isanyhighscores), 
            jr.Method("setSelectedHighScores_1", ["HighScores"], False, c1_m6__setselectedhighscores), 
            jr.Method("getSelectedHighScores_0", [], False, c1_m7__getselectedhighscores), 
            jr.Method("getHighScoresArray_0", [], False, c1_m8__gethighscoresarray), 
            jr.Method("selectHighScores_0", [], False, c1_m9__selecthighscores), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

