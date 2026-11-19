// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInfoData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "GAME_TYPE", jr.JStr("GAME_TYPE"))
    jr.set_field(this, "GAME_MODE", jr.JStr("GAME_MODE"))
    jr.set_field(this, "PLAYER_TYPE", jr.JStr("PLAYER_TYPE"))
    jr.set_field(this, "HIGHEST_LEVEL", jr.JStr("HIGHEST_LEVEL"))
    jr.set_field(this, "CURRENT_LEVEL", jr.JStr("CURRENT_LEVEL"))
    jr.set_field(this, "SOFTWARE_INFORMATION", jr.JStr("SOFTWARE_INFORMATION"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInfoData", "instance", jr.new("GameInfoData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameInfoData", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInfoData",
        "org.allbinary.game.GameInfoData",
        "Object",
        [],
        False,
        [#("GAME_TYPE", jr.JNull), #("GAME_MODE", jr.JNull), #("PLAYER_TYPE", jr.JNull), #("HIGHEST_LEVEL", jr.JNull), #("CURRENT_LEVEL", jr.JNull), #("SOFTWARE_INFORMATION", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

