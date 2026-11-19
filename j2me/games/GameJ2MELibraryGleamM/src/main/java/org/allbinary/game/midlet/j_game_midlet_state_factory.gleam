// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameMidletStateFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "currentGameState", jr.get_field(jr.call_static("GameStateFactory", "getInstance_0", []), "NO_GAME_STATE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameMidletStateFactory", "INSTANCE", jr.new("GameMidletStateFactory", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameMidletStateFactory", "INSTANCE")
}

fn c1_m6__getcurrentgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "currentGameState")
}

fn c1_m7__setcurrentgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_game_state] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "CURRENT")]), "append_1", [jr.JStr(" GameState: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_current_game_state])]), "toString_0", []), this, jr.JStr("setCurrentGameState")])
        jr.set_field(this, "currentGameState", l_current_game_state)
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameMidletStateFactory",
        "org.allbinary.game.midlet.GameMidletStateFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("currentGameState", jr.JNull)],
        [#("INSTANCE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("getCurrentGameState_0", [], False, c1_m6__getcurrentgamestate), 
            jr.Method("setCurrentGameState_1", ["GameState"], False, c1_m7__setcurrentgamestate), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

