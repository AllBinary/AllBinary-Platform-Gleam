// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameDifficultyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "level", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameDifficultyFactory", "instance", jr.new("GameDifficultyFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameDifficultyFactory", "instance")
}

fn c1_m4__setlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.set_field(this, "level", jr.as_i(l_level))
    jr.JNull
}

fn c1_m5__getlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "level"))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameDifficultyFactory",
        "org.allbinary.game.configuration.persistance.GameDifficultyFactory",
        "Object",
        [],
        False,
        [#("level", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setLevel_1", ["int"], False, c1_m4__setlevel), 
            jr.Method("getLevel_0", [], False, c1_m5__getlevel), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

