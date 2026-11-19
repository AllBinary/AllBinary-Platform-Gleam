// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoHighScoresFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "NO_HIGH_SCORES", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoHighScoresFactory", "instance", jr.new("NoHighScoresFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoHighScoresFactory", "instance")
}

fn c1_m6__fetchhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_high_scores_results_listener] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Getting No HighScores"), this, jr.JStr("fetchHighScores")])
        jr.call(l_high_scores_results_listener, "setHighScoresArray_1", [jr.get_field(this, "NO_HIGH_SCORES")])
    jr.JNull
}

fn c1_m7__createhighscoreshelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("HighScoresHelperBase", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("HighScoresBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoHighScoresFactory",
        "org.allbinary.game.score.NoHighScoresFactory",
        "HighScoresBase",
        [],
        False,
        [#("logUtil", jr.JNull), #("NO_HIGH_SCORES", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("fetchHighScores_2", ["GameInfo", "HighScoresResultsListener"], False, c1_m6__fetchhighscores), 
            jr.Method("createHighScoresHelper_0", [], False, c1_m7__createhighscoreshelper), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

