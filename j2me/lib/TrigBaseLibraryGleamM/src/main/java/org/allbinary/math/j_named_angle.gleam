// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NamedAngle

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle, l_name] = jargs
    let l_angle = jr.as_s(l_angle)
        jr.super_init("Angle", this, [l_angle])
        c1_jfields(this)
        jr.set_field(this, "name", l_name)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NamedAngle",
        "org.allbinary.math.NamedAngle",
        "Angle",
        [],
        False,
        [#("name", jr.JNull)],
        [],
        [
            jr.Method("jinit_2", ["short", "String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

