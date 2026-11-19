// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerManagerLogging

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "stringBuilder", jr.new("StringMaker", []))
    jr.set_field(this, "APPEND", jr.JStr("append"))
    jr.set_field(this, "APPEND_", jr.JStr(" append: "))
    jr.set_field(this, "_AT_", jr.JStr(" at: "))
    jr.set_field(this, "ATTEMPT_REMOVE_", jr.JStr(" Remove Attempt: "))
    jr.set_field(this, "REMOVE_", jr.JStr(" Remove: "))
    jr.set_field(this, "REMOVE", jr.JStr("remove"))
    jr.set_field(this, "DID_NOT_REMOVE", jr.JStr(" Did not remove: "))
    jr.set_field(this, "CLEAR", jr.JStr(" Clear List"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LayerManagerLogging", "instance", jr.new("LayerManagerLogging", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LayerManagerLogging", "instance")
}

fn c1_m14__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "APPEND_")]), "append_1", [jr.call(l_layer_interface, "getName_0", [])]), "toString_0", []), this, jr.get_field(this, "APPEND")])
    jr.JNull
}

fn c1_m15__appendat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "APPEND_")]), "append_1", [jr.call(l_layer_interface, "getName_0", [])]), "append_1", [jr.get_field(this, "_AT_")]), "appendint_1", [l_index]), "toString_0", []), this, jr.get_field(this, "APPEND")])
    jr.JNull
}

fn c1_m16__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        case jr.truth(jr.eq(l_layer_interface, jr.JNull)) {
            True -> {
            jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "ATTEMPT_REMOVE_")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_layer_interface])]), "toString_0", []), this, jr.get_field(this, "REMOVE")])
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "ATTEMPT_REMOVE_")]), "append_1", [jr.call(l_layer_interface, "getName_0", [])]), "toString_0", []), this, jr.get_field(this, "REMOVE")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m17__removeresult(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_layer_interface, l_result] = jargs
        case jr.truth(jr.eq(l_layer_interface, jr.JNull)) {
            True -> {
            jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "REMOVE_")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_layer_interface])]), "toString_0", []), this, jr.get_field(this, "REMOVE")])
            Nil
        }
            False -> case jr.truth(l_result) {
            True -> {
            case jr.truth(jr.get_static("LayerManagerLogging", "removeFailed")) {
                True -> {
                jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "REMOVE_")]), "append_1", [jr.call(l_layer_interface, "getName_0", [])]), "toString_0", []), this, jr.get_field(this, "REMOVE")])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "DID_NOT_REMOVE")]), "append_1", [jr.call(l_layer_interface, "getName_0", [])]), "toString_0", []), this, jr.get_field(this, "REMOVE")])
            jr.set_static("LayerManagerLogging", "removeFailed", jr.JBool(True))
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m18__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager] = jargs
        jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
        let l_size = jr.as_i(jr.call(l_layer_manager, "getSize_0", []))
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.call(jr.call(jr.get_field(this, "stringBuilder"), "append_1", [jr.call_static("Integer", "toHexString_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [l_layer_manager])])]), "append_1", [jr.get_field(l_common_seps, "COLON_SEP")])
        jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [l_size]), "append_1", [jr.get_field(l_common_seps, "COLON_SEP")])
        let l_all_binary_layer = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_all_binary_layer, jr.call(l_layer_manager, "getLayerAt_1", [jr.get(l_index)]))
            jr.call(jr.call(jr.get_field(this, "stringBuilder"), "append_1", [jr.call(jr.get(l_all_binary_layer), "getName_0", [])]), "append_1", [jr.get_field(l_common_seps, "COMMA")])
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.get_field(this, "stringBuilder"), "toString_0", []), this, jr.get_field(this, "REMOVE")])
    jr.JNull
}

fn c1_m19__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.get_field(this, "stringBuilder"), "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])]), "append_1", [jr.get_field(this, "CLEAR")]), "toString_0", []), this, jr.get_field(this, "CLEAR")])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("LayerManagerLoggingBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerManagerLogging",
        "org.allbinary.layer.LayerManagerLogging",
        "LayerManagerLoggingBase",
        [],
        False,
        [#("logUtil", jr.JNull), #("stringBuilder", jr.JNull), #("APPEND", jr.JNull), #("APPEND_", jr.JNull), #("_AT_", jr.JNull), #("ATTEMPT_REMOVE_", jr.JNull), #("REMOVE_", jr.JNull), #("REMOVE", jr.JNull), #("DID_NOT_REMOVE", jr.JNull), #("CLEAR", jr.JNull)],
        [#("instance", jr.JNull), #("removeFailed", jr.JBool(False))],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("append_1", ["AllBinaryLayer"], False, c1_m14__append), 
            jr.Method("appendAt_2", ["AllBinaryLayer", "int"], False, c1_m15__appendat), 
            jr.Method("remove_1", ["AllBinaryLayer"], False, c1_m16__remove), 
            jr.Method("removeResult_3", ["LayerManager", "AllBinaryLayer", "boolean"], False, c1_m17__removeresult), 
            jr.Method("log_1", ["LayerManager"], False, c1_m18__log), 
            jr.Method("clear_0", [], False, c1_m19__clear), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

