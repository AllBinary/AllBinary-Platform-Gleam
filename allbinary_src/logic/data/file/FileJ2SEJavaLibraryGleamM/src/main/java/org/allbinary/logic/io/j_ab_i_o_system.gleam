// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbIOSystem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "type", jr.JStr("java.io"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbIOSystem", "instance", jr.new("AbIOSystem", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbIOSystem", "instance")
}

fn c1_m4__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "type")
}

fn c1_m5__istype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "type"), "compareTo_1", [l_type]), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
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
        "AbIOSystem",
        "org.allbinary.logic.io.AbIOSystem",
        "Object",
        [],
        False,
        [#("type", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getType_0", [], False, c1_m4__gettype), 
            jr.Method("isType_1", ["String"], False, c1_m5__istype), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

