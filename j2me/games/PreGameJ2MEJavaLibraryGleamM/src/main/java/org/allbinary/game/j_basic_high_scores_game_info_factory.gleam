// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicHighScoresGameInfoFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MULTI_PLAYER_SERVER", jr.new("GameInfo", [jr.get_field(jr.call_static("GameTypeFactory", "getInstance_0", []), "MULTI_PLAYER"), jr.get_static("GameMode", "SERVER"), jr.get_field(jr.call_static("PlayerTypesFactory", "getInstance_0", []), "PLAYER_TYPE_ONE"), jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "SINGLE_PLAYER_SERVER", jr.new("GameInfo", [jr.get_field(jr.call_static("GameTypeFactory", "getInstance_0", []), "SINGLE_PLAYER"), jr.get_static("GameMode", "SERVER"), jr.get_field(jr.call_static("PlayerTypesFactory", "getInstance_0", []), "PLAYER_TYPE_ONE"), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicHighScoresGameInfoFactory", "SINGLETON", jr.new("BasicHighScoresGameInfoFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicHighScoresGameInfoFactory", "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicHighScoresGameInfoFactory",
        "org.allbinary.game.BasicHighScoresGameInfoFactory",
        "Object",
        [],
        False,
        [#("MULTI_PLAYER_SERVER", jr.JNull), #("SINGLE_PLAYER_SERVER", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

