// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FileFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FileFactory", "instance", jr.new("FileFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FileFactory", "instance")
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
    jr.call_static("AbFile", "createAbFileFromRawPath_1", [l_file_path])
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file, l_child_file_path] = jargs
    jr.call_static("AbFile", "createAbFileWithChild_2", [l_file, l_child_file_path])
}

fn c1_m5__isfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            let l_file = jr.call_static("AbFile", "createAbFile_1", [l_path])
            case jr.truth(jr.call(l_file, "exists_0", [])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FileFactory",
        "org.allbinary.logic.io.file.FileFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstance_1", ["String"], False, c1_m3__getinstance), 
            jr.Method("getInstance_2", ["AbFile", "String"], False, c1_m4__getinstance), 
            jr.Method("isFile_1", ["String"], False, c1_m5__isfile), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

