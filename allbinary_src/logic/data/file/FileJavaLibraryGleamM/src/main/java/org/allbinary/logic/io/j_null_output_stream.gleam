// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullOutputStream

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullOutputStream", "NULL_OUTPUT_STREAM", jr.new("NullOutputStream", []))
    jr.JNull
}

fn c1_m2__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_b] = jargs
    let l_b = jr.as_i(l_b)
    jr.JNull
}

fn c1_m3__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_b, l_off, l_len] = jargs
    let l_off = jr.as_i(l_off)
    let l_len = jr.as_i(l_len)
    jr.JNull
}

fn c1_m4__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("OutputStream", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullOutputStream",
        "org.allbinary.logic.io.NullOutputStream",
        "OutputStream",
        [],
        False,
        [],
        [#("NULL_OUTPUT_STREAM", jr.JNull)],
        [
            jr.Method("write_1", ["int"], False, c1_m2__write), 
            jr.Method("write_3", ["byteArr", "int", "int"], False, c1_m3__write), 
            jr.Method("close_0", [], False, c1_m4__close), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

