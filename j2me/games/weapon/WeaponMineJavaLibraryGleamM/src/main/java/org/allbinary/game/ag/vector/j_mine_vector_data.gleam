// Generated Code Do Not Modify
// package org.allbinary.game.ag.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineVectorData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MineVectorData", "points", jr.array_of("L", [jr.array_of("L", [jr.array_of("I", [jr.JInt(10), jr.JInt(5)]), jr.array_of("I", [jr.JInt(2), jr.JInt(6)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)]), jr.array_of("I", [jr.JInt(2), jr.JInt(2)]), jr.array_of("I", [jr.JInt(10), jr.JInt(9)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)]), jr.array_of("I", [jr.JInt(10), jr.JInt(2)]), jr.array_of("I", [jr.JInt(2), jr.JInt(9)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)]), jr.array_of("I", [jr.JInt(2), jr.JInt(5)]), jr.array_of("I", [jr.JInt(10), jr.JInt(6)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)]), jr.array_of("I", [jr.JInt(7), jr.JInt(9)]), jr.array_of("I", [jr.JInt(5), jr.JInt(2)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)]), jr.array_of("I", [jr.JInt(7), jr.JInt(2)]), jr.array_of("I", [jr.JInt(5), jr.JInt(9)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)])])]))
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineVectorData",
        "org.allbinary.game.ag.vector.MineVectorData",
        "Object",
        [],
        False,
        [],
        [#("points", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

