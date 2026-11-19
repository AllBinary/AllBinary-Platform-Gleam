// Generated Code Do Not Modify
// package org.allbinary.logic.java.bool
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BooleanFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TRUE", jr.new("Boolean", [jr.JBool(True)]))
    jr.set_field(this, "FALSE", jr.new("Boolean", [jr.JBool(False)]))
    jr.set_field(this, "TRUE_STRING", jr.call(jr.get_field(this, "TRUE"), "toString_0", []))
    jr.set_field(this, "FALSE_STRING", jr.call(jr.get_field(this, "FALSE"), "toString_0", []))
    jr.set_field(this, "YES", jr.JStr("yes"))
    jr.set_field(this, "NO", jr.JStr("no"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BooleanFactory", "instance", jr.new("BooleanFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BooleanFactory", "instance")
}

fn c1_m9__tostringb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bool] = jargs
    jr.method(fn() {
            case jr.truth(l_bool) {
            True -> {
            jr.ret(jr.get_field(this, "TRUE_STRING"))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(this, "FALSE_STRING"))
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
        "BooleanFactory",
        "org.allbinary.logic.java.bool.BooleanFactory",
        "Object",
        [],
        False,
        [#("TRUE", jr.JNull), #("FALSE", jr.JNull), #("TRUE_STRING", jr.JNull), #("FALSE_STRING", jr.JNull), #("YES", jr.JNull), #("NO", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("toStringb_1", ["boolean"], False, c1_m9__tostringb), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

