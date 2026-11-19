// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialGameInputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SpecialGameInputFactory", "NO_SPECIAL_GAME_INPUT", jr.new("SpecialGameInput", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialGameInputFactory",
        "org.allbinary.game.layer.special.SpecialGameInputFactory",
        "Object",
        [],
        False,
        [],
        [#("NO_SPECIAL_GAME_INPUT", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

