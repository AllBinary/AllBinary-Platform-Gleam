// Generated Code Do Not Modify
// package org.allbinary.logic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PropertyInitUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PropertyInitUtil", "instance", jr.new("PropertyInitUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        jr.call(l_log_util, "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("PropertyInitUtil: ")]), "appendint_1", [l_value]), "toString_0", []), l_log_util, jr.get_field(l_common_strings, "CONSTRUCTOR")])
    jr.get_static("PropertyInitUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PropertyInitUtil",
        "org.allbinary.logic.PropertyInitUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_1", ["int"], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

