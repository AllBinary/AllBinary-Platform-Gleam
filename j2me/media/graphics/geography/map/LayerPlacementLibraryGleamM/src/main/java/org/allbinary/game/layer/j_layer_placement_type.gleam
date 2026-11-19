// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerPlacementType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "type"))
}

fn c1_m4__settype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_type] = jargs
    let l_type = jr.as_i(l_type)
        jr.set_field(this, "type", jr.as_i(l_type))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_type] = jargs
    let l_type = jr.as_i(l_type)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "type", jr.as_i(l_type))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerPlacementType",
        "org.allbinary.game.layer.LayerPlacementType",
        "Object",
        [],
        False,
        [#("type", jr.JInt(0))],
        [],
        [
            jr.Method("getType_0", [], False, c1_m3__gettype), 
            jr.Method("setType_1", ["int"], False, c1_m4__settype), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

