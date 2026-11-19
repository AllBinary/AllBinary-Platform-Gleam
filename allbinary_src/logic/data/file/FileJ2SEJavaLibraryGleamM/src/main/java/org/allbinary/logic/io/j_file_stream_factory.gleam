// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FileStreamFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FileStreamFactory", "SINGLETON", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("FileStreamFactory", "SINGLETON"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("FileStreamFactory", "SINGLETON", jr.new("FileStreamFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("FileStreamFactory", "SINGLETON")
}

fn c1_m4__getfileinputstreaminstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_file_name] = jargs
        let l__f_i_l_e_a_b_p_a_t_h = jr.new("AbPath", [l_path, l_file_name])
        let l_file = jr.call_static("AbFile", "createAbFileFromAbPath_1", [l__f_i_l_e_a_b_p_a_t_h])
    jr.call_static("AbFileInputStream", "createFromAbFile_1", [l_file])
}

fn c1_m5__getfileoutputstreaminstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_file_name] = jargs
        let l__f_i_l_e_a_b_p_a_t_h = jr.new("AbPath", [l_path, l_file_name])
        let l_file = jr.call_static("AbFile", "createAbFileFromAbPath_1", [l__f_i_l_e_a_b_p_a_t_h])
        case jr.truth(jr.call(l_file, "exists_0", [])) {
            True -> {
            jr.call(l_file, "delete_0", [])
            jr.call(l_file, "createNewFile_0", [])
            Nil
        }
            False -> Nil
        }
    jr.call_static("AbFileOutputStream", "createFromAbFile_1", [l_file])
}

fn c1_m6__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_file_name] = jargs
        let l__f_i_l_e_a_b_p_a_t_h = jr.new("AbPath", [l_path, l_file_name])
        let l_file = jr.call_static("AbFile", "createAbFileFromAbPath_1", [l__f_i_l_e_a_b_p_a_t_h])
        jr.call(l_file, "delete_0", [])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FileStreamFactory",
        "org.allbinary.logic.io.FileStreamFactory",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getFileInputStreamInstance_2", ["String", "String"], False, c1_m4__getfileinputstreaminstance), 
            jr.Method("getFileOutputStreamInstance_2", ["String", "String"], False, c1_m5__getfileoutputstreaminstance), 
            jr.Method("delete_2", ["String", "String"], False, c1_m6__delete), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

