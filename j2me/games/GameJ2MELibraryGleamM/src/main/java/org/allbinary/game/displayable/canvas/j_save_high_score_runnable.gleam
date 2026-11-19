// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SaveHighScoreRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "progressCanvas", jr.call_static("ProgressCanvasFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        jr.try_catch(fn() {
            case jr.truth(jr.get_field(this, "isLast")) {
                True -> {
                jr.call(jr.get_field(this, "textBox"), "submit_0", [])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "textBox"), "saveHighScore_0", [])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("run"), l_e])
            jr.call(jr.get_field(this, "progressCanvas"), "end_0", [])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_last, l_text_box] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "isLast", l_is_last)
        jr.set_field(this, "textBox", l_text_box)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SaveHighScoreRunnable",
        "org.allbinary.game.displayable.canvas.SaveHighScoreRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("progressCanvas", jr.JNull), #("isLast", jr.JBool(False)), #("textBox", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m5__run), 
            jr.Method("jinit_2", ["boolean", "HighScoreTextBox"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

