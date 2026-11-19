// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeylessBasicArrayListCache

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "basicArrayListUtil", jr.call_static("BasicArrayListUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            case jr.truth(jr.ge(jr.get_inherited(this, "KeylessBasicArrayListCache", "index"), jr.call(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "size_0", []))) {
                True -> {
                jr.call_inherited(this, "KeylessBasicArrayListCache", "addDefault_0", [])
                Nil
            }
                False -> Nil
            }
            let l_list = jr.call_inherited(this, "KeylessBasicArrayListCache", "getAt_1", [jr.incr(fn() { jr.get_inherited(this, "KeylessBasicArrayListCache", "index") }, fn(jv) { jr.set_inherited(this, "KeylessBasicArrayListCache", "index", jv) }, 1, True)])
            jr.ret(l_list)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "KeylessBasicArrayListCache", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "KeylessBasicArrayListCache", "commonStrings"), "GET"), l_e])
            jr.ret(jr.call(jr.get_field(this, "basicArrayListUtil"), "getImmutableInstance_0", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m5__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("IndexedBasicArrayListCache", this, "clear_0", [])
        let l_basic_array_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_basic_array_list, jr.aget(jr.get_field(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "objectArray"), jr.get(l_index)))
            jr.call(jr.get(l_basic_array_list), "clear_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("S: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "size_0", [])])
        let l__s___l_a_b_e_l = jr.JStr(" s: ")
        let l_basic_array_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(l_string_buffer, "append_1", [l__s___l_a_b_e_l])
            jr.set(l_basic_array_list, jr.aget(jr.get_field(jr.get_inherited(this, "KeylessBasicArrayListCache", "list"), "objectArray"), jr.get(l_index)))
            jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get(l_basic_array_list), "size_0", [])])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("IndexedBasicArrayListCache", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeylessBasicArrayListCache",
        "org.allbinary.logic.util.cache.KeylessBasicArrayListCache",
        "IndexedBasicArrayListCache",
        [],
        False,
        [#("logUtil", jr.JNull), #("basicArrayListUtil", jr.JNull)],
        [],
        [
            jr.Method("get_0", [], False, c1_m4__get), 
            jr.Method("clear_0", [], False, c1_m5__clear), 
            jr.Method("log_0", [], False, c1_m6__log), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

