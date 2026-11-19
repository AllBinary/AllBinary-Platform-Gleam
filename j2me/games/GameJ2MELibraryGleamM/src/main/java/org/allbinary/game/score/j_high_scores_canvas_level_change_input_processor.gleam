// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresCanvasLevelChangeInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "INSTRUCTIONS", jr.JStr("(Right = Next Track, Left = Previous Track)"))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m8__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "addListener_1", [this])
    jr.JNull
}

fn c1_m9__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "removeListener_1", [this])
    jr.JNull
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.call_inherited(this, "HighScoresCanvasLevelChangeInputProcessor", "getGameKeyEventList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_any_type = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            let l_key = jr.as_i(jr.call_static("GameKeyEventUtil", "getKey_1", [l_any_type]))
            case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "RIGHT"))) {
                True -> {
                jr.call(jr.call(jr.call_inherited(this, "HighScoresCanvasLevelChangeInputProcessor", "getHighScoresCanvas_0", []), "getGameInfo_0", []), "nextGameLevel_0", [])
                Nil
            }
                False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "LEFT"))) {
                True -> {
                jr.call(jr.call(jr.call_inherited(this, "HighScoresCanvasLevelChangeInputProcessor", "getHighScoresCanvas_0", []), "getGameInfo_0", []), "previousGameLevel_0", [])
                Nil
            }
                False -> Nil
            }
            }
            jr.call(jr.call_inherited(this, "HighScoresCanvasLevelChangeInputProcessor", "getHighScoresCanvas_0", []), "executeUpdate_0", [])
            Nil
        })
            Nil
        }
        jr.call(l_list, "clear_0", [])
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_width = jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []))
        let l_top_scores_width = jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.get_field(this, "INSTRUCTIONS")]), jr.JInt(1)))
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "INSTRUCTIONS"), jr.sub(jr.shr(l_width, jr.JInt(1)), l_top_scores_width), jr.mul(jr.get_field(this, "fontHeight"), jr.JInt(2)), jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_canvas] = jargs
        jr.super_init("HighScoresCanvasInputProcessor", this, [l_high_scores_canvas])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresCanvasLevelChangeInputProcessor",
        "org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor",
        "HighScoresCanvasInputProcessor",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("INSTRUCTIONS", jr.JNull), #("myFontProcessor", jr.JNull), #("anchor", jr.JInt(0)), #("fontHeight", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m7__updatemeasurement), 
            jr.Method("open_0", [], False, c1_m8__open), 
            jr.Method("close_0", [], False, c1_m9__close), 
            jr.Method("update_0", [], False, c1_m10__update), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("jinit_1", ["HighScoresCanvas"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

