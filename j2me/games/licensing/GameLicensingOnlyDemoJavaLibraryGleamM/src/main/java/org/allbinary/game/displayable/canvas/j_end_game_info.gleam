// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EndGameInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NORMAL_GAME_OVER_WIN", jr.JStr("You Won"))
    jr.set_field(this, "TEASER_DEMO_GAME_END_LAST_LEVEL", jr.JStr("End of Demo."))
    jr.set_field(this, "TEASER_DEMO_GAME_END", jr.JStr("Demo Game Over."))
    jr.set_field(this, "gameOverStr", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "winStr", jr.get_field(this, "gameOverStr"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_my_canvas] = jargs
        case jr.truth(jr.call(l_game_info, "isLastLevel_0", [])) {
            True -> {
            jr.call(this, "setWinStr_1", [jr.get_field(this, "TEASER_DEMO_GAME_END_LAST_LEVEL")])
            jr.call(this, "setGameOverStr_1", [jr.get_field(this, "TEASER_DEMO_GAME_END_LAST_LEVEL")])
            Nil
        }
            False -> {
            jr.call(this, "setWinStr_1", [jr.get_field(this, "NORMAL_GAME_OVER_WIN")])
            jr.call(this, "setGameOverStr_1", [jr.get_field(this, "TEASER_DEMO_GAME_END")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m7__getgameoverstr(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameOverStr")
}

fn c1_m8__setgameoverstr(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_over_str] = jargs
        jr.set_field(this, "gameOverStr", l_game_over_str)
    jr.JNull
}

fn c1_m9__getwinstr(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "winStr")
}

fn c1_m10__setwinstr(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_win_str] = jargs
        jr.set_field(this, "winStr", l_win_str)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EndGameInfo",
        "org.allbinary.game.displayable.canvas.EndGameInfo",
        "Object",
        [],
        False,
        [#("NORMAL_GAME_OVER_WIN", jr.JNull), #("TEASER_DEMO_GAME_END_LAST_LEVEL", jr.JNull), #("TEASER_DEMO_GAME_END", jr.JNull), #("gameOverStr", jr.JNull), #("winStr", jr.JNull)],
        [],
        [
            jr.Method("update_2", ["GameInfo", "MyCanvas"], False, c1_m6__update), 
            jr.Method("getGameOverStr_0", [], False, c1_m7__getgameoverstr), 
            jr.Method("setGameOverStr_1", ["String"], False, c1_m8__setgameoverstr), 
            jr.Method("getWinStr_0", [], False, c1_m9__getwinstr), 
            jr.Method("setWinStr_1", ["String"], False, c1_m10__setwinstr), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

