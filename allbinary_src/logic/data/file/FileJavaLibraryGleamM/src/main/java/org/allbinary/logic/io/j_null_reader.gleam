// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullReader

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullReader", "NULL_READER", jr.new("NullReader", []))
    jr.JNull
}

fn c1_m2__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m3__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cbuf, l_off, l_len] = jargs
    let l_off = jr.as_i(l_off)
    let l_len = jr.as_i(l_len)
    jr.as_i(jr.JInt(-1))
}

fn c1_m4__ready(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m5__skip(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_n] = jargs
    let l_n = jr.as_j(l_n)
    jr.as_j(jr.JLong(0))
}

fn c1_m6__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Reader", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullReader",
        "org.allbinary.logic.io.NullReader",
        "Reader",
        [],
        False,
        [],
        [#("NULL_READER", jr.JNull)],
        [
            jr.Method("read_0", [], False, c1_m2__read), 
            jr.Method("read_3", ["charArr", "int", "int"], False, c1_m3__read), 
            jr.Method("ready_0", [], False, c1_m4__ready), 
            jr.Method("skip_1", ["long"], False, c1_m5__skip), 
            jr.Method("close_0", [], False, c1_m6__close), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

