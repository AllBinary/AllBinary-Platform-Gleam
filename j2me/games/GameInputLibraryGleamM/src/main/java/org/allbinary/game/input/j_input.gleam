// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Input

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

fn c1_m5__setid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
        jr.set_field(this, "id", jr.as_i(l_key))
    jr.JNull
}

fn c1_m6__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m7__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_name] = jargs
        jr.set_field(this, "name", l_key_name)
    jr.JNull
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Name: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Id: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getId_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_name] = jargs
    let l_id = jr.as_i(l_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setId_1", [l_id])
        jr.call(this, "setName_1", [l_name])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Input",
        "org.allbinary.game.input.Input",
        "Object",
        [],
        False,
        [#("id", jr.JInt(0)), #("name", jr.JNull)],
        [],
        [
            jr.Method("getId_0", [], False, c1_m4__getid), 
            jr.Method("setId_1", ["int"], False, c1_m5__setid), 
            jr.Method("getName_0", [], False, c1_m6__getname), 
            jr.Method("setName_1", ["String"], False, c1_m7__setname), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

