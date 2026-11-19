// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PathUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "abPathData", jr.call_static("AbPathData", "getInstance_0", []))
    jr.set_field(this, "filePathData", jr.call_static("FilePathData", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PathUtil", "instance", jr.new("PathUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PathUtil", "instance")
}

fn c1_m6__getextensionwithabfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_file_path] = jargs
    jr.call(jr.get_field(this, "abPathData"), "getExtension_1", [jr.call(l_ab_file_path, "toString_0", [])])
}

fn c1_m7__getextensionwithabpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_path] = jargs
    jr.call(jr.get_field(this, "abPathData"), "getExtension_1", [jr.call(l_ab_path, "toString_0", [])])
}

fn c1_m8__getwithoutextensionwithabfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_file_path] = jargs
    jr.call(this, "getWithoutExtension_1", [jr.call(l_ab_file_path, "toString_0", [])])
}

fn c1_m9__getwithoutextensionwithabpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_path] = jargs
    jr.call(this, "getWithoutExtension_1", [jr.call(l_ab_path, "toString_0", [])])
}

fn c1_m10__getwithoutextension(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
        let l_index_of_file_extension_delmiter = jr.as_i(jr.call(jr.get_field(this, "abPathData"), "getExtensionIndex_1", [l_file_path]))
        let l_path_without_extension = jr.cell(l_file_path)
        case jr.truth(jr.ge(l_index_of_file_extension_delmiter, jr.JInt(0))) {
            True -> {
            jr.set(l_path_without_extension, jr.call(l_file_path, "substring_2", [jr.JInt(0), l_index_of_file_extension_delmiter]))
            Nil
        }
            False -> Nil
        }
    jr.get(l_path_without_extension)
}

fn c1_m11__isvalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(this, "isValidStart_1", [l_path])) {
            True -> {
            case jr.truth(jr.call(this, "isValidEnd_1", [l_path])) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m12__isvalidstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(jr.call(l_path, "charAt_1", [jr.JInt(0)]), jr.get_field(jr.get_field(this, "abPathData"), "SEPARATORCHAR"))) { True -> jr.JBool(True) False -> jr.eq(jr.call(l_path, "charAt_1", [jr.JInt(0)]), jr.JChar(46)) }) {
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

fn c1_m13__isvalidend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [l_path])) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.eq(jr.call(l_path, "charAt_1", [jr.sub(jr.call(l_path, "length_0", []), jr.JInt(1))]), jr.get_field(jr.get_field(this, "abPathData"), "SEPARATORCHAR"))) {
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

fn c1_m14__adjuststart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    let l_path = jr.cell(l_path)
        case jr.truth(jr.not(jr.call(this, "isValidStart_1", [jr.get(l_path)]))) {
            True -> {
            jr.set(l_path, jr.concat(jr.get_field(jr.get_field(this, "abPathData"), "SEPARATOR"), jr.get(l_path)))
            Nil
        }
            False -> Nil
        }
    jr.get(l_path)
}

fn c1_m15__adjustend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    let l_path = jr.cell(l_path)
        case jr.truth(jr.not(jr.call(this, "isValidEnd_1", [jr.get(l_path)]))) {
            True -> {
            jr.set(l_path, jr.concat(jr.get(l_path), jr.get_field(jr.get_field(this, "abPathData"), "SEPARATOR")))
            Nil
        }
            False -> Nil
        }
    jr.get(l_path)
}

fn c1_m16__adjust(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    let l_path = jr.cell(l_path)
    jr.method(fn() {
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.get(l_path)])) {
            True -> {
            jr.ret(jr.get_field(jr.get_field(this, "abPathData"), "SEPARATOR"))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.ge(jr.call(jr.get(l_path), "indexOf_1", [jr.JStr("\\")]), jr.JInt(0))) {
            True -> {
            jr.set(l_path, jr.call(jr.get(l_path), "replace_2", [jr.JChar(92), jr.get_field(jr.get_field(this, "abPathData"), "SEPARATORCHAR")]))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.get(l_path))
        jr.JNull
    })
}

fn c1_m17__removenamefrompath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.method(fn() {
            let l_end_index = jr.cell(jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(jr.get_field(this, "abPathData"), "SEPARATOR")])))
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.set(l_end_index, jr.as_i(jr.call(l_path, "lastIndexOf_1", [jr.get_field(jr.get_field(this, "filePathData"), "SEPARATORCHAR")])))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(jr.get(l_end_index), jr.JInt(0))) {
            True -> {
            jr.ret(jr.call_static("AbPath", "createAbPath_0", []))
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
            jr.ret(jr.new("AbPath", [l_path_without_name, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PathUtil",
        "org.allbinary.logic.io.path.PathUtil",
        "Object",
        [],
        False,
        [#("abPathData", jr.JNull), #("filePathData", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getExtensionWithAbFilePath_1", ["AbFilePath"], False, c1_m6__getextensionwithabfilepath), 
            jr.Method("getExtensionWithAbPath_1", ["AbPath"], False, c1_m7__getextensionwithabpath), 
            jr.Method("getWithoutExtensionWithAbFilePath_1", ["AbFilePath"], False, c1_m8__getwithoutextensionwithabfilepath), 
            jr.Method("getWithoutExtensionWithAbPath_1", ["AbPath"], False, c1_m9__getwithoutextensionwithabpath), 
            jr.Method("getWithoutExtension_1", ["String"], False, c1_m10__getwithoutextension), 
            jr.Method("isValid_1", ["String"], False, c1_m11__isvalid), 
            jr.Method("isValidStart_1", ["String"], False, c1_m12__isvalidstart), 
            jr.Method("isValidEnd_1", ["String"], False, c1_m13__isvalidend), 
            jr.Method("adjustStart_1", ["String"], False, c1_m14__adjuststart), 
            jr.Method("adjustEnd_1", ["String"], False, c1_m15__adjustend), 
            jr.Method("adjust_1", ["String"], False, c1_m16__adjust), 
            jr.Method("removeNameFromPath_1", ["String"], False, c1_m17__removenamefrompath), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

