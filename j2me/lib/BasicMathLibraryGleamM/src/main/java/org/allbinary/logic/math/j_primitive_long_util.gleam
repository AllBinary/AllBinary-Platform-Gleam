// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PrimitiveLongUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "primitiveLongSingleton", jr.call_static("PrimitiveLongSingleton", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createpoweroften(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_power_of_ten] = jargs
    let l_power_of_ten = jr.as_i(l_power_of_ten)
        let l_primitive_long_util = jr.new("PrimitiveLongUtil", [l_power_of_ten, jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
        case jr.truth(jr.ne(jr.rem(l_power_of_ten, jr.JInt(10)), jr.JInt(0))) {
            True -> {
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), l_primitive_long_util, jr.get_field(l_common_strings, "CONSTRUCTOR"), jr.new("Exception", [jr.JStr("Max must be power of 10")])])
            Nil
        }
            False -> Nil
        }
    l_primitive_long_util
}

fn c1_m10__getchararray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.method(fn() {
            case jr.truth(jr.lt(l_value, jr.JInt(10))) {
            True -> {
            jr.call(this, "setCurrentTotalDigits_1", [jr.JInt(1)])
            jr.ret(jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAYS"), l_value))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.gt(l_value, jr.get_field(this, "maxValue"))) {
            True -> {
            jr.call(this, "setCurrentTotalDigits_1", [jr.JInt(3)])
            jr.ret(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "UNK"))
            Nil
        }
            False -> Nil
        }
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_div = jr.cell(jr.as_i(jr.get_field(this, "powerOfTen")))
            let l_last_value = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { jr.ge(jr.get(l_div), jr.JInt(1)) }, fn() {
            let l_digit = jr.as_i(jr.div(jr.sub(l_value, jr.get(l_last_value)), jr.get(l_div)))
            case jr.truth(case jr.truth(jr.ge(l_digit, jr.JInt(0))) { True -> jr.lt(l_digit, jr.JInt(10)) False -> jr.JBool(False) }) {
                True -> {
                case jr.truth(case jr.truth(jr.eq(l_digit, jr.JInt(0))) { True -> jr.eq(jr.get(l_index), jr.JInt(0)) False -> jr.JBool(False) }) {
                    True -> {
                    Nil
                }
                    False -> {
                    jr.aset(jr.get_field(this, "charArray"), jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.as_c(jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), l_digit)))
                    Nil
                }
                }
                jr.compound(fn() { jr.get(l_last_value) }, fn(jv) { jr.add(jv, jr.mul(l_digit, jr.get(l_div))) }, fn(jv) { jr.set(l_last_value, jv) })
                Nil
            }
                False -> Nil
            }
            jr.set(l_div, jr.as_i(jr.div(jr.get(l_div), jr.JInt(10))))
            Nil
        })
            jr.call(this, "setCurrentTotalDigits_1", [jr.get(l_index)])
            jr.ret(jr.get_field(this, "charArray"))
        jr.JNull
    })
}

fn c1_m11__setcurrenttotaldigits(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_total_digits] = jargs
    let l_current_total_digits = jr.as_i(l_current_total_digits)
        jr.set_field(this, "currentTotalDigits", jr.as_i(l_current_total_digits))
    jr.JNull
}

fn c1_m12__getcurrenttotaldigits(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "currentTotalDigits"))
}

fn c1_m13__getmaxdigits(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "maxDigits"))
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_power_of_ten, l_unused] = jargs
    let l_power_of_ten = jr.as_i(l_power_of_ten)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "maxDigits", jr.as_i(jr.call(jr.call_static("MathUtil", "getInstance_0", []), "getTotalDigits_1", [l_power_of_ten])))
        jr.set_field(this, "powerOfTen", jr.as_i(l_power_of_ten))
        jr.set_field(this, "maxValue", jr.as_i(jr.sub(jr.mul(l_power_of_ten, jr.JInt(10)), jr.JInt(1))))
        jr.set_field(this, "charArray", jr.new_array("C", 1, [jr.get_field(this, "maxDigits")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PrimitiveLongUtil",
        "org.allbinary.logic.math.PrimitiveLongUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("powerOfTen", jr.JInt(0)), #("maxValue", jr.JInt(0)), #("maxDigits", jr.JInt(0)), #("charArray", jr.JNull), #("currentTotalDigits", jr.JInt(0)), #("primitiveLongSingleton", jr.JNull)],
        [],
        [
            jr.Method("createPowerOfTen_1", ["int"], True, c1_m1__createpoweroften), 
            jr.Method("getCharArray_1", ["int"], False, c1_m10__getchararray), 
            jr.Method("setCurrentTotalDigits_1", ["int"], False, c1_m11__setcurrenttotaldigits), 
            jr.Method("getCurrentTotalDigits_0", [], False, c1_m12__getcurrenttotaldigits), 
            jr.Method("getMaxDigits_0", [], False, c1_m13__getmaxdigits), 
            jr.Method("jinit_2", ["int", "Object"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

