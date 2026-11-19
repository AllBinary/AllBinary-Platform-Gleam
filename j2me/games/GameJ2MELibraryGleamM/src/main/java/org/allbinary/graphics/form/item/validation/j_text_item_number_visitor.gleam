// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item.validation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TextItemNumberVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            let l_value = l_any_type
            case jr.truth(jr.lt(jr.call(l_value, "length_0", []), jr.JInt(2))) {
            True -> {
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isNumber_1", [l_value])) {
                True -> {
                jr.ret(jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE"))
                Nil
            }
                False -> {
                jr.try_catch(fn() {
                    jr.call(jr.call_static("TextNotificationUtil", "getInstance_0", []), "fireError_1", [jr.JStr("Numbers Only")])
                    Nil
                }, [#(["Exception"], fn(l_e) { {
                    let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                    jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "VISIT"), l_e])
                    Nil
                } })], fn() { Nil })
                jr.ret(jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Visitor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TextItemNumberVisitor",
        "org.allbinary.graphics.form.item.validation.TextItemNumberVisitor",
        "Visitor",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("visit_1", ["Object"], False, c1_m3__visit), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

