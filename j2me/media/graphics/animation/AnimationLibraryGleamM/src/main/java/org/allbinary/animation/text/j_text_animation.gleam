// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TextAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "textArrayP", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "ONE_EMPTY_STRING_ARRAY"))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "offsetY", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "textChangeListener", jr.call_static("TextChangeListener", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        let l_adjusted_font_height = jr.as_i(jr.to_i(jr.neg(jr.mul(jr.to_d(jr.get_field(this, "fontHeight")), jr.JDouble(2.00)))))
        jr.set_field(this, "offsetY", jr.as_i(case jr.truth(jr.call(jr.call_static("SWTJOGLProcessor", "getInstance_0", []), "isJOGL_0", [])) { True -> l_adjusted_font_height False -> jr.JInt(0) }))
        jr.call(jr.get_field(this, "textChangeListener"), "onMeasure_0", [])
        jr.set_field(this, "textChangeListener", jr.call_static("TextChangeListener", "getInstance_0", []))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m10__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(this, "paintXYNoUpdate_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m12__paintxynoupdate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "TextAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call_inherited(this, "TextAnimation", "getBasicColorP_0", []), jr.call_inherited(this, "TextAnimation", "getColor_0", [])])
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "textArrayP")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_graphics, "drawString_4", [jr.aget(jr.get_field(this, "textArrayP"), jr.get(l_index)), l_x, jr.add(jr.add(l_y, jr.get_field(this, "offsetY")), jr.mul(jr.get(l_index), jr.get_field(this, "fontHeight"))), jr.get_field(this, "anchor")])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m13__settextwithonmeasure(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_text_change_listener] = jargs
        jr.call(this, "setText_1", [l_text])
        jr.set_field(this, "textChangeListener", l_text_change_listener)
    jr.JNull
}

fn c1_m14__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        let l_list = jr.new("BasicArrayListD", [])
        case jr.truth(jr.gt(jr.call(l_text, "length_0", []), jr.JInt(0))) {
            True -> {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_start_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_end_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() {
                jr.set(l_start_index, jr.as_i(jr.get(l_index)))
                jr.set(l_index, jr.as_i(jr.call(l_text, "indexOf_2", [jr.JChar(10), jr.get(l_start_index)])))
                jr.set(l_end_index, jr.as_i(jr.get(l_index)))
                case jr.truth(jr.lt(jr.get(l_index), jr.JInt(0))) {
                    True -> {
                    jr.set(l_end_index, jr.as_i(jr.call(l_text, "length_0", [])))
                    Nil
                }
                    False -> Nil
                }
                jr.call(l_list, "add_1", [jr.call(l_text, "substring_2", [jr.get(l_start_index), jr.get(l_end_index)])])
                case jr.truth(jr.lt(jr.get(l_index), jr.JInt(0))) {
                    True -> {
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            })
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) {
            True -> {
            let l_text_array = jr.new_array("L", 1, [jr.call(l_list, "size_0", [])])
            let l_size = jr.as_i(jr.call(l_list, "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.aset(l_text_array, jr.get(l_index), jr.call(l_list, "get_1", [jr.get(l_index)]))
                Nil
            })
                Nil
            }
            jr.set_field(this, "textArrayP", l_text_array)
            Nil
        }
            False -> {
            jr.set_field(this, "textArrayP", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "ONE_EMPTY_STRING_ARRAY"))
            Nil
        }
        }
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m15__gettextarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "textArrayP")
}

fn c1_m16__getfontheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "fontHeight"))
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "setText_1", [l_text])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TextAnimation",
        "org.allbinary.animation.text.TextAnimation",
        "IndexedAnimation",
        ["UpdateMyFontInterface"],
        False,
        [#("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("textArrayP", jr.JNull), #("anchor", jr.JInt(0)), #("fontHeight", jr.JInt(0)), #("offsetY", jr.JInt(0)), #("textChangeListener", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m9__updatemeasurement), 
            jr.Method("nextFrame_0", [], False, c1_m10__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m11__paintxy), 
            jr.Method("paintXYNoUpdate_3", ["Graphics", "int", "int"], False, c1_m12__paintxynoupdate), 
            jr.Method("setTextWithOnMeasure_2", ["String", "TextChangeListener"], False, c1_m13__settextwithonmeasure), 
            jr.Method("setText_1", ["String"], False, c1_m14__settext), 
            jr.Method("getTextArray_0", [], False, c1_m15__gettextarray), 
            jr.Method("getFontHeight_0", [], False, c1_m16__getfontheight), 
            jr.Method("jinit_2", ["String", "AnimationBehavior"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

