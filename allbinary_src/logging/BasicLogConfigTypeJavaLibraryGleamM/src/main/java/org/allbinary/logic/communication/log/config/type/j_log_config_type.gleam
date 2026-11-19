// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogConfigType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m5__getdescription(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "description")
}

fn c1_m6__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        jr.set_field(this, "name", l_value)
    jr.JNull
}

fn c1_m7__setdescription(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        jr.set_field(this, "description", l_value)
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_description] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "description", l_description)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogConfigType",
        "org.allbinary.logic.communication.log.config.type.LogConfigType",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("description", jr.JNull)],
        [],
        [
            jr.Method("getName_0", [], False, c1_m4__getname), 
            jr.Method("getDescription_0", [], False, c1_m5__getdescription), 
            jr.Method("setName_1", ["String"], False, c1_m6__setname), 
            jr.Method("setDescription_1", ["String"], False, c1_m7__setdescription), 
            jr.Method("jinit_2", ["String", "String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

