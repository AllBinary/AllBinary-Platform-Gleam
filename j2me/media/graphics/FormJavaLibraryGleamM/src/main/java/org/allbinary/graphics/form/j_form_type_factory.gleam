// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FormTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "UNK", jr.JStr("Unknown FormType"))
    jr.set_field(this, "NULL_FORM_TYPE", jr.new("FormType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.set_field(this, "TEMP_HORIZONTAL_FORM", jr.new("FormType", [jr.JStr("TempHorizontal")]))
    jr.set_field(this, "HORIZONTAL_FORM", jr.new("FormType", [jr.JStr("Horizontal")]))
    jr.set_field(this, "VERTICAL_CENTER_FORM", jr.new("FormType", [jr.JStr("Vertical")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FormTypeFactory", "instance", jr.new("FormTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FormTypeFactory", "instance")
}

fn c1_m8__getformtype(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_form_type = jr.cell(jr.JNull)
        case jr.truth(jr.call(l_display_info, "isPortrait_0", [])) {
            True -> {
            jr.set(l_form_type, jr.get_field(this, "VERTICAL_CENTER_FORM"))
            Nil
        }
            False -> {
            jr.set(l_form_type, jr.get_field(this, "HORIZONTAL_FORM"))
            Nil
        }
        }
    jr.get(l_form_type)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FormTypeFactory",
        "org.allbinary.graphics.form.FormTypeFactory",
        "Object",
        [],
        False,
        [#("UNK", jr.JNull), #("NULL_FORM_TYPE", jr.JNull), #("TEMP_HORIZONTAL_FORM", jr.JNull), #("HORIZONTAL_FORM", jr.JNull), #("VERTICAL_CENTER_FORM", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getFormType_0", [], False, c1_m8__getformtype), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

