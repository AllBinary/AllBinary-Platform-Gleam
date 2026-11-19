// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogFormatUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogFormatUtil", "instance", jr.new("LogFormatUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogFormatUtil", "instance")
}

fn c1_m4__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_name, l_function_name, l_special_message, l_exception] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m5__gets(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_name, l_function_name, l_special_message] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__geto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_exception] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogFormatUtil",
        "org.allbinary.logic.communication.log.LogFormatUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("get_4", ["String", "String", "String", "Object"], False, c1_m4__get), 
            jr.Method("getS_3", ["String", "String", "String"], False, c1_m5__gets), 
            jr.Method("getO_1", ["Object"], False, c1_m6__geto), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

