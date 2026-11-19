// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Angle

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "value"))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "value", jr.as_s(l_angle))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Angle",
        "org.allbinary.math.Angle",
        "Object",
        [],
        False,
        [#("value", jr.JShort(0))],
        [],
        [
            jr.Method("getValue_0", [], False, c1_m3__getvalue), 
            jr.Method("jinit_1", ["short"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

