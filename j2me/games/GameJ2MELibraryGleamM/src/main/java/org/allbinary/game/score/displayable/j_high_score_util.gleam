// Generated Code Do Not Modify
// package org.allbinary.game.score.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "firstTime", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HighScoreUtil", "SUBMIT_TEXTBOX_COMMAND", jr.new("Command", [jr.JStr("Submit"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.JNull
}

fn c1_m12__sethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_array] = jargs
        jr.set_field(this, "highScoresArray", l_high_scores_array)
        jr.set_field(this, "firstTime", jr.JBool(False))
        jr.call(this, "saveHighScore_0", [])
    jr.JNull
}

fn c1_m13__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.call(jr.call_static("HighScoreNamePersistanceSingleton", "getInstance_0", []), "save_3", [jr.get_field(this, "abeClientInformation"), jr.get_field(this, "gameInfo"), l_name])
        jr.call(jr.get_field(this, "highScore"), "setName_1", [l_name])
    jr.JNull
}

fn c1_m14__savehighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "START")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "highScore")])]), "toString_0", []), this, jr.JStr("saveHighScore")])
            let l_size = jr.as_i(jr.alen(jr.get_field(this, "highScoresArray")))
            case jr.truth(case jr.truth(jr.get_field(this, "firstTime")) { True -> jr.eq(l_size, jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Games canvas did not give us any HighScores"), this, jr.JStr("saveHighScore")])
            jr.call(jr.get_field(this, "highScoresFactoryInterface"), "fetchHighScores_2", [jr.get_field(this, "gameInfo"), this])
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_high_scores = jr.cell(jr.JNull)
            let l_high_scores_as_string = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_high_scores, jr.aget(jr.get_field(this, "highScoresArray"), jr.get(l_index)))
            jr.call(jr.get(l_high_scores), "addHighScore_1", [jr.get_field(this, "highScore")])
            jr.set(l_high_scores_as_string, jr.call(jr.get(l_high_scores), "toString_0", []))
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Added/Adding Score: ")]), "append_1", [jr.get(l_high_scores_as_string)]), "toString_0", []), this, jr.JStr("saveHighScore")])
            Nil
        })
            Nil
        }
            jr.call(jr.get_field(this, "highScoresHelper"), "setHighScoresArray_1", [jr.get_field(this, "highScoresArray")])
        jr.JNull
    })
}

fn c1_m15__submit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_my_canvas] = jargs
        let l_command_listener = jr.call(l_my_canvas, "getCustomCommandListener_0", [])
        jr.call(l_command_listener, "commandAction_2", [jr.get_static("HighScoreUtil", "SUBMIT_TEXTBOX_COMMAND"), l_my_canvas])
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_factory_interface, l_high_scores_helper, l_abe_client_information, l_game_info, l_cmd_listener, l_name, l_high_score] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "highScoresFactoryInterface", l_high_scores_factory_interface)
        jr.set_field(this, "highScoresHelper", l_high_scores_helper)
        jr.set_field(this, "highScoresArray", jr.call(jr.get_field(this, "highScoresHelper"), "getHighScoresArray_0", []))
        jr.set_field(this, "highScore", l_high_score)
        jr.set_field(this, "abeClientInformation", l_abe_client_information)
        jr.set_field(this, "gameInfo", l_game_info)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreUtil",
        "org.allbinary.game.score.displayable.HighScoreUtil",
        "Object",
        ["HighScoresResultsListener"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("highScoresFactoryInterface", jr.JNull), #("highScoresArray", jr.JNull), #("highScore", jr.JNull), #("abeClientInformation", jr.JNull), #("gameInfo", jr.JNull), #("highScoresHelper", jr.JNull), #("firstTime", jr.JBool(False))],
        [#("SUBMIT_TEXTBOX_COMMAND", jr.JNull)],
        [
            jr.Method("setHighScoresArray_1", ["HighScoresArr"], False, c1_m12__sethighscoresarray), 
            jr.Method("update_1", ["String"], False, c1_m13__update), 
            jr.Method("saveHighScore_0", [], False, c1_m14__savehighscore), 
            jr.Method("submit_1", ["MyCanvas"], False, c1_m15__submit), 
            jr.Method("jinit_7", ["HighScoresFactoryInterface", "HighScoresHelperBaseInterface", "AbeClientInformationInterface", "GameInfo", "CommandListener", "String", "HighScore"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

