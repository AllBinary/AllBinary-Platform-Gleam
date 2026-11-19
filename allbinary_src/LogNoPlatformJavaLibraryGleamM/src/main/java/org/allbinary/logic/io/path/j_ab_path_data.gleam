// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbPathData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EXTENSION_SEP", jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "PERIOD"))
    jr.set_field(this, "SEPARATORCHAR", jr.as_c(jr.JChar(47)))
    jr.set_field(this, "SEPARATOR", jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "FORWARD_SLASH"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbPathData", "instance", jr.new("AbPathData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbPathData", "instance")
}

fn c1_m7__getextensionindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
    jr.method(fn() {
            let l_index_of_file_extension_delmiter = jr.as_i(jr.call(l_file_path, "lastIndexOf_1", [jr.get_field(this, "EXTENSION_SEP")]))
            let l_index_of_lat_delimiter = jr.as_i(jr.call(l_file_path, "lastIndexOf_1", [jr.get_field(this, "SEPARATORCHAR")]))
            case jr.truth(jr.lt(l_index_of_file_extension_delmiter, jr.JInt(0))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(l_index_of_file_extension_delmiter, l_index_of_lat_delimiter)) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.as_i(l_index_of_file_extension_delmiter))
        jr.JNull
    })
}

fn c1_m8__getextensionwithdot(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
        let l_index_of_file_extension_delmiter = jr.as_i(jr.call(this, "getExtensionIndex_1", [l_file_path]))
        let l_extension = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        case jr.truth(jr.ge(l_index_of_file_extension_delmiter, jr.JInt(0))) {
            True -> {
            jr.set(l_extension, jr.call(l_file_path, "substring_1", [l_index_of_file_extension_delmiter]))
            Nil
        }
            False -> Nil
        }
    jr.get(l_extension)
}

fn c1_m9__getextension(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
        let l_index_of_file_extension_delmiter = jr.as_i(jr.call(this, "getExtensionIndex_1", [l_file_path]))
        let l_extension = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        case jr.truth(jr.ge(l_index_of_file_extension_delmiter, jr.JInt(0))) {
            True -> {
            jr.set(l_extension, jr.call(l_file_path, "substring_1", [jr.add(l_index_of_file_extension_delmiter, jr.JInt(1))]))
            Nil
        }
            False -> Nil
        }
    jr.get(l_extension)
}

fn c1_m10__getnamefrompath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            let l_end_index = jr.cell(jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(this, "SEPARATORCHAR")])))
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.set(l_end_index, jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(jr.call_static("FilePathData", "getInstance_0", []), "SEPARATORCHAR")])))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.ret(l_path)
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.eq(jr.call(l_path, "length_0", []), jr.add(jr.get(l_end_index), jr.JInt(1)))) {
            True -> {
            let l_category_name = jr.call(l_path, "substring_2", [jr.JInt(0), jr.get(l_end_index)])
            jr.ret(jr.call(this, "getNameFromPath_1", [l_category_name]))
            Nil
        }
            False -> {
            let l_category_name = jr.call(l_path, "substring_1", [jr.add(jr.get(l_end_index), jr.JInt(1))])
            jr.ret(l_category_name)
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m11__removenamefrompath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            let l_end_index = jr.cell(jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(this, "SEPARATORCHAR")])))
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.set(l_end_index, jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(jr.call_static("FilePathData", "getInstance_0", []), "SEPARATORCHAR")])))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.eq(jr.call(l_path, "length_0", []), jr.add(jr.get(l_end_index), jr.JInt(1)))) {
            True -> {
            jr.ret(jr.call(this, "removeNameFromPath_1", [jr.call(l_path, "substring_2", [jr.JInt(0), jr.sub(jr.get(l_end_index), jr.JInt(1))])]))
            Nil
        }
            False -> {
            let l_path_without_name = jr.call(l_path, "substring_2", [jr.JInt(0), jr.get(l_end_index)])
            jr.ret(l_path_without_name)
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbPathData",
        "org.allbinary.logic.io.path.AbPathData",
        "Object",
        [],
        False,
        [#("EXTENSION_SEP", jr.JNull), #("SEPARATORCHAR", jr.JChar(0)), #("SEPARATOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getExtensionIndex_1", ["String"], False, c1_m7__getextensionindex), 
            jr.Method("getExtensionWithDot_1", ["String"], False, c1_m8__getextensionwithdot), 
            jr.Method("getExtension_1", ["String"], False, c1_m9__getextension), 
            jr.Method("getNameFromPath_1", ["String"], False, c1_m10__getnamefrompath), 
            jr.Method("removeNameFromPath_1", ["String"], False, c1_m11__removenamefrompath), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

