// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABCustomItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ABCustomItem", "NULL_CUSTOM_ITEM", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ABCustomItem", "NULL_CUSTOM_ITEM"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ABCustomItem", "NULL_CUSTOM_ITEM", jr.new("ABCustomItem", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ABCustomItem", "NULL_CUSTOM_ITEM")
}

fn c1_m4__setowner(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner] = jargs
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m6__paintunselected(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m7__isfocusable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m8__getlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m9__setlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label] = jargs
    jr.JNull
}

fn c1_m10__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m11__setheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m12__getvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.JFloat(0.0))
}

fn c1_m13__setvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_f(l_value)
    jr.JNull
}

fn c1_m14__getminimumwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m15__getminimumheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m16__premeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_background_basic_color, l_foreground_basic_color] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABCustomItem",
        "org.allbinary.graphics.form.item.ABCustomItem",
        "Object",
        [],
        False,
        [],
        [#("NULL_CUSTOM_ITEM", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("setOwner_1", ["Screen"], False, c1_m4__setowner), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("paintUnselected_3", ["Graphics", "int", "int"], False, c1_m6__paintunselected), 
            jr.Method("isFocusable_0", [], False, c1_m7__isfocusable), 
            jr.Method("getLabel_0", [], False, c1_m8__getlabel), 
            jr.Method("setLabel_1", ["String"], False, c1_m9__setlabel), 
            jr.Method("getHeight_0", [], False, c1_m10__getheight), 
            jr.Method("setHeight_1", ["int"], False, c1_m11__setheight), 
            jr.Method("getValue_0", [], False, c1_m12__getvalue), 
            jr.Method("setValue_1", ["float"], False, c1_m13__setvalue), 
            jr.Method("getMinimumWidth_0", [], False, c1_m14__getminimumwidth), 
            jr.Method("getMinimumHeight_0", [], False, c1_m15__getminimumheight), 
            jr.Method("preMeasurement_1", ["Graphics"], False, c1_m16__premeasurement), 
            jr.Method("jinit_3", ["String", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

