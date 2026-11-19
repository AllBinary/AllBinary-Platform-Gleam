// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Log

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logFormatUtil", jr.call_static("LogFormatUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getspecialmessage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "specialMessage")
}

fn c1_m8__getobject(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "anyType")
}

fn c1_m9__getfunctionname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "functionName")
}

fn c1_m10__getthrowable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "exception")
}

fn c1_m11__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_class_name = jr.cell(jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EMPTY"))
        let l_clazz = jr.call(jr.get_field(this, "anyType"), "getClass_0", [])
        case jr.truth(jr.ne(jr.call(l_clazz, "getName_0", []), jr.JNull)) {
            True -> {
            jr.set(l_class_name, jr.call(l_clazz, "getName_0", []))
            Nil
        }
            False -> Nil
        }
    jr.call(jr.get_field(this, "logFormatUtil"), "get_4", [jr.get(l_class_name), jr.get_field(this, "functionName"), jr.get_field(this, "specialMessage"), jr.get_field(this, "exception")])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name, l_exception] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "specialMessage", l_special_message)
        jr.set_field(this, "anyType", l_any_type)
        jr.set_field(this, "functionName", l_function_name)
        jr.set_field(this, "exception", l_exception)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Log",
        "org.allbinary.logic.communication.log.Log",
        "Object",
        [],
        False,
        [#("logFormatUtil", jr.JNull), #("specialMessage", jr.JNull), #("anyType", jr.JNull), #("functionName", jr.JNull), #("exception", jr.JNull)],
        [],
        [
            jr.Method("getSpecialMessage_0", [], False, c1_m7__getspecialmessage), 
            jr.Method("getObject_0", [], False, c1_m8__getobject), 
            jr.Method("getFunctionName_0", [], False, c1_m9__getfunctionname), 
            jr.Method("getThrowable_0", [], False, c1_m10__getthrowable), 
            jr.Method("toString_0", [], False, c1_m11__tostring), 
            jr.Method("jinit_4", ["String", "Object", "String", "Object"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

