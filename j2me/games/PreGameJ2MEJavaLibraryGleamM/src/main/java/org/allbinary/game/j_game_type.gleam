// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameType",
        "org.allbinary.game.GameType",
        "Object",
        [],
        False,
        [#("name", jr.JNull)],
        [],
        [
            jr.Method("toString_0", [], False, c1_m3__tostring), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

