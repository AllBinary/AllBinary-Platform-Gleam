// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BufferedLineReader

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__readuptolines(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_read_ahead_index] = jargs
    let l_read_ahead_index = jr.as_j(l_read_ahead_index)
    jr.JNull
}

fn c1_m4__readline(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "tmpIn"), "readLine_0", [])
}

fn c1_m5__ready(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "tmpIn"), "ready_0", [])
}

fn c1_m6__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_m7__getcurrent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "tmpIn", jr.new("BufferedReader", [jr.new("FileReader", [jr.call_static("AbFileNativeUtil", "get_1", [l_file])])]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BufferedLineReader",
        "org.allbinary.logic.io.BufferedLineReader",
        "Object",
        [],
        False,
        [#("tmpIn", jr.JNull)],
        [],
        [
            jr.Method("readUpToLines_1", ["long"], False, c1_m3__readuptolines), 
            jr.Method("readLine_0", [], False, c1_m4__readline), 
            jr.Method("ready_0", [], False, c1_m5__ready), 
            jr.Method("getSize_0", [], False, c1_m6__getsize), 
            jr.Method("getCurrent_0", [], False, c1_m7__getcurrent), 
            jr.Method("jinit_1", ["AbFile"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

