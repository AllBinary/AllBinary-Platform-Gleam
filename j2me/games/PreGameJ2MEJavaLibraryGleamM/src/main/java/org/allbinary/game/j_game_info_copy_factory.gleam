// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInfoCopyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstancemaxlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info, l_max_level] = jargs
    let l_max_level = jr.as_i(l_max_level)
    jr.new("GameInfo", [jr.call(l_game_info, "getGameType_0", []), jr.call(l_game_info, "getGameMode_0", []), jr.call(l_game_info, "getPlayerType_0", []), l_max_level, jr.call(l_game_info, "getCurrentLevel_0", [])])
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info] = jargs
    jr.new("GameInfo", [jr.call(l_game_info, "getGameType_0", []), jr.call(l_game_info, "getGameMode_0", []), jr.call(l_game_info, "getPlayerType_0", []), jr.call(l_game_info, "getHighestLevel_0", []), jr.call(l_game_info, "getCurrentLevel_0", [])])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInfoCopyFactory",
        "org.allbinary.game.GameInfoCopyFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstanceMaxLevel_2", ["GameInfo", "int"], True, c1_m1__getinstancemaxlevel), 
            jr.Method("getInstance_1", ["GameInfo"], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

