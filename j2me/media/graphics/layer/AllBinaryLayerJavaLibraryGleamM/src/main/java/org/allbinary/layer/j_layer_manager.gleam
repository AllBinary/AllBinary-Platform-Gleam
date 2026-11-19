// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "systemWrapper", jr.call_static("ABSystemWrapper", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "anyType", jr.new("SynchObject", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__contains(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.call(jr.get_field(this, "list"), "contains_1", [l_layer_interface])
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.method(fn() {
            let l_had = jr.call(jr.get_field(this, "list"), "remove_1", [l_layer_interface])
            case jr.truth(l_had) {
            True -> {
            let l_next_layer_interface = jr.cell(jr.JNull)
            let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_next_layer_interface, jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)]))
                case jr.truth(jr.gt(jr.call(l_layer_interface, "getZP_0", []), jr.call(jr.get(l_next_layer_interface), "getZP_0", []))) {
                    True -> {
                    jr.call(jr.get_field(this, "list"), "addAt_2", [jr.get(l_index), l_layer_interface])
                    jr.ret(jr.JNull)
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            jr.call(jr.get_field(this, "list"), "add_1", [l_layer_interface])
            Nil
        }
            False -> Nil
        }
        jr.JNull
    })
}

fn c1_m11__insert(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.method(fn() {
            let l_next_layer_interface = jr.cell(jr.JNull)
            let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_layer_interface, jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)]))
            case jr.truth(jr.gt(jr.call(l_layer_interface, "getZP_0", []), jr.call(jr.get(l_next_layer_interface), "getZP_0", []))) {
                True -> {
                jr.call(this, "appendAt_2", [l_layer_interface, jr.get(l_index)])
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.call(this, "append_1", [l_layer_interface])
        jr.JNull
    })
}

fn c1_m12__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.call(jr.get_field(this, "layerManagerLogging"), "append_1", [l_layer_interface])
        jr.call(jr.get_field(this, "list"), "add_1", [l_layer_interface])
    jr.JNull
}

fn c1_m13__appendat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "layerManagerLogging"), "appendAt_2", [l_layer_interface, l_index])
        jr.call(jr.get_field(this, "list"), "addAt_2", [l_index, l_layer_interface])
    jr.JNull
}

fn c1_m14__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        {
            jr.call(jr.get_field(this, "layerManagerLogging"), "remove_1", [l_layer_interface])
            let l_result = jr.call(jr.get_field(this, "list"), "remove_1", [l_layer_interface])
            jr.call(jr.get_field(this, "layerManagerLogging"), "removeResult_3", [this, l_layer_interface, l_result])
            Nil
        }
    jr.JNull
}

fn c1_m15__getlayerat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), l_index)
}

fn c1_m16__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
}

fn c1_m17__cleanup(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            jr.call(jr.get_field(this, "list"), "clear_0", [])
            jr.call(jr.get_field(this, "layerManagerLogging"), "clear_0", [])
            jr.call(jr.get_field(this, "tsUtil"), "gc_0", [])
            jr.call(jr.get_field(this, "tsUtil"), "gc_0", [])
            Nil
        }
    jr.JNull
}

fn c1_m18__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        {
            let l_comp = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                jr.set(l_comp, jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index)))
                case jr.truth(case jr.truth(jr.ne(jr.get(l_comp), jr.JNull)) { True -> jr.call(jr.get(l_comp), "isVisible_0", []) False -> jr.JBool(False) }) {
                    True -> {
                    jr.call(jr.get(l_comp), "paint_1", [l_g])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_logging] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "layerManagerLogging", l_layer_manager_logging)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerManager",
        "org.allbinary.layer.LayerManager",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("systemWrapper", jr.JNull), #("tsUtil", jr.JNull), #("layerManagerLogging", jr.JNull), #("list", jr.JNull), #("anyType", jr.JNull)],
        [],
        [
            jr.Method("contains_1", ["AllBinaryLayer"], False, c1_m9__contains), 
            jr.Method("update_1", ["AllBinaryLayer"], False, c1_m10__update), 
            jr.Method("insert_1", ["AllBinaryLayer"], False, c1_m11__insert), 
            jr.Method("append_1", ["AllBinaryLayer"], False, c1_m12__append), 
            jr.Method("appendAt_2", ["AllBinaryLayer", "int"], False, c1_m13__appendat), 
            jr.Method("remove_1", ["AllBinaryLayer"], False, c1_m14__remove), 
            jr.Method("getLayerAt_1", ["int"], False, c1_m15__getlayerat), 
            jr.Method("getSize_0", [], False, c1_m16__getsize), 
            jr.Method("cleanup_0", [], False, c1_m17__cleanup), 
            jr.Method("paint_3", ["Graphics", "int", "int"], False, c1_m18__paint), 
            jr.Method("jinit_1", ["LayerManagerLoggingBase"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

