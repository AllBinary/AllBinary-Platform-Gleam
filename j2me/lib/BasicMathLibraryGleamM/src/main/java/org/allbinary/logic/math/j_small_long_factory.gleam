// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SmallLongFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NEGATIVE_MAX", jr.as_i(jr.JInt(500)))
    jr.set_field(this, "POSITIVE_MAX", jr.as_i(jr.JInt(jr.wrap_i(0x2D1))))
    jr.set_field(this, "INTEGER_ARRAY", jr.new_array("L", 1, [jr.add(jr.get_field(this, "NEGATIVE_MAX"), jr.get_field(this, "POSITIVE_MAX"))]))
    jr.set_field(this, "STRING_ARRAY", jr.new_array("L", 1, [jr.add(jr.get_field(this, "NEGATIVE_MAX"), jr.get_field(this, "POSITIVE_MAX"))]))
    jr.set_field(this, "MIN", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "lastMin", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "lastNegativeMin", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SmallLongFactory", "instance", jr.new("SmallLongFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SmallLongFactory", "instance")
}

fn c1_m10__initwithrange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_negative_value] = jargs
    let l_value = jr.as_i(l_value)
    let l_negative_value = jr.as_i(l_negative_value)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_value, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.get(l_index), jr.get_field(this, "NEGATIVE_MAX")), jr.new("Long", [jr.get(l_index)]))
            Nil
        })
            Nil
        }
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_negative_value, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastNegativeMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.get(l_index), jr.new("Long", [jr.neg(jr.get(l_index))]))
            Nil
        })
            Nil
        }
        case jr.truth(jr.lt(jr.get_field(this, "lastMin"), l_value)) {
            True -> {
            jr.set_field(this, "lastMin", jr.as_i(l_value))
            jr.set_field(this, "MIN", jr.as_i(l_value))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.get_field(this, "lastNegativeMin"), l_negative_value)) {
            True -> {
            jr.set_field(this, "lastNegativeMin", jr.as_i(l_negative_value))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.JInt(0)), jr.JNull)) {
            True -> {
            case jr.truth(case jr.truth(jr.lt(jr.get_field(this, "lastMin"), jr.get_field(this, "POSITIVE_MAX"))) { True -> jr.JBool(True) False -> jr.lt(jr.get_field(this, "lastNegativeMin"), jr.get_field(this, "NEGATIVE_MAX")) }) {
                True -> {
                {
                    let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "POSITIVE_MAX"), jr.JInt(1))))
                    jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                    jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.get(l_index), jr.get_field(this, "NEGATIVE_MAX")), jr.new("Long", [jr.get(l_index)]))
                    Nil
                })
                    Nil
                }
                {
                    let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "NEGATIVE_MAX"), jr.JInt(1))))
                    jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastNegativeMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                    jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.get(l_index), jr.new("Long", [jr.neg(jr.get(l_index))]))
                    Nil
                })
                    Nil
                }
                jr.set_field(this, "lastMin", jr.as_i(jr.get_field(this, "POSITIVE_MAX")))
                jr.set_field(this, "lastNegativeMin", jr.as_i(jr.get_field(this, "NEGATIVE_MAX")))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__getinstancenothrow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_j(l_index)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.add(l_index, jr.to_j(jr.get_field(this, "NEGATIVE_MAX"))), jr.to_j(jr.sub(jr.alen(jr.get_field(this, "INTEGER_ARRAY")), jr.JInt(1))))) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.JInt(-1), jr.get_field(this, "NEGATIVE_MAX"))))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.to_i(l_index), jr.get_field(this, "NEGATIVE_MAX"))))
        jr.JNull
    })
}

fn c1_m14__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_i = jr.as_i(jr.add(l_index, jr.get_field(this, "NEGATIVE_MAX")))
        case jr.truth(jr.eq(jr.aget(jr.get_field(this, "STRING_ARRAY"), l_i), jr.JNull)) {
            True -> {
            jr.aset(jr.get_field(this, "STRING_ARRAY"), l_i, jr.call(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), l_i), "toString_0", []))
            Nil
        }
            False -> Nil
        }
    jr.aget(jr.get_field(this, "STRING_ARRAY"), l_i)
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SmallLongFactory",
        "org.allbinary.logic.math.SmallLongFactory",
        "Object",
        [],
        False,
        [#("NEGATIVE_MAX", jr.JInt(0)), #("POSITIVE_MAX", jr.JInt(0)), #("INTEGER_ARRAY", jr.JNull), #("STRING_ARRAY", jr.JNull), #("MIN", jr.JInt(0)), #("lastMin", jr.JInt(0)), #("lastNegativeMin", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("initWithRange_2", ["int", "int"], False, c1_m10__initwithrange), 
            jr.Method("init_0", [], False, c1_m11__init), 
            jr.Method("getInstanceNoThrow_1", ["long"], False, c1_m13__getinstancenothrow), 
            jr.Method("getString_1", ["int"], False, c1_m14__getstring), 
            jr.Method("jinit_0", [], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

