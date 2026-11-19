// Generated Code Do Not Modify
// package org.allbinary.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyValueFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MAP", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("KeyValueFactory", "instance", jr.new("KeyValueFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("KeyValueFactory", "instance")
}

fn c1_m4__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    jr.method(fn() {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "MAP"), "containsKey_1", [l_key]))) {
            True -> {
            jr.ret(l_key)
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.call(jr.get_field(this, "MAP"), "get_1", [l_key]))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeyValueFactory",
        "org.allbinary.resources.KeyValueFactory",
        "Object",
        [],
        False,
        [#("MAP", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("get_1", ["String"], False, c1_m4__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

