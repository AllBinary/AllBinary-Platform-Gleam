// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameCanvasPauseRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__processloopsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_is_open_g_l = jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")])
            case jr.truth(l_is_open_g_l) {
                True -> {
                jr.call(jr.get_field(this, "allBinaryGameCanvas"), "processSleep_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.super_init("GameRunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "allBinaryGameCanvas", l_all_binary_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameCanvasPauseRunnable",
        "org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable",
        "GameRunnable",
        [],
        False,
        [#("logUtil", jr.JNull), #("allBinaryGameCanvas", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m4__run), 
            jr.Method("processLoopSleep_0", [], False, c1_m5__processloopsleep), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

