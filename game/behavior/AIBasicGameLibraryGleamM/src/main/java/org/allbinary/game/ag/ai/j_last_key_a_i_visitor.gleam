// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LastKeyAIVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "TRUE", jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.try_catch(fn() {
            let l_basic_a_i = l_any_type
            let l_key = jr.as_i(jr.call(l_basic_a_i, "getLastKey_0", []))
            case jr.truth(jr.ne(l_key, jr.JInt(-1))) {
                True -> {
                jr.call(l_basic_a_i, "processKeyAI_1", [l_key])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "VISIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.get_field(this, "TRUE")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Visitor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LastKeyAIVisitor",
        "org.allbinary.game.ag.ai.LastKeyAIVisitor",
        "Visitor",
        [],
        False,
        [#("logUtil", jr.JNull), #("TRUE", jr.JNull)],
        [],
        [
            jr.Method("visit_1", ["Object"], False, c1_m4__visit), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

