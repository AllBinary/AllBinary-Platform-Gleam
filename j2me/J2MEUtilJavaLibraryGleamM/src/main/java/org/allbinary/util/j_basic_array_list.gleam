// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayList

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "arrayUtil", jr.call_static("ArrayUtil", "getInstance_0", []))
    jr.set_field(this, "currentIndex", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__addat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_element] = jargs
    let l_index = jr.as_i(l_index)
        case jr.truth(case jr.truth(jr.gt(l_index, jr.get_field(this, "currentIndex"))) { True -> jr.JBool(True) False -> jr.lt(l_index, jr.JInt(0)) }) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "INDEX_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_index])
            jr.call(l_string_buffer, "append_1", [jr.get_static("BasicArrayList", "SIZE")])
            jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "currentIndex")])
            jr.throw(jr.new("IndexOutOfBoundsException", [jr.call(l_string_buffer, "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentIndex"), jr.JInt(1))])
        jr.call_static("System", "arraycopy_5", [jr.get_field(this, "objectArray"), l_index, jr.get_field(this, "objectArray"), jr.add(l_index, jr.JInt(1)), jr.sub(jr.get_field(this, "currentIndex"), l_index)])
        jr.aset(jr.get_field(this, "objectArray"), l_index, l_element)
        jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, 1, True)
    jr.JNull
}

fn c1_m7__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentIndex"), jr.JInt(1))])
        jr.aset(jr.get_field(this, "objectArray"), jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, 1, True), l_any_type)
    jr.JBool(True)
}

fn c1_m8__removeat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        case jr.truth(jr.ge(l_index, jr.get_field(this, "currentIndex"))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "INDEX_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_index])
            jr.call(l_string_buffer, "append_1", [jr.get_static("BasicArrayList", "SIZE")])
            jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "currentIndex")])
            jr.throw(jr.new("IndexOutOfBoundsException", [jr.call(l_string_buffer, "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
        let l_old_value = jr.aget(jr.get_field(this, "objectArray"), l_index)
        let l_num_moved = jr.as_i(jr.sub(jr.sub(jr.get_field(this, "currentIndex"), l_index), jr.JInt(1)))
        case jr.truth(jr.gt(l_num_moved, jr.JInt(0))) {
            True -> {
            jr.call_static("System", "arraycopy_5", [jr.get_field(this, "objectArray"), jr.add(l_index, jr.JInt(1)), jr.get_field(this, "objectArray"), l_index, l_num_moved])
            Nil
        }
            False -> Nil
        }
        jr.aset(jr.get_field(this, "objectArray"), jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, -1, False), jr.JNull)
    l_old_value
}

fn c1_m9__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_any_type, jr.JNull)) {
            True -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(jr.get_field(this, "objectArray"), jr.get(l_index)), jr.JNull)) {
                    True -> {
                    let l_num_moved = jr.as_i(jr.sub(jr.sub(jr.get_field(this, "currentIndex"), jr.get(l_index)), jr.JInt(1)))
                    case jr.truth(jr.gt(l_num_moved, jr.JInt(0))) {
                        True -> {
                        jr.call_static("System", "arraycopy_5", [jr.get_field(this, "objectArray"), jr.add(jr.get(l_index), jr.JInt(1)), jr.get_field(this, "objectArray"), jr.get(l_index), l_num_moved])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.aset(jr.get_field(this, "objectArray"), jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, -1, False), jr.JNull)
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
        }
            False -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                case jr.truth(case jr.truth(jr.eq(l_any_type, jr.aget(jr.get_field(this, "objectArray"), jr.get(l_index)))) { True -> jr.JBool(True) False -> jr.call(l_any_type, "equals_1", [jr.aget(jr.get_field(this, "objectArray"), jr.get(l_index))]) }) {
                    True -> {
                    let l_num_moved = jr.as_i(jr.sub(jr.sub(jr.get_field(this, "currentIndex"), jr.get(l_index)), jr.JInt(1)))
                    case jr.truth(jr.gt(l_num_moved, jr.JInt(0))) {
                        True -> {
                        jr.call_static("System", "arraycopy_5", [jr.get_field(this, "objectArray"), jr.add(jr.get(l_index), jr.JInt(1)), jr.get_field(this, "objectArray"), jr.get(l_index), l_num_moved])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.aset(jr.get_field(this, "objectArray"), jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, -1, False), jr.JNull)
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
        }
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m10__removeall2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_result = jr.cell(jr.JBool(True))
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.call(this, "remove_1", [jr.call(l_list, "get_1", [jr.get(l_index)])])) {
                True -> {
                Nil
            }
                False -> {
                jr.set(l_result, jr.JBool(False))
                Nil
            }
            }
            Nil
        })
            Nil
        }
    jr.get(l_result)
}

fn c1_m11__addall2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentIndex"), jr.get_field(l_list, "currentIndex"))])
        let l_list_size = jr.as_i(jr.get_field(l_list, "currentIndex"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_list_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "objectArray"), jr.incr(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.set_field(this, "currentIndex", jv) }, 1, True), jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            Nil
        })
            Nil
        }
    jr.JBool(True)
}

fn c1_m12__addalllist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_new_object_array = jr.call(l_list, "toArray_0", [])
    jr.call(this, "addAll_1", [l_new_object_array])
}

fn c1_m13__addall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_object_array] = jargs
        let l_num_size = jr.as_i(jr.alen(l_new_object_array))
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentIndex"), l_num_size)])
        jr.call_static("System", "arraycopy_5", [l_new_object_array, jr.JInt(0), jr.get_field(this, "objectArray"), jr.get_field(this, "currentIndex"), l_num_size])
        jr.compound(fn() { jr.get_field(this, "currentIndex") }, fn(jv) { jr.add(jv, l_num_size) }, fn(jv) { jr.set_field(this, "currentIndex", jv) })
    jr.ne(l_num_size, jr.JInt(0))
}

fn c1_m14__ensurecapacity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_min_size] = jargs
    let l_min_size = jr.as_i(l_min_size)
        let l_old_capacity = jr.as_i(jr.alen(jr.get_field(this, "objectArray")))
        case jr.truth(jr.gt(l_min_size, l_old_capacity)) {
            True -> {
            let l_new_capacity = jr.cell(jr.as_i(jr.add(jr.shr(jr.mul(l_old_capacity, jr.JInt(3)), jr.JInt(1)), jr.JInt(1))))
            case jr.truth(jr.lt(jr.get(l_new_capacity), l_min_size)) {
                True -> {
                jr.set(l_new_capacity, jr.as_i(l_min_size))
                Nil
            }
                False -> Nil
            }
            jr.set_field(this, "objectArray", jr.call(jr.get_field(this, "arrayUtil"), "copyOf_2", [jr.get_field(this, "objectArray"), jr.get(l_new_capacity)]))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__trimtosize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_old_capacity = jr.as_i(jr.alen(jr.get_field(this, "objectArray")))
        case jr.truth(jr.lt(jr.get_field(this, "currentIndex"), l_old_capacity)) {
            True -> {
            jr.set_field(this, "objectArray", jr.call(jr.get_field(this, "arrayUtil"), "copyOf_2", [jr.get_field(this, "objectArray"), jr.get_field(this, "currentIndex")]))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m16__indexof(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_any_type, jr.JNull)) {
            True -> {
            {
                let l_i = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_i), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(jr.get_field(this, "objectArray"), jr.get(l_i)), jr.JNull)) {
                    True -> {
                    jr.ret(jr.as_i(jr.get(l_i)))
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
            False -> {
            {
                let l_i = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_i), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.call(l_any_type, "equals_1", [jr.aget(jr.get_field(this, "objectArray"), jr.get(l_i))])) {
                    True -> {
                    jr.ret(jr.as_i(jr.get(l_i)))
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
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_m17__lastindexof(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_any_type, jr.JNull)) {
            True -> {
            {
                let l_i = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "currentIndex"), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_i), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, -1, True) Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(jr.get_field(this, "objectArray"), jr.get(l_i)), jr.JNull)) {
                    True -> {
                    jr.ret(jr.as_i(jr.get(l_i)))
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
            False -> {
            {
                let l_i = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "currentIndex"), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_i), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, -1, True) Nil }, fn() {
                case jr.truth(jr.call(l_any_type, "equals_1", [jr.aget(jr.get_field(this, "objectArray"), jr.get(l_i))])) {
                    True -> {
                    jr.ret(jr.as_i(jr.get(l_i)))
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
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_m18__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        case jr.truth(jr.ge(l_index, jr.get_field(this, "currentIndex"))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "INDEX_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_index])
            jr.call(l_string_buffer, "append_1", [jr.get_static("BasicArrayList", "SIZE")])
            jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "currentIndex")])
            jr.throw(jr.new("IndexOutOfBoundsException", [jr.call(l_string_buffer, "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
    jr.aget(jr.get_field(this, "objectArray"), l_index)
}

fn c1_m19__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_element] = jargs
    let l_index = jr.as_i(l_index)
        case jr.truth(jr.ge(l_index, jr.get_field(this, "currentIndex"))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "INDEX_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_index])
            jr.call(l_string_buffer, "append_1", [jr.get_static("BasicArrayList", "SIZE")])
            jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "currentIndex")])
            jr.throw(jr.new("IndexOutOfBoundsException", [jr.call(l_string_buffer, "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
        let l_old_value = jr.aget(jr.get_field(this, "objectArray"), l_index)
        jr.aset(jr.get_field(this, "objectArray"), l_index, l_element)
    l_old_value
}

fn c1_m20__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "objectArray"), jr.get(l_i), jr.JNull)
            Nil
        })
            Nil
        }
        jr.set_field(this, "currentIndex", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_m21__size(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "currentIndex"))
}

fn c1_m22__isempty(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.eq(jr.get_field(this, "currentIndex"), jr.JInt(0))
}

fn c1_m23__contains(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.ge(jr.call(this, "indexOf_1", [l_any_type]), jr.JInt(0))
}

fn c1_m24__toarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "arrayUtil"), "copyOf_2", [jr.get_field(this, "objectArray"), jr.get_field(this, "currentIndex")])
}

fn c1_m25__toarraytype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_object_array] = jargs
    jr.method(fn() {
            case jr.truth(jr.lt(jr.alen(l_object_array), jr.get_field(this, "currentIndex"))) {
            True -> {
            jr.ret(jr.call(jr.get_field(this, "arrayUtil"), "copyOfType_3", [jr.get_field(this, "objectArray"), jr.get_field(this, "currentIndex"), jr.call(l_object_array, "getClass_0", [])]))
            Nil
        }
            False -> Nil
        }
            jr.call_static("System", "arraycopy_5", [jr.get_field(this, "objectArray"), jr.JInt(0), l_object_array, jr.JInt(0), jr.get_field(this, "currentIndex")])
            case jr.truth(jr.gt(jr.alen(l_object_array), jr.get_field(this, "currentIndex"))) {
            True -> {
            jr.aset(l_object_array, jr.get_field(this, "currentIndex"), jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.ret(l_object_array)
        jr.JNull
    })
}

fn c1_m26__clone(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.call(this, "size_0", []))
        let l_list = jr.new("BasicArrayListS", [l_size])
        let l_any_type = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_any_type, jr.aget(jr.get_field(this, "objectArray"), jr.get(l_index)))
            jr.call(l_list, "add_1", [jr.get(l_any_type)])
            Nil
        })
            Nil
        }
    l_list
}

fn c1_m27__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__c_o_m_m_a___s_e_p = jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COMMA_SEP")
        let l_string_buffer = jr.new("StringMaker", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "currentIndex")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "append_1", [jr.call(jr.aget(jr.get_field(this, "objectArray"), jr.get(l_index)), "toString_0", [])])
            jr.call(l_string_buffer, "append_1", [l__c_o_m_m_a___s_e_p])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_object_array] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "objectArray", l_object_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayList",
        "org.allbinary.util.BasicArrayList",
        "Object",
        [],
        False,
        [#("arrayUtil", jr.JNull), #("objectArray", jr.JNull), #("currentIndex", jr.JInt(0))],
        [#("SIZE", jr.JStr(", Size: "))],
        [
            jr.Method("addAt_2", ["int", "Object"], False, c1_m6__addat), 
            jr.Method("add_1", ["Object"], False, c1_m7__add), 
            jr.Method("removeAt_1", ["int"], False, c1_m8__removeat), 
            jr.Method("remove_1", ["Object"], False, c1_m9__remove), 
            jr.Method("removeAll2_1", ["BasicArrayList"], False, c1_m10__removeall2), 
            jr.Method("addAll2_1", ["BasicArrayList"], False, c1_m11__addall2), 
            jr.Method("addAllList_1", ["BasicArrayList"], False, c1_m12__addalllist), 
            jr.Method("addAll_1", ["ObjectArr"], False, c1_m13__addall), 
            jr.Method("ensureCapacity_1", ["int"], False, c1_m14__ensurecapacity), 
            jr.Method("trimToSize_0", [], False, c1_m15__trimtosize), 
            jr.Method("indexOf_1", ["Object"], False, c1_m16__indexof), 
            jr.Method("lastIndexOf_1", ["Object"], False, c1_m17__lastindexof), 
            jr.Method("get_1", ["int"], False, c1_m18__get), 
            jr.Method("set_2", ["int", "Object"], False, c1_m19__set), 
            jr.Method("clear_0", [], False, c1_m20__clear), 
            jr.Method("size_0", [], False, c1_m21__size), 
            jr.Method("isEmpty_0", [], False, c1_m22__isempty), 
            jr.Method("contains_1", ["Object"], False, c1_m23__contains), 
            jr.Method("toArray_0", [], False, c1_m24__toarray), 
            jr.Method("toArrayType_1", ["ObjectArr"], False, c1_m25__toarraytype), 
            jr.Method("clone_0", [], False, c1_m26__clone), 
            jr.Method("toString_0", [], False, c1_m27__tostring), 
            jr.Method("jinit_1", ["ObjectArr"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

