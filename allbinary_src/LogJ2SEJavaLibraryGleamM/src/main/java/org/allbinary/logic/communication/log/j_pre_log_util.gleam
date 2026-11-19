// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PreLogUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__put(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name] = jargs
        jr.call_static("PreLogUtil", "putOE_4", [l_special_message, l_any_type, l_function_name, jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
    jr.JNull
}

fn c1_m4__putoe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_any_type, l_function_name, l_exception] = jargs
        let l_class_name = jr.cell(jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EMPTY"))
        case jr.truth(jr.ne(jr.call(jr.call(l_any_type, "getClass_0", []), "getName_0", []), jr.JNull)) {
            True -> {
            jr.set(l_class_name, jr.new("String", [jr.call(jr.call(l_any_type, "getClass_0", []), "getName_0", [])]))
            Nil
        }
            False -> Nil
        }
        let l_message = jr.call(jr.call_static("LogFormatUtil", "getInstance_0", []), "get_4", [jr.get(l_class_name), l_function_name, l_special_message, l_exception])
        jr.call(jr.get_static("System", "out"), "print_1", [jr.get_static("PreLogUtil", "LOG_SUCCESS")])
        jr.call(jr.get_static("System", "out"), "println_1", [l_message])
    jr.JNull
}

fn c1_m5__puts(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_class_name, l_function_name] = jargs
        jr.call_static("PreLogUtil", "putSE_4", [l_special_message, l_class_name, l_function_name, jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
    jr.JNull
}

fn c1_m6__putse(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_message, l_class_name, l_function_name, l_exception] = jargs
        let l_message = jr.call(jr.call_static("LogFormatUtil", "getInstance_0", []), "get_4", [l_class_name, l_function_name, l_special_message, l_exception])
        jr.call(jr.get_static("System", "out"), "print_1", [jr.get_static("PreLogUtil", "LOG_SUCCESS")])
        jr.call(jr.get_static("System", "out"), "println_1", [l_message])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PreLogUtil",
        "org.allbinary.logic.communication.log.PreLogUtil",
        "Object",
        [],
        False,
        [],
        [#("LOG_SUCCESS", jr.JStr("org.allbinary: "))],
        [
            jr.Method("put_3", ["String", "Object", "String"], True, c1_m2__put), 
            jr.Method("putOE_4", ["String", "Object", "String", "Object"], True, c1_m4__putoe), 
            jr.Method("putS_3", ["String", "String", "String"], True, c1_m5__puts), 
            jr.Method("putSE_4", ["String", "String", "String", "Object"], True, c1_m6__putse), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

