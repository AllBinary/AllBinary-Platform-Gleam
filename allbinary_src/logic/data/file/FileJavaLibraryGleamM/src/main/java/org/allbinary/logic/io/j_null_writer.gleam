// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullWriter

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullWriter", "NULL_WRITER", jr.new("NullWriter", []))
    jr.JNull
}

fn c1_m2__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_c] = jargs
    let l_c = jr.as_i(l_c)
    jr.JNull
}

fn c1_m3__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cbuf, l_off, l_len] = jargs
    let l_off = jr.as_i(l_off)
    let l_len = jr.as_i(l_len)
    jr.JNull
}

fn c1_m4__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_str] = jargs
    jr.JNull
}

fn c1_m5__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_str, l_off, l_len] = jargs
    let l_off = jr.as_i(l_off)
    let l_len = jr.as_i(l_len)
    jr.JNull
}

fn c1_m6__flush(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Writer", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullWriter",
        "org.allbinary.logic.io.NullWriter",
        "Writer",
        [],
        False,
        [],
        [#("NULL_WRITER", jr.JNull)],
        [
            jr.Method("write_1", ["int"], False, c1_m2__write), 
            jr.Method("write_3", ["charArr", "int", "int"], False, c1_m3__write), 
            jr.Method("write_1", ["String"], False, c1_m4__write), 
            jr.Method("write_3", ["String", "int", "int"], False, c1_m5__write), 
            jr.Method("flush_0", [], False, c1_m6__flush), 
            jr.Method("close_0", [], False, c1_m7__close), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

