// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_m5__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m6__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "getName_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "id", jr.as_i(l_value))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerType",
        "org.allbinary.game.PlayerType",
        "Object",
        [],
        False,
        [#("id", jr.JInt(0)), #("name", jr.JNull)],
        [],
        [
            jr.Method("getId_0", [], False, c1_m4__getid), 
            jr.Method("getName_0", [], False, c1_m5__getname), 
            jr.Method("toString_0", [], False, c1_m6__tostring), 
            jr.Method("jinit_2", ["String", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

