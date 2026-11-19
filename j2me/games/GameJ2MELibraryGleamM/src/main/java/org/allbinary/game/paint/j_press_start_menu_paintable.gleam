// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PressStartMenuPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfo", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "PRESS_START", jr.JStr("Press Screen To Start"))
    jr.set_field(this, "KEY_START", jr.JStr("Press or Click F2 To Begin"))
    jr.set_field(this, "MENU_START", jr.JStr("Press Start From The Menu To Begin"))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "startString", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(1100)]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m13__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "beginWidth", jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.get_field(this, "startString")]), jr.JInt(1))))
        jr.set_field(this, "line", jr.as_i(jr.add(jr.mul(jr.JInt(4), jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font])), jr.shr(jr.call(l_font, "getHeight_0", []), jr.JInt(1)))))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m14__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTimeTNT_0", [])) {
            True -> {
            case jr.truth(jr.call(this, "isFlash_0", [])) {
                True -> {
                jr.call(this, "setFlash_1", [jr.JBool(False)])
                Nil
            }
                False -> {
                jr.call(this, "setFlash_1", [jr.JBool(True)])
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.call(this, "isFlash_0", [])) {
            True -> {
            jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
            jr.call(l_graphics, "drawString_4", [jr.get_field(this, "startString"), jr.sub(jr.call(jr.get_field(this, "displayInfo"), "getLastHalfWidth_0", []), jr.get_field(this, "beginWidth")), jr.sub(jr.call(jr.get_field(this, "displayInfo"), "getLastHeight_0", []), jr.get_field(this, "line")), jr.get_field(this, "anchor")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__setflash(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_flash] = jargs
        jr.set_field(this, "flash", l_flash)
    jr.JNull
}

fn c1_m16__isflash(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "flash")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        case jr.truth(jr.call(jr.call_static("TouchScreenFactory", "getInstance_0", []), "isTouch_0", [])) {
            True -> {
            jr.set_field(this, "startString", jr.get_field(this, "PRESS_START"))
            Nil
        }
            False -> case jr.truth(jr.call_static("AppletUtil", "isAppletLoader_1", [this])) {
            True -> {
            jr.set_field(this, "startString", jr.get_field(this, "KEY_START"))
            Nil
        }
            False -> {
            jr.set_field(this, "startString", jr.get_field(this, "MENU_START"))
            Nil
        }
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PressStartMenuPaintable",
        "org.allbinary.game.paint.PressStartMenuPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfo", jr.JNull), #("PRESS_START", jr.JNull), #("KEY_START", jr.JNull), #("MENU_START", jr.JNull), #("myFontProcessor", jr.JNull), #("startString", jr.JNull), #("timeDelayHelper", jr.JNull), #("flash", jr.JBool(False)), #("anchor", jr.JInt(0)), #("beginWidth", jr.JInt(0)), #("line", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m13__updatemeasurement), 
            jr.Method("paint_1", ["Graphics"], False, c1_m14__paint), 
            jr.Method("setFlash_1", ["boolean"], False, c1_m15__setflash), 
            jr.Method("isFlash_0", [], False, c1_m16__isflash), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

