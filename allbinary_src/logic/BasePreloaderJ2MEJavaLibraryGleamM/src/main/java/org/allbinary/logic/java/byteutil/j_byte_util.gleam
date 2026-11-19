// Generated Code Do Not Modify
// package org.allbinary.logic.java.byteutil
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ByteUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ByteUtil", "instance", jr.new("ByteUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ByteUtil", "instance")
}

fn c1_m4__xor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array, l_mask] = jargs
    let l_mask = jr.as_b(l_mask)
        let l_bytes = jr.new_array("B", 1, [jr.alen(l_array)])
        let l_size = jr.as_i(jr.alen(l_array))
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_current_byte = jr.cell(jr.as_b(jr.JByte(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() {
            jr.set(l_current_byte, jr.as_b(jr.aget(l_array, jr.get(l_index))))
            jr.aset(l_bytes, jr.get(l_index), jr.as_b(jr.to_b(jr.bxor(jr.get(l_current_byte), l_mask))))
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
    l_bytes
}

fn c1_m5__not(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
        let l_bytes = jr.new_array("B", 1, [jr.alen(l_array)])
        let l_size = jr.as_i(jr.alen(l_array))
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() {
            jr.aset(l_bytes, jr.get(l_index), jr.as_b(jr.to_b(jr.bnot(jr.aget(l_array, jr.get(l_index))))))
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
    l_bytes
}

fn c1_m6__xorbyte(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array, l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_mask = jr.cell(jr.as_b(jr.JInt(0)))
        case jr.truth(jr.eq(l_index, jr.JInt(0))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(1)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(1))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(2)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(2))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(4)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(3))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(8)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(4))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(16)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(5))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(32)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(6))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.JInt(64)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(l_index, jr.JInt(7))) {
            True -> {
            jr.set(l_mask, jr.as_b(jr.to_b(jr.JInt(-127))))
            Nil
        }
            False -> Nil
        }
    jr.call(this, "xor_2", [l_array, jr.get(l_mask)])
}

fn c1_m7__compare(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_byte_array, l_old_byte_array] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(jr.alen(l_new_byte_array), jr.alen(l_old_byte_array))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            Nil
        }
        }
            let l_size = jr.as_i(jr.alen(l_new_byte_array))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(l_new_byte_array, jr.get(l_index)), jr.aget(l_old_byte_array, jr.get(l_index)))) {
                True -> {
                jr.ret(jr.JBool(False))
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

fn c1_m8__comparewithstats(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_byte_array, l_new_size, l_old_byte_array, l_stats] = jargs
    let l_new_size = jr.as_i(l_new_size)
    jr.method(fn() {
            case jr.truth(jr.ne(l_new_size, jr.alen(l_old_byte_array))) {
            True -> {
            jr.aset(l_stats, jr.JInt(0), jr.as_i(jr.JInt(-1)))
            jr.aset(l_stats, jr.JInt(2), jr.as_i(l_new_size))
            jr.aset(l_stats, jr.JInt(3), jr.as_i(jr.alen(l_old_byte_array)))
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.aset(l_stats, jr.JInt(0), jr.as_i(l_new_size))
            Nil
        }
        }
            jr.aset(l_stats, jr.JInt(1), jr.as_i(jr.JInt(0)))
            let l_size = jr.as_i(l_new_size)
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(l_new_byte_array, jr.get(l_index)), jr.aget(l_old_byte_array, jr.get(l_index)))) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            jr.incr(fn() { jr.aget(l_stats, jr.JInt(1)) }, fn(jv) { jr.aset(l_stats, jr.JInt(1), jv) }, 1, True)
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ByteUtil",
        "org.allbinary.logic.java.byteutil.ByteUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("xor_2", ["byteArr", "byte"], False, c1_m4__xor), 
            jr.Method("not_1", ["byteArr"], False, c1_m5__not), 
            jr.Method("xorByte_2", ["byteArr", "int"], False, c1_m6__xorbyte), 
            jr.Method("compare_2", ["byteArr", "byteArr"], False, c1_m7__compare), 
            jr.Method("compareWithStats_4", ["byteArr", "int", "byteArr", "intArr"], False, c1_m8__comparewithstats), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

