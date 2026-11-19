// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item.validation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberTextFieldItemValidator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__isnumbervalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE")
}

fn c1_m7__tonumbervector(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.new("BasicArrayListD", [])
}

fn c1_m8__isvalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_result = jr.cell(jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE"))
        let l_string = jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])
        let l_text_length = jr.as_i(jr.call(l_string, "length_0", []))
        case jr.truth(case jr.truth(jr.gt(l_text_length, jr.JInt(0))) { True -> jr.lt(l_text_length, jr.get_field(this, "maxChars")) False -> jr.JBool(False) }) {
            True -> {
            jr.try_catch(fn() {
                jr.call_static("Integer", "parseInt_1", [jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])])
                Nil
            }, [#(["NumberFormatException"], fn(l_e) { {
                jr.set(l_result, jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
                Nil
            } })], fn() { Nil })
            Nil
        }
            False -> {
            case jr.truth(jr.lt(l_text_length, jr.JInt(1))) {
                True -> {
                jr.set(l_result, jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
                Nil
            }
                False -> case jr.truth(jr.gt(l_text_length, jr.get_field(this, "maxChars"))) {
                True -> {
                jr.set(l_result, jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
        }
    jr.get(l_result)
}

fn c1_m9__tolist(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.new("BasicArrayListD", [])
        let l_string = jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])
        let l_text_length = jr.as_i(jr.call(l_string, "length_0", []))
        let l_label = jr.call(jr.get_field(this, "textFieldItem"), "getLabel_0", [])
        let l_name = jr.call(l_label, "substring_2", [jr.JInt(0), jr.sub(jr.call(l_label, "length_0", []), jr.JInt(2))])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        let l_string_maker = jr.new("StringMaker", [])
        case jr.truth(case jr.truth(jr.gt(l_text_length, jr.JInt(0))) { True -> jr.lt(l_text_length, jr.get_field(this, "maxChars")) False -> jr.JBool(False) }) {
            True -> {
            jr.try_catch(fn() {
                let l_number = jr.call(l_small_integer_singleton_factory, "createInstance_1", [jr.call_static("Integer", "parseInt_1", [jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])])])
                case jr.truth(jr.gt(jr.call(l_number, "intValue_0", []), jr.get_field(this, "min"))) {
                    True -> {
                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                    jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [jr.JStr(" is to small")]), "toString_0", [])])
                    Nil
                }
                    False -> case jr.truth(jr.gt(jr.call(l_number, "intValue_0", []), jr.get_field(this, "max"))) {
                    True -> {
                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                    jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [jr.JStr(" is to large")]), "toString_0", [])])
                    Nil
                }
                    False -> Nil
                }
                }
                Nil
            }, [#(["NumberFormatException"], fn(l_e) { {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [jr.JStr(" is not a number")]), "toString_0", [])])
                Nil
            } })], fn() { Nil })
            Nil
        }
            False -> {
            case jr.truth(jr.lt(l_text_length, jr.JInt(1))) {
                True -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [jr.JStr(" is to short")]), "toString_0", [])])
                Nil
            }
                False -> case jr.truth(jr.gt(l_text_length, jr.get_field(this, "maxChars"))) {
                True -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [jr.JStr(" is to long")]), "toString_0", [])])
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
        }
    l_list
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text_field_item, l_max_chars, l_min, l_max] = jargs
    let l_max_chars = jr.as_i(l_max_chars)
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.super_init("ValidatorBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "textFieldItem", l_text_field_item)
        jr.set_field(this, "min", jr.as_i(l_min))
        jr.set_field(this, "max", jr.as_i(l_max))
        jr.set_field(this, "maxChars", jr.as_i(l_max_chars))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberTextFieldItemValidator",
        "org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator",
        "ValidatorBase",
        [],
        False,
        [#("textFieldItem", jr.JNull), #("min", jr.JInt(0)), #("max", jr.JInt(0)), #("maxChars", jr.JInt(0))],
        [],
        [
            jr.Method("isNumberValid_1", ["Integer"], False, c1_m6__isnumbervalid), 
            jr.Method("toNumberVector_1", ["Integer"], False, c1_m7__tonumbervector), 
            jr.Method("isValid_0", [], False, c1_m8__isvalid), 
            jr.Method("toList_0", [], False, c1_m9__tolist), 
            jr.Method("jinit_4", ["ABTextFieldItem", "int", "int", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

