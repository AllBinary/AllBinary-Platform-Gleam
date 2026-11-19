// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SmallIntegerSingletonFactory

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
    jr.set_static("SmallIntegerSingletonFactory", "instance", jr.new("SmallIntegerSingletonFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SmallIntegerSingletonFactory", "instance")
}

fn c1_m10__getmin(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_min_allowed = jr.as_i(jr.call(this, "getMinAllowed_0", []))
        case jr.truth(jr.le(jr.get_field(this, "MIN"), l_min_allowed)) {
            True -> {
            case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) {
                True -> {
                Nil
            }
                False -> case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
                True -> {
                let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
                jr.call(l_log_util, "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Android InputFactory was initialized before GameMidlet: ")]), "appendint_1", [jr.get_field(this, "MIN")]), "toString_0", []), this, jr.JStr("getMin")])
                jr.call(this, "initWithRange_2", [jr.JInt(jr.wrap_i(0x291)), jr.JInt(6)])
                Nil
            }
                False -> {
                let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
                jr.call(l_log_util, "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ")]), "appendint_1", [jr.get_field(this, "MIN")]), "toString_0", []), this, jr.JStr("getMin")])
                jr.call(this, "initWithRange_2", [jr.JInt(jr.wrap_i(0x2D0)), jr.JInt(6)])
                Nil
            }
            }
            }
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.le(jr.get_field(this, "MIN"), l_min_allowed)) {
            True -> {
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.JStr("This means you loaded the InputFactory before determining the platform input size requirements."), this, jr.JStr("getMin"), jr.new("Exception", [])])
            Nil
        }
            False -> Nil
        }
    jr.as_i(jr.get_field(this, "MIN"))
}

fn c1_m11__getminallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> {
            case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
                True -> {
                jr.ret(jr.as_i(jr.JInt(jr.wrap_i(0x101))))
                Nil
            }
                False -> {
                jr.ret(jr.as_i(jr.JInt(23)))
                Nil
            }
            }
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m12__initwithrange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_negative_value] = jargs
    let l_value = jr.as_i(l_value)
    let l_negative_value = jr.as_i(l_negative_value)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_value, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.get(l_index), jr.get_field(this, "NEGATIVE_MAX")), jr.new("Integer", [jr.get(l_index)]))
            Nil
        })
            Nil
        }
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_negative_value, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastNegativeMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.get(l_index), jr.new("Integer", [jr.neg(jr.get(l_index))]))
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

fn c1_m13__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(case jr.truth(jr.lt(jr.get_field(this, "lastMin"), jr.get_field(this, "POSITIVE_MAX"))) { True -> jr.JBool(True) False -> jr.lt(jr.get_field(this, "lastNegativeMin"), jr.get_field(this, "NEGATIVE_MAX")) }) {
            True -> {
            {
                let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "POSITIVE_MAX"), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.get(l_index), jr.get_field(this, "NEGATIVE_MAX")), jr.new("Integer", [jr.get(l_index)]))
                Nil
            })
                Nil
            }
            {
                let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "NEGATIVE_MAX"), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "lastNegativeMin")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                jr.aset(jr.get_field(this, "INTEGER_ARRAY"), jr.get(l_index), jr.new("Integer", [jr.neg(jr.get(l_index))]))
                Nil
            })
                Nil
            }
            jr.set_field(this, "lastMin", jr.as_i(jr.get_field(this, "POSITIVE_MAX")))
            jr.set_field(this, "MIN", jr.as_i(jr.get_field(this, "lastMin")))
            jr.set_field(this, "lastNegativeMin", jr.as_i(jr.get_field(this, "NEGATIVE_MAX")))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__getat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.add(l_index, jr.get_field(this, "NEGATIVE_MAX")))
}

fn c1_m16__getatnothrow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.add(l_index, jr.get_field(this, "NEGATIVE_MAX")), jr.sub(jr.alen(jr.get_field(this, "INTEGER_ARRAY")), jr.JInt(1)))) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.add(jr.JInt(-1), jr.get_field(this, "NEGATIVE_MAX"))))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.aget(jr.get_field(this, "INTEGER_ARRAY"), jr.add(l_index, jr.get_field(this, "NEGATIVE_MAX"))))
        jr.JNull
    })
}

fn c1_m17__createinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_integer = jr.cell(jr.call(this, "getAt_1", [l_index]))
        case jr.truth(jr.eq(jr.get(l_integer), jr.JNull)) {
            True -> {
            jr.set(l_integer, jr.new("Integer", [l_index]))
            Nil
        }
            False -> Nil
        }
    jr.get(l_integer)
}

fn c1_m18__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_jinit14(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "initWithRange_2", [jr.JInt(23), jr.JInt(0)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SmallIntegerSingletonFactory",
        "org.allbinary.logic.math.SmallIntegerSingletonFactory",
        "Object",
        [],
        False,
        [#("NEGATIVE_MAX", jr.JInt(0)), #("POSITIVE_MAX", jr.JInt(0)), #("INTEGER_ARRAY", jr.JNull), #("STRING_ARRAY", jr.JNull), #("MIN", jr.JInt(0)), #("lastMin", jr.JInt(0)), #("lastNegativeMin", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getMin_0", [], False, c1_m10__getmin), 
            jr.Method("getMinAllowed_0", [], False, c1_m11__getminallowed), 
            jr.Method("initWithRange_2", ["int", "int"], False, c1_m12__initwithrange), 
            jr.Method("init_0", [], False, c1_m13__init), 
            jr.Method("getAt_1", ["int"], False, c1_m15__getat), 
            jr.Method("getAtNoThrow_1", ["int"], False, c1_m16__getatnothrow), 
            jr.Method("createInstance_1", ["int"], False, c1_m17__createinstance), 
            jr.Method("getString_1", ["int"], False, c1_m18__getstring), 
            jr.Method("jinit_0", [], False, c1_jinit14)],
        c1_jfields,
        c1_jclinit,
    )
}

