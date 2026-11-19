// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFileLocalInputStream

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
        jr.super_init("AbFileInputStream", this, [jr.call(jr.call_static("AbFileNativeUtil", "get_1", [l_file]), "getPath_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFileLocalInputStream",
        "org.allbinary.logic.io.AbFileLocalInputStream",
        "AbFileInputStream",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["AbFile"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

