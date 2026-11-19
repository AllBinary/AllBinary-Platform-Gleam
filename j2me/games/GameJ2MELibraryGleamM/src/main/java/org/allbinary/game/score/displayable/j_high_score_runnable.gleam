// Generated Code Do Not Modify
// package org.allbinary.game.score.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        let l_high_scores_canvas = jr.get_field(this, "highScoresCanvas")
        jr.try_catch(fn() {
            let l_is_h_t_m_l = jr.call_static("J2MEUtil", "isHTML_0", [])
            case jr.truth(jr.not(l_is_h_t_m_l)) {
                True -> {
                jr.while_loop("", fn() { jr.not(jr.get_field(l_high_scores_canvas, "hasPainted")) }, fn() {
                    Nil
                })
                jr.set_field(l_high_scores_canvas, "hasPainted", jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            let l_string_maker = jr.new("StringMaker", [])
            let l_system_wrapper = jr.call_static("ABSystemWrapper", "getInstance_0", [])
            let l_current_time_millis = jr.as_j(jr.call(l_system_wrapper, "currentTimeMillis_0", []))
            jr.call(l_log_util, "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("HighScoresCanvas - Request repaint to be sure: ")]), "appendlong_1", [l_current_time_millis]), "toString_0", []), this, jr.get_field(l_common_strings, "RUN")])
            jr.call(jr.get_field(l_high_scores_canvas, "repaintBehavior"), "onChangeRepaint_1", [l_high_scores_canvas])
            case jr.truth(jr.not(l_is_h_t_m_l)) {
                True -> {
                jr.while_loop("", fn() { jr.not(jr.get_field(l_high_scores_canvas, "hasPainted")) }, fn() {
                    Nil
                })
                Nil
            }
                False -> Nil
            }
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.call(l_log_util, "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ")]), "appendlong_1", [l_current_time_millis]), "toString_0", []), this, jr.get_field(l_common_strings, "RUN")])
            jr.call(l_high_scores_canvas, "executeUpdate_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_canvas] = jargs
    jr.super_init("ARunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "highScoresCanvas", l_high_scores_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreRunnable",
        "org.allbinary.game.score.displayable.HighScoreRunnable",
        "ARunnable",
        [],
        False,
        [#("highScoresCanvas", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m3__run), 
            jr.Method("jinit_1", ["HighScoresCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

