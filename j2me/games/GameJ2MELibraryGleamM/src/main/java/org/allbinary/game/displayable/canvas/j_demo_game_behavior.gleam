// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoGameBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DemoGameBehavior", "instance", jr.new("DemoGameBehavior", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DemoGameBehavior", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m6__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m7__updatetouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m8__updatescreenbuttonpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "setTouchPaintableP_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
    jr.JNull
}

fn c1_m9__setgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m10__removeallgamekeyinputlisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m11__updateendgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m12__buildgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.JNull
}

fn c1_m13__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.get_field(jr.call_static("GameTypeFactory", "getInstance_0", []), "BOT"), "toString_0", []), this, jr.get_field(l_common_strings, "RUN")])
    jr.JNull
}

fn c1_m14__sethighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_all_binary_game_canvas, l_name, l_score, l_auto_submit, l_is_last] = jargs
    let l_score = jr.as_j(l_score)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoGameBehavior",
        "org.allbinary.game.displayable.canvas.DemoGameBehavior",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("pause_1", ["AllBinaryGameCanvas"], False, c1_m5__pause), 
            jr.Method("unPause_1", ["AllBinaryGameCanvas"], False, c1_m6__unpause), 
            jr.Method("updateTouch_1", ["AllBinaryGameCanvas"], False, c1_m7__updatetouch), 
            jr.Method("updateScreenButtonPaintable_1", ["AllBinaryGameCanvas"], False, c1_m8__updatescreenbuttonpaintable), 
            jr.Method("setGameState_1", ["AllBinaryGameCanvas"], False, c1_m9__setgamestate), 
            jr.Method("removeAllGameKeyInputListeners_1", ["AllBinaryGameCanvas"], False, c1_m10__removeallgamekeyinputlisteners), 
            jr.Method("updateEndGameProcessor_1", ["AllBinaryGameCanvas"], False, c1_m11__updateendgameprocessor), 
            jr.Method("buildGame_1", ["AllBinaryGameCanvas"], False, c1_m12__buildgame), 
            jr.Method("run_1", ["AllBinaryGameCanvas"], False, c1_m13__run), 
            jr.Method("setHighScore_6", ["AbeClientInformationInterface", "AllBinaryGameCanvas", "String", "long", "boolean", "boolean"], False, c1_m14__sethighscore), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

