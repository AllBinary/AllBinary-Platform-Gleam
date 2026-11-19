// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "fontDebugFactory", jr.call_static("FontDebugFactory", "getInstance_0", []))
    jr.set_field(this, "lastText", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "INIT_STRING"))
    jr.set_field(this, "hasChanged", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "CustomTextAnimation", "myFontProcessor"), "process_1", [l_graphics])
        let l_existing_font = jr.call(l_graphics, "getFont_0", [])
        jr.call(jr.get_field(this, "fontDebugFactory"), "setFont_2", [jr.get_field(this, "font"), l_graphics])
        jr.call_super("TextAnimation", this, "paintXYNoUpdate_3", [l_graphics, l_x, l_y])
        jr.call(jr.get_field(this, "fontDebugFactory"), "setFont_2", [l_existing_font, l_graphics])
    jr.JNull
}

fn c1_m8__setscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_x, l_scale_y] = jargs
    let l_scale_x = jr.as_f(l_scale_x)
    let l_scale_y = jr.as_f(l_scale_y)
        case jr.truth(jr.ne(l_scale_x, l_scale_y)) {
            True -> {
            jr.throw(jr.new("RuntimeException", []))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "hasChanged", jr.JBool(True))
        jr.set_field(this, "font", jr.call_static("Font", "getFont_3", [jr.get_static("Font", "FACE_SYSTEM"), jr.get_static("Font", "STYLE_PLAIN"), jr.to_i(jr.mul(jr.to_f(jr.get_field(this, "fontSize")), l_scale_x))]))
    jr.JNull
}

fn c1_m9__settextwithonmeasure(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_text_change_listener] = jargs
        jr.call_super("TextAnimation", this, "setTextWithOnMeasure_2", [l_text, l_text_change_listener])
    jr.JNull
}

fn c1_m10__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        case jr.truth(jr.ne(jr.get_field(this, "lastText"), l_text)) {
            True -> {
            jr.set_field(this, "hasChanged", jr.JBool(True))
            jr.set_field(this, "lastText", l_text)
            jr.call_super("TextAnimation", this, "setText_1", [l_text])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__gettext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "lastText")
}

fn c1_m13__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.get_field(this, "hasChanged")) {
            True -> {
            jr.set_field(this, "textWidth", jr.as_i(jr.call(jr.get_field(this, "font"), "stringWidth_1", [jr.aget(jr.get_inherited(this, "CustomTextAnimation", "textArrayP"), jr.JInt(0))])))
            jr.set_field(this, "hasChanged", jr.JBool(False))
            Nil
        }
            False -> Nil
        }
    jr.as_i(jr.get_field(this, "textWidth"))
}

fn c1_m14__getfontheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "font"), "getHeight_0", []))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_font_size, l_animation_behavior] = jargs
    let l_font_size = jr.as_i(l_font_size)
        jr.super_init("TextAnimation", this, [l_text, l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "fontSize", jr.as_i(l_font_size))
        jr.set_field(this, "font", jr.call_static("Font", "getFont_3", [jr.get_static("Font", "FACE_SYSTEM"), jr.get_static("Font", "STYLE_PLAIN"), l_font_size]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextAnimation",
        "org.allbinary.animation.text.CustomTextAnimation",
        "TextAnimation",
        ["TextInterface"],
        False,
        [#("fontDebugFactory", jr.JNull), #("fontSize", jr.JInt(0)), #("font", jr.JNull), #("lastText", jr.JNull), #("hasChanged", jr.JBool(False)), #("textWidth", jr.JInt(0))],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m7__paintxy), 
            jr.Method("setScale_2", ["float", "float"], False, c1_m8__setscale), 
            jr.Method("setTextWithOnMeasure_2", ["String", "TextChangeListener"], False, c1_m9__settextwithonmeasure), 
            jr.Method("setText_1", ["String"], False, c1_m10__settext), 
            jr.Method("getText_0", [], False, c1_m11__gettext), 
            jr.Method("getWidth_0", [], False, c1_m13__getwidth), 
            jr.Method("getFontHeight_0", [], False, c1_m14__getfontheight), 
            jr.Method("jinit_3", ["String", "int", "AnimationBehavior"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

