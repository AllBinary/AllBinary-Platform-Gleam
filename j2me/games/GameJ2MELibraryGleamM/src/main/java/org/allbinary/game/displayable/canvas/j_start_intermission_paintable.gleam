// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StartIntermissionPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "fontDebugFactory", jr.call_static("FontDebugFactory", "getInstance_0", []))
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"))
    jr.set_field(this, "lineYOffsetArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY"))
    jr.set_field(this, "hasChanged", jr.JBool(True))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "BEGIN_LEVEL", jr.JStr("Begin Level "))
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m17__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "fontHeightP", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m18__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_existing_font = jr.call(l_graphics, "getFont_0", [])
        jr.call(jr.get_field(this, "fontDebugFactory"), "setFont_2", [jr.get_field(this, "font"), l_graphics])
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.get_field(this, "basicColor"), jr.get_field(this, "color")])
        let l_begin_width = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "lineYOffsetArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.get_field(this, "hasChanged")) {
                True -> {
                jr.aset(jr.get_field(this, "lastWidth"), jr.get(l_index), jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.aget(jr.get_field(this, "stringArray"), jr.get(l_index))]), jr.JInt(1))))
                Nil
            }
                False -> Nil
            }
            jr.set(l_begin_width, jr.as_i(jr.aget(jr.get_field(this, "lastWidth"), jr.get(l_index))))
            jr.call(l_graphics, "drawString_4", [jr.aget(jr.get_field(this, "stringArray"), jr.get(l_index)), jr.sub(jr.call(l_display_info, "getLastHalfWidth_0", []), jr.get(l_begin_width)), jr.sub(jr.call(l_display_info, "getLastHalfHeight_0", []), jr.aget(jr.get_field(this, "lineYOffsetArray"), jr.get(l_index))), jr.get_field(this, "anchor")])
            Nil
        })
            Nil
        }
        jr.set_field(this, "hasChanged", jr.JBool(False))
        jr.call(jr.get_field(this, "fontDebugFactory"), "setFont_2", [l_existing_font, l_graphics])
    jr.JNull
}

fn c1_m21__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_level = jr.as_i(jr.call(jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getLayerManager_0", []), "getGameInfo_0", []), "getCurrentLevel_0", []))
        jr.aset(jr.get_field(this, "stringArray"), jr.JInt(0), jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "BEGIN_LEVEL")]), "appendint_1", [l_level]), "toString_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "stringArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(1)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "stringArray"), jr.get(l_index), jr.get_field(this, "EMPTY_STRING"))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m22__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m23__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_jinit16(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas, l_string_array, l_basic_color, l_font] = jargs
    jr.super_init("InitUpdatePaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameCanvas", l_game_canvas)
        jr.set_field(this, "stringArray", l_string_array)
        jr.set_field(this, "lastWidth", jr.new_array("I", 1, [jr.alen(jr.get_field(this, "stringArray"))]))
        jr.call(this, "setBasicColorP_1", [l_basic_color])
        jr.set_field(this, "color", jr.as_i(jr.call(l_basic_color, "intValue_0", [])))
        jr.set_field(this, "fontSize", jr.as_i(jr.call(l_font, "getSize_0", [])))
        jr.set_field(this, "font", l_font)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StartIntermissionPaintable",
        "org.allbinary.game.displayable.canvas.StartIntermissionPaintable",
        "InitUpdatePaintable",
        ["UpdateMyFontInterface"],
        False,
        [#("fontDebugFactory", jr.JNull), #("basicSetColorUtil", jr.JNull), #("gameCanvas", jr.JNull), #("stringArray", jr.JNull), #("fontSize", jr.JInt(0)), #("font", jr.JNull), #("lastWidth", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("basicColor", jr.JNull), #("color", jr.JInt(0)), #("lineYOffsetArray", jr.JNull), #("hasChanged", jr.JBool(False)), #("anchor", jr.JInt(0)), #("fontHeightP", jr.JInt(0)), #("BEGIN_LEVEL", jr.JNull), #("EMPTY_STRING", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m17__updatemeasurement), 
            jr.Method("paint_1", ["Graphics"], False, c1_m18__paint), 
            jr.Method("update_0", [], False, c1_m21__update), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m22__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m23__getbasiccolorp), 
            jr.Method("jinit_4", ["AllBinaryGameCanvas", "StringArr", "BasicColor", "Font"], False, c1_jinit16)],
        c1_jfields,
        c1_jclinit,
    )
}

