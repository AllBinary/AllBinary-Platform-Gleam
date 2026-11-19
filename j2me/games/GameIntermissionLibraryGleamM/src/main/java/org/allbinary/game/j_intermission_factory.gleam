// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IntermissionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "START_LEVEL_INTERMISSION_GAME_STATE", jr.call(jr.call_static("GameStateFactory", "getInstance_0", []), "createGameState_1", [jr.JStr("START_LEVEL_INTERMISSION_GAME_STATE")]))
    jr.set_field(this, "WAIT_LEVEL_INTERMISSION_GAME_STATE", jr.call(jr.call_static("GameStateFactory", "getInstance_0", []), "createGameState_1", [jr.JStr("WAIT_LEVEL_INTERMISSION_GAME_STATE")]))
    jr.set_field(this, "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE", jr.call(jr.call_static("GameStateFactory", "getInstance_0", []), "createGameState_1", [jr.JStr("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")]))
    jr.set_field(this, "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE", jr.call(jr.call_static("GameStateFactory", "getInstance_0", []), "createGameState_1", [jr.JStr("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("IntermissionFactory", "instance", jr.new("IntermissionFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("IntermissionFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IntermissionFactory",
        "org.allbinary.game.IntermissionFactory",
        "Object",
        [],
        False,
        [#("START_LEVEL_INTERMISSION_GAME_STATE", jr.JNull), #("WAIT_LEVEL_INTERMISSION_GAME_STATE", jr.JNull), #("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE", jr.JNull), #("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

