// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFrameRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameTickDisplayInfoSingleton", jr.call_static("GameTickDisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_all_binary_game_canvas = jr.get_field(this, "allBinaryGameCanvas")
            jr.call(jr.call(l_all_binary_game_canvas, "getLoopTimeHelperP_0", []), "setStartTime_1", [jr.call(jr.get_field(this, "gameTickTimeDelayHelper"), "setStartTime_0", [])])
            jr.call(jr.get_field(this, "gameTickDisplayInfoSingleton"), "update_0", [])
            jr.call(l_all_binary_game_canvas, "processGame_0", [])
            case jr.truth(case jr.truth(jr.not(jr.call(l_all_binary_game_canvas, "isRunning_0", []))) { True -> jr.JBool(True) False -> jr.call(l_all_binary_game_canvas, "isPaused_0", []) }) {
                True -> {
                jr.call(l_all_binary_game_canvas, "notifyDonePainting_0", [])
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

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.super_init("GameRunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "allBinaryGameCanvas", l_all_binary_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFrameRunnable",
        "org.allbinary.game.displayable.canvas.GameFrameRunnable",
        "GameRunnable",
        [],
        False,
        [#("logUtil", jr.JNull), #("gameTickDisplayInfoSingleton", jr.JNull), #("allBinaryGameCanvas", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m6__run), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

