// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresCanvasInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__onpressgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_super("PlayerGameInput", this, "onPressGameKeyEvent_1", [l_game_key_event])
        jr.call_inherited(this, "HighScoresCanvasInputProcessor", "update_0", [])
    jr.JNull
}

fn c1_m6__ondowngamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_super("PlayerGameInput", this, "onDownGameKeyEvent_1", [l_game_key_event])
        jr.call_inherited(this, "HighScoresCanvasInputProcessor", "update_0", [])
    jr.JNull
}

fn c1_m7__onupgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_super("PlayerGameInput", this, "onUpGameKeyEvent_1", [l_game_key_event])
        jr.call_inherited(this, "HighScoresCanvasInputProcessor", "update_0", [])
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m9__gethighscorescanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoresCanvas")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_canvas] = jargs
        jr.super_init("PlayerGameInput", this, [jr.new("BasicArrayListD", []), jr.new("BasicArrayListD", []), jr.JInt(-1)])
        c1_jfields(this)
        jr.set_field(this, "highScoresCanvas", l_high_scores_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresCanvasInputProcessor",
        "org.allbinary.game.score.HighScoresCanvasInputProcessor",
        "PlayerGameInput",
        [],
        False,
        [#("highScoresCanvas", jr.JNull)],
        [],
        [
            jr.Method("open_0", [], False, c1_m3__open), 
            jr.Method("close_0", [], False, c1_m4__close), 
            jr.Method("onPressGameKeyEvent_1", ["GameKeyEvent"], False, c1_m5__onpressgamekeyevent), 
            jr.Method("onDownGameKeyEvent_1", ["GameKeyEvent"], False, c1_m6__ondowngamekeyevent), 
            jr.Method("onUpGameKeyEvent_1", ["GameKeyEvent"], False, c1_m7__onupgamekeyevent), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("getHighScoresCanvas_0", [], False, c1_m9__gethighscorescanvas), 
            jr.Method("jinit_1", ["HighScoresCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

