// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFileOutputStream

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfromabfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.new("AbFileOutputStream", [jr.call(l_file, "getPath_0", []), jr.JBool(False)])
}

fn c1_m2__createfromabfileappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file, l_append] = jargs
    jr.new("AbFileOutputStream", [jr.call(l_file, "getPath_0", []), l_append])
}

fn c1_m3__createfromfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.new("AbFileOutputStream", [l_name, jr.JBool(False)])
}

fn c1_m4__createfromfilepathappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_append] = jargs
    jr.new("AbFileOutputStream", [l_name, l_append])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_append] = jargs
        jr.super_init("FileOutputStream", this, [l_name, l_append])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFileOutputStream",
        "org.allbinary.logic.io.AbFileOutputStream",
        "FileOutputStream",
        [],
        False,
        [],
        [],
        [
            jr.Method("createFromAbFile_1", ["AbFile"], True, c1_m1__createfromabfile), 
            jr.Method("createFromAbFileAppend_2", ["AbFile", "boolean"], True, c1_m2__createfromabfileappend), 
            jr.Method("createFromFilePath_1", ["String"], True, c1_m3__createfromfilepath), 
            jr.Method("createFromFilePathAppend_2", ["String", "boolean"], True, c1_m4__createfromfilepathappend), 
            jr.Method("jinit_2", ["String", "boolean"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

