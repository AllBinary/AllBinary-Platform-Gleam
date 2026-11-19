// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__fetchhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_high_scores_results_listener] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m4__fetchhighscorespreload(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_high_scores_results_listener, l_preload] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m5__createhighscoreshelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresBase",
        "org.allbinary.game.score.HighScoresBase",
        "Object",
        ["HighScoresFactoryInterface"],
        False,
        [#("commonStrings", jr.JNull)],
        [],
        [
            jr.Method("fetchHighScores_2", ["GameInfo", "HighScoresResultsListener"], False, c1_m3__fetchhighscores), 
            jr.Method("fetchHighScoresPreload_3", ["GameInfo", "HighScoresResultsListener", "boolean"], False, c1_m4__fetchhighscorespreload), 
            jr.Method("createHighScoresHelper_0", [], False, c1_m5__createhighscoreshelper), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

