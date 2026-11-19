// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item.validation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TextFieldItemValidator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__isvalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_boolean_factory = jr.call_static("BooleanFactory", "getInstance_0", [])
        let l_result = jr.cell(jr.get_field(l_boolean_factory, "TRUE"))
        let l_string = jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])
        let l_text_length = jr.as_i(jr.call(l_string, "length_0", []))
        case jr.truth(case jr.truth(case jr.truth(jr.eq(l_text_length, jr.JInt(0))) { True -> jr.get_field(this, "allowOnEmpty") False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.gt(l_text_length, jr.get_field(this, "min"))) { True -> jr.lt(l_text_length, jr.get_field(this, "max")) False -> jr.JBool(False) } }) {
            True -> {
            Nil
        }
            False -> {
            case jr.truth(jr.lt(l_text_length, jr.get_field(this, "min"))) {
                True -> {
                jr.set(l_result, jr.get_field(l_boolean_factory, "FALSE"))
                Nil
            }
                False -> case jr.truth(jr.gt(l_text_length, jr.get_field(this, "max"))) {
                True -> {
                jr.set(l_result, jr.get_field(l_boolean_factory, "FALSE"))
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

fn c1_m7__tolist(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.new("BasicArrayListD", [])
        let l_string = jr.call(jr.get_field(this, "textFieldItem"), "getString_0", [])
        let l_text_length = jr.as_i(jr.call(l_string, "length_0", []))
        case jr.truth(case jr.truth(jr.gt(l_text_length, jr.get_field(this, "min"))) { True -> jr.lt(l_text_length, jr.get_field(this, "max")) False -> jr.JBool(False) }) {
            True -> {
            Nil
        }
            False -> {
            let l_label = jr.call(jr.get_field(this, "textFieldItem"), "getLabel_0", [])
            let l_name = jr.call(l_label, "substring_2", [jr.JInt(0), jr.sub(jr.call(l_label, "length_0", []), jr.JInt(2))])
            case jr.truth(jr.lt(l_text_length, jr.get_field(this, "min"))) {
                True -> {
                jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_name]), "append_1", [jr.JStr(" is to short")]), "toString_0", [])])
                Nil
            }
                False -> case jr.truth(jr.gt(l_text_length, jr.get_field(this, "max"))) {
                True -> {
                jr.call(l_list, "add_1", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_name]), "append_1", [jr.JStr(" is to long")]), "toString_0", [])])
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
    let assert [l_text_field_item, l_min, l_max, l_allow_on_empty] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
    jr.super_init("ValidatorBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "textFieldItem", l_text_field_item)
        jr.set_field(this, "min", jr.as_i(l_min))
        jr.set_field(this, "max", jr.as_i(l_max))
        jr.set_field(this, "allowOnEmpty", l_allow_on_empty)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TextFieldItemValidator",
        "org.allbinary.graphics.form.item.validation.TextFieldItemValidator",
        "ValidatorBase",
        [],
        False,
        [#("textFieldItem", jr.JNull), #("min", jr.JInt(0)), #("max", jr.JInt(0)), #("allowOnEmpty", jr.JBool(False))],
        [],
        [
            jr.Method("isValid_0", [], False, c1_m6__isvalid), 
            jr.Method("toList_0", [], False, c1_m7__tolist), 
            jr.Method("jinit_4", ["ABTextFieldItem", "int", "int", "boolean"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

