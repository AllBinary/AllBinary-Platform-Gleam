// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FilePathUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__adjust(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    let l_path = jr.cell(l_path)
    jr.method(fn() {
            let l_ab_path_data = jr.call_static("AbPathData", "getInstance_0", [])
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            let l_file_path_data = jr.call_static("FilePathData", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.get(l_path)])) {
            True -> {
            jr.ret(jr.get_field(l_file_path_data, "PATH_START"))
            Nil
        }
            False -> Nil
        }
            jr.set(l_path, jr.call(jr.get(l_path), "replace_2", [jr.get_field(l_ab_path_data, "SEPARATORCHAR"), jr.get_field(l_file_path_data, "SEPARATORCHAR")]))
            jr.ret(jr.get(l_path))
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FilePathUtil",
        "org.allbinary.logic.io.file.FilePathUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("adjust_1", ["String"], True, c1_m2__adjust), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

