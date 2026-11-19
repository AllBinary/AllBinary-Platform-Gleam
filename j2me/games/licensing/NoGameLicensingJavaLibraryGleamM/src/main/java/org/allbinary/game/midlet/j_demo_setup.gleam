// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoSetup

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_midlet] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoSetup",
        "org.allbinary.game.midlet.DemoSetup",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_1", ["GameMidlet"], False, c1_m1__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

