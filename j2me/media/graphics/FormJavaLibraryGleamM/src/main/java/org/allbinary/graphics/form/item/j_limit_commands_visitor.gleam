// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LimitCommandsVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            let l_command = l_any_type
            let l_boolean_factory = jr.call_static("BooleanFactory", "getInstance_0", [])
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.get_field(this, "isNotSmallDisplay")) { True -> jr.JBool(True) False -> jr.eq(jr.call(l_command, "getPriority_0", []), jr.JInt(1)) }) { True -> jr.JBool(True) False -> jr.eq(l_command, jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "EXIT_COMMAND")) }) { True -> jr.JBool(True) False -> jr.eq(l_command, jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "EXIT_WITHOUT_PROGRESS_COMMAND")) }) {
            True -> {
            jr.ret(jr.get_field(l_boolean_factory, "TRUE"))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(l_boolean_factory, "FALSE"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Visitor", this, [])
    c1_jfields(this)
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        jr.set_field(this, "isNotSmallDisplay", case jr.truth(case jr.truth(jr.call(l_display_info, "isPortrait_0", [])) { True -> jr.gt(jr.call(l_display_info, "getLastHeight_0", []), jr.get_field(jr.call_static("ScreenInfo", "getInstance_0", []), "SMALL_WIDTH")) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.not(jr.call(l_display_info, "isPortrait_0", []))) { True -> jr.gt(jr.call(l_display_info, "getLastHeight_0", []), jr.get_field(jr.call_static("ScreenInfo", "getInstance_0", []), "SMALL_HEIGHT")) False -> jr.JBool(False) } })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LimitCommandsVisitor",
        "org.allbinary.graphics.form.item.LimitCommandsVisitor",
        "Visitor",
        [],
        False,
        [#("isNotSmallDisplay", jr.JBool(False))],
        [],
        [
            jr.Method("visit_1", ["Object"], False, c1_m3__visit), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

