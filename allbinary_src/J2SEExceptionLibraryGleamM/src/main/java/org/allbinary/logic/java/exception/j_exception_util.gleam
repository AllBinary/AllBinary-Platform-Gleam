// Generated Code Do Not Modify
// package org.allbinary.logic.java.exception
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ExceptionUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.JStr("No Stack Trace"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ExceptionUtil", "instance", jr.new("ExceptionUtil", []))
    jr.set_static("ExceptionUtil", "PRETEND_EXCEPTION", jr.new("Exception", [jr.JStr("Not Really An Exception")]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ExceptionUtil", "instance")
}

fn c1_m6__getstacktrace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_e] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(l_e, jr.JNull)) {
            True -> {
            let l_byte_array_output_stream = jr.new("ByteArrayOutputStream", [])
            let l_print_stream = jr.new("PrintStream", [l_byte_array_output_stream])
            jr.call(l_e, "printStackTrace_1", [l_print_stream])
            let l_output = jr.call(l_byte_array_output_stream, "toString_0", [])
            jr.ret(jr.new("String", [l_output]))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.get_field(this, "NONE"))
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ExceptionUtil",
        "org.allbinary.logic.java.exception.ExceptionUtil",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull)],
        [#("instance", jr.JNull), #("PRETEND_EXCEPTION", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getStackTrace_1", ["Throwable"], False, c1_m6__getstacktrace), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

