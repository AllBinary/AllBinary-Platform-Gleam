// Generated Code Do Not Modify
// package org.allbinary.logic.java
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FileExtensionData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DOT_JAVA_SOURCE", jr.JStr(".java"))
    jr.set_field(this, "JAVA_SOURCE", jr.JStr("java"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FileExtensionData", "instance", jr.new("FileExtensionData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FileExtensionData", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FileExtensionData",
        "org.allbinary.logic.java.FileExtensionData",
        "Object",
        [],
        False,
        [#("DOT_JAVA_SOURCE", jr.JNull), #("JAVA_SOURCE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

