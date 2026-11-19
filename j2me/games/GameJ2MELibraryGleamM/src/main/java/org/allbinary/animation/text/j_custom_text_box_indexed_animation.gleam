// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextBoxIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "lastText", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "INIT_STRING"))
    jr.set_field(this, "hasChanged", jr.JBool(True))
    jr.set_field(this, "textChangeListener", jr.call_static("TextChangeListener", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call(jr.call(jr.get_field(this, "customTextBox"), "getTextFieldItem_0", []), "setForegroundBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_m7__setbackgroundbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call(jr.call(jr.get_field(this, "customTextBox"), "getTextFieldItem_0", []), "setBackgroundBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_m8__settextwithonmeasure(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_text_change_listener] = jargs
        jr.call(this, "setText_1", [l_text])
        jr.set_field(this, "textChangeListener", l_text_change_listener)
    jr.JNull
}

fn c1_m9__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.call(jr.get_field(this, "textChangeListener"), "onMeasure_0", [])
        jr.set_field(this, "textChangeListener", jr.call_static("TextChangeListener", "getInstance_0", []))
    jr.JNull
}

fn c1_m10__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        case jr.truth(jr.ne(jr.get_field(this, "lastText"), l_text)) {
            True -> {
            jr.set_field(this, "hasChanged", jr.JBool(True))
            jr.set_field(this, "lastText", l_text)
            jr.call(jr.call(jr.get_field(this, "customTextBox"), "getTextFieldItem_0", []), "setString_1", [l_text])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__gettext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.get_field(this, "customTextBox"), "getTextFieldItem_0", []), "getString_0", [])
}

fn c1_m12__oneventraw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_field(this, "customTextBox"), "onEventRaw_3", [l_key_code, l_device_id, l_repeated])
    jr.JNull
}

fn c1_m13__getfontheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.call(jr.get_field(this, "customTextBox"), "getTextFieldItem_0", []), "getFontHeight_0", []))
}

fn c1_m14__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "customTextBox"), "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m15__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m16__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("IndexedAnimation", this, "getWidth_0", []))
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_custom_text_box] = jargs
        jr.super_init("IndexedAnimation", this, [jr.call_static("AnimationBehavior", "getInstance_0", [])])
        c1_jfields(this)
        jr.set_field(this, "customTextBox", l_custom_text_box)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextBoxIndexedAnimation",
        "org.allbinary.animation.text.CustomTextBoxIndexedAnimation",
        "IndexedAnimation",
        ["RawKeyEventListener", "UpdateMyFontInterface", "TextInterface"],
        False,
        [#("customTextBox", jr.JNull), #("lastText", jr.JNull), #("hasChanged", jr.JBool(False)), #("textChangeListener", jr.JNull)],
        [],
        [
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m6__setbasiccolorp), 
            jr.Method("setBackgroundBasicColorP_1", ["BasicColor"], False, c1_m7__setbackgroundbasiccolorp), 
            jr.Method("setTextWithOnMeasure_2", ["String", "TextChangeListener"], False, c1_m8__settextwithonmeasure), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m9__updatemeasurement), 
            jr.Method("setText_1", ["String"], False, c1_m10__settext), 
            jr.Method("getText_0", [], False, c1_m11__gettext), 
            jr.Method("onEventRaw_3", ["int", "int", "boolean"], False, c1_m12__oneventraw), 
            jr.Method("getFontHeight_0", [], False, c1_m13__getfontheight), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m14__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m15__paintthreedxyz), 
            jr.Method("getWidth_0", [], False, c1_m16__getwidth), 
            jr.Method("jinit_1", ["CustomTextBox"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

