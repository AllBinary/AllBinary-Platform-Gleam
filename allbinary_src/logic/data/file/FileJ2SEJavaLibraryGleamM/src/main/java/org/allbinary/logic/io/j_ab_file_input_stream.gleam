// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFileInputStream

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__createfromabfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.new("AbFileInputStream", [jr.call(jr.call_static("AbFileNativeUtil", "get_1", [l_file]), "getPath_0", [])])
}

fn c1_m3__createfromfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.new("AbFileInputStream", [jr.call(l_file, "getPath_0", [])])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.super_init("FileInputStream", this, [l_name])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFileInputStream",
        "org.allbinary.logic.io.AbFileInputStream",
        "FileInputStream",
        [],
        False,
        [],
        [],
        [
            jr.Method("createFromAbFile_1", ["AbFile"], True, c1_m2__createfromabfile), 
            jr.Method("createFromFile_1", ["File"], True, c1_m3__createfromfile), 
            jr.Method("jinit_1", ["String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

