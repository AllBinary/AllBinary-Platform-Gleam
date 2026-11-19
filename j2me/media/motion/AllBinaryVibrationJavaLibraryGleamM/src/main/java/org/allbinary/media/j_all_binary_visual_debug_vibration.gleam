// Generated Code Do Not Modify
// package org.allbinary.media
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryVisualDebugVibration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.get_static("Integer", "MAX_VALUE")]))
    jr.set_field(this, "VIBRATING", jr.JStr("Vibrating"))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "width", jr.as_i(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "VIBRATING")])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m8__vibrate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_duration, l_type, l_volume] = jargs
    let l_duration = jr.as_i(l_duration)
    let l_type = jr.as_i(l_type)
    let l_volume = jr.as_i(l_volume)
        jr.set_field(jr.get_field(this, "timeDelayHelper"), "delay", jr.as_i(l_duration))
    jr.JNull
}

fn c1_m9__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTimeTNT_0", [])) {
            True -> {
            jr.set_field(jr.get_field(this, "timeDelayHelper"), "delay", jr.as_i(jr.get_static("Integer", "MAX_VALUE")))
            jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
            jr.call(l_graphics, "drawString_4", [jr.get_field(this, "VIBRATING"), jr.sub(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", []), jr.shr(jr.get_field(this, "width"), jr.JInt(1))), jr.JInt(0), jr.get_field(this, "anchor")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryVibrationME", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryVisualDebugVibration",
        "org.allbinary.media.AllBinaryVisualDebugVibration",
        "AllBinaryVibrationME",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("timeDelayHelper", jr.JNull), #("VIBRATING", jr.JNull), #("myFontProcessor", jr.JNull), #("anchor", jr.JInt(0)), #("width", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m7__updatemeasurement), 
            jr.Method("vibrate_3", ["int", "int", "int"], False, c1_m8__vibrate), 
            jr.Method("paint_1", ["Graphics"], False, c1_m9__paint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

