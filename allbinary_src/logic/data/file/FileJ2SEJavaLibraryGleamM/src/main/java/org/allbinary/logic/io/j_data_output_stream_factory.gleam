// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DataOutputStreamFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DataOutputStreamFactory", "instance", jr.new("DataOutputStreamFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DataOutputStreamFactory", "instance")
}

fn c1_m3__getinstanceforabfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
        let l_id_file_output_stream = jr.call_static("AbFileOutputStream", "createFromAbFile_1", [l_file])
        let l_id_out_data = jr.new("AbDataOutputStream", [l_id_file_output_stream])
    l_id_out_data
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path, l_file_name] = jargs
        let l_file_stream_factory = jr.call_static("FileStreamFactory", "getInstance_0", [])
        let l_file_output_stream = jr.call(l_file_stream_factory, "getFileOutputStreamInstance_2", [l_file_path, l_file_name])
        let l_id_out_data = jr.new("AbDataOutputStream", [l_file_output_stream])
    l_id_out_data
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DataOutputStreamFactory",
        "org.allbinary.logic.io.DataOutputStreamFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstanceForAbFile_1", ["AbFile"], False, c1_m3__getinstanceforabfile), 
            jr.Method("getInstance_2", ["String", "String"], False, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

