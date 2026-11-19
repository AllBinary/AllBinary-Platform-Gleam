// Generated Code Do Not Modify
// package org.allbinary.logic.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StringValidationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("StringValidationUtil", "instance", jr.new("StringValidationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("StringValidationUtil", "instance")
}

fn c1_m6__containsspaces(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            case jr.truth(jr.ge(jr.call(l_value, "indexOf_1", [jr.JChar(32)]), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m7__isnumber(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            let l_number_of_decimal_points = jr.cell(jr.as_i(jr.JInt(0)))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.call(l_value, "length_0", [])) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_digit = jr.as_c(jr.call(l_value, "charAt_1", [jr.get(l_index)]))
            case jr.truth(case jr.truth(jr.not(jr.call(this, "isNumberFromChar_1", [l_digit]))) { True -> jr.ne(l_digit, jr.JChar(46)) False -> jr.JBool(False) }) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.eq(l_digit, jr.JChar(46))) {
                True -> {
                jr.incr(fn() { jr.get(l_number_of_decimal_points) }, fn(jv) { jr.set(l_number_of_decimal_points, jv) }, 1, True)
                case jr.truth(jr.gt(jr.get(l_number_of_decimal_points), jr.JInt(1))) {
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

fn c1_m8__isnumberfromchar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_digit] = jargs
    let l_digit = jr.as_c(l_digit)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.ne(l_digit, jr.JChar(48))) { True -> jr.ne(l_digit, jr.JChar(49)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(50)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(51)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(52)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(53)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(54)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(55)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(56)) False -> jr.JBool(False) }) { True -> jr.ne(l_digit, jr.JChar(57)) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m9__isvalidrequired(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_min, l_max] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.lt(jr.call(l_value, "length_0", []), l_min)) { True -> jr.JBool(True) False -> jr.gt(jr.call(l_value, "length_0", []), l_max) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m10__isvalidrequirednumber(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_min, l_max] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(jr.call(this, "isEmpty_1", [l_value])) { True -> jr.JBool(True) False -> jr.lt(jr.call(l_value, "length_0", []), l_min) }) { True -> jr.JBool(True) False -> jr.gt(jr.call(l_value, "length_0", []), l_max) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.not(jr.call(this, "isNumber_1", [l_value]))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m11__isvalidnotrequired(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_min, l_max] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.call(l_value, "length_0", []), jr.JInt(0))) {
            True -> {
            case jr.truth(case jr.truth(jr.lt(jr.call(l_value, "length_0", []), l_min)) { True -> jr.JBool(True) False -> jr.gt(jr.call(l_value, "length_0", []), l_max) }) {
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
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m12__isvalidnotrequirednumber(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_min, l_max] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.call(l_value, "length_0", []), jr.JInt(0))) {
            True -> {
            case jr.truth(case jr.truth(case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_value, jr.get_field(jr.get_field(this, "stringUtil"), "NULL_STRING")]), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.lt(jr.call(l_value, "length_0", []), l_min) }) { True -> jr.JBool(True) False -> jr.gt(jr.call(l_value, "length_0", []), l_max) }) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.not(jr.call(this, "isNumber_1", [l_value]))) {
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
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m13__isempty(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_string, jr.get_field(jr.get_field(this, "stringUtil"), "NULL_STRING")]), jr.JInt(0))) { True -> jr.ne(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_string, jr.get_field(jr.get_field(this, "stringUtil"), "EMPTY_STRING")]), jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StringValidationUtil",
        "org.allbinary.logic.string.StringValidationUtil",
        "Object",
        [],
        False,
        [#("stringUtil", jr.JNull), #("tsUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("containsSpaces_1", ["String"], False, c1_m6__containsspaces), 
            jr.Method("isNumber_1", ["String"], False, c1_m7__isnumber), 
            jr.Method("isNumberFromChar_1", ["char"], False, c1_m8__isnumberfromchar), 
            jr.Method("isValidRequired_3", ["String", "int", "int"], False, c1_m9__isvalidrequired), 
            jr.Method("isValidRequiredNumber_3", ["String", "int", "int"], False, c1_m10__isvalidrequirednumber), 
            jr.Method("isValidNotRequired_3", ["String", "int", "int"], False, c1_m11__isvalidnotrequired), 
            jr.Method("isValidNotRequiredNumber_3", ["String", "int", "int"], False, c1_m12__isvalidnotrequirednumber), 
            jr.Method("isEmpty_1", ["String"], False, c1_m13__isempty), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

