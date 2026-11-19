// Generated Code Do Not Modify
// package org.allbinary.game.layer.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GroupLayerManagerListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GroupLayerManagerListener", "SINGLETON", jr.new("GroupLayerManagerListener", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GroupLayerManagerListener", "SINGLETON")
}

fn c1_m6__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_group_list = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_group_list, jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index)))
            jr.call(jr.get(l_group_list), "clear_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__getgroupsizefrominterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface_composite_interface] = jargs
        let l_group_interface_array = jr.call(l_group_interface_composite_interface, "getGroupInterface_0", [])
    jr.as_i(jr.call(this, "getGroupSize_1", [jr.aget(l_group_interface_array, jr.JInt(0))]))
}

fn c1_m8__getgroupsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
        let l_id = jr.as_i(jr.to_i(jr.call(l_group_interface, "getGroupId_0", [])))
    jr.as_i(jr.call(this, "getGroupSizeById_1", [l_id]))
}

fn c1_m9__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
        let l_id = jr.as_i(jr.to_i(jr.call(l_group_interface, "getGroupId_0", [])))
    jr.call(this, "getListById_1", [l_id])
}

fn c1_m10__getlistbyid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_id] = jargs
    let l_group_id = jr.as_i(l_group_id)
        let l_group_list = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), l_group_id)
    l_group_list
}

fn c1_m11__getgroupsizebyid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_id] = jargs
    let l_group_id = jr.as_i(l_group_id)
        let l_group_list = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), l_group_id)
        let l_size = jr.as_i(jr.call(l_group_list, "size_0", []))
    jr.as_i(l_size)
}

fn c1_m12__areallothergroupsempty(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
    jr.method(fn() {
            let l_id = jr.as_i(jr.to_i(jr.call(l_group_interface, "getGroupId_0", [])))
            let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.ne(l_id, jr.get(l_index))) {
                True -> {
                let l_group_size = jr.as_i(jr.call(this, "getGroupSizeById_1", [jr.get(l_index)]))
                case jr.truth(jr.ne(l_group_size, jr.JInt(0))) {
                    True -> {
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Group Size: ")]), "appendint_1", [l_group_size]), "toString_0", []), this, jr.JStr("areAllOtherGroupsEmpty")])
                    jr.ret(jr.JBool(False))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m13__isidinlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_exclude_group_list] = jargs
    let l_id = jr.as_i(l_id)
    jr.method(fn() {
            let l_size = jr.as_i(jr.call(l_exclude_group_list, "size_0", []))
            let l_group_interface_array = jr.cell(jr.JNull)
            let l_group_interface = jr.cell(jr.JNull)
            let l_group_id = jr.cell(jr.as_i(jr.JInt(0)))
            {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_group_interface_array, jr.aget(jr.get_field(l_exclude_group_list, "objectArray"), jr.get(l_index)))
            let l_size2 = jr.as_i(jr.alen(jr.get(l_group_interface_array)))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.set(l_group_interface, jr.aget(jr.get(l_group_interface_array), jr.get(l_index2)))
                jr.set(l_group_id, jr.as_i(jr.to_i(jr.call(jr.get(l_group_interface), "getGroupId_0", []))))
                case jr.truth(jr.eq(jr.get(l_group_id), l_id)) {
                    True -> {
                    jr.ret(jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m14__areallothergroupslessthan(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_exclude_group_list, l_max_size] = jargs
    let l_max_size = jr.as_i(l_max_size)
    jr.method(fn() {
            let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.not(jr.call(this, "isIdInList_2", [jr.get(l_index), l_exclude_group_list]))) {
                True -> {
                let l_group_size = jr.as_i(jr.call(this, "getGroupSizeById_1", [jr.get(l_index)]))
                case jr.truth(jr.ge(l_group_size, l_max_size)) {
                    True -> {
                    jr.ret(jr.JBool(False))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m15__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total] = jargs
    let l_total = jr.as_i(l_total)
        jr.while_loop("", fn() { jr.le(jr.call(jr.get_field(this, "list"), "size_0", []), jr.add(l_total, jr.JInt(1))) }, fn() {
            jr.call(jr.get_field(this, "list"), "add_1", [jr.new("BasicArrayListD", [])])
            Nil
        })
    jr.JNull
}

fn c1_m16__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m17__oncreatelayermanagerevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
        let l_layer_interface = jr.call(l_layer_manager_event, "getLayerInterface_0", [])
        let l_group_interface_array = jr.call(l_layer_interface, "getGroupInterface_0", [])
        let l_size = jr.as_i(jr.alen(l_group_interface_array))
        let l_id = jr.cell(jr.as_i(jr.JInt(0)))
        let l_group_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_id, jr.as_i(jr.to_i(jr.call(jr.aget(l_group_interface_array, jr.get(l_index)), "getGroupId_0", []))))
            jr.set(l_group_list, jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_id)))
            case jr.truth(jr.eq(jr.get(l_group_list), jr.JNull)) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("id: ")]), "appendint_1", [jr.get(l_id)]), "toString_0", []), this, jr.JStr("onCreateLayerManagerEvent")])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.not(jr.call(jr.get(l_group_list), "contains_1", [l_layer_interface]))) {
                True -> {
                jr.call(jr.get(l_group_list), "add_1", [l_layer_interface])
                Nil
            }
                False -> {
                Nil
            }
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m18__ondeletelayermanagerevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
        let l_layer_interface = jr.call(l_layer_manager_event, "getLayerInterface_0", [])
        let l_group_interface_array = jr.call(l_layer_interface, "getGroupInterface_0", [])
        let l_size = jr.as_i(jr.alen(l_group_interface_array))
        let l_id = jr.cell(jr.as_i(jr.JInt(0)))
        let l_group_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_id, jr.as_i(jr.to_i(jr.call(jr.aget(l_group_interface_array, jr.get(l_index)), "getGroupId_0", []))))
            jr.set(l_group_list, jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_id)))
            jr.call(jr.get(l_group_list), "remove_1", [l_layer_interface])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m19__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l__g_r_o_u_p = jr.JStr("Group: ")
        let l__s_p_a_c_e = jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")
        let l__t_o_t_a_l___l_a_b_e_l = jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "TOTAL_LABEL")
        let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_group_list = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index))
            jr.call(l_string_buffer, "append_1", [l__g_r_o_u_p])
            jr.call(l_string_buffer, "appendint_1", [jr.get(l_index)])
            jr.call(l_string_buffer, "append_1", [l__s_p_a_c_e])
            jr.call(l_string_buffer, "append_1", [l__t_o_t_a_l___l_a_b_e_l])
            jr.call(l_string_buffer, "appendint_1", [jr.call(l_group_list, "size_0", [])])
            jr.call(l_string_buffer, "append_1", [l__s_p_a_c_e])
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("log")])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("LayerManagerEventListener", this, [])
    c1_jfields(this)
        jr.call(jr.call_static("LayerManagerEventHandler", "getInstance_0", []), "addListener_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GroupLayerManagerListener",
        "org.allbinary.game.layer.identification.GroupLayerManagerListener",
        "LayerManagerEventListener",
        [],
        False,
        [#("logUtil", jr.JNull), #("list", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("clear_0", [], False, c1_m6__clear), 
            jr.Method("getGroupSizeFromInterface_1", ["GroupInterfaceCompositeInterface"], False, c1_m7__getgroupsizefrominterface), 
            jr.Method("getGroupSize_1", ["Group"], False, c1_m8__getgroupsize), 
            jr.Method("getList_1", ["Group"], False, c1_m9__getlist), 
            jr.Method("getListById_1", ["int"], False, c1_m10__getlistbyid), 
            jr.Method("getGroupSizeById_1", ["int"], False, c1_m11__getgroupsizebyid), 
            jr.Method("areAllOtherGroupsEmpty_1", ["Group"], False, c1_m12__areallothergroupsempty), 
            jr.Method("isIdInList_2", ["int", "BasicArrayList"], False, c1_m13__isidinlist), 
            jr.Method("areAllOtherGroupsLessThan_2", ["BasicArrayList", "int"], False, c1_m14__areallothergroupslessthan), 
            jr.Method("init_1", ["int"], False, c1_m15__init), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m16__onevent), 
            jr.Method("onCreateLayerManagerEvent_1", ["LayerManagerEvent"], False, c1_m17__oncreatelayermanagerevent), 
            jr.Method("onDeleteLayerManagerEvent_1", ["LayerManagerEvent"], False, c1_m18__ondeletelayermanagerevent), 
            jr.Method("log_0", [], False, c1_m19__log), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

