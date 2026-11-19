// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StartIntermissionProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "WAIT", jr.as_j(jr.JLong(5000)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getStartIntermissionInterface_0", []), "getTimeDelayHelper_0", []), "isElapsedTNT_1", [jr.get_field(this, "WAIT")])) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Intermission End"), this, jr.get_field(jr.get_field(this, "commonStrings"), "PROCESS")])
            jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getStartIntermissionInterface_0", []), "setEnabled_1", [jr.JBool(False)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameCanvas", l_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StartIntermissionProcessor",
        "org.allbinary.game.displayable.canvas.StartIntermissionProcessor",
        "Processor",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("gameCanvas", jr.JNull), #("WAIT", jr.JLong(0))],
        [],
        [
            jr.Method("process_0", [], False, c1_m6__process), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

