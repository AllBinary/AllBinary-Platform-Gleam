// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameMode

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameMode", "NONE", jr.new("GameMode", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.set_static("GameMode", "SERVER", jr.new("GameMode", [jr.JStr("Server")]))
    jr.set_static("GameMode", "CLIENT", jr.new("GameMode", [jr.JStr("Client")]))
    jr.JNull
}

fn c1_m6__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
    jr.JNull
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "getName_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setName_1", [l_name])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameMode",
        "org.allbinary.game.GameMode",
        "Object",
        [],
        False,
        [#("name", jr.JNull)],
        [#("NONE", jr.JNull), #("SERVER", jr.JNull), #("CLIENT", jr.JNull)],
        [
            jr.Method("setName_1", ["String"], False, c1_m6__setname), 
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_1", ["String"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

