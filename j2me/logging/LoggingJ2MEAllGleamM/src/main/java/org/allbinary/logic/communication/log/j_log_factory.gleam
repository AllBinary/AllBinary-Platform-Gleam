// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstanced(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        let l_null_util = jr.call_static("NullUtil", "getInstance_0", [])
    jr.new("Log", [jr.get_field(l_string_util, "EMPTY_STRING"), jr.get_field(l_null_util, "NULL_OBJECT"), jr.get_field(l_string_util, "EMPTY_STRING"), jr.get_field(l_null_util, "NULL_OBJECT")])
}

fn c1_m2__getinstancenof(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_exception] = jargs
    jr.new("Log", [l_special_message, l_any_type, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_exception])
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name, l_exception] = jargs
    jr.new("Log", [l_special_message, l_any_type, l_function_name, l_exception])
}

fn c1_m4__getinstancef(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name] = jargs
        let l_null_util = jr.call_static("NullUtil", "getInstance_0", [])
    jr.new("Log", [l_special_message, l_any_type, l_function_name, jr.get_field(l_null_util, "NULL_OBJECT")])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogFactory",
        "org.allbinary.logic.communication.log.LogFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstanceD_0", [], True, c1_m1__getinstanced), 
            jr.Method("getInstanceNoF_3", ["String", "Object", "Object"], True, c1_m2__getinstancenof), 
            jr.Method("getInstance_4", ["String", "Object", "String", "Object"], True, c1_m3__getinstance), 
            jr.Method("getInstanceF_3", ["String", "Object", "String"], True, c1_m4__getinstancef), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

