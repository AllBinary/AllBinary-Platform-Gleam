// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PaintableForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "canvasStrings", jr.call_static("CanvasStrings", "getInstance_0", []))
    jr.set_field(this, "rectangle", jr.get_static("RectangleFactory", "SINGLETON"))
    jr.set_field(this, "formType", jr.get_field(jr.call_static("FormTypeFactory", "getInstance_0", []), "NULL_FORM_TYPE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PaintableForm", "NULL_PAINTABLE_FORM", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullpaintableform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("PaintableForm", "NULL_PAINTABLE_FORM"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("PaintableForm", "NULL_PAINTABLE_FORM", jr.new("PaintableForm", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new_array("L", 1, [jr.JInt(0)]), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("PaintableForm", "NULL_PAINTABLE_FORM")
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle, l_form_type] = jargs
        jr.set_field(this, "rectangle", l_rectangle)
        let l_point = jr.call(jr.get_field(this, "rectangle"), "getPoint_0", [])
        jr.set_field(this, "x", jr.as_i(jr.call(l_point, "getX_0", [])))
        jr.set_field(this, "y", jr.as_i(jr.call(l_point, "getY_0", [])))
        jr.set_field(this, "formType", l_form_type)
    jr.JNull
}

fn c1_m10__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "rectangle"), "getWidth_0", []))
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_background_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("ABCustomForm", this, [l_title, l_items, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call_inherited(this, "PaintableForm", "setSelectedIndex_1", [jr.JInt(0)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PaintableForm",
        "org.allbinary.graphics.form.PaintableForm",
        "ABCustomForm",
        [],
        False,
        [#("canvasStrings", jr.JNull), #("rectangle", jr.JNull), #("x", jr.JInt(0)), #("y", jr.JInt(0)), #("formType", jr.JNull)],
        [#("NULL_PAINTABLE_FORM", jr.JNull)],
        [
            jr.Method("getNullPaintableForm_0", [], True, c1_m2__getnullpaintableform), 
            jr.Method("init_2", ["Rectangle", "FormType"], False, c1_m9__init), 
            jr.Method("getWidth_0", [], False, c1_m10__getwidth), 
            jr.Method("jinit_4", ["String", "ABCustomItemArr", "BasicColor", "BasicColor"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

