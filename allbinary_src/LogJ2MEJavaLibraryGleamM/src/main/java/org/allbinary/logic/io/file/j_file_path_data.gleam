// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FilePathData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SEPARATORCHAR", jr.as_c(jr.JChar(92)))
    jr.set_field(this, "PATH_START", jr.JStr("\\\\"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FilePathData", "instance", jr.new("FilePathData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FilePathData", "instance")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FilePathData",
        "org.allbinary.logic.io.file.FilePathData",
        "Object",
        [],
        False,
        [#("SEPARATORCHAR", jr.JChar(0)), #("PATH_START", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

