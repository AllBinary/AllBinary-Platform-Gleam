// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbPath

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.set_field(this, "abPathData", jr.call_static("AbPathData", "getInstance_0", []))
    jr.set_field(this, "abPathUtil", jr.call_static("PathUtil", "getInstance_0", []))
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "schema", jr.get_field(this, "EMPTY_STRING"))
    jr.set_field(this, "path", jr.get_field(this, "EMPTY_STRING"))
    jr.set_field(this, "nameP", jr.get_field(this, "EMPTY_STRING"))
    jr.set_field(this, "hasSchemaP", jr.JBool(False))
    jr.set_field(this, "numberOfSeps", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createabpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l__e_m_p_t_y___s_t_r_i_n_g = jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
            jr.ret(jr.new("AbPath", [l__e_m_p_t_y___s_t_r_i_n_g, l__e_m_p_t_y___s_t_r_i_n_g]))
            Nil
        }, [#(["Exception"], fn(l_ex) { {
            jr.throw(jr.new("RuntimeException", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m12__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "schema", jr.get_field(this, "EMPTY_STRING"))
        jr.call(this, "setPath_1", [jr.get_field(jr.get_field(this, "abPathData"), "SEPARATOR")])
        jr.set_field(this, "nameP", jr.get_field(this, "EMPTY_STRING"))
    jr.JNull
}

fn c1_m13__getschema(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_path] = jargs
    jr.method(fn() {
            let l_begin_index = jr.as_i(jr.call(l_a_path, "indexOf_1", [jr.get_field(jr.get_field(this, "commonSeps"), "COLON")]))
            case jr.truth(jr.ge(l_begin_index, jr.JInt(0))) {
            True -> {
            jr.set_field(this, "hasSchemaP", jr.JBool(True))
            jr.ret(jr.call(l_a_path, "substring_2", [jr.JInt(0), l_begin_index]))
            Nil
        }
            False -> Nil
        }
            jr.set_field(this, "hasSchemaP", jr.JBool(False))
            jr.ret(jr.get_field(this, "EMPTY_STRING"))
        jr.JNull
    })
}

fn c1_m14__hasschema(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hasSchemaP")
}

fn c1_m15__getpathfrompath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_path] = jargs
        let l_file_path_data = jr.call_static("FilePathData", "getInstance_0", [])
        let l_temp_path = jr.cell(l_a_path)
        case jr.truth(jr.not(jr.call(this, "hasSchema_0", []))) {
            True -> {
            jr.set(l_temp_path, jr.call(jr.get_field(this, "abPathUtil"), "adjustStart_1", [jr.get(l_temp_path)]))
            Nil
        }
            False -> {
            let l_begin_index = jr.cell(jr.as_i(jr.call(jr.get(l_temp_path), "indexOf_1", [jr.get_field(jr.get_field(this, "commonSeps"), "COLON")])))
            case jr.truth(jr.ge(jr.get(l_begin_index), jr.JInt(0))) {
                True -> {
                jr.incr(fn() { jr.get(l_begin_index) }, fn(jv) { jr.set(l_begin_index, jv) }, 1, True)
                jr.while_loop("", fn() { case jr.truth(jr.eq(jr.call(jr.get(l_temp_path), "charAt_1", [jr.get(l_begin_index)]), jr.get_field(jr.get_field(this, "abPathData"), "SEPARATORCHAR"))) { True -> jr.JBool(True) False -> jr.eq(jr.call(jr.get(l_temp_path), "charAt_1", [jr.get(l_begin_index)]), jr.get_field(l_file_path_data, "SEPARATORCHAR")) } }, fn() {
                    jr.incr(fn() { jr.get(l_begin_index) }, fn(jv) { jr.set(l_begin_index, jv) }, 1, True)
                    jr.incr(fn() { jr.get_field(this, "numberOfSeps") }, fn(jv) { jr.set_field(this, "numberOfSeps", jv) }, 1, True)
                    case jr.truth(jr.gt(jr.get_field(this, "numberOfSeps"), jr.JInt(2))) {
                        True -> {
                        jr.throw(jr.new("Exception", [jr.JStr("Should Not Have More Than Two Seps")]))
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                })
                jr.set(l_temp_path, jr.call(jr.get(l_temp_path), "substring_2", [jr.get(l_begin_index), jr.call(jr.get(l_temp_path), "length_0", [])]))
                Nil
            }
                False -> Nil
            }
            Nil
        }
        }
    jr.get(l_temp_path)
}

fn c1_m16__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "nameP", l_name)
    jr.JNull
}

fn c1_m17__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "nameP")
}

fn c1_m19__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        case jr.truth(jr.call(this, "hasSchema_0", [])) {
            True -> {
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "schema")])
            jr.call(l_string_buffer, "append_1", [jr.get_static("AbPath", "NETWORK_SEP")])
            Nil
        }
            False -> Nil
        }
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getPath_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "nameP")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m20__tofilesystemstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.call(this, "hasSchema_0", [])) {
            True -> {
            let l_file_path_data = jr.call_static("FilePathData", "getInstance_0", [])
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "schema")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "COLON")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_file_path_data, "PATH_START")])
            jr.call(l_string_buffer, "append_1", [jr.call_static("FilePathUtil", "adjust_1", [jr.call(this, "getPath_0", [])])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "nameP")])
            jr.ret(jr.call(l_string_buffer, "toString_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.concat(jr.call_static("FilePathUtil", "adjust_1", [jr.call(this, "getPath_0", [])]), jr.get_field(this, "nameP")))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m21__getpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "path")
}

fn c1_m22__setpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
        jr.set_field(this, "path", l_path)
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_path, l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
        case jr.truth(jr.not(jr.call(l_string_validation_util, "isEmpty_1", [l_a_path]))) {
            True -> {
            jr.set_field(this, "schema", jr.call(this, "getSchema_1", [l_a_path]))
            jr.set_field(this, "nameP", l_name)
            jr.set_field(this, "path", jr.call(jr.get_field(this, "abPathUtil"), "adjustEnd_1", [jr.call(jr.get_field(this, "abPathUtil"), "adjust_1", [jr.call(this, "getPathFromPath_1", [l_a_path])])]))
            Nil
        }
            False -> {
            jr.call(this, "init_0", [])
            case jr.truth(jr.not(jr.call(l_string_validation_util, "isEmpty_1", [l_name]))) {
                True -> {
                jr.set_field(this, "nameP", l_name)
                Nil
            }
                False -> Nil
            }
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbPath",
        "org.allbinary.logic.io.path.AbPath",
        "Object",
        [],
        False,
        [#("commonSeps", jr.JNull), #("abPathData", jr.JNull), #("abPathUtil", jr.JNull), #("EMPTY_STRING", jr.JNull), #("schema", jr.JNull), #("path", jr.JNull), #("nameP", jr.JNull), #("hasSchemaP", jr.JBool(False)), #("numberOfSeps", jr.JInt(0))],
        [#("NETWORK_SEP", jr.JStr(":/"))],
        [
            jr.Method("createAbPath_0", [], True, c1_m1__createabpath), 
            jr.Method("init_0", [], False, c1_m12__init), 
            jr.Method("getSchema_1", ["String"], False, c1_m13__getschema), 
            jr.Method("hasSchema_0", [], False, c1_m14__hasschema), 
            jr.Method("getPathFromPath_1", ["String"], False, c1_m15__getpathfrompath), 
            jr.Method("setName_1", ["String"], False, c1_m16__setname), 
            jr.Method("getName_0", [], False, c1_m17__getname), 
            jr.Method("toString_0", [], False, c1_m19__tostring), 
            jr.Method("toFileSystemString_0", [], False, c1_m20__tofilesystemstring), 
            jr.Method("getPath_0", [], False, c1_m21__getpath), 
            jr.Method("setPath_1", ["String"], False, c1_m22__setpath), 
            jr.Method("jinit_2", ["String", "String"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

