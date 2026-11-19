// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NormalJ2MEGameInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.new("NormalJ2MEDefaultGameInputMapping", []), "getInputMapping_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("J2MEGameInputMapping", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NormalJ2MEGameInputMapping",
        "org.allbinary.game.input.NormalJ2MEGameInputMapping",
        "J2MEGameInputMapping",
        [],
        False,
        [],
        [],
        [
            jr.Method("getDefault_0", [], False, c1_m1__getdefault), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

