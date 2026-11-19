// Generated Code Do Not Modify
// package org.allbinary.game.state
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameStateFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "NO_GAME_STATE", jr.call(this, "createGameState_1", [jr.JStr("NO_GAME_STATE")]))
    jr.set_field(this, "PLAYING_GAME_STATE", jr.call(this, "createGameState_1", [jr.JStr("PLAYING_GAME_STATE")]))
    jr.set_field(this, "SHOW_END_RESULT_GAME_STATE", jr.call(this, "createGameState_1", [jr.JStr("SHOW_END_RESULT_GAME_STATE")]))
    jr.set_field(this, "SHOW_HIGH_SCORE_GAME_STATE", jr.call(this, "createGameState_1", [jr.JStr("SHOW_HIGH_SCORE_GAME_STATE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameStateFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameStateFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameStateFactory", "instance", jr.new("GameStateFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameStateFactory", "instance")
}

fn c1_m9__creategamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.new("GameState", [l_name, jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameStateFactory",
        "org.allbinary.game.state.GameStateFactory",
        "Object",
        [],
        False,
        [#("index", jr.JInt(0)), #("NO_GAME_STATE", jr.JNull), #("PLAYING_GAME_STATE", jr.JNull), #("SHOW_END_RESULT_GAME_STATE", jr.JNull), #("SHOW_HIGH_SCORE_GAME_STATE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createGameState_1", ["String"], False, c1_m9__creategamestate), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

