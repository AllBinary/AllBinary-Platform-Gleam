// Generated Code Do Not Modify
// package org.allbinary.logic.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StringMaker

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
        let l_string_length = jr.as_i(jr.call(l_string, "length_0", []))
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentLength"), l_string_length)])
        jr.call(l_string, "getChars_4", [jr.JInt(0), l_string_length, jr.get_field(this, "charArray"), jr.get_field(this, "currentLength")])
        jr.compound(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.add(jv, l_string_length) }, fn(jv) { jr.set_field(this, "currentLength", jv) })
    this
}

fn c1_m5__appendchar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_c] = jargs
    let l_c = jr.as_c(l_c)
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentLength"), jr.JInt(1))])
        jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(l_c))
    this
}

fn c1_m6__appendchararray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_char_array, l_start, l_end] = jargs
    let l_start = jr.as_i(l_start)
    let l_end = jr.as_i(l_end)
        jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentLength"), jr.sub(l_end, l_start))])
        {
            let l_index = jr.cell(jr.as_i(l_start))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_end) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.aget(l_char_array, jr.get(l_index))))
            Nil
        })
            Nil
        }
    this
}

fn c1_m7__appendbyte(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_b] = jargs
    let l_b = jr.as_b(l_b)
        jr.call(this, "append_1", [jr.call_static("Integer", "toString_1", [l_b])])
    this
}

fn c1_m8__appendshort(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_b] = jargs
    let l_b = jr.as_s(l_b)
        jr.call(this, "append_1", [jr.call_static("Integer", "toString_1", [l_b])])
    this
}

fn c1_m9__appendint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i] = jargs
    let l_i = jr.as_i(l_i)
        jr.call(this, "append_1", [jr.call_static("Integer", "toString_1", [l_i])])
    this
}

fn c1_m10__appendlong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_l] = jargs
    let l_l = jr.as_j(l_l)
        jr.call(this, "append_1", [jr.call_static("Long", "toString_1", [l_l])])
    this
}

fn c1_m11__appendfloat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_f] = jargs
    let l_f = jr.as_f(l_f)
        jr.call(this, "append_1", [jr.call_static("Float", "toString_1", [l_f])])
    this
}

fn c1_m12__appendboolean(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bool] = jargs
        case jr.truth(l_bool) {
            True -> {
            jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentLength"), jr.JInt(4))])
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(116)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(114)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(117)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(101)))
            Nil
        }
            False -> {
            jr.call(this, "ensureCapacity_1", [jr.add(jr.get_field(this, "currentLength"), jr.JInt(5))])
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(102)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(97)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(108)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(115)))
            jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.set_field(this, "currentLength", jv) }, 1, True), jr.as_c(jr.JChar(101)))
            Nil
        }
        }
    this
}

fn c1_m13__ensurecapacity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_min_size] = jargs
    let l_min_size = jr.as_i(l_min_size)
        let l_old_capacity = jr.as_i(jr.alen(jr.get_field(this, "charArray")))
        case jr.truth(jr.gt(l_min_size, l_old_capacity)) {
            True -> {
            let l_new_capacity = jr.cell(jr.as_i(jr.mul(l_old_capacity, jr.JInt(3))))
            case jr.truth(jr.lt(jr.get(l_new_capacity), l_min_size)) {
                True -> {
                jr.set(l_new_capacity, jr.as_i(l_min_size))
                Nil
            }
                False -> Nil
            }
            let l_copy = jr.new_array("C", 1, [jr.get(l_new_capacity)])
            let l_min = jr.as_i(jr.call(this, "min_2", [jr.alen(jr.get_field(this, "charArray")), jr.get(l_new_capacity)]))
            jr.call_static("System", "arraycopy_5", [jr.get_field(this, "charArray"), jr.JInt(0), l_copy, jr.JInt(0), l_min])
            jr.set_field(this, "charArray", l_copy)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m14__min(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_value2] = jargs
    let l_value = jr.as_i(l_value)
    let l_value2 = jr.as_i(l_value2)
    jr.as_i(case jr.truth(jr.le(l_value, l_value2)) { True -> l_value False -> l_value2 })
}

fn c1_m15__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start, l_end] = jargs
    let l_start = jr.as_i(l_start)
    let l_end = jr.as_i(l_end)
        jr.compound(fn() { jr.get_field(this, "currentLength") }, fn(jv) { jr.sub(jv, jr.sub(l_end, l_start)) }, fn(jv) { jr.set_field(this, "currentLength", jv) })
    this
}

fn c1_m16__length(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "currentLength"))
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("String", [jr.get_field(this, "charArray"), jr.JInt(0), jr.get_field(this, "currentLength")])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "charArray", jr.new_array("C", 1, [jr.JInt(20)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StringMaker",
        "org.allbinary.logic.string.StringMaker",
        "Object",
        [],
        False,
        [#("charArray", jr.JNull), #("currentLength", jr.JInt(0))],
        [],
        [
            jr.Method("append_1", ["String"], False, c1_m4__append), 
            jr.Method("appendchar_1", ["char"], False, c1_m5__appendchar), 
            jr.Method("appendCharArray_3", ["charArr", "int", "int"], False, c1_m6__appendchararray), 
            jr.Method("appendbyte_1", ["byte"], False, c1_m7__appendbyte), 
            jr.Method("appendshort_1", ["short"], False, c1_m8__appendshort), 
            jr.Method("appendint_1", ["int"], False, c1_m9__appendint), 
            jr.Method("appendlong_1", ["long"], False, c1_m10__appendlong), 
            jr.Method("appendfloat_1", ["float"], False, c1_m11__appendfloat), 
            jr.Method("appendboolean_1", ["boolean"], False, c1_m12__appendboolean), 
            jr.Method("ensureCapacity_1", ["int"], False, c1_m13__ensurecapacity), 
            jr.Method("min_2", ["int", "int"], False, c1_m14__min), 
            jr.Method("delete_2", ["int", "int"], False, c1_m15__delete), 
            jr.Method("length_0", [], False, c1_m16__length), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

