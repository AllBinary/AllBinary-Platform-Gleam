// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogUtil", "instance", jr.new("LogUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogUtil", "instance")
}

fn c1_m4__putp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_log] = jargs
    jr.JNull
}

fn c1_m5__putf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name] = jargs
    jr.JNull
}

fn c1_m6__putfs(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_class_name, l_function_name] = jargs
    jr.JNull
}

fn c1_m7__put(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name, l_exception] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogUtil",
        "org.allbinary.logic.communication.log.LogUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("putP_1", ["Log"], False, c1_m4__putp), 
            jr.Method("putF_3", ["String", "Object", "String"], False, c1_m5__putf), 
            jr.Method("putFS_3", ["String", "String", "String"], False, c1_m6__putfs), 
            jr.Method("put_4", ["String", "Object", "String", "Object"], False, c1_m7__put), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

