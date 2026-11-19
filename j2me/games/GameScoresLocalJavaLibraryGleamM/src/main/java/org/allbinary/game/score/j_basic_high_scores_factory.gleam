// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicHighScoresFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "highScoresArray", jr.new_array("L", 1, [jr.JInt(1)]))
    jr.set_field(this, "TOP", jr.JStr("Top"))
    jr.set_field(this, "SCORES", jr.JStr("Scores"))
    jr.set_field(this, "PERSONAL_HIGH_SCORES", jr.JStr("Personal Top Scores"))
    jr.set_field(this, "FETCH", jr.JStr("fetchHighScores"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__fetchhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_high_scores_results_listener] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Getting Local HighScores"), this, jr.get_field(this, "FETCH")])
        jr.call(this, "fetchHighScoresPreload_3", [l_game_info, l_high_scores_results_listener, jr.JBool(True)])
    jr.JNull
}

fn c1_m10__fetchhighscorespreload(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_high_scores_results_listener, l_preload] = jargs
        jr.try_catch(fn() {
            jr.aset(jr.get_field(this, "highScoresArray"), jr.JInt(0), jr.call_static("RecordStoreHighScores", "getInstance_6", [jr.get_field(this, "abeClientInformation"), l_game_info, jr.get_field(this, "TOP"), jr.get_field(this, "PERSONAL_HIGH_SCORES"), jr.get_field(this, "SCORES"), jr.new("ScoreComparator", [jr.JBool(True)])]))
            jr.call(l_high_scores_results_listener, "setHighScoresArray_1", [jr.get_field(this, "highScoresArray")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "BasicHighScoresFactory", "commonStrings"), "EXCEPTION"), this, jr.get_field(this, "FETCH"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m11__createhighscoreshelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("HighScoresHelper2", [])
}

fn c1_m12__loaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index2] = jargs
    let l_index2 = jr.as_i(l_index2)
    jr.method(fn() {
            case jr.truth(jr.ge(l_index2, jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_software_information] = jargs
    jr.super_init("HighScoresBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "abeClientInformation", l_abe_client_information)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicHighScoresFactory",
        "org.allbinary.game.score.BasicHighScoresFactory",
        "HighScoresBase",
        [],
        False,
        [#("logUtil", jr.JNull), #("abeClientInformation", jr.JNull), #("highScoresArray", jr.JNull), #("TOP", jr.JNull), #("SCORES", jr.JNull), #("PERSONAL_HIGH_SCORES", jr.JNull), #("FETCH", jr.JNull)],
        [],
        [
            jr.Method("fetchHighScores_2", ["GameInfo", "HighScoresResultsListener"], False, c1_m9__fetchhighscores), 
            jr.Method("fetchHighScoresPreload_3", ["GameInfo", "HighScoresResultsListener", "boolean"], False, c1_m10__fetchhighscorespreload), 
            jr.Method("createHighScoresHelper_0", [], False, c1_m11__createhighscoreshelper), 
            jr.Method("loaded_1", ["int"], True, c1_m12__loaded), 
            jr.Method("jinit_2", ["AbeClientInformationInterface", "SoftwareInformation"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

