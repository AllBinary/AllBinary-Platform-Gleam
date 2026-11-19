// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandCurrentSelectionFormFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_rectangle, l_form_type, l_border, l_move_for_small_screen, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
    jr.method(fn() {
            case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("TouchFeatureFactory", "getInstance_0", []), "TOUCH_ENABLED")])) {
            True -> {
            let l_scroll_selection_form = jr.new("CommandCurrentSelectionForm", [l_title, l_items, l_border, l_move_for_small_screen, l_background_basic_color, l_foreground_basic_color])
            jr.call(l_scroll_selection_form, "init_2", [l_rectangle, l_form_type])
            jr.ret(l_scroll_selection_form)
            Nil
        }
            False -> {
            jr.ret(jr.call_static("ScrollSelectionFormNoneFactory", "getInstance_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandCurrentSelectionFormFactory",
        "org.allbinary.graphics.form.CommandCurrentSelectionFormFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_8", ["String", "ABCustomItemArr", "Rectangle", "FormType", "int", "boolean", "BasicColor", "BasicColor"], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

