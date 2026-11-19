// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_GAME_TYPE_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "NONE", jr.new("GameType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.set_field(this, "SINGLE_PLAYER", jr.new("GameType", [jr.JStr("Single Player")]))
    jr.set_field(this, "MULTI_PLAYER", jr.new("GameType", [jr.JStr("Multi Player")]))
    jr.set_field(this, "BOT", jr.new("GameType", [jr.JStr("Artificial Player")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameTypeFactory", "instance", jr.new("GameTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameTypeFactory",
        "org.allbinary.game.GameTypeFactory",
        "Object",
        [],
        False,
        [#("NULL_GAME_TYPE_ARRAY", jr.JNull), #("NONE", jr.JNull), #("SINGLE_PLAYER", jr.JNull), #("MULTI_PLAYER", jr.JNull), #("BOT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

