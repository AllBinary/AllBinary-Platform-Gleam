// Generated Code Do Not Modify
// package org.allbinary.ag.game.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthVectorData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HealthVectorData", "points", jr.array_of("L", [jr.array_of("L", [jr.array_of("I", [jr.JInt(2), jr.JInt(1)]), jr.array_of("I", [jr.JInt(3), jr.JInt(2)]), jr.array_of("I", [jr.JInt(3), jr.JInt(2)]), jr.array_of("I", [jr.JInt(4), jr.JInt(1)]), jr.array_of("I", [jr.JInt(4), jr.JInt(1)]), jr.array_of("I", [jr.JInt(5), jr.JInt(1)]), jr.array_of("I", [jr.JInt(5), jr.JInt(1)]), jr.array_of("I", [jr.JInt(6), jr.JInt(2)]), jr.array_of("I", [jr.JInt(6), jr.JInt(2)]), jr.array_of("I", [jr.JInt(6), jr.JInt(3)]), jr.array_of("I", [jr.JInt(6), jr.JInt(3)]), jr.array_of("I", [jr.JInt(3), jr.JInt(6)]), jr.array_of("I", [jr.JInt(3), jr.JInt(6)]), jr.array_of("I", [jr.JInt(0), jr.JInt(3)]), jr.array_of("I", [jr.JInt(0), jr.JInt(3)]), jr.array_of("I", [jr.JInt(0), jr.JInt(2)]), jr.array_of("I", [jr.JInt(0), jr.JInt(2)]), jr.array_of("I", [jr.JInt(1), jr.JInt(1)]), jr.array_of("I", [jr.JInt(1), jr.JInt(1)]), jr.array_of("I", [jr.JInt(2), jr.JInt(1)]), jr.array_of("I", [jr.JInt(1000), jr.JInt(1000)])])]))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthVectorData",
        "org.allbinary.ag.game.vector.HealthVectorData",
        "Object",
        [],
        False,
        [],
        [#("points", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

