// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayListUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_ARRAY_OF_ARRAY", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "myRandomFactory", jr.call_static("MyRandomFactory", "getInstance_0", []))
    jr.set_field(this, "immutableInstance", jr.new("ImmutableBasicArrayList", [jr.JStr("Immutable"), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicArrayListUtil", "instance", jr.new("BasicArrayListUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicArrayListUtil", "instance")
}

fn c1_m6__getrandom(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_i__random = jr.as_i(jr.call(this, "getRandomIndex_1", [l_list]))
    jr.aget(jr.get_field(l_list, "objectArray"), l_i__random)
}

fn c1_m7__getrandomindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
    jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getAbsoluteNextInt_1", [jr.call(l_list, "size_0", [])]))
}

fn c1_m8__reverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_last_minus_one_index = jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(2)))
        let l_temp = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.div(l_last_minus_one_index, jr.JInt(2)))
        let l_second_swap_index = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.le(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_second_swap_index, jr.as_i(jr.sub(l_last_minus_one_index, jr.get(l_index))))
            jr.set(l_temp, jr.call(l_list, "removeAt_1", [jr.get(l_index)]))
            jr.call(l_list, "addAt_2", [jr.get(l_index), jr.call(l_list, "removeAt_1", [jr.get(l_second_swap_index)])])
            jr.call(l_list, "addAt_2", [jr.add(jr.get(l_second_swap_index), jr.JInt(1)), jr.get(l_temp)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l__s___l_a_b_e_l = jr.JStr(" s: ")
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "TOTAL_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_used_list = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(l_string_buffer, "append_1", [l__s___l_a_b_e_l])
            jr.call(l_string_buffer, "appendint_1", [jr.call(l_used_list, "size_0", [])])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m10__getimmutableinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "immutableInstance")
}

fn c1_m11__main(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_args] = jargs
        let l_common_phone_strings = jr.call_static("CommonPhoneStrings", "getInstance_0", [])
        let l_list = jr.new("BasicArrayListD", [])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "ONE")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "TWO")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "THREE")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "FOUR")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "FIVE")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "SIX")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "SEVEN")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "EIGHT")])
        jr.call(l_list, "add_1", [jr.get_field(l_common_phone_strings, "NINE")])
        jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "reverse_1", [l_list])
        jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_list, "toString_0", [])])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayListUtil",
        "org.allbinary.util.BasicArrayListUtil",
        "Object",
        [],
        False,
        [#("NULL_ARRAY_OF_ARRAY", jr.JNull), #("myRandomFactory", jr.JNull), #("immutableInstance", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getRandom_1", ["BasicArrayList"], False, c1_m6__getrandom), 
            jr.Method("getRandomIndex_1", ["BasicArrayList"], False, c1_m7__getrandomindex), 
            jr.Method("reverse_1", ["BasicArrayList"], False, c1_m8__reverse), 
            jr.Method("log_1", ["BasicArrayList"], False, c1_m9__log), 
            jr.Method("getImmutableInstance_0", [], False, c1_m10__getimmutableinstance), 
            jr.Method("main_1", ["StringArr"], True, c1_m11__main), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

