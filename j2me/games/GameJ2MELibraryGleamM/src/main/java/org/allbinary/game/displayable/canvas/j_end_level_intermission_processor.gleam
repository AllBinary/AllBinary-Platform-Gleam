// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EndLevelIntermissionProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameCanvas"), "processEndLevelIntermissionGameState_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameCanvas", l_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EndLevelIntermissionProcessor",
        "org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor",
        "Processor",
        [],
        False,
        [#("gameCanvas", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

