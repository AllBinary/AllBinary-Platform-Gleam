// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogFormatUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeStampUtil", jr.call_static("TimeStampUtil", "getInstance_0", []))
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.set_field(this, "NONE", jr.JStr("None"))
    jr.set_field(this, "LOG_ERROR", jr.JStr("\nLog-Error: "))
    jr.set_field(this, "EMPTY", jr.JStr("Empty"))
    jr.set_field(this, "STACK_TRACE", jr.JStr("\nStack Trace: "))
    jr.set_field(this, "TIME", jr.JStr("Time: "))
    jr.set_field(this, "CLASS_NAME", jr.get_field(jr.get_field(this, "commonSeps"), "SPACE"))
    jr.set_field(this, "FUNCTION_CALL", jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "COLON_SEP"))
    jr.set_field(this, "SPECIAL_MESSAGE", jr.JStr("> "))
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "exceptionUtil", jr.call_static("ExceptionUtil", "getInstance_0", []))
    jr.set_field(this, "nullUtil", jr.call_static("NullUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogFormatUtil", "instance", jr.new("LogFormatUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogFormatUtil", "instance")
}

fn c1_m14__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_name, l_function_name, l_special_message, l_exception] = jargs
        let l_string_buffer = jr.call(this, "getF_2", [l_class_name, l_function_name])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getO_1", [l_exception])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPECIAL_MESSAGE")])
        jr.call(l_string_buffer, "append_1", [l_special_message])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "NEW_LINE")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m15__gets(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_name, l_function_name, l_special_message] = jargs
        let l_string_buffer = jr.call(this, "getF_2", [l_class_name, l_function_name])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPECIAL_MESSAGE")])
        jr.call(l_string_buffer, "append_1", [l_special_message])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "NEW_LINE")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m16__getf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_name, l_function_name] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "TIME")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "timeStampUtil"), "getAsString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "CLASS_NAME")])
        jr.call(l_string_buffer, "append_1", [l_class_name])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "FUNCTION_CALL")])
        jr.call(l_string_buffer, "append_1", [l_function_name])
    l_string_buffer
}

fn c1_m20__geto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_exception] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(l_exception, jr.get_field(jr.get_field(this, "nullUtil"), "NULL_OBJECT"))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "LOG_ERROR")])
            let l_exception_as_string = jr.call(l_exception, "toString_0", [])
            jr.call(l_string_buffer, "append_1", [l_exception_as_string])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "STACK_TRACE")])
            case jr.truth(jr.ne(l_exception, jr.get_field(jr.get_field(this, "nullUtil"), "NULL_OBJECT"))) {
                True -> {
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "exceptionUtil"), "getStackTrace_1", [l_exception])])
                Nil
            }
                False -> {
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "stringUtil"), "NULL_STRING")])
                Nil
            }
            }
            jr.ret(jr.call(l_string_buffer, "toString_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("timeStampUtil", jr.JNull), #("commonSeps", jr.JNull), #("NONE", jr.JNull), #("LOG_ERROR", jr.JNull), #("EMPTY", jr.JNull), #("STACK_TRACE", jr.JNull), #("TIME", jr.JNull), #("CLASS_NAME", jr.JNull), #("FUNCTION_CALL", jr.JNull), #("SPECIAL_MESSAGE", jr.JNull), #("stringUtil", jr.JNull), #("exceptionUtil", jr.JNull), #("nullUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("get_4", ["String", "String", "String", "Object"], False, c1_m14__get), 
            jr.Method("getS_3", ["String", "String", "String"], False, c1_m15__gets), 
            jr.Method("getF_2", ["String", "String"], False, c1_m16__getf), 
            jr.Method("getO_1", ["Object"], False, c1_m20__geto), 
            jr.Method("jinit_0", [], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}

