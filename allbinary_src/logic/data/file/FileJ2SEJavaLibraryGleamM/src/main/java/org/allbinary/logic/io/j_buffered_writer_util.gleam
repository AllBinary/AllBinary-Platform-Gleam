// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BufferedWriterUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "commonLabels", jr.call_static("CommonLabels", "getInstance_0", []))
    jr.set_field(this, "REMOVING_OLD", jr.JStr("Remove old for overwriting: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BufferedWriterUtil", "instance", jr.new("BufferedWriterUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BufferedWriterUtil", "instance")
}

fn c1_m7__overwrite(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_data] = jargs
        let l_ab_file = jr.call_static("AbFile", "createAbFile_1", [l_path])
        case jr.truth(jr.call(l_ab_file, "exists_0", [])) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.get_field(this, "REMOVING_OLD"), l_path), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
            jr.call(l_ab_file, "delete_0", [])
            Nil
        }
            False -> {
            let l_name = jr.call(jr.call_static("AbPathData", "getInstance_0", []), "removeNameFromPath_1", [l_path])
            let l_ab_file_directory = jr.call_static("AbFile", "createAbFile_1", [l_name])
            case jr.truth(jr.call(l_ab_file_directory, "exists_0", [])) {
                True -> {
                Nil
            }
                False -> {
                let l_string_builder = jr.new("StringMaker", [])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(l_string_builder, "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")]), "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "COLON_SEP")]), "append_1", [l_name]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
                let l_result = jr.call(l_ab_file_directory, "mkdirs_0", [])
                jr.call(l_string_builder, "delete_2", [jr.JInt(0), jr.call(l_string_builder, "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_builder, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "RESULT_")]), "appendboolean_1", [l_result]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
                Nil
            }
            }
            Nil
        }
        }
        jr.call(this, "write_2", [l_ab_file, l_data])
    jr.JNull
}

fn c1_m8__overwrite(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_file, l_data] = jargs
        case jr.truth(jr.call(l_ab_file, "exists_0", [])) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.get_field(this, "REMOVING_OLD"), jr.call(l_ab_file, "getPath_0", [])), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
            jr.call(l_ab_file, "delete_0", [])
            Nil
        }
            False -> {
            let l_name = jr.call(jr.call_static("AbPathData", "getInstance_0", []), "removeNameFromPath_1", [jr.call(l_ab_file, "getAbsolutePath_0", [])])
            let l_ab_file_directory = jr.call_static("AbFile", "createAbFile_1", [l_name])
            case jr.truth(jr.call(l_ab_file_directory, "exists_0", [])) {
                True -> {
                Nil
            }
                False -> {
                let l_string_builder = jr.new("StringMaker", [])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(l_string_builder, "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")]), "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "COLON_SEP")]), "append_1", [l_name]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
                let l_result = jr.call(l_ab_file_directory, "mkdirs_0", [])
                jr.call(l_string_builder, "delete_2", [jr.JInt(0), jr.call(l_string_builder, "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_builder, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "RESULT_")]), "appendboolean_1", [l_result]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "CREATE")])
                Nil
            }
            }
            Nil
        }
        }
        jr.call(this, "write_2", [l_ab_file, l_data])
    jr.JNull
}

fn c1_m9__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_file, l_data] = jargs
        let l_file_out = jr.new("BufferedWriter", [jr.new("FileWriter", [jr.call_static("AbFileNativeUtil", "get_1", [l_ab_file])])])
        jr.call(l_file_out, "write_3", [l_data, jr.JInt(0), jr.call(l_data, "length_0", [])])
        jr.call(l_file_out, "newLine_0", [])
        jr.call(l_file_out, "flush_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BufferedWriterUtil",
        "org.allbinary.logic.io.BufferedWriterUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("commonLabels", jr.JNull), #("REMOVING_OLD", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("overwrite_2", ["String", "String"], False, c1_m7__overwrite), 
            jr.Method("overwrite_2", ["AbFile", "String"], False, c1_m8__overwrite), 
            jr.Method("write_2", ["AbFile", "String"], False, c1_m9__write), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

