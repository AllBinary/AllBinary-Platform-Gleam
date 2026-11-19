// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PrimitiveIntUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getarrayinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY")
}

fn c1_m3__gettwodimensionalarrayinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PrimitiveIntUtil",
        "org.allbinary.logic.math.PrimitiveIntUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getArrayInstance_0", [], True, c1_m2__getarrayinstance), 
            jr.Method("getTwoDimensionalArrayInstance_0", [], True, c1_m3__gettwodimensionalarrayinstance), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

