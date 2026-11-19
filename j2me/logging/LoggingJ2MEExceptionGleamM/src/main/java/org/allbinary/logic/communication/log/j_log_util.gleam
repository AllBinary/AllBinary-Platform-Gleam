// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logFormatUtil", jr.call_static("LogFormatUtil", "getInstance_0", []))
    jr.set_field(this, "LOG_SUCCESS", jr.JStr("org.allbinary: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogUtil", "instance", jr.new("LogUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogUtil", "instance")
}

fn c1_m6__putl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_log] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_log, jr.get_static("LogFactory", "LOG"))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_exception = jr.call(l_log, "getThrowable_0", [])
            case jr.truth(jr.eq(l_exception, jr.JNull)) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_special_message = jr.call(l_log, "getSpecialMessage_0", [])
            let l_any_type = jr.call(l_log, "getObject_0", [])
            let l_function_name = jr.call(l_log, "getFunctionName_0", [])
            jr.call(this, "put_4", [l_special_message, l_any_type, l_function_name, l_exception])
        jr.JNull
    })
}

fn c1_m7__putf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name] = jargs
    jr.JNull
}

fn c1_m8__putfs(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_class_name, l_function_name] = jargs
    jr.JNull
}

fn c1_m9__put(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name, l_exception] = jargs
        let l_class_name = jr.cell(jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EMPTY"))
        case jr.truth(jr.ne(jr.call(jr.call(l_any_type, "getClass_0", []), "getName_0", []), jr.JNull)) {
            True -> {
            jr.set(l_class_name, jr.new("String", [jr.call(jr.call(l_any_type, "getClass_0", []), "getName_0", [])]))
            Nil
        }
            False -> Nil
        }
        let l_message = jr.call(jr.get_field(this, "logFormatUtil"), "get_4", [jr.get(l_class_name), l_function_name, l_special_message, l_exception])
        jr.call(jr.get_static("System", "out"), "print_1", [jr.get_field(this, "LOG_SUCCESS")])
        jr.call(jr.get_static("System", "out"), "println_1", [l_message])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("logFormatUtil", jr.JNull), #("LOG_SUCCESS", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("putL_1", ["Log"], False, c1_m6__putl), 
            jr.Method("putF_3", ["String", "Object", "String"], False, c1_m7__putf), 
            jr.Method("putFS_3", ["String", "String", "String"], False, c1_m8__putfs), 
            jr.Method("put_4", ["String", "Object", "String", "Object"], False, c1_m9__put), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

