// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonResource

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_hint] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "RESOURCE", l_resource)
        jr.set_field(this, "HINT", l_hint)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonResource",
        "org.allbinary.input.motion.button.TouchButtonResource",
        "Object",
        [],
        False,
        [#("RESOURCE", jr.JNull), #("HINT", jr.JNull)],
        [],
        [
            jr.Method("jinit_2", ["String", "String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

