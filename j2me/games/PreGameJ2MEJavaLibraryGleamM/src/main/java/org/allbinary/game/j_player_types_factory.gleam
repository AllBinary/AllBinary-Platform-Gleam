// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerTypesFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PLAYER_TYPE_ONE", jr.new("PlayerType", [jr.JStr("Player Type One"), jr.JInt(0)]))
    jr.set_field(this, "PLAYER_TYPE_TWO", jr.new("PlayerType", [jr.JStr("Player Type Two"), jr.JInt(1)]))
    jr.set_field(this, "PLAYER_TYPE_THREE", jr.new("PlayerType", [jr.JStr("Player Type Three"), jr.JInt(2)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlayerTypesFactory", "SINGLETON", jr.new("PlayerTypesFactory", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlayerTypesFactory", "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerTypesFactory",
        "org.allbinary.game.PlayerTypesFactory",
        "Object",
        [],
        False,
        [#("PLAYER_TYPE_ONE", jr.JNull), #("PLAYER_TYPE_TWO", jr.JNull), #("PLAYER_TYPE_THREE", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

